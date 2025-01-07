class StringMatching
  def string_matching(words)
    string_match_arr = []
    sorted_words = words.sort_by(&:length)

    sorted_words.each_with_index do |word, i|
      sorted_words[(i + 1)..-1].each do |longer_word|
        if longer_word.include?(word)
          string_match_arr << word
          break
        end
      end
    end

    string_match_arr
  end
end