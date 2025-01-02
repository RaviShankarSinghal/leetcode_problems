class PalindromeNumber
  def is_palindrome(x)
    return false if x.negative?
    num_array = int_to_arr(x)
    num_array.each_with_index do |num, index|
        next if num == num_array[num_array.length - 1 - index]
        return false
    end
    true
  end

  def int_to_arr(x)
      arr = []
      while x > 0
          arr << x%10
          x = x/10
      end
      arr
  end
end 

## Optimise the Code

# def is_palindrome(x)
#   return false if x.negative?
#   original = x
#   reverse = 0

#   while x > 0
#       reverse = reverse *10 + x%10
#       x = x/10
#   end

#   original == reverse
# end