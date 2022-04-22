=begin

Exercise 3: Write program give an integer array, find three numbers whose product is maximum and output the maximum product.

=end

array = [1,2,3,4,5]
result = []
index = []
count = 0
combination = []
combination = array.combination(3).to_a
combination.each do |x| 
  volum = 1
  x.each { |i| volum *= i }
  result.push(volum)
end
result.each do |x| 
  index.push(count) if x == result.max
  count += 1
end
p result.max
index.each { |i| p combination[i] }
