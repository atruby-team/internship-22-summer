# Exercises 3
def Exercises3(_input_arr)
	number1=_input_arr.max
	number2=(_input_arr - [number1]).max
	number3=(_input_arr - [number1,number2]).max
	return number1*number2*number3
end

_input1 = [1, 2, 3]
_input2 = [-1, 2, 3, 4]

p _input1
p Exercises3(_input1)
p _input2
p Exercises3(_input2)