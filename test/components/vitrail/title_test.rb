# frozen_string_literal: true

require "test_helper"

class TitleTest < ViewComponent::TestCase
  def test_component_renders_default_classes
    render_inline(Vitrail::Title.new(class: "bg-red-600").with_content("hello"))

    assert_selector(
      "h1",
      class: "mt-10 mb-4 text-2xl xl:text-3xl font-bold tracking-tight text-slate-900 bg-red-600"
    )
  end

  def test_component_renders_default_classes_with_custom_classes
    render_inline(Vitrail::Title.new(class: "bg-red-600").with_content("hello"))

    assert_selector(
      "h1",
      class: "mt-10 mb-4 text-2xl xl:text-3xl font-bold tracking-tight text-slate-900 bg-red-600"
    )
  end

  def test_component_renders_custom_attributes
    render_inline(
      Vitrail::Title.new(level: 2, class: "bg-red-600", id: 2, data: { controller: "coucou" }).with_content("hello")
    )

    assert_selector(
      "h2[data-controller='coucou']",
      id: "2",
      class: "bg-red-600",
      text: "hello"
  )
  end

  def test_component_renders_correct_heading_level
    render_inline(Vitrail::Title.new(level: 2).with_content("hello"))

    assert_selector("h2", text: "hello")
  end
end
