class FirstOccurance
  def str_str(haystack, needle)
    return -1 unless haystack.include?(needle)
    
    return haystack.index(needle)
  end
end