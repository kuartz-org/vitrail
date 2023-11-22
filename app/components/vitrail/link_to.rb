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

    GLOBAL_CLASSES = "font-semibold px-3 py-2".freeze
    private_constant :GLOBAL_CLASSES

    LEVEL_CLASSES = {
      primary: <<~TXT.squish,
        text-indigo-600 hover:text-indigo-500
        focus-visible:outline focus-visible:outline-2 focus-visible:outline-offset-2
        focus-visible:outline-indigo-600
      TXT
      secondary: <<~TXT.squish,
        text-slate-700 hover:text-slate-80
        underline decoration-dashed underline-offset-4 decoration-slate-500
      TXT
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
