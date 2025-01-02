class RemoveDuplicates
  def remove_duplicates(nums)
    k = 1
    (1...nums.size).each do |i|
      if nums[i] != nums[k-1]
        nums[k] = nums[i]
        k = k+ 1
      end
    end
    return k
  end
end