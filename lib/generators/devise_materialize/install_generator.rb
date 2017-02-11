# frozen_string_literal: true
require "rails/generators"

module DeviseMaterialize
  class InstallGenerator < Rails::Generators::Base
    source_root File.expand_path("../../templates", __FILE__)

    desc "Creates a Devise Materialize Styled Views"
    argument :namespace, type: :string, default: "Users"
    class_option :form_engine, type: :string, default: "default",
                               description: "Define if simple form is used " \
                               "to load views built with simple form"
    class_option :view_engine, type: :string, default: "erb", alias: "-e",
                               description: "Choose a template engine " \
                               "from erb, haml, or slim"

    def generate_views
      puts "Generating Views"
      directory "#{view_engine.downcase}/#{form_engine}",
                "app/views/#{namespace.downcase}"
    end
  end
end
