# frozen_string_literal: true

require "test_helper"

class DataDisplayComponentsTest < ComponentTestCase
  # --- TableComponent ---

  test "table renders with default classes" do
    html = render_inline(TableComponent)
    assert_includes html, "ui table"
    assert_includes html, "<table"
  end

  test "table striped and celled" do
    html = render_inline(TableComponent, striped: true, celled: true)
    assert_includes html, "striped"
    assert_includes html, "celled"
  end

  test "table with header slot" do
    html = render_inline(TableComponent) { |c|
      c.header { ctx.output_buffer << "<tr><th>Name</th></tr>".html_safe }
    }

    assert_includes html, "<thead>"
    assert_includes html, "<th>Name</th>"
  end

  test "table with footer slot" do
    html = render_inline(TableComponent) { |c|
      c.footer { ctx.output_buffer << "<tr><td>Total</td></tr>".html_safe }
    }

    assert_includes html, "<tfoot>"
    assert_includes html, "Total"
  end

  test "table manual mode with body content" do
    html = render_inline(TableComponent) {
      ctx.output_buffer << "<tr><td>Alice</td></tr>".html_safe
    }

    assert_includes html, "<tbody>"
    assert_includes html, "Alice"
  end

  test "table column mode with rows" do
    user = Struct.new(:name, :email).new("Alice", "alice@example.com")
    html = render_inline(TableComponent, rows: [ user ]) { |c|
      c.column(:name)
      c.column(:email)
    }

    assert_includes html, "<thead>"
    assert_includes html, "<th>"
    assert_includes html, "Name"
    assert_includes html, "Email"
    assert_includes html, "<tbody>"
    assert_includes html, "Alice"
    assert_includes html, "alice@example.com"
  end

  test "table column with custom heading" do
    user = Struct.new(:name).new("Bob")
    html = render_inline(TableComponent, rows: [ user ]) { |c|
      c.column(:name, heading: "Full Name")
    }

    assert_includes html, "Full Name"
  end

  test "table inverted" do
    html = render_inline(TableComponent, inverted: true)
    assert_includes html, "inverted"
  end

  test "table basic very" do
    html = render_inline(TableComponent, basic: "very")
    assert_includes html, "very basic"
  end

  # --- CardComponent ---

  test "card renders with default classes" do
    html = render_inline(CardComponent)
    assert_includes html, "ui card"
    assert_includes html, "<div"
  end

  test "card fluid" do
    html = render_inline(CardComponent, fluid: true)
    assert_includes html, "fluid"
  end

  test "card with href renders as anchor" do
    html = render_inline(CardComponent, href: "/profile")
    assert_includes html, "<a"
    assert_includes html, 'href="/profile"'
    assert_includes html, "link"
  end

  test "card without href renders as div" do
    html = render_inline(CardComponent)
    assert_includes html, "<div"
    assert_not_includes html, "<a"
  end

  test "card with all slots" do
    html = render_inline(CardComponent) { |c|
      c.image { ctx.output_buffer << "img".html_safe }
      c.header { ctx.output_buffer << "Title".html_safe }
      c.meta { ctx.output_buffer << "Meta".html_safe }
      c.description { ctx.output_buffer << "Desc".html_safe }
      c.extra { ctx.output_buffer << "Extra".html_safe }
    }

    assert_includes html, 'class="image"'
    assert_includes html, 'class="header"'
    assert_includes html, 'class="meta"'
    assert_includes html, 'class="description"'
    assert_includes html, 'class="extra content"'
    assert_includes html, 'class="content"'
  end

  test "card without slots renders minimal" do
    html = render_inline(CardComponent)
    assert_not_includes html, 'class="image"'
    assert_not_includes html, 'class="content"'
  end

  test "card color" do
    html = render_inline(CardComponent, color: "red")
    assert_includes html, "red"
  end

  # --- ItemComponent ---

  test "item renders with item class" do
    html = render_inline(ItemComponent)
    assert_includes html, 'class="item"'
  end

  test "item with slots" do
    html = render_inline(ItemComponent) { |c|
      c.header { ctx.output_buffer << "Title".html_safe }
      c.description { ctx.output_buffer << "Body".html_safe }
    }

    assert_includes html, 'class="header"'
    assert_includes html, 'class="description"'
    assert_includes html, 'class="content"'
  end

  # --- ListComponent ---

  test "list renders with default classes" do
    html = render_inline(ListComponent)
    assert_includes html, "ui list"
    assert_includes html, "<div"
  end

  test "list ordered renders as ol" do
    html = render_inline(ListComponent, ordered: true)
    assert_includes html, "<ol"
    assert_includes html, "ordered"
  end

  test "list bulleted" do
    html = render_inline(ListComponent, bulleted: true)
    assert_includes html, "bulleted"
  end

  test "list divided relaxed" do
    html = render_inline(ListComponent, divided: true, relaxed: true)
    assert_includes html, "divided"
    assert_includes html, "relaxed"
  end

  # --- FeedComponent ---

  test "feed renders with default classes" do
    html = render_inline(FeedComponent)
    assert_includes html, "ui feed"
  end

  test "feed with size" do
    html = render_inline(FeedComponent, size: "small")
    assert_includes html, "small"
  end

  test "feed renders block content" do
    html = render_inline(FeedComponent) { ctx.output_buffer << "events" }
    assert_includes html, "events"
  end

  # --- CommentComponent ---

  test "comment renders with default classes" do
    html = render_inline(CommentComponent)
    assert_includes html, "comment"
  end

  test "comment collapsed" do
    html = render_inline(CommentComponent, collapsed: true)
    assert_includes html, "collapsed"
  end

  test "comment with all slots" do
    html = render_inline(CommentComponent) { |c|
      c.avatar { ctx.output_buffer << "pic".html_safe }
      c.author { ctx.output_buffer << "Matt".html_safe }
      c.metadata { ctx.output_buffer << "today".html_safe }
      c.text_slot { ctx.output_buffer << "Great!".html_safe }
      c.actions { ctx.output_buffer << "Reply".html_safe }
    }

    assert_includes html, 'class="avatar"'
    assert_includes html, 'class="author"'
    assert_includes html, 'class="metadata"'
    assert_includes html, 'class="text"'
    assert_includes html, 'class="actions"'
    assert_includes html, 'class="content"'
  end

  # --- StatisticComponent ---

  test "statistic renders with default classes" do
    html = render_inline(StatisticComponent)
    assert_includes html, "ui statistic"
  end

  test "statistic horizontal" do
    html = render_inline(StatisticComponent, horizontal: true)
    assert_includes html, "horizontal"
  end

  test "statistic with color" do
    html = render_inline(StatisticComponent, color: "blue")
    assert_includes html, "blue"
  end

  test "statistic with slots" do
    html = render_inline(StatisticComponent) { |c|
      c.value { ctx.output_buffer << "5,550".html_safe }
      c.label { ctx.output_buffer << "Downloads".html_safe }
    }

    assert_includes html, 'class="value"'
    assert_includes html, 'class="label"'
    assert_includes html, "5,550"
    assert_includes html, "Downloads"
  end

  test "statistic floated" do
    html = render_inline(StatisticComponent, floated: "right")
    assert_includes html, "right floated"
  end

  # --- TableRowComponent ---

  test "table row renders tr" do
    html = render_inline(TableRowComponent)
    assert_includes html, "<tr>"
  end

  test "table row with state classes" do
    html = render_inline(TableRowComponent, positive: true)
    assert_includes html, "positive"
    assert_includes html, "<tr"
  end

  test "table row active" do
    html = render_inline(TableRowComponent, active: true)
    assert_includes html, "active"
  end

  test "table row wraps content" do
    html = render_inline(TableRowComponent) { ctx.output_buffer << "cells" }
    assert_includes html, "cells"
  end

  # --- TableCellComponent ---

  test "table cell renders td by default" do
    html = render_inline(TableCellComponent) { ctx.output_buffer << "Data" }
    assert_includes html, "<td"
    assert_includes html, "Data"
  end

  test "table cell renders th when heading" do
    html = render_inline(TableCellComponent, heading: true) { ctx.output_buffer << "Header" }
    assert_includes html, "<th"
    assert_includes html, "Header"
  end

  test "table cell aligned" do
    html = render_inline(TableCellComponent, aligned: "right")
    assert_includes html, "right aligned"
  end

  test "table cell collapsing" do
    html = render_inline(TableCellComponent, collapsing: true)
    assert_includes html, "collapsing"
  end

  test "table cell with colspan" do
    html = render_inline(TableCellComponent, heading: true, colspan: 3) { ctx.output_buffer << "Span" }
    assert_includes html, 'colspan="3"'
  end

  test "table cell with width" do
    html = render_inline(TableCellComponent, width: 4)
    assert_includes html, "four wide"
  end
end
