require "test_helper"

class DecoratorTest < Minitest::Test
  def test_to_decorate
    decorator = Pokeberu::Decorator.new
    input = 'ｱｲｼﾃﾙ'
    expected = <<-TEXT
--------------------
| ｱｲｼﾃﾙ            |
--------------------
    TEXT
    assert_equal expected, decorator.decorate(input)
  end
end
