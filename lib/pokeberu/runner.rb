module Pokeberu
  class Runner
    def self.run
      converter = Pokeberu::Converter.new
      decorator = Pokeberu::Decorator.new
      loop do
        print 'メッセージを入力してください (exitで終了): '
        input = gets.chomp
        if input == 'exit'
          break
        else
          chars = converter.to_chars(input)
          puts decorator.decorate(chars), "\n"
        end
      end
      puts 'Bye!'
    end
  end
end
