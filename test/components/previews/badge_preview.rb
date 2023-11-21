# frozen_string_literal: true

class BadgePreview < ViewComponent::Preview
  # @!group Levels
  def default
    render Vitrail::Badge.new.with_content("Default")
  end

  def info
    render Vitrail::Badge.new(level: :info).with_content("Info")
  end

  def positive
    render Vitrail::Badge.new(level: :positive).with_content("Positive")
  end

  def negative
    render Vitrail::Badge.new(level: :negative).with_content("Negative")
  end

  def warning
    render Vitrail::Badge.new(level: :warning).with_content("Warning")
  end

  def urgent
    render Vitrail::Badge.new(level: :urgent).with_content("Urgent")
  end
  # @!endgroup
end
