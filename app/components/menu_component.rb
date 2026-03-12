# frozen_string_literal: true

# Menu — navigation menus.
#
# Usage:
#   Menu(pointing: true, secondary: true) {
#     text '<a class="active item">Home</a>'.html_safe
#     text '<a class="item">Messages</a>'.html_safe
#   }

class MenuComponent < Component
  attribute :secondary,    :boolean, default: false
  attribute :pointing,     :boolean, default: false
  attribute :tabular,      :boolean, default: false
  attribute :vertical,     :boolean, default: false
  attribute :fixed,        :string,  default: nil
  attribute :inverted,     :boolean, default: false
  attribute :icon,         :boolean, default: false
  attribute :labeled_icon, :boolean, default: false
  attribute :compact,      :boolean, default: false
  attribute :fluid,        :boolean, default: false
  attribute :size,         :string,  default: nil
  attribute :color,        :string,  default: nil
  attribute :attached,     :string,  default: nil
  attribute :stackable,    :boolean, default: false
  attribute :text,         :boolean, default: false
  attribute :pagination,   :boolean, default: false
  attribute :borderless,   :boolean, default: false
  attribute :items,        :integer, default: nil

  NUMBERS = %w[one two three four five six seven eight nine ten eleven twelve].freeze

  def to_s
    item_word = items && items.between?(1, 12) ? NUMBERS[items - 1] : nil

    classes = [
      "ui",
      size,
      color,
      (item_word && "#{item_word} item"),
      ("secondary" if secondary),
      ("pointing" if pointing),
      ("tabular" if tabular),
      ("vertical" if vertical),
      (fixed && "#{fixed} fixed"),
      ("inverted" if inverted),
      ("icon" if icon && !labeled_icon),
      ("labeled icon" if labeled_icon),
      ("compact" if compact),
      ("fluid" if fluid),
      (attached && "#{attached} attached"),
      ("stackable" if stackable),
      ("text" if text),
      ("pagination" if pagination),
      ("borderless" if borderless),
      "menu"
    ].compact.join(" ")

    tag.div(class: classes) { @content }
  end
end
