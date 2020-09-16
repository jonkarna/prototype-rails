# encoding: utf-8

module ActionView
  module Template::Handlers
    class RJS
      # Default format used by RJS.
      class_attribute :default_format
      self.default_format = ::Mime.respond_to?(:[]) ? ::Mime[:js] : ::Mime::JS

      def call(template, source = template.source)
        "update_page do |page|;#{source}\nend"
      end
    end
  end
end

