# frozen_string_literal: true

module Vitrail
  class Title < BaseComponent
    LEVEL_CLASSES = {
      1 => "mt-10 mb-4 text-2xl xl:text-3xl font-bold tracking-tight text-slate-900",
      2 => "mt-8 mb-2 text-xl xl:text-2xl font-bold tracking-tight text-slate-900",
      3 => "mt-4 mb-1 xl:text-lg font-semibold tracking-tight text-slate-800"
    }.freeze
    private_constant :LEVEL_CLASSES

    private attr_reader :level

    def initialize(level: 1, **html_attributes)
      super(**html_attributes)
      @level = level
    end

    def call
      content_tag("h#{level}", content, class: html_classes, **html_options)
    end

    private

    def local_classes = LEVEL_CLASSES[level]
  end
end
