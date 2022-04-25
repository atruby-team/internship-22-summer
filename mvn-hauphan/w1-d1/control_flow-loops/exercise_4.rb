=begin

Exercise 4: Write program given an array of integers, find if the array contains any duplicates. 
Your function should return true if any value appears at least twice in the array, and it should 
return false if every element is distinct.

=end

array = [1, 2, 3, 4, 3]
flat = false
array.each do |x| 
  if array.count(x) > 1 
    flat = true
    break
  end
end

p flat
