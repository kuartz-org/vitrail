# frozen_string_literal: true

class NoticePreview < ViewComponent::Preview
  # @!group Levels
  def default
    render Vitrail::Notice.new(title: "Default Notice").with_content("This is a default notice.")
  end

  def caution
    render Vitrail::Notice.new(title: "Caution Notice", level: :caution).with_content("This is a caution notice.")
  end

  def critical
    render Vitrail::Notice.new(title: "Critical Notice", level: :critical).with_content("This is a critical notice.")
  end
  # @!endgroup
end
