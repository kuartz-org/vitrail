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

    LOCAL_CLASSES = "vt-badge--container"
    LEVEL_CLASSES = {
      default: "vt-badge--level-default",
      info: "vt-badge--level-info",
      positive: "vt-badge--level-positive",
      negative: "vt-badge--level-negative",
      warning: "vt-badge--level-warning",
      urgent: "vt-badge--level-urgent"
    }.freeze
    private_constant :LEVEL_CLASSES

    def local_classes = [LOCAL_CLASSES, LEVEL_CLASSES[level]].join(" ")
  end
end
