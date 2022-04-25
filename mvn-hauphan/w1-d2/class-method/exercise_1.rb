=begin 

Exercise 1: Write a function, given a string, find the first non-repeating character in it and return it's index. 

If it doesn't exist, return -1.

Input: "asiantech"
Output: return 1.
Input: "rubyteam",
Output: return 0.

=end

def find_first_non_repeating(string)
  result = -1
  index = 0
  array_string = string.downcase.chars
  array_string.each do |x|
    if array_string.count(x) == 1
      result = index
      break
    end
    index += 1
  end
  p result
end
