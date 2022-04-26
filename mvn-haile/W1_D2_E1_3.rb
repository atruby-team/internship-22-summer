class StringFormat
  def human_name(name)
    @name = name
    @name.split(" ").map { |i| i.delete("_").capitalize }.join(" ")
  end

  def uniq(string)
    @string = string
    @string.split("").uniq.join()
  end

  def only_letters(letters)
    @letters = letters
    return false if @letters.gsub(/[^a-zA-Z]/, "*").split("").include? "*"
    true
  end
end

p StringFormat.new.human_name("kaylene _johnson")
p StringFormat.new.uniq("Hello world !!!")
p StringFormat.new.only_letters(gets.chomp)
