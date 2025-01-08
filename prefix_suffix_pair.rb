class PrefixSuffixPair
  def count_prefix_suffix_pairs(words)
    count = 0
    words.each do |word|
        words.each do |wrd|
            next if word == wrd
            count += 1 if isPrefixAndSuffix(word, wrd)
        end
    end
    count
  end

  def isPrefixAndSuffix(str1, str2)
      max_len = str2.length-str1.length
      puts "Prefix: #{str2[0...str1.length]} and Suffix: #{str2[max_len..-1]}"
      str2[0...str1.length] == str1 && str2[max_len..-1] == str1
  end
end