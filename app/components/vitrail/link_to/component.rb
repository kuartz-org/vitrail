module Vitrail
  module LinkTo
    class Component < BaseComponent
      def initialize(name_or_options = nil, options = {}, html_options = {})
        @name_or_options = name_or_options
        @options = options
        @html_options = html_options
      end

      def call
        if content.present?
          @variant = options.delete(:variant) || :default
          @size = options.delete(:size) || :default

          options["class"] = [
          "vt-link",
          variant,
          size,
          options["class"],
        ].compact.join(" ")

          link_to(name_or_options, options) { content }
        else
          @variant = html_options.delete(:variant) || :default
          @size = html_options.delete(:size) || :default

          html_options["class"] = [
            "vt-link",
            variant,
            size,
            html_options["class"],
          ].compact.join(" ")

          link_to name_or_options, options, html_options
        end
      end

      private

      attr_reader :name_or_options, :options, :html_options

      VARIANTS = %i[
        default
        primary
        outline
        secondary
        ghost
      ].freeze
      def variant
        @variant.in?(VARIANTS) ? "vt-link--variant-#{@variant}" : "vt-link--variant-default"
      end

      SIZES = %i[
        default
        sm
        lg
        icon
      ].freeze
      def size
        @size.in?(SIZES) ? "vt-link--size-#{@size}" : "vt-link--size-default"
      end
    end
  end
end
