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
      directory "#{options.view_engine.downcase}/#{options.form_engine}/mailer",
                "app/views/#{scope}/mailer"
      directory "#{options.view_engine.downcase}/#{options.form_engine}/shared",
                "app/views/#{scope}/shared"
      copy_views
      puts "Generating Javascript & Stylesheet..."
      directory "assets", "app/assets/"
      puts "Generating Devise Helper..."
      directory "helpers", "app/helpers"
    end

    private

    def copy_views
      update_views :confirmations
      update_views :passwords
      update_views :registrations
      update_views :sessions
      update_views :unlocks
    end

    protected

    def update_views(name)
      directory "#{view_file}/#{form_file}/#{name}",
                "#{target_path}/#{name}" do |content|
        if scope != "devise"
          content.gsub "devise/shared/links", "#{scope}/shared/links"
        else
          content
        end
      end
    end

    def target_path
      @target_path ||= "app/views/#{scope}"
    end

    def scope
      @scope ||=
        if namespace.casecmp("devise").zero?
          namespace.downcase.underscore
        else
          namespace.downcase.underscore.pluralize
        end
    end

    def view_file
      @view_file ||= options[:view_engine].downcase
    end

    def form_file
      @form_file ||= options[:form_engine].downcase
    end
  end
end
