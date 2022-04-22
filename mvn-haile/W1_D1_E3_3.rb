# Exercises 3
def Exercises3(input)
	number1=input.max
	number2=(input - [number1]).max
	number3=(input - [number1,number2]).max
	return number1*number2*number3
end
input1 = [1, 2, 3]
input2 = [-1, -2, 3, 4]
p input1
p Exercises3(input1)
p input2
p Exercises3(input2)
