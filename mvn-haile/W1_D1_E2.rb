class W1D1E2_bt1
  def input1
    name = gets.chomp
    age = gets.chomp
    content = gets.chomp
    p "Daily Report: #{ Time.now }"
    p "Tên: #{ name }"
    p "Tuổi: #{ age }"
    p "Nội dung: #{ content }"
    infor = [name, age, content]
  end
end

class W1D1E2_bt2
  def input2
    hash = { "Paul Barry" => "Programming, Networking, Security, Open Source, Frameworks", "Chris Meudec" => "Testing, Safety Systems, Formal Systems, Programming Languages", "Nigel Whyte" => "Graphics, Imaging, Programming, Sign Language, Trees", "Austin Kinsella" => "Networks, WANs, Programming, Macintosh, Digital Photography", "Gerry Moloney" => "Placement, Employment, Emerging Systems, Web Development" }
    p hash.keys[0], hash[hash.keys[0]]
    p hash.keys[2], hash[hash.keys[2]]
    hash.delete(hash.keys[hash.length - 1])
    p hash
    hash['Howard Williams'] = hash.delete('Austin Kinsella')		
    p hash
  end
end
W1D1E2_bt1.new.input1
W1D1E2_bt2.new.input2
