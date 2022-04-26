=begin

Exercise 2: Extend the in-built Ruby “Array” class to contain sum method, 

if array only has number then compute and return a sum of array , 
returns nil for anything else.

[1,2,3,4].sum = 10

=end

class Array

  def sum 
    result = 0
    self.each do |x|
      return p nil unless x.is_a?(Numeric) 
     
      result += x
    end
    p result
  end

end

array = [1, 2, 3, 4]
array.sum

array = [1, "a", 3, 4]
array.sum
