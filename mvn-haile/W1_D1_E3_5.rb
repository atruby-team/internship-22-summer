_input1 = [1, 2, 3, 1]
_input2 = [1, 1, 1, 3, 3, 4, 3, 2, 4, 2]

_hash1=Hash.new { 0 }
_hash2=Hash.new { 0 }

_input1.each{|i| _hash1.store(i,_hash1[i]+1)}
p _hash1
_input2.each{|i| _hash2.store(i,_hash2[i]+1)}
p _hash2