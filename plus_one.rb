class PlusOne
  def plus_one(digits)
    new_num = digits.join().to_i + 1
    new_arr = []
    while new_num > 0
      new_arr.push(new_num%10)
      new_num = new_num/10
    end
    new_arr.reverse
  end
end