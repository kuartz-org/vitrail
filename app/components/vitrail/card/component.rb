module Vitrail
  module Card
    class Component < BaseComponent
      renders_one :title
      renders_one :description
      renders_one :footer
    end
  end
end
