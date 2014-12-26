module Refinements

  class BarString
    def initialize(value)
      @value = value
    end
  end

  refine String do
    def to_bar
      BarString.new(self)
    end
  end

end
