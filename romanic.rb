# Add a new method to the Integer class called to_roman which will convert 
# any integer between 1 and 4,999 (inclusive) to its Roman numeral equivalent. 
# Since numbers 5,000 and beyond require a bar over the character, we will 
# limit the range as specified. If a number is outside the range, it should 
# return nil. Moreover, you need to change the String class to add a method 
# called from_roman that will convert a Roman numeral string to its integer 
# equivalent. (Again, if there is no equivalent or it is outside the range, 
# it should return nil.)
#    
# More information about the system of Roman numerals can be found at:
# http://www.novaroma.org/via_romana/numbers.html

# Potential solution to Programming Challenge 2
# =====================================================

module Romanic

  # some initial setup is necessary...
  IS_ROMAN = /^(?=.)M*(D?C{0,3}|C[DM])(L?X{0,3}|X[LC])(V?I{0,3}|I[VX])$/  
  NUMERAL_ARABIC = [  1000, 900, 500, 400, 100, 90, 50, 40, 10, 9, 5, 4, 1]
  NUMERAL_ROMANS = %w(M     CM   D    CD   C    XC  L   XL   X IX  V IV  I)
  
  # Create my lookup array from previous two with zip()
  ROMAN_LOOKUP = NUMERAL_ROMANS.zip(NUMERAL_ARABIC)
  # >> [["M", 1000], ["CM", 900], ["D", 500], ["CD", 400], ["C", 100], ["XC", 90], ["L", 50], ["XL", 40], ["X", 10], ["IX", 9], ["V", 5], ["IV", 4], ["I", 1]]
  
  module RomanicIntegers
    # Convert integers to roman numerals
    def to_roman
      number = self
      return nil unless number.class == Integer
      return nil unless number > 0 and number < 5000
      ROMAN_LOOKUP.inject("") do |result, (roman, arabic)|
        # divmod() returns array of quotient and modulus
        count, number = number.divmod(arabic)
        result << (roman * count)
        result
      end
    end
  end

  module RomanicStrings
    # Convert roman numerals to integers
    def from_roman
      string = self
      return nil unless string.to_s.match(IS_ROMAN)
      ROMAN_LOOKUP.inject(0) do |result, (roman, arabic)|
        while string.index(roman) == 0
          result += arabic
          string.slice!(roman)
        end
        result
      end
    end
  end
end


