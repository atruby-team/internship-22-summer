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
    return false if @vocabularies.key?(vocab)

    @vocabularies.store(vocab, [desc, 0])
    true
  end

  def lookup(vocab)
    @vocabularies[vocab][1] += 1
    @vocabularies[vocab][0]
  end

  def remove(vocab)
    return false unless @vocabularies.key?(vocab)

    @vocabularies.delete(vocab)
    true
  end

  def size
    @vocabularies.size
  end

  def pop
    return nil if @vocabularies.empty?

    hash = {}
    last_key = @vocabularies.keys.last
    hash.store(last_key, @vocabularies[last_key][0])
    @vocabularies.delete(last_key)
    hash
  end

  def update(vocab, desc)
    return false unless @vocabularies.key?(vocab)

    @vocabularies.delete(vocab)
    @vocabularies.store(vocab, [desc, 0])
    true
  end

  def random
    hash = {}
    random_key = @vocabularies.keys.sample
    hash.store(random_key, @vocabularies[random_key][0])
    hash
  end

  def favorite
    array_count = []
    hash_result = {}
    @vocabularies.each { |k, v| array_count.push(v[1]) }
    array_count = @vocabularies.detect { |k, v| v[1] == array_count.max }
    hash_result.store(array_count[0], array_count[1][0])
    hash_result
  end

end

dict = Dictionary.new
p dict.add("Hello", "Xin chào") # true
p dict.add("Goodbye", "Tạm biệt") # true
p dict.add("Hello", "Xin chào") # false
p dict.add("Goodbye", "Chào tạm biệt") # false
p dict.lookup("Goodbye") # "Tạm biệt"
p dict.add("Love", "Tình yêu") #true
p dict.size # 3
p dict.remove("Love") # true
p dict.remove("Love") # false
p dict.favorite # "Goodbye" => "Tạm biệt"
p dict.add("Love", "Tình yêu") #true
p dict.update("Goodbye", "Chào tạm biệt")# true
p dict.lookup("Goodbye") # "Chào tạm biệt"
p dict.pop # "Goodbye" => "Chào tạm biệt"
p dict.favorite # "Hello" => "Xin chào"
p dict.random # "Hello" => "Xin chào"
p dict.pop # "Love" => "Tình yêu"
p dict.pop # "Hello" => "Xin chào"
p dict.pop # nil
p dict.size # 0
