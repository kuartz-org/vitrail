# frozen_string_literal: true

module Vitrail
  class Badge < BaseComponent
    erb_template <<~ERB.squish
    <span class="<%= html_classes %>" <%= html_attributes %>>
      <%= content %>
    </span>
    ERB

    def initialize(level: :default, **html_options)
      super(**html_options)
      @level = level
    end

    private

    attr_reader :level

    LOCAL_CLASSES = "inline-flex items-center rounded-full px-2 py-1 text-xs font-medium ring-1 ring-inset"
    LEVEL_CLASSES = {
      default: "bg-blue-50 text-blue-700 ring-blue-700/10",
      info: "bg-blue-50 text-blue-700 ring-blue-700/10",
      positive: "bg-green-50 text-green-700 ring-green-700/10",
      negative: "bg-yellow-50 text-yellow-700 ring-yellow-700/10",
      warning: "bg-red-50 text-red-700 ring-red-700/10",
      urgent: "bg-red-700 text-white ring-red-700/10"
    }.freeze
    private_constant :LEVEL_CLASSES

    def local_classes = [LOCAL_CLASSES, LEVEL_CLASSES[level]].join(" ")
  end
end
