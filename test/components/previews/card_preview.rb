# frozen_string_literal: true

class CardPreview < ViewComponent::Preview
  def standard
    render Vitrail::Card.new.with_content("Simple card")
  end

  # @!group With header
  def with_title
    render Vitrail::Card.new(title: "Title example").with_content("Card with title")
  end

  # Require font-awesome
  def with_icon
    render Vitrail::Card.new(icon: "user").with_content("Card with icon")
  end

  # Require font-awesome
  def with_title_and_icon
    render Vitrail::Card.new(title: "Title example", icon: "user").with_content("Card with title and icon")
  end
  # @!endgroup

  def custom_css
    render Vitrail::Card.new(class: "bg-red-100 border-red-200 text-red-800").with_content("Card with custom background")
  end
end
