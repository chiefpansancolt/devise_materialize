# frozen_string_literal: true
require "rails/generators"

module DeviseMaterialize
  class InstallGenerator < Rails::Generators::Base
    source_root File.expand_path("../../templates", __FILE__)

    desc "Creates a Devise Materialize Styled Views"
    argument :namespace, type: :string, default: "Devise"
    class_option :form_engine, type: :string, default: "default",
                               description: "Choose a form engine " \
                               "(default or simple_form)"
    class_option :view_engine, type: :string, default: "erb",
                               description: "Choose a views engine " \
                               "(erb, haml, or slim)"

    def generate_views
      puts "Generating Views....."
      directory "#{options.view_engine.downcase}/#{options.form_engine}",
                "app/views/#{namespace.downcase}"
    end
  end
end
