def exercise1
  input_string=gets.chomp.chars
  result=input_string.map{ |idx| input_string.count(idx) >=2? 1 : 0} 
  if result.include?(1)
    return 1
  elsif result.include?(0)
    return 0
  end
end
p exercise1
