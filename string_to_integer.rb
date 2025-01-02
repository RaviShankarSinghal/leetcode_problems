class StringToInteger
  def my_atoi(s)
    s.strip.to_i < 0 ? (s.strip.to_i < -2**31 ? -2**31 : s.strip.to_i ) : ( s.strip.to_i > 2**31-1  ? 2**31 - 1 : s.strip.to_i )
  end
end