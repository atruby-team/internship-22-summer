_input1 = [1, 2, 3, 1]

_input2 = [1, 2, 3, 4]

_input3 = [1, 1, 1, 3, 3, 4, 3, 2, 4, 2]

status1=[]
status2=[]
status3=[]

_input1.each do |i| 
	if _input1.count(i) >= 2
		status1=status1+["True"]
	else 
		status1=status1+["False"]
	end
end
_input2.each do |i| 
	if _input2.count(i) >= 2
		status2=status2+["True"]
	else 
		status2=status2+["False"]
	end
end
_input3.each do |i| 
	if _input3.count(i) >= 2
		status3=status3+["True"]
	else 
		status3=status3+["False"]
	end
end

if status1.include? "True"
	p "True"
else 
	p "False"
end
if status2.include? "True"
	p "True"
else 
	p "False"
end
if status3.include? "True"
	p "True"
else 
	p "False"
end
