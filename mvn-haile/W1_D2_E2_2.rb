class Dictionary
  def initialize
    @vocab = Hash.new
    @key, @value = [], []
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
    return false if !@vocab.key? vocab  
    @vocab.delete(vocab)
    true
  end
  
  def favorite
    @vocab.each do |i, j|
      if j[1] == @vocab.map { |idx, jdx| jdx[1] }.max
        @key = i
        @value = j[0]
      end
    end
    @key + " => " + @value
  end

  def pop
    return nil if @vocab.empty?
    key_last = @vocab.keys.last
    p key_last + " => " + @vocab[key_last][0]
    @vocab.delete(key_last)
  end
  
  def update(vocab, description)
    return false if !@vocab.key? vocab
    @vocab.delete(vocab)
    @vocab.store(vocab, [description, 0])
    true
  end
  
  def random
    keys = @vocab.keys
    keys[rand(keys.size)] + " => " + @vocab[keys[rand(keys.size)]][0]
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
