module Pokeberu
  class Runner
    BYE = '17501068'

    def self.run
      self.new.run
    end

    def initialize
      @converter = Pokeberu::Converter.new
      @decorator = Pokeberu::Decorator.new
    end

    def run
      loop do
        print 'メッセージを入力してください (exitで終了): '
        input = gets.chomp
        if input == 'exit'
          break
        else
          show_pokberu(input)
        end
      end
      show_pokberu(BYE)
    end

    private

    def show_pokberu(input)
      chars = @converter.to_chars(input)
      puts @decorator.decorate(chars), "\n"
    end
  end
end
