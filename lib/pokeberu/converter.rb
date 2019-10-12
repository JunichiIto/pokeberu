module Pokeberu
  class Converter
    TABLE = [
      %w(あ い う え お Ａ Ｂ Ｃ Ｄ Ｅ),
      %w(か き く け こ Ｆ Ｇ Ｈ Ｉ Ｊ),
      %w(さ し す せ そ Ｋ Ｌ Ｍ Ｎ Ｏ),
      %w(た ち つ て と Ｐ Ｑ Ｒ Ｓ Ｔ),
      %w(な に ぬ ね の Ｕ Ｖ Ｗ Ｘ Ｙ),
      %w(は ひ ふ へ ほ Ｚ ？ ！ － ／),
      %w(ま み む め も ￥ ＆ 🕒 ☎️ ☕️),
      %w(や （ ゆ ） よ ＊ ＃ \  ？ ？),
      %w(ら り る れ ろ １ ２ ３ ４ ５),
      %w(わ を ん ゛ ゜ ６ ７ ８ ９ ０),
    ]

    def to_chars(input)
      input.scan(/../).map { |row_col|
        row, col = row_col.chars.map(&:to_i)
        TABLE[row - 1][col - 1]
      }.join.katakana.zen_to_han
    end
  end
end
