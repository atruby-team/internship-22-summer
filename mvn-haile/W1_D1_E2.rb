class W1D1E2_bt1
  def initialize(*args)
  end
  def input1(*args)
    name = gets.chomp
    age = gets.chomp
    content = gets.chomp
    p "Daily Report: #{Time.now}"
    p "Tên: #{name}"
    p "Tuổi: #{age}"
    p "Nội dung: #{content}"
    infor=[name,age,content]
  end
end

class W1D1E2_bt2
  def initialize(*args)
  end
  def input2(*args)	
    hash={"Paul Barry" => "Programming, Networking, Security, Open Source, Frameworks","Chris Meudec" => "Testing, Safety Systems, Formal Systems, Programming Languages", "Nigel Whyte" => "Graphics, Imaging, Programming, Sign Language, Trees", "Austin Kinsella" => "Networks, WANs, Programming, Macintosh, Digital Photography", "Gerry Moloney" => "Placement, Employment, Emerging Systems, Web Development" }
    p hash.keys[0], hash[hash.keys[0]]
    p hash.keys[2], hash[hash.keys[2]]
    hash.delete(hash.keys[hash.length-1])
    p hash		
    hash_add={}
    hash.each do |key,value|
      if key == "Austin Kinsella"
        k = "Howard Williams"
        v = value
        hash_add={k => v}
      end
    end
    hash.delete(hash.keys[3])
    p hash.merge(hash_add)
  end
end

W1D1E2_bt1.new.input1()
W1D1E2_bt2.new.input2()
