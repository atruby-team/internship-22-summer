# Exercises 4
input1 = [1, 2, 3, 1]
input2 = [1, 1, 1, 3, 3, 4, 3, 2, 4, 2]
hash1=Hash.new { 0 }
hash2=Hash.new { 0 }
input1.each{|i| hash1.store(i,hash1[i]+1)}
p hash1
input2.each{|i| hash2.store(i,hash2[i]+1)}
p hash2
