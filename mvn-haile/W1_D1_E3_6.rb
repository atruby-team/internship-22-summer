_input = [1, 2, 3, 1]
p _input.reduce{|sum,i| sum+i}




_output=[]
(0..1000).each do |i|
	if (i%3 == 0)&(i%5 == 0)
		_output=_output+[i]
	end
end
p _output




_out=_output
_output.each do |idx|
	if idx%2 != 0
		_out=_out - [idx]
	end
end
p _out




_input_hash = {Bob: 7, Smith: 8, Kate: 9}
p _input_hash.select{|k,v| v >= 8}