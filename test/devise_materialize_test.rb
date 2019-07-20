# frozen_string_literal: true

require "test_helper"

class DeviseMaterializeTest < Minitest::Test
  def test_version
    version = DeviseMaterialize::VERSION

    assert(!version.nil?)
  end
end
