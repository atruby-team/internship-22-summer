=begin 

Exercise 1: Write a function, given a string, find the first non-repeating character in it and return it's index. 

If it doesn't exist, return -1.

Input: "asiantech"
Output: return 1.
Input: "rubyteam",
Output: return 0.

=end

def find_first_non_repeating(string)
  array_string = string.downcase.chars
  array_string.each_index { |index| return p index if array_string.count(array_string[index]) == 1 }
end

find_first_non_repeating("asiantech")
find_first_non_repeating("rubyteam")
