$roman_mapping = {1000 => "M",
 900 => "CM",
 500 => "D",
 400 => "CD",
 100 => "C",
 90 => "XC",
 50 => "L",
 40 => "XL",
 10 => "X",
 9 => "IX",
 5 => "V",
 4 => "IV",
 1 => "I" }

def roman_num(n) #so we know the order for sure
  $breakpoint_values = []
  $roman_mapping.each_key{|k| $breakpoint_values << k}
  $breakpoint_values.sort!.reverse!
  return roman(n) 
end

def roman(n)
  return "" if n == 0
  $breakpoint_values.each do |k|
    if n >= k
      return $roman_mapping[k] + roman(n - k)
    end
  end
end

p roman_num(455) == "CDLV"
