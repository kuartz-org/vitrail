# frozen_string_literal: true

module Vitrail
  module Generators
    class InstallGenerator < Rails::Generators::Base
      source_root File.expand_path("templates", __dir__)

      def copy_stylesheets
        directory "stylesheets", "lib/assets/stylesheets"
      end

      def copy_preset
        template "vitrail_preset.js", "lib/assets/vitrail_preset.js"
      end

      # In `app/assets/stylesheets/application.tailwind.css`, makes these changes:
      # ```diff
      # - @tailwind base;
      # - @tailwind components;
      # - @tailwind utilities;
      # + @import "tailwindcss/base";
      # + @import "tailwindcss/components";
      # + @import "tailwindcss/utilities";
      # + @import "../../../lib/assets/stylesheets/vitrail/index.css";
      # ```
      def load_stylesheets
        gsub_file "app/assets/stylesheets/application.tailwind.css", /@tailwind base;/, '@import "tailwindcss/base";'
        gsub_file "app/assets/stylesheets/application.tailwind.css", /@tailwind components;/, '@import "tailwindcss/components";'
        gsub_file "app/assets/stylesheets/application.tailwind.css", /@tailwind utilities;/, '@import "tailwindcss/utilities";'
        inject_into_file "app/assets/stylesheets/application.tailwind.css", after: "@import \"tailwindcss/utilities\";\n" do
          "@import \"../../../lib/assets/stylesheets/vitrail/index.css\";\n"
        end
      end

      def config_tailwind
        inject_into_file "config/tailwind.config.js", after: "module.exports = {\n" do
          <<-JS
  presets: [
    require('../lib/assets/vitrail_preset.js')
  ],
          JS
        end

        inject_into_file "config/tailwind.config.js", after: "content: [\n" do
          "    './lib/assets/stylesheets/vitrail/*.css',\n"
        end
      end
    end
  end
end
