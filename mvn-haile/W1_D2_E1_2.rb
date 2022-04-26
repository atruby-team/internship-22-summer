class Array
  def sum
    return nil if self.map { |i| i.is_a? (Numeric) }.include? false
    self.reduce("+")
  end
end

p [1, 2, 3, 4].sum
