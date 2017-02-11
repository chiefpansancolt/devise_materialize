# frozen_string_literal: true
require "test_helper"

class InstallGeneratorTest < Rails::Generators::TestCase
  tests DeviseMaterialize::InstallGenerator
  destination File.expand_path("../../tmp", __FILE__)
  setup :prepare_destination

  test "assert files created for default namespace and no params" do
    run_generator
    assert_files
  end

  test "assert files created for default namespace with haml" do
    run_generator %w(-v haml)
    assert_files nil, view_engine: "html.haml"
  end

  test "assert files created for default namespace wil slim" do
    run_generator %w(-v slim)
    assert_files nil, view_engine: "html.slim"
  end

  test "assert files created for users namespace with no params" do
    run_generator %w(User)
    assert_files "users"
  end

  test "assert files created for users namespace with haml" do
    run_generator %w(User -v haml)
    assert_files "users", view_engine: "html.haml"
  end

  test "assert files created for users namespace wil slim" do
    run_generator %w(User -v slim)
    assert_files "users", view_engine: "html.slim"
  end

  test "assert files created for default namespace and simple form" do
    run_generator %w(-f simple_form)
    assert_files
  end

  test "assert files created for default namespace with haml and simple_form" do
    run_generator %w(-v haml -f simple_form)
    assert_files nil, view_engine: "html.haml"
  end

  test "assert files created for default namespace wil slim and simple form" do
    run_generator %w(-v slim -f simple_form)
    assert_files nil, view_engine: "html.slim"
  end

  test "assert files created for users namespace with and simple form" do
    run_generator %w(User -f simple_form)
    assert_files "users"
  end

  test "assert files created for users namespace with haml and simple form" do
    run_generator %w(User -v haml -f simple_form)
    assert_files "users", view_engine: "html.haml"
  end

  test "assert files created for users namespace wil slim and simple form" do
    run_generator %w(User -v slim -f simple_form)
    assert_files "users", view_engine: "html.slim"
  end

  def assert_files(scope = nil, options = {})
    scope = "devise" if scope.nil?
    view_engine = options[:view_engine] || "html.erb"

    assert_file "app/assets/stylesheets/devise.scss"
    assert_file "app/helpers/devise_helper.rb"
    assert_file "app/views/#{scope}/confirmations/new.#{view_engine}"
    assert_file(
      "app/views/#{scope}/mailer/confirmation_instructions.#{view_engine}"
    )
    assert_file "app/views/#{scope}/mailer/password_change.#{view_engine}"
    assert_file(
      "app/views/#{scope}/mailer/reset_password_instructions.#{view_engine}"
    )
    assert_file "app/views/#{scope}/mailer/unlock_instructions.#{view_engine}"
    assert_file "app/views/#{scope}/passwords/edit.#{view_engine}"
    assert_file "app/views/#{scope}/passwords/new.#{view_engine}"
    assert_file "app/views/#{scope}/registrations/edit.#{view_engine}"
    assert_file "app/views/#{scope}/registrations/new.#{view_engine}"
    assert_file "app/views/#{scope}/sessions/new.#{view_engine}"
    assert_file "app/views/#{scope}/shared/_links.#{view_engine}"
    assert_file "app/views/#{scope}/unlocks/new.#{view_engine}"
  end
end
