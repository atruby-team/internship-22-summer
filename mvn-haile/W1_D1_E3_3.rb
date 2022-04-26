# Exercises 3
def Exercises3(input)
	result = input.combination(3).to_a
	result.map { |idx| idx.reduce("*") }.max
end
input1 = [1, 2, 3]
input2 = [-1, 2, 3, 4]
p input1
p Exercises3(input1)
p input2
p Exercises3(input2)
