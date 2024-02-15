# frozen_string_literal: true

module Vitrail
  class LinkTo < ViewComponent::Base
    def initialize(level, options = nil, html_options = nil)
      @level = level
      @options = options
      @html_options = html_options || {}
    end

    def call = link_to(options, decorated_html_options) { content }

    private

    attr_reader :level, :options, :html_options

    GLOBAL_CLASSES = "vt-link-to".freeze
    private_constant :GLOBAL_CLASSES

    LEVEL_CLASSES = {
      primary: "vt-link-to--level-primary",
      secondary: "vt-link-to--level-secondary"
    }.freeze
    private_constant :LEVEL_CLASSES
    def level_classes
      LEVEL_CLASSES[level.to_sym]
    end

    def decorated_html_options
      html_options&.merge(class: [GLOBAL_CLASSES, level_classes].join(" "))
    end
  end
end
