$roman_mapping = { "M" => 1000,
                 "CM" => 900,
                 "D" => 500,
                 "CD" => 400,
                 "C" => 100,
                 "XC" => 90,
                 "L" => 50,
                 "XL" => 40,
                 "X" => 10,
                 "IX" => 9,
                 "V" => 5,
                 "IV" => 4,
                 "I" => 1 }

#check the string for a match with a key
# if matched print and call the method again 
# with the string subtracted and the number added
def roman(s)
  return 0 if s.empty?
  result = 0
  $roman_mapping.each_pair do |key, value|
    if s[0] == key
      result += value
      return result + roman(s.slice(1..s.length - 1))
    elsif s[0..1] == key
      result += value
      return result + roman(s.slice(2..s.length - 1))
    end
  end 
  return result
end

p roman("MCM") == 1900
p roman("XLVIII") == 48
p roman("MCDXI") == 1411