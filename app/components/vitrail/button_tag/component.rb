module Vitrail
  module ButtonTag
    class Component < BaseComponent
      def initialize(content_or_options = {}, options = {})
        @content_or_options = content_or_options
        @options = options
      end

      def call
        if content.present?
          @variant = content_or_options.delete(:variant) || :default
          @size = content_or_options.delete(:size) || :default

          @options = {
            "name" => "button",
            "type" => "submit"
          }.merge!(options.stringify_keys)

          options["class"] = [
            "button",
            variant,
            size,
            options["class"],
          ].compact.join(" ")

          content_tag(:button, options) { content }
        else
          @variant = options.delete(:variant) || :default
          @size = options.delete(:size) || :default

          @options = {
            "name" => "button",
            "type" => "submit"
          }.merge!(options.stringify_keys)

          options["class"] = [
            "button",
            variant,
            size,
            options["class"],
          ].compact.join(" ")

          content_tag :button, content_or_options || "Button", options
        end
      end

      private

      attr_reader :options, :content_or_options

      VARIANTS = %i[
        default
        destructive
        outline
        secondary
        ghost
        link
      ].freeze
      def variant
        @variant.in?(VARIANTS) ? "button--variant-#{@variant}" : "button--variant-default"
      end

      SIZES = %i[
        default
        sm
        lg
        icon
      ].freeze
      def size
        @size.in?(SIZES) ? "button--size-#{@size}" : "button--size-default"
      end
    end
  end
end
