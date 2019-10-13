module Pokeberu
  class Decorator
    LENGTH = 16

    def decorate(text)
      <<-TEXT
#{hr}
| #{text.ljust(LENGTH)} |
#{hr}
      TEXT
    end

    private

    def hr
      '-' * (LENGTH + 4)
    end
  end
end
