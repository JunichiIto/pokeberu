require "test_helper"

class PokeberuTest < Minitest::Test
  def test_version
    refute_nil ::Pokeberu::VERSION
  end
end
