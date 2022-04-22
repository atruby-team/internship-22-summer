=begin

Exercise 1: Write program input a score from keyboard between 0 and 10. If score out of range, input a score again. Print a grade using the following table:
>= 9 A
>= 8 B
>= 7 C
>= 6 D
< 6 F

=end

p "Input a score:"
loop do
  score = gets.chomp.to_f
  if score >= 0 && score <= 10
    p "Your grade:"
    case 
    when score >= 9 
        p "A"
    when score >= 8 
        p "B"
    when score >= 7 
        p "C"
    when score >= 6 
        p "D"
    else 
        p "F"
    end    
    break
  end
  p "Score wrong, input again please:"
end
