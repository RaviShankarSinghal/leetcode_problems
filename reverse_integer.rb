class ReverseInteger
  def reverse(x)
    return 0 if x >= (2**31 - 1) || x <= (-2**31)
    arr = []
    x < 0 ? arr.push("-", x.to_s.split('')[1..].reverse ).flatten : arr.push(x.to_s.split('').reverse)
    x = arr.join('').to_i
    return x >= (2**31 - 1) || x <= (-2**31) ? 0 : x
  end
end

# Optimise code
  # def reverse(x)
  #   return 0 if x.to_s.reverse.to_i > 2**31-1

  #   x<0 ? -x.to_s.reverse.to_i : x.to_s.reverse.to_i
  # end