module Vitrail
  class Engine < ::Rails::Engine
    isolate_namespace Vitrail

    initializer "vitrail.precompile" do |app|
      app.config.assets.precompile += %w[vitrail_manifest]
    end
  end
end
