# frozen_string_literal: true

module Vitrail
  class Card < BaseComponent
    LOCAL_CLASSES = "vt-card--wrapper"

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
