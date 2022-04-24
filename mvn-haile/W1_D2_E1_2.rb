class Array
  def sum
    result=self.map{|idx| idx.is_a?(String)}
    if result.include?(true)
      return nil
    else
      return self.reduce{|sum,idx| sum+idx}
    end
  end
end
p [1,2,3,4].sum
