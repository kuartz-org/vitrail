# frozen_string_literal: true

module Vitrail
  class BaseComponent < ViewComponent::Base
    private attr_reader :html_options, :custom_classes

    def initialize(**html_options)
      super

      @html_options = html_options.stringify_keys
      @custom_classes = @html_options.delete(:class) || ""
    end

    private

    def local_classes = ""
    def html_attributes = tag.attributes(html_options)

    def html_classes
      [local_classes, custom_classes].reject(&:blank?).join(" ")
    end
  end
end
