class MySqrt
  def my_sqrt(x)
    return x if x < 2

    left, right = 2, x / 2

    while left <= right
      mid = left + (right - left) / 2
      square = mid * mid

      if square == x
        return mid
      elsif square < x
        left = mid + 1
      else
        right = mid - 1
      end
    end

    right
  end

  def second_my_sqrt_solution(x)
    (1..x/2).each do |i|
      puts "Befrore loop: #{i}"
      if i*i == x
        return i
      elsif i*i < x && ((i+1)*(i+1)) > x
        return i
      end  
    end
  end
end
