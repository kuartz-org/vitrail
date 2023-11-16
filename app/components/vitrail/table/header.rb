# frozen_string_literal: true

module Vitrail
  class Table
    class Header < BaseComponent
      erb_template <<~ERB.squish
      <th class="<%= html_classes %> scope="col" <%= html_attributes %>>
        <%= content %>
      </th>
      ERB

      LOCAL_CLASSES = "px-3 py-4 text-left text-sm font-semibold text-gray-900"

      private

      def local_classes = LOCAL_CLASSES
    end
  end
end
