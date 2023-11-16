# frozen_string_literal: true

class TitlePreview < ViewComponent::Preview
  def standard
    render Vitrail::Title.new.with_content("Header 1")
  end

  # @!group Levels
  def level_1
    render Vitrail::Title.new.with_content("Header 1")
  end

  def level_2
    render Vitrail::Title.new(level: 2).with_content("Header 2")
  end

  def level_3
    render Vitrail::Title.new(level: 3).with_content("Header 3")
  end
  # @!endgroup

  # @!group Custom options
  def with_custom_classes
    render Vitrail::Title.new(class: "uppercase").with_content("Uppercased header")
  end

  def with_custom_identifier
    render Vitrail::Title.new(id: "my-header").with_content("Header with id")
    # => <h1 id="my-header" ... > Header with id </h1>
  end
  # @!endgroup
end
