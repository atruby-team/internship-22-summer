=begin

Exercise 2: Write program give an integer array, convert that array to string array with the rule even number to 'even' string, odd number to 'odd':
Input: [1, 2, 3, 1]
Output: ['odd', 'even', 'odd', 'odd']

=end

array = [1, 2, 3, 1]

array.map! { |x| x.even? ? "even" : "odd" } 
  
p array
