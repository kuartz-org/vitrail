# frozen_string_literal: true

module Vitrail
  class Table
    class Division < BaseComponent
      LOCAL_CLASSES = "vt-table--division"

      private attr_reader :link_path

      def initialize(link_to: nil, **html_options)
        super(**html_options)
        @link_path = link_to
      end

      private

      def link_to? = link_path.present?

      def local_classes
        LOCAL_CLASSES + (" vt-table--division-link-to-container" if link_to?).to_s
      end
    end
  end
end
