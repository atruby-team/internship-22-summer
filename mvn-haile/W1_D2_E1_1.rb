def exercise1(input_string)
  string = input_string.split("")
  string.map { |i| string.count(i) }.index(1)
end

p exercise1("asiantech")
p exercise1("rubyteam")
