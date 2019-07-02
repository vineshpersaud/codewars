def valid_parentheses(string)
  array = string.split('')
  array.delete_if {|string| string != '(' &&  string != ')'}
  valid = true
  until array == []
    if array[0] == ')' || array[-1] == '('
      valid = false
      break
   elsif array[0] == '(' && array[1] == ')'
      array.shift
      array.shift
      valid = true
    elsif array[0] == '(' && array[-1] == ')'
      array.pop
      array.shift
      valid = true
    else
      valid = false
      break
    end
  end
end

valid_parentheses("hi(hi)()")
