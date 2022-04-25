=begin

Exercise 3: Write program give an integer array, find three numbers whose product is maximum and output the maximum product.

=end

array = [1, 2, 3, 4, 5]
combination = array.combination(3).to_a
array = combination.map { |x| x.reduce("*") }
p array.max
p combination[array.find_index(array.max)]
