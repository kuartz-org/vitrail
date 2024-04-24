module Vitrail
  class Engine < ::Rails::Engine
    isolate_namespace Vitrail

    initializer "vitrail.action_controller" do |app|
      ActiveSupport.on_load :action_controller do
        helper Vitrail::Helper
      end
    end
  end
end
