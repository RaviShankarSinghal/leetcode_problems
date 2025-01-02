class RemoveElements
  def remove_element(nums, val)
    k = 0
    (0...nums.size).each do |i|
      if nums[i] != val
        nums[k] = nums[i]
        k = k+1
      end
    end
    k 
  end
end