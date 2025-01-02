class RomanToInteger
  def roman_to_int(s)
    sum = 0
    roman_str = s.split('')
    roman_str.length.times do |index|
      case roman_str[index]
      when 'I'
        if roman_str[index+1] != nil && roman_str[index +1] == 'V'
          sum += 4
        elsif roman_str[index+1] != nil && roman_str[index +1] == 'X'
          sum += 9
        else
          sum += 1
        end
      when 'X'
        if roman_str[index+1] != nil && roman_str[index +1] == 'L'
          sum += 40
        elsif roman_str[index+1] != nil && roman_str[index +1] == 'C'
          sum += 90
        elsif index != 0 && roman_str[index-1] != nil && roman_str[index - 1] == 'I'
            next
        else
          sum += 10
          end
      when 'C'
        if roman_str[index+1] != nil && roman_str[index +1] == 'D'
          sum += 400
        elsif roman_str[index+1] != nil && roman_str[index +1] == 'M'
          sum += 900
        elsif index != 0 && roman_str[index-1] != nil && roman_str[index -1] == 'X'
            next
        else 
          sum += 100
        end
      when 'V'
        if index != 0 && roman_str[index-1] != nil && roman_str[index - 1] == 'I'
          next
        else
          sum += 5
        end
      when 'L'
        if index != 0 && roman_str[index-1] != nil && roman_str[index -1] == 'X'
          next
        else
          sum += 50
        end
      when 'D'
        if index != 0 && roman_str[index-1] != nil && roman_str[index -1] == 'C'
          next
        else
          sum += 500
        end
      when 'M'
        if index != 0 && roman_str[index-1] != nil && roman_str[index -1] == 'C'
          next
        else
          sum += 1000
        end
      end
    end
    sum
  end
end


## Optimised Logic

# def roman_to_int(s)
#   roman_to_int_map = { 'I' => 1, 'V' => 5, 'X' => 10, 'L' => 50, 'C' => 100, 'D' => 500, 'M' => 1000 }
#   sum = 0
#   previous_value = 0

#   s.each_char do |char|
#     current_value = roman_to_int_map[char]
#     if current_value > previous_value
#       sum += current_value - 2 * previous_value
#     else
#       sum += current_value
#     end
#     previous_value = current_value
#   end

#   sum
# end