class MaximumScore
  def max_score(s)
    left_zeros = 0
    right_ones = s.count("1")
    max_score = 0

    s.chars[0...-1].each do |char|
      char == "0" ? left_zeros += 1 : right_ones -= 1
      max_score = [max_score, left_zeros + right_ones].max
    end

    max_score
  end
end