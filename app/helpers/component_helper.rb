# frozen_string_literal: true

# The Registry of Names
#
# All components available to views are declared here. There is no
# method_missing sorcery, no dynamic resolution, no convention-based guessing.
# If a component is not in the registry, it does not exist.
#
# To create a new component: add one line to COMPONENT_MAP and create the class.
#
# See: specs/the-holy-view-spec.md, Article 3

module ComponentHelper
  COMPONENT_MAP = {
    # Layout Primitives
    VStack:      "VStackComponent",
    HStack:      "HStackComponent",
    Column:      "ColumnComponent",
    Row:         "RowComponent",
    Pusher:      "PusherComponent",
    Overlay:     "OverlayComponent",
    LinkTo:      "LinkToComponent",
    SubHeader:   "SubHeaderComponent",

    # Globals
    Reset:       "ResetComponent",
    Site:        "SiteComponent",
    Wrapper:     "WrapperComponent",
    Template:    "TemplateComponent",
    BackButton:  "BackButtonComponent",

    # Elements
    Button:      "ButtonComponent",
    Paragraph:   "ParagraphComponent",
    ButtonTo:    "ButtonToComponent",
    Container:   "ContainerComponent",
    Divider:     "DividerComponent",
    Emoji:       "EmojiComponent",
    Flag:        "FlagComponent",
    Header:      "HeaderComponent",
    Icon:        "IconComponent",
    Image:       "ImageComponent",
    Input:       "InputComponent",
    Label:       "LabelComponent",
    List:        "ListComponent",
    Loader:      "LoaderComponent",
    Placeholder: "PlaceholderComponent",
    Rail:        "RailComponent",
    Reveal:      "RevealComponent",
    Segment:      "SegmentComponent",
    SegmentGroup: "SegmentGroupComponent",
    Step:        "StepComponent",
    StepGroup:   "StepGroupComponent",

    Text:        "TextComponent",

    # Collections
    Breadcrumb:  "BreadcrumbComponent",
    Form:        "FormComponent",
    Grid:        "GridComponent",
    Menu:        "MenuComponent",
    MenuItem:    "MenuItemComponent",
    SubMenu:     "SubMenuComponent",
    Message:     "MessageComponent",
    Table:       "TableComponent",
    TableRow:    "TableRowComponent",
    TableCell:   "TableCellComponent",

    # Views
    Ad:          "AdComponent",
    ItemGroup:   "ItemGroupComponent",
    Card:        "CardComponent",
    Comment:     "CommentComponent",
    Feed:        "FeedComponent",
    Item:        "ItemComponent",
    Statistic:   "StatisticComponent",

    # Modules
    Accordion:   "AccordionComponent",
    Calendar:    "CalendarComponent",
    Checkbox:    "CheckboxComponent",
    Dimmer:      "DimmerComponent",
    Dropdown:    "DropdownComponent",
    Embed:       "EmbedComponent",
    Flyout:      "FlyoutComponent",
    Modal:       "ModalComponent",
    Nag:         "NagComponent",
    Popup:       "PopupComponent",
    Progress:    "ProgressComponent",
    Slider:      "SliderComponent",
    Rating:      "RatingComponent",
    Search:      "SearchComponent",
    Shape:       "ShapeComponent",
    Sidebar:     "SidebarComponent",
    Sticky:      "StickyComponent",
    Tab:         "TabComponent",
    Toast:       "ToastComponent",
    Transition:  "TransitionComponent",

    # Behaviors
    Api:         "ApiComponent",
    State:       "StateComponent",
    Visibility:  "VisibilityComponent",

    # Blocks
    ResourceListBlock: "ResourceListBlock"
  }.freeze

  COMPONENT_MAP.each do |name, klass_name|
    define_method(name) { |**kwargs, &block|
      output_buffer << render(klass_name.constantize.new(**kwargs), &block)
    }
  end

  def Style(css = nil, &block)
    output_buffer << render("StyleComponent".constantize.new(css), &block)
  end

  def text(content)
    output_buffer << content.to_s
  end

  def Partial(*args, **kwargs, &block)
    output_buffer << render(*args, **kwargs, &block)
  end

  def DocType(type = :html)
    output_buffer << "<!DOCTYPE #{type}>".html_safe
  end

  def StylesheetLink(*args)
    output_buffer << stylesheet_link_tag(*args)
  end

  def JavascriptImportmap
    output_buffer << javascript_importmap_tags
  end

  def CsrfMetaTags
    output_buffer << csrf_meta_tags
  end

  def CspMetaTag
    output_buffer << csp_meta_tag
  end

  def ContentFor(*args, &block)
    value = content_for(*args, &block)
    output_buffer << value if value.present?
    value
  end

  # PascalCase method calls that aren't in COMPONENT_MAP are forwarded
  # to the current form builder as underscored method names.
  # e.g. TextField(:label, placeholder: "Name") -> f.text_field(:label, placeholder: "Name")
  #      EmojiField(:icon)                      -> f.emoji_field(:icon)
  #      Select(:role, [["Admin","admin"]])      -> f.select(:role, [["Admin","admin"]])
  def method_missing(method_name, *args, **kwargs, &block)
    if method_name =~ /\A[A-Z]/ && @_form_builder
      underscored = method_name.to_s.gsub(/([a-z])([A-Z])/, '\1_\2').downcase
      if @_form_builder.respond_to?(underscored)
        output_buffer << @_form_builder.public_send(underscored, *args, **kwargs, &block)
        return
      end
    end

    if method_name =~ /\A[A-Z]/
      tag_name = method_name.to_s.underscore.gsub("_", "-")
      output_buffer << tag.public_send(tag_name, *args, **kwargs, &block)
      return
    end

    super
  end

  def respond_to_missing?(method_name, include_private = false)
    if method_name =~ /\A[A-Z]/ && @_form_builder
      underscored = method_name.to_s.gsub(/([a-z])([A-Z])/, '\1_\2').downcase
      return true if @_form_builder.respond_to?(underscored)
    end

    return true if method_name =~ /\A[A-Z]/

    super
  end
end
