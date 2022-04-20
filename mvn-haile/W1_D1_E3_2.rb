# Exercises 2
_input_arr=[1, 2, 3, 1]
_output_arr=[]
_input_arr.each do |x|
	if x%2 == 0
		_output_arr=_output_arr+['even']
	else
		_output_arr=_output_arr+['odd']
	end
end
p _output_arr