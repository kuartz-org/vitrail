# frozen_string_literal: true

module Vitrail
  module Table
    class Header < BaseComponent
      erb_template <<~ERB.squish
      <th class="<%= html_classes %>" scope="col" <%= html_attributes %>>
        <%= content %>
      </th>
      ERB

      LOCAL_CLASSES = "vt-table--header"

      private

      def local_classes = LOCAL_CLASSES
    end
  end
end
