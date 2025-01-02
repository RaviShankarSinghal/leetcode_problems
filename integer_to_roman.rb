class IntegerToRoman
  def int_to_roman(num)
    roman_mappings = [
      [1000, 'M'], [900, 'CM'], [500, 'D'], [400, 'CD'],
      [100, 'C'], [90, 'XC'], [50, 'L'], [40, 'XL'],
      [10, 'X'], [9, 'IX'], [5, 'V'], [4, 'IV'], [1, 'I']
    ]
  
    roman_str = ''
    roman_mappings.each do |value, symbol|
      while num >= value
        roman_str += symbol
        num -= value
      end
    end
    roman_str
  end
end