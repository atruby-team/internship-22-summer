class Dictionary
  def initialize
    @vocab = Hash.new
  end
  
  def add(vocab, description)
    return false if @vocab.key? vocab
    @vocab.store(vocab, [description, 0])
    true
  end
  
  def lookup(vocab)
    @vocab[vocab][1] += 1
    @vocab[vocab][0]
  end

  def size
    @vocab.size
  end

  def remove(vocab)
    return false unless @vocab.key? vocab  
    @vocab.delete(vocab)
    true
  end
  
  def favorite
    count = []
    result = Hash.new
    @vocab.each { |key, value| count.push(value[1]) }
    count = @vocab.detect { |key, value| value[1] == count.max }
    result.store(count[0], count[1][0])
  end

  def pop
    return nil if @vocab.empty?
    key_last = @vocab.keys.last
    p key_last + " => " + @vocab[key_last][0]
    @vocab.delete(key_last)
  end
  
  def update(vocab, description)
    return false unless @vocab.key? vocab
    @vocab.delete(vocab)
    @vocab.store(vocab, [description, 0])
    true
  end

  def random
    keys = @vocab.keys.sample
    keys + " => " + @vocab[keys][0]
  end
end
  
dict = Dictionary.new
p dict.add("Hello", "Xin chào")
p dict.add("Goodbye", "Tạm biệt")
p dict.add("Hello", "Xin chào") 
p dict.add("Goodbye", "Chào tạm biệt") 
p dict.lookup("Goodbye") 
p dict.add("Love", "Tình yêu") 
p dict.size 
p dict.remove("Love")
p dict.remove("Love")
p dict.favorite 
p dict.add("Love", "Tình yêu")
p dict.update("Goodbye", "Chào tạm biệt")
p dict.lookup("Goodbye") 
p dict.pop 
p dict.favorite 
p dict.random 
p dict.pop
p dict.pop 
p dict.pop 
p dict.size 
