=begin

Exercise 3: Create a class ArrayClone to clone array. The class has some:

Attributes:
array: store a array.
length: length of array.

Methods:
new: initialize empty array and length = 0.
map: behavior like Array#map. Given a block and returns a new array. Note: Don’t use Array#map.
select: behavior like Array#select. Given a block and select elements for new array. Note: Don’t use Array#select.

=end

class ArrayClone
  attr_accessor :array
  attr_accessor :length

  def initialize
    @array = []
    @length = 0
  end

  def map 
    out = []
    if block_given?
      @array.each { |e| out << yield(e) }
    else
      out = to_enum :map
    end
    out
  end

  def select
    out = []
    if block_given?
      @array.each { |e| out << e if yield(e) }
    else
      out = to_enum :select
    end
    out
  end
end

a = ArrayClone.new
a.array = [1, 2, 2, 3, 3]
p a.map { |x| x + 1 }
p a.select { |x| x == 2 }
