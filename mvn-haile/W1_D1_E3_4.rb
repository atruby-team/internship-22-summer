# Exercises 4
def Exercises4(input)
  status=[]
  input.each do |i| 
  if input.count(i) >= 2
    return status=status+["True"]
  end
end
input1 = [1, 2, 3, 1]
input2 = [1, 2, 3, 4]
input3 = [1, 1, 1, 3, 3, 4, 3, 2, 4, 2]
p input1
p Exercises4(input1)
p input2
p Exercises4(input2)
p input3
p Exercises4(input3)

