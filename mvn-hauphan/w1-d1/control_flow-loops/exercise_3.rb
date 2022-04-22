=begin

Exercise 3: Write program give an integer array, find three numbers whose product is maximum and output the maximum product.

=end

array = [1,2,3,4]

array.combination(3)!.to_a

array.map! { |x| x.sum }

p array.max
