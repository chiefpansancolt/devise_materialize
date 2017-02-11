# frozen_string_literal: true
require "rails/generators"

module DeviseMaterialize
  class InstallGenerator < Rails::Generators::Base
    source_root File.expand_path("../../templates", __FILE__)

    desc "Creates a Devise Materialize Styled Views"
    argument :namespace, type: :string, default: "Devise"
    class_option :form_engine, type: :string, default: "default", aliases: "-f"
    class_option :view_engine, type: :string, default: "erb", aliases: "-v"

    def generate_views
      puts "Generating Views..."
      directory "#{options.view_engine.downcase}/#{options.form_engine}",
                "app/views/#{file_name}"
      puts "Generating Stylesheet..."
      directory "assets", "app/assets/"
      puts "Generating Devise Helper..."
      directory "helpers", "app/helpers"
    end

    private

    def file_name
      if namespace.casecmp("devise").zero?
        namespace.downcase.underscore
      else
        namespace.downcase.underscore.pluralize
      end
    end
  end
end
