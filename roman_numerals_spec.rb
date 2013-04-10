require 'rspec'
require_relative 'roman_numerals.rb'

describe "Roman Numeral Converter" do

  [
      [ 1, "I" ],
      [ 2, "II" ],
      [ 3, "III" ],
      [ 4, "IV" ],
      [ 5, "V" ],
      [ 10, "X" ],
      [ 20, "XX" ],
      [ 40, "XL"],
      [ 50, "L" ],
      [ 2013, "MMXIII"],
      [ 3999, "MMMCMXCIX"]
  ].each do |numeric_pair|
    it "#{numeric_pair[0]} should return #{numeric_pair[1]}" do
      numeral = RomanNumerals.new(numeric_pair[0])
      numeral.to_numeral.should == numeric_pair[1]
    end
  end

  it "Should not accept zero" do
    numeral = RomanNumerals.new(0)
    numeral.is_valid.should == false
  end

  it "Should not accept a value over 3999" do
    numeral = RomanNumerals.new(4000)
    numeral.is_valid.should == false
  end

end

