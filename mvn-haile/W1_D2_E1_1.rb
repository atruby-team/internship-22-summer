def exercise1(input_string)
  string = input_string.split("")
  string.each { |i| return string.index(i) if string.count(i) == 1  }
end

p exercise1("asiantech")
p exercise1("rubyteam")
