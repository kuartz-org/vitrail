# frozen_string_literal: true

module Vitrail
  class Table
    class Division < BaseComponent
      LOCAL_CLASSES = "whitespace-nowrap px-3 py-4 text-sm text-gray-500"

      private attr_reader :link_path

      def initialize(link_to: nil, **html_options)
        super(**html_options)
        @link_path = link_to
      end

      private

      def link_to? = link_path.present?

      def local_classes
        LOCAL_CLASSES + (" group-hover:bg-gray-50" if link_to?).to_s
      end
    end
  end
end
