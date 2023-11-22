# frozen_string_literal: true

class LinkToPreview < ViewComponent::Preview
  # @!group Levels
  # Links let users go somewhere.
  def primary
    render Vitrail::LinkTo.new(:primary, "#primary_link").with_content("Primary link")
  end

  def secondary
    render Vitrail::LinkTo.new(:secondary, "#secondary_link").with_content("Secondary link")
  end
  #@!endgroup

  def with_block
    render_with_template
  end

  def with_custom_attributes
    render Vitrail::LinkTo.new(:primary, "#primary_link", { data: { controller: "my-controller" } }).with_content("Primary link")
  end
end
