class ValidParentheses
  def is_valid(s)
    stack = []
    s.each_char do |bracket|
      case bracket
      when '('
        stack.push('(')
      when ')'
        return false if stack.empty? || stack.pop != '('
      when '}'
        return false if stack.empty? || stack.pop != '{'
      when '{'
        stack.push('{')
      when '['
        stack.push('[')
      when ']'
        return false if stack.empty? || stack.pop != '['
      end            
    end
    stack.empty?
  end
end

# Optimised Code

# def is_valid(s)
#   stack = []
#   matching_brackets = { ')' => '(', '}' => '{', ']' => '[' }

#   s.each_char do |bracket|
#       if matching_brackets.key?(bracket)
#           return false if stack.empty? || stack.pop != matching_brackets[bracket]
#       else
#           stack.push(bracket)
#       end
#   end
#   stack.empty?
# end