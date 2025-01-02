class LemonadeChange
  def lemonade_change(bills)
    fives = 0
    tens = 0
  
    bills.each do |bill|
      if bill == 5
        fives += 1
      elsif bill == 10
        return false if fives == 0
        fives -= 1
        tens += 1
      else bill == 20
        if tens > 0 && fives > 0
          tens -= 1
          fives -= 1
        elsif fives >= 3
          fives -= 3
        else
          return false
        end
      end
    end
  
    true
  end
end


## Optimise code of 

# def lemonade_change(bills)
#   a = { '5'=> 0, '10'=> 0, '20'=> 0}
#   bills.each do |bill|
#       if bill == 5
#         a['5'] += 1
#       elsif bill == 10
#       if a['5'] > 0
#           a['5'] -= 1
#           a['10'] += 1
#         else
#           return false
#         end
#       elsif bill == 20
#         if a['5'] > 0
#             if a['10'] > 0
#               a['5'] -= 1
#               a['10'] -= 1
#               a['20'] += 1
#             elsif a['5'] >= 3
#               a['5'] -= 3
#             else
#               return false
#             end
#         else
#           return false
#         end
#       end
#   end
#   return true
# end