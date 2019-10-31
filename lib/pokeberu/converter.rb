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
    HELP_COL_WIDTH = 4
    H_BORDER = '-'
    V_BORDER = '|'

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
      tr = []
      col_count = TABLE[0].size
      tr << draw_full_border(col_count)
      TABLE.each.with_index(1) do |row, i|
        i = 0 if i > 9
        tr << draw_char_cols(row)
        tr << draw_num_cols(i)
        tr << draw_full_border(col_count)
      end
      tr.map(&method(:draw_raw)).join("\n")
    end

    private

    def draw_char_cols(row)
      row.map{|s| s.center(HELP_COL_WIDTH - 1) }.join(V_BORDER).katakana
    end

    def draw_num_cols(i)
      from = "#{i}0".to_i
      to = "#{i}9".to_i
      nums = (from..to).to_a
      nums = [*nums[1..-1], nums[0]].map(&method(:format_num))
      nums.join(V_BORDER)
    end

    def format_num(n)
      n.to_s.rjust(2, '0').center(HELP_COL_WIDTH)
    end

    def draw_full_border(col_count)
      H_BORDER * HELP_COL_WIDTH * col_count + H_BORDER * (col_count - 1)
    end

    def draw_raw(text)
      [V_BORDER, text, V_BORDER].join
    end
  end
end
