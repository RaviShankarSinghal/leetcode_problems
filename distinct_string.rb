class DistinctString
  def kth_distinct(arr, k)
    arr.select { |l| arr.count(l) == 1 }[k - 1] || ''
  end
end


# Optimised Code of 

# def kth_distinct(arr, k)
#   return "" if arr.length < k || arr.uniq.length < k

#   new_distinct_arr = []

#   arr.each_with_index do |char, index|
#       distict = true
#       (0..arr.length-1).each do |i|
#           next if index == i
#           if arr[i] == char
#               distict = false
#           end
#       end
#       distict ? new_distinct_arr.push(char) : nil
#   end
#   new_distinct_arr.length <= 0 || new_distinct_arr.length < k ? '' : new_distinct_arr[k-1]
# end