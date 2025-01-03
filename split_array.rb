class SplitArray
  def ways_to_split_array(nums)
    count = 0
    total_sum = nums.sum
    left_sum = 0
    right_sum = 0
    (0...nums.length - 1).each do |i|
      left_sum += nums[i]
      right_sum = total_sum - left_sum
      count += 1 if left_sum >= right_sum
    end
    count
  end
end