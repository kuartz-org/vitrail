# frozen_string_literal: true

module Vitrail
  module Card
    class Title < BaseComponent
      erb_template <<~ERB.squish
        <div class="<%= html_classes %>" <%= html_attributes %>>
          <%= content %>
        </div>
      ERB

      LOCAL_CLASSES = "vt-card--title"

      private

      def local_classes = LOCAL_CLASSES
    end
  end
end

