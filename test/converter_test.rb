require "test_helper"

class ConverterTest < Minitest::Test
  def test_to_chars
    converter = Pokeberu::Converter.new
    input = '1112324493'
    assert_equal 'ｱｲｼﾃﾙ', converter.to_chars(input)
  end
end

