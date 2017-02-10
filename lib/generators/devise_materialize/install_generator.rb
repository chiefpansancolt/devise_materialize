require "rails/generators/base"

module DeviseMaterializse
  module generators
    class InstallGenerator < Rails::Generators::Base
      source_root File.expand_path("../../templates", __FILE__)

      desc "Creates a Devise Materialize Styled Views"
    end
  end
end
