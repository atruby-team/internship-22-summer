=begin

Exercise 3: Write program give an integer array, find three numbers whose product is maximum and output the maximum product.

=end

array = [1,2,3,4]
count = 0
term = []
i = 0
3.times do 
    array.each do |x|
        if x > count 
            count = x
            term.push(x)
        end
    end
    i = i + 1
    array.delete_at(term[i])
end
result = 1
term.each{|x| result *= x}
p  result
