input = [1, 2, 3, 1]
p input.reduce{|sum,i| sum+i}
output=[]
(0..1000).each do |i|
  if (i%3 == 0)&&(i%5 == 0)
    output=output+[i]
  end
end
p output
output_copy=output
output_copy.each do |idx|
  if idx%2 != 0
    output_copy.delete(idx)
  end
end
p output_copy
input_hash = {Bob: 7, Smith: 8, Kate: 9}
p input_hash.select{|k,v| v >= 8}