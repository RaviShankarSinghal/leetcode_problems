class SearchInsertPosition
  def search_insert(nums, target)
    return nums.index(target) if nums.include?(target)
    return nums.length if nums[nums.length-1] < target
    return 0 if nums[0] > target

    nums.each_with_index do |num, index|
      if num > target && num[index - 1] < target
        return index
      elsif num < target && num[index + 1] > target
        return index + 1
      end
    end
    
  end
end


