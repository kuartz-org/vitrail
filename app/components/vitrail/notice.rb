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
      default: "!bg-gray-50",
      caution: "!bg-yellow-50",
      critical: "!bg-red-50"
    }.freeze
    private_constant :LEVEL_BACKGROUNDS
    def level_background = LEVEL_BACKGROUNDS[level]

    LEVEL_ICONS = {
      default: "fa-solid fa-square-info text-gray-500",
      caution: "fa-solid fa-square-info text-yellow-600",
      critical: "fa-solid fa-triangle-exclamation text-red-600"
    }.freeze
    private_constant :LEVEL_ICONS
    def level_icon = LEVEL_ICONS[level]
  end
end
