# frozen_string_literal: true

module Vitrail
  class Title < BaseComponent
    erb_template <<~ERB.squish
    <h<%= level %> class="<%= html_classes %>" <%= html_attributes %>>
      <%= content %>
    </h<%= level %>>
    ERB

    LEVEL_CLASSES = {
      1 => "vt-title--level-one",
      2 => "vt-title--level-two",
      3 => "vt-title--level-three",
    }.freeze
    private_constant :LEVEL_CLASSES

    private attr_reader :level

    def initialize(level: 1, **html_options)
      super(**html_options)
      @level = level
    end

    private

    def local_classes = LEVEL_CLASSES[level]
  end
end
