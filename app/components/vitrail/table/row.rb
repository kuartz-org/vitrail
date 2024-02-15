# frozen_string_literal: true

module Vitrail
  class Table
    class Row < BaseComponent
      erb_template <<~ERB.squish
      <tr class="vt-table--row" <%= html_attributes %>>
        <% divisions.each do |division| %>
          <%= division %>
        <% end %>
      </tr>
      ERB

      renders_many :divisions, ->(link_to: nil, **html_options) do
        Division.new(link_to: link_path, **html_options.merge(td_options))
      end

      private attr_reader :link_path, :td_options

      def initialize(link_to: nil, td: {}, **html_options)
        super(**html_options)
        @link_path = link_to
        @td_options = td
      end
    end
  end
end
