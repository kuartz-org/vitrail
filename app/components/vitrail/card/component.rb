module Vitrail
  module Card
    class Component < BaseComponent
      renders_one :title
      renders_one :description
      renders_one :footer

      # Add an attribute to accept an optional link
      def initialize(link_to: nil)
        @link_to = link_to
      end

      attr_reader :link_to
    end
  end
end
