=begin

Exercise 6: Use Ruby methods and following the requirements below:

Give an array and print sum of array
Input: [1, 2, 3, 1]
Output: 7

Create an array with elements from 0 to 1000 that can be divided by 3 and 5.

Give an array and remove odd numbers.

Give a list of students with their scores, select all students have score greater or equal 8.
Input: [{ Bob: 7 }, { Smith: 8 }, { Kate: 9 }]
Output: [{ Smith: 8 }, { Kate: 9 }]

=end

array = [1,2,3,1]
hash = {Bob: 7, Smith: 8, Kate: 9}

def sum_of_array array
    a = 0
    array.each{|x| a += x }
    p a
end

def create_array_from_0_to_1000_divided_3_and_5
    array = []
    (0..1000).each {|x| array.push(x) if x%3==0 and x%5==0}
    p array
end

def remove_odd_number_from_array array
    array.each{|x| array.delete(x) if x%2 != 0}
    p array
end

def score_greater_or_equal_8 hash
    p hash.select{|k,v| v>=8}
end

sum_of_array array
create_array_from_0_to_1000_divided_3_and_5
remove_odd_number_from_array array
score_greater_or_equal_8 hash
