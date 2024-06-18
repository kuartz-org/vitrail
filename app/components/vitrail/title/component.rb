# frozen_string_literal: true

module Vitrail
  module Title
    class Component < BaseComponent
      erb_template <<~ERB.squish
      <h<%= level %> class="<%= html_classes %>" <%= html_attributes %>>
        <%= content %>
      </h<%= level %>>
      ERB

      def initialize(html_options = {})
        @level = html_options.delete(:level) || 1
        super(**html_options)

        raise ArgumentError, "Invalid level: #{level}" unless LEVEL_CLASSES[level]
      end

      private

      attr_reader :level

      LEVEL_CLASSES = {
        1 => "vt-title--level1",
        2 => "vt-title--level2",
        3 => "vt-title--level3",
        4 => "vt-title--level4",
      }.freeze
      private_constant :LEVEL_CLASSES

      def local_classes = "vt-title #{LEVEL_CLASSES[level]}"
    end
  end
end
