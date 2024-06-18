module Vitrail
  class Engine < ::Rails::Engine
    isolate_namespace Vitrail

    initializer "vitrail.action_controller" do |app|
      ActiveSupport.on_load :action_controller do
        helper Vitrail::Helper
      end
    end

    initializer "vitrail.assets.precompile" do |app|
      app.config.assets.paths << root.join("app", "components")
      app.config.assets.precompile += ["vitrail/index.css"]
    end

    # Load the generator
    config.generators do |g|
      g.templates.unshift File.expand_path("templates", __dir__)
    end

    rake_tasks do
      load "vitrail/tasks/install.rake"
    end
  end
end
