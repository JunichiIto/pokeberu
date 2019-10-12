module Pokeberu
  class Decorator
    LENGTH = 16

    def decorate(text)
      lines = []
      lines << hr
      lines << "|#{text.center(LENGTH)}|"
      lines << hr
      lines.join("\n")
    end

    private

    def hr
      '-' * (LENGTH + 2)
    end
  end
end
