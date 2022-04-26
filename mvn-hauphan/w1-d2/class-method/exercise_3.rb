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
      p name.gsub(/[^A-Za-z ]/, '').strip.split(' ').map! { |x| x.capitalize! }.join(' ')
    else
      p nil
    end
  end

  string = StringFormat.new
  string.human_name("kaylene _johnson")


  def uniq(string)
    p string.chars.uniq!.join('')
  end

  string.uniq("Hello world!!!")

  def only_letters?(string)
    if string.is_a?(String)
      string.each_char do |char|
        return p false unless char =~ /[A-Za-z]/
      end
      p true
    else
      p nil
    end
  end

  string.only_letters?("asd12d")
  string.only_letters?("asdd")
  string.only_letters?(1)

end
