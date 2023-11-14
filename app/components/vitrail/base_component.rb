# frozen_string_literal: true

module Vitrail
  class BaseComponent < ViewComponent::Base
    private attr_reader :html_options

    def initialize(**html_options)
      super

      @html_options = html_options.stringify_keys
    end

    private

    def html_attributes
      ActionView::Helpers::TagHelper::TagBuilder.new(view_context).
        attributes(html_options)
    end
  end
end
