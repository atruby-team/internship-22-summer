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
      if x.is_a?(Numeric)
        result += x
      else
        result = nil
        break
      end
    end
    p result
  end

end
