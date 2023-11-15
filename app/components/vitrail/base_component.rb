# frozen_string_literal: true

module Vitrail
  class BaseComponent < ViewComponent::Base
    private attr_reader :html_options, :custom_classes

    def initialize(**html_options)
      super

      @custom_classes = html_options.delete(:class) || ""
      @html_options = html_options.stringify_keys
    end

    private

    def local_classes
      ""
    end

    def html_attributes
      ActionView::Helpers::TagHelper::TagBuilder.new(view_context).
        attributes(html_options)
    end

    def html_classes
      [local_classes, custom_classes].reject(&:blank?).join(" ")
    end
  end
end
