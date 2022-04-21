=begin

Exercise 4: Write program given an array of integers, find if the array contains any duplicates. 
Your function should return true if any value appears at least twice in the array, and it should 
return false if every element is distinct.

=end

array = [1, 2, 3, 4]

i = 0
flat = false

array.each do |x|
    i = i+1
    for y in i..array.length-1
        flat = true if x == array[y]
    end
end

p flat
