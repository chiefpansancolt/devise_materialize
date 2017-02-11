# frozen_string_literal: true
module DeviseMaterialize
  class InstallGenerator < Rails::Generators::Base
    source_root File.expand_path("../../templates", __FILE__)

    desc "Creates a Devise Materialize Styled Views"
    argument :namespace, type: :string, defualt: "Users"
    class_option :simple_form, type: :boolean, default: false, alias: "-s",
                               description: "Define if simple form is used " \
                               "to load views built with simple form"
    class_option :template_engine, type: :string, default: "erb", alias: "-e",
                                   description: "Choose a template engine " \
                                   "from erb, haml, or slim"

    def generate_views
      binding.pry
      if options.simple_form
        simple_form_views(options.template_engine.downcase)
      else
        default_views(options.template_engine.downcase)
      end
    end

    private

    def simple_form_views(data)
      case data
      when "erb"
        directory "erb/simple_form", "app/views/#{namespace.downcase}"
      when "haml"
        directory "haml/simple_form", "app/views/#{namespace.downcase}"
      when "slim"
        directory "slim/simple_form", "app/views/#{namespace.downcase}"
      end
    end

    def default_views(data)
      case data
      when "erb"
        directory "erb/defaults", "app/views/#{namespace.downcase}"
      when "haml"
        directory "haml/defaults", "app/views/#{namespace.downcase}"
      when "slim"
        directory "slim/defaults", "app/views/#{namespace.downcase}"
      end
    end
  end
end
