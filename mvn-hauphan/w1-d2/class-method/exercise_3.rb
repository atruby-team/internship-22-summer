=begin

Exercise 3: Create a class StringFormat has following class methods:

human_name(name): Input a string returns a name format, if input not a string return nil, name format: Only has letters, capitalize each word.

Input: "kaylene _johnson"
Output: "Kaylene Johnson"

uniq(string): Input a string returns a string has unique characters.
Input: "Hello world!!!"
Output: "Helo wrd!"

only_letters?(string): Input a string returns true if string has only letters, else returns false, if input not a string return nil.

=end

class StringFormat

  def human_name(name)
    if name.is_a?(String)
      array = name.chars
      array.each do |x|
        array.delete(x) unless x =~ /[A-Za-z ]/
      end
      result = array.join.strip.split(" ").each { |x| x.capitalize! }
      p result.join(" ")
    else
      p nil
    end
  end

  def uniq(string)
    array = []
    string.each_char do |char|
      array << char unless array.include?(char)
    end
    p array.join
  end

  def only_letters?(string)
    if string.is_a?(String)
      flat = true
      string.each_char do |char|
        unless char =~ /[A-Za-z]/
          flat = false
          break
        else
          flat = true
        end
      end
      p flat
    else
      p nil
    end
  end

end
