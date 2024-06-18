# frozen_string_literal: true

module Vitrail
  module Table
    class Component < BaseComponent
      renders_many :headers, Table::Header
      renders_many :rows, Table::Row
    end
  end
end
