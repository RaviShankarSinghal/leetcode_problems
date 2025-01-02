class LongestCommonPrefix
  def longest_common_prefix(strs)
    prefix = ""
    length = strs.map { |str| str.length}.min
    length.times do |i|
        char = strs[0][i]
        strs.each { |str| return prefix if str[i] != char }
        prefix += char
    end
    prefix
  end
end