module Vitrail
  module Card
    class Component < BaseComponent
      renders_one :title, Card::Title
      renders_one :description
      renders_one :footer
    end
  end
end
