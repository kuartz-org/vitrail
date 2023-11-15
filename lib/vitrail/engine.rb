module Vitrail
  class Engine < ::Rails::Engine
    isolate_namespace Vitrail

    initializer "vitrail.precompile" do |app|
      app.config.assets.precompile += %w[vitrail_manifest]
    end

    initializer "vitrail.lookbook" do |app|
      app.config.lookbook.preview_paths << Vitrail::Engine.root.join("test/components/previews")
      app.config.lookbook.preview_layout = Vitrail::Engine.root.join("app/views/layouts/vitrail/component_preview")
      app.config.lookbook.project_name = "Vitrail"
      app.config.lookbook.project_logo = false
      app.config.lookbook.ui_favicon = false
      app.config.lookbook.preview_collection_label = "Components"
      app.config.lookbook.ui_theme = "zinc"
      app.config.lookbook.preview_inspector.drawer_panels = [:source]
    end
  end
end
