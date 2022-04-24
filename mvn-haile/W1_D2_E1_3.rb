class StringFormat
  def human_name (name)
    @name = name
    if @name.is_a?(String)
        return @name.split("_").map{|idx| idx.capitalize}.join("")
    else
      return nil
    end
  end
  def uniq (str)
    @string = str.chars
    return @string.uniq.join()
  end
  def only_letters(str)
    if (str.to_i != 0) | (str.is_a?(String) == false)
      return nil
    end
    @string = str.chars
    if @string.map{|idx| String([*"a".."z",*" "].join ).include?(idx)}.include?(false)
      return false
    else 
      return true
    end
  end
end
p StringFormat.new.human_name("kaylene _johnson")
p StringFormat.new.uniq("Hello world !!!")
p StringFormat.new.only_letters(gets.chomp)
