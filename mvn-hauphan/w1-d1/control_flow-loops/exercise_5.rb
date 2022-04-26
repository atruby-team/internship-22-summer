=begin

Exercise 5: Gives an array and counts the appearance of elements:
Input: [1, 2, 3, 1]
Output: [{1 => 2}, {2 => 1}, {3 => 1}]
Input: [1, 1, 1, 3, 3, 4, 3, 2, 4, 2]
Output: [{1 => 3}, {2 => 2}, {3 => 3}, {4 => 2}]

=end

array = [1, 2, 3, 1]

# Cách 1

hash = Hash.new {0}
array.each do |x|
  hash.store(x, hash[x] + 1)
end
p hash

# Cách 2

hash = {}
array.each { |x| hash[x] = array.count(x) }
p hash 
