# frozen_string_literal: true

module Vitrail
  class Title < BaseComponent
    erb_template <<-ERB
      <h<%= level %> <%= html_attributes %>><%= content %></h1>
    ERB

    private attr_reader :level

    def initialize(level: 1, **html_attributes)
      super(**html_attributes)
      @level = level
    end
  end
end
