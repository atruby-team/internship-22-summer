class Array
  def sum
    self.each { |i| return nil unless i.is_a? (Numeric) }
    p self.reduce("+")
  end
end

p [1, 2, 3, 4].sum
