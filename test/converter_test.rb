require "test_helper"

class ConverterTest < Minitest::Test
  def test_to_chars
    converter = Pokeberu::Converter.new
    input = '1112324493'
    assert_equal 'ｱｲｼﾃﾙ', converter.to_chars(input)

    input = '281037373088583048371968'
    assert_equal 'HELLO WORLD!', converter.to_chars(input)

    input = '0112033573921497009798'
    assert_equal 'ﾜｲﾝｿﾑﾘｴ2023', converter.to_chars(input)
  end

  def test_help
    converter = Pokeberu::Converter.new
    expected = <<-TABLE.chomp
|-------------------------------------------------|
| ア | イ | ウ | エ | オ | Ａ | Ｂ | Ｃ | Ｄ | Ｅ |
| 11 | 12 | 13 | 14 | 15 | 16 | 17 | 18 | 19 | 10 |
|-------------------------------------------------|
| カ | キ | ク | ケ | コ | Ｆ | Ｇ | Ｈ | Ｉ | Ｊ |
| 21 | 22 | 23 | 24 | 25 | 26 | 27 | 28 | 29 | 20 |
|-------------------------------------------------|
| サ | シ | ス | セ | ソ | Ｋ | Ｌ | Ｍ | Ｎ | Ｏ |
| 31 | 32 | 33 | 34 | 35 | 36 | 37 | 38 | 39 | 30 |
|-------------------------------------------------|
| タ | チ | ツ | テ | ト | Ｐ | Ｑ | Ｒ | Ｓ | Ｔ |
| 41 | 42 | 43 | 44 | 45 | 46 | 47 | 48 | 49 | 40 |
|-------------------------------------------------|
| ナ | ニ | ヌ | ネ | ノ | Ｕ | Ｖ | Ｗ | Ｘ | Ｙ |
| 51 | 52 | 53 | 54 | 55 | 56 | 57 | 58 | 59 | 50 |
|-------------------------------------------------|
| ハ | ヒ | フ | ヘ | ホ | Ｚ | ？ | ！ | － | ／ |
| 61 | 62 | 63 | 64 | 65 | 66 | 67 | 68 | 69 | 60 |
|-------------------------------------------------|
| マ | ミ | ム | メ | モ | ￥ | ＆ | 🕒 |☎️ |☕️ |
| 71 | 72 | 73 | 74 | 75 | 76 | 77 | 78 | 79 | 70 |
|-------------------------------------------------|
| ヤ | （ | ユ | ） | ヨ | ＊ | ＃ |   | ？ | ？ |
| 81 | 82 | 83 | 84 | 85 | 86 | 87 | 88 | 89 | 80 |
|-------------------------------------------------|
| ラ | リ | ル | レ | ロ | １ | ２ | ３ | ４ | ５ |
| 91 | 92 | 93 | 94 | 95 | 96 | 97 | 98 | 99 | 90 |
|-------------------------------------------------|
| ワ | ヲ | ン | ゛ | ゜ | ６ | ７ | ８ | ９ | ０ |
| 01 | 02 | 03 | 04 | 05 | 06 | 07 | 08 | 09 | 00 |
|-------------------------------------------------|
    TABLE
    assert_equal expected, converter.help
  end
end
