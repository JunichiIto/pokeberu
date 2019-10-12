module Pokeberu
  class Decorator
    LENGTH = 16

    def decorate(text)
      lines = []
      lines << hr
      lines << "| #{text.ljust(LENGTH)} |"
      lines << hr
      lines.join("\n")
    end

    private

    def hr
      '-' * (LENGTH + 4)
    end
  end
end
