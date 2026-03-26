# frozen_string_literal: true

# Modal — dialog windows with dimmer.
#
# Usage:
#   Modal(size: :small) { |c|
#     c.header { text "Confirm Action" }
#     c.content { text "Are you sure?" }
#     c.actions {
#       Button(variant: :deny) { text "Cancel" }
#       Button(variant: :approve, color: :green) { text "OK" }
#     }
#   }
#
#   Modal(id: "confirm-modal", size: :large) { |c|
#     c.header { text "Targeted Modal" }
#     c.content { text "This modal can be targeted by DOM id." }
#   }

class ModalComponent < Component
  attribute :id,       :string,  default: nil
  attribute :size,     :string,  default: nil
  attribute :basic,    :boolean, default: false
  attribute :closable, :boolean, default: true
  attribute :blurring, :boolean, default: false
  attribute :longer,     :boolean, default: false
  attribute :fullscreen, :boolean, default: false
  attribute :scrolling,  :boolean, default: false

  slot :header
  slot :content
  slot :actions

  def to_s
    classes = class_names(
      "ui",
      size,
      { "basic" => basic,
        "longer" => longer,
        "fullscreen" => fullscreen },
      "modal"
    )

    data = { controller: "fui-modal" }
    data[:fui_modal_closable_value] = "false" unless closable
    data[:fui_modal_blurring_value] = "true" if blurring

    close_el = closable ? tag.i(class: "close icon") : nil
    header_el = @slots[:header] ? tag.div(class: "header") { @slots[:header] } : nil
    content_cls = scrolling ? "scrolling content" : "content"
    content_el = @slots[:content] ? tag.div(class: content_cls) { @slots[:content] } : nil
    actions_el = @slots[:actions] ? tag.div(class: "actions") { @slots[:actions] } : nil

    opts = { class: classes, data: data }
    opts[:id] = id if id

    tag.div(**opts) {
      safe_join([ close_el, header_el, content_el, @content.presence, actions_el ])
    }
  end
end
