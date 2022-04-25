# Exercise 1
loop do
  input = gets.chomp.to_i
  if ( input >= 9 ) & ( input <= 10 ) 
    p "A"
  elsif ( input >= 8 ) & ( input < 9 )
    p "B"
  elsif ( input >= 7 ) & ( input < 8 )
    p "C"
  elsif ( input >= 6 ) & ( input < 7 )
    p "D"
  elsif ( input < 6 ) & ( input >= 0 )
    p "F"
  else
    p "Out Range and input a score again"
  end	
  break
end
