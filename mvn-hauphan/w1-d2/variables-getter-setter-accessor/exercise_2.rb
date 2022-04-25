=begin

Exercise 2: Design a class Dictionary has following instance methods:

add(vocab, desc): Add new vocabulary and describe for that vocabulary if vocabulary doesn’t exist.
lookup(vocab): Show describe of vocabulary.
remove(vocab): Remove a vocabulary out to dictionary if vocabulary exists.
size: Show total vocabularies in dictionary.
pop: Remove newest vocabulary if there is no vocabulary return nil.
update(vocab, desc): Update the description of vocabulary, and the vocabulary will be newest.
random: Show a random vocabulary and description.
favorite: Show favorite vocabulary and description. Favorite vocabulary is the most shown.
If we have many vocabularies with the same number of lookups, favorite vocabulary will be the oldest.

Examples

dict = Dictionary.new
dict.add("Hello", "Xin chào") # true
dict.add("Goodbye", "Tạm biệt") # true
dict.add("Hello", "Xin chào") # false
dict.add("Goodbye", "Chào tạm biệt") # false
dict.lookup("Goodbye") # "Tạm biệt"
dict.add("Love", "Tình yêu") #true
dict.size # 3
dict.remove("Love") # true
dict.remove("Love") # false
dict.favorite # "Goodbye" => "Tạm biệt"
dict.add("Love", "Tình yêu") #true
dict.update("Goodbye", "Chào tạm biệt")# true
dict.lookup("Goodbye") # "Chào tạm biệt"
dict.pop # "Goodbye" => "Chào tạm biệt"
dict.favorite # "Hello" => "Xin chào"
dict.random # "Hello" => "Xin chào"
dict.pop # "Love" => "Tình yêu"
dict.pop # "Hello" => "Xin chào"
dict.pop # nil
dict.size # 0

=end

class Dictionary

  def initialize
    @vocabularies = {}
  end

  def add(vocab, desc)
    if @vocabularies.key?(vocab)
      false
    else
      @vocabularies[vocab] = desc
      true
    end
  end

  def lookup(vocab)
    @vocabularies[vocab]
  end

  def remove(vocab)
    if @vocabularies.key?(vocab)
      @vocabularies.delete(vocab)
      true
    else
      false
    end
  end

  def size
    @vocabularies.size
  end

  def pop

  end

  def update(vocab, desc)
  end

end

dict = Dictionary.new
p dict.add("Hello", "Xin chào") # true
p dict.add("Goodbye", "Tạm biệt") # true
p dict
p dict.add("Hello", "Xin chào") # true
p dict.add("Goodbye", "Tạm biệt") # true
p dict.lookup("Goodbye") # "Tạm biệt"
p dict.add("Love", "Tình yêu") #true
p dict.size # 3
p dict.remove("Love") # true
p dict.remove("Love") # false