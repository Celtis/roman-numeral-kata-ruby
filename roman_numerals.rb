class RomanNumerals

  NUMERALS = [
      ["M", 1000],
      ["CM", 900],
      ["D", 500],
      ["CD", 400],
      ["C", 100],
      ["XC", 90],
      ["L", 50],
      ["XL", 40],
      ["X", 10],
      ["IX", 9],
      ["V", 5],
      ["IV", 4],
      ["I", 1]
  ]

  def initialize(numeric)
    @value = numeric
  end

  def is_valid
    # Make sure that the number is between 0 and 4000 and that it is a valid number, as per the caveats
    if @value > 0 && @value < 4000
       if @value.is_a? Fixnum
         return true
       end
    end

    return false
  end

  def to_numeral
    result = ""
    NUMERALS.each do |numeral, arabic|
      while @value >= arabic
        result += numeral
        @value -= arabic
      end
    end
    result
  end
end


