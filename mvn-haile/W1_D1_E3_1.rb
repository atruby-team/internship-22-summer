while 1
	_input = gets.chomp.to_i
	if (_input >= 9) & (_input <= 10) 
		p "A"
	elsif (_input >= 8) & (_input < 9)
		p "B"
	elsif (_input >= 7) & (_input < 8)
		p "C"
	elsif (_input >= 6) & (_input < 7)
		p "D"
	elsif (_input < 6) & (_input >= 0)
		p "F"
	else
		p "Out Range and input a score again"
	end	
end