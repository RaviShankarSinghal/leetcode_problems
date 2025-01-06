class AddBinary
  def add_binary(a, b)
    a, b = b, a if a.length < b.length

    carry = 0
    result = []

    a_idx, b_idx = a.length - 1, b.length - 1
    while a_idx >= 0 || carry > 0
      sum = carry
      sum += a[a_idx].to_i if a_idx >= 0
      sum += b[b_idx].to_i if b_idx >= 0

      result << (sum % 2) 
      carry = sum / 2    

      a_idx -= 1
      b_idx -= 1
    end

    result.reverse.join
  end
end