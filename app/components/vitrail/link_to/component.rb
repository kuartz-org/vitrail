module Vitrail
  module LinkTo
    class Component < BaseComponent
      def initialize(name_or_options = nil, options = {}, html_options = {})
        @name_or_options = name_or_options
        @options = options || {}
        @html_options = html_options || {}
      end

      def call
        return content if name_or_options.blank? # Prevents linking if URL is nil

        if content.present?
          process_options!
          link_to(name_or_options, options) { content }
        else
          process_html_options!
          link_to(name_or_options, options, html_options)
        end
      end

      private

      attr_reader :name_or_options, :options, :html_options

      VARIANTS = %i[default primary outline secondary ghost].freeze
      SIZES = %i[default sm lg icon].freeze

      def process_options!
        @variant = options.delete(:variant) || :default
        @size = options.delete(:size) || :default
        options["class"] = build_class_list(variant, size, options["class"])
      end

      def process_html_options!
        @variant = html_options.delete(:variant) || :default
        @size = html_options.delete(:size) || :default
        html_options["class"] = build_class_list(variant, size, html_options["class"])
      end

      def build_class_list(variant, size, additional_classes)
        [
          "vt-link",
          variant_class(variant),
          size_class(size),
          additional_classes
        ].compact.join(" ")
      end

      def variant_class(variant)
        VARIANTS.include?(variant) ? "vt-link--variant-#{variant}" : "vt-link--variant-default"
      end

      def size_class(size)
        SIZES.include?(size) ? "vt-link--size-#{size}" : "vt-link--size-default"
      end
    end
  end
end
