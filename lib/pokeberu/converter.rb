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
      to_c = -> ((row, col)) { TABLE[row][col] }

      input
        .each_char
        .map(&:to_i)
        .map(&:pred)
        .each_slice(2)
        .map(&to_c)
        .join
        .katakana
        .zen_to_han
    end

    def help
      str = ''
      col_count = TABLE[0].size

      line = '----' * col_count + '-' * (col_count - 1)
      str << '|'
      str << line
      str << '|'
      str << "\n"
      TABLE.each.with_index(1) do |row, ri|
        ri = 0 if ri > 9

        str << '|'
        str << row.map{|s| s.center(3) }.join('|').katakana
        str << '|'
        str << "\n"

        from = "#{ri}0".to_i
        to = "#{ri}9".to_i
        nums = (from..to).to_a
        nums = [*nums[1..-1], nums[0]].map{|n| n.to_s.rjust(2, '0').center(4) }
        str << '|'
        str << nums.join('|')
        str << '|'
        str << "\n"

        line = '----' * col_count + '-' * (col_count - 1)
        str << '|'
        str << line
        str << '|'
        str << "\n"
      end
      str
    end
  end
end
