# frozen_string_literal: true

module Vitrail
  class Table < BaseComponent
    renders_many :headers, Table::Header
    renders_many :rows, Table::Row

    def local_classes = "overflow-x-auto"
  end
end
