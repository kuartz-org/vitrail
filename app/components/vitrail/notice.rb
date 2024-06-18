# frozen_string_literal: true

module Vitrail
  class Notice < BaseComponent
    def initialize(title:, level: :default, **html_options)
      super(**html_options)
      @title = title
      @level = level
    end

    private

    attr_reader :title, :level

    LEVEL_BACKGROUNDS = {
      default: "vt-notice--level-bg-default",
      caution: "vt-notice--level-bg-caution",
      critical: "vt-notice--level-bg-critical"
    }.freeze
    private_constant :LEVEL_BACKGROUNDS
    def level_background = LEVEL_BACKGROUNDS[level]

    LEVEL_ICONS = {
      default: "vt-notice--level-icon-default fa-solid fa-square-info",
      caution: "vt-notice--level-icon-caution fa-solid fa-square-info",
      critical: "vt-notice--level-icon-critical fa-solid fa-triangle-exclamation"
    }.freeze
    private_constant :LEVEL_ICONS
    def level_icon = LEVEL_ICONS[level]
  end
end
