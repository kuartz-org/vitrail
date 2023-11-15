# frozen_string_literal: true

module Vitrail
  class Card < BaseComponent
    LOCAL_CLASSES = "border border-slate-200 rounded px-4 py-2 bg-white shadow-sm"

    private attr_reader :title, :icon

    def initialize(title: nil, icon: nil, **html_options)
      super(**html_options)
      @title = title
      @icon = icon
    end

    def local_classes = LOCAL_CLASSES
    def header? = title || icon
  end
end
