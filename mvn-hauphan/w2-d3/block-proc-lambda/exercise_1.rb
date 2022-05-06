=begin

Exercise 1: Create method operator returns a lambda or proc to save: add, sub, multi and div(check div by zero) many numbers.

For example:

add = operator { add block } # add.(3, 5) => 3 + 5 = 8, add.(3, 5, 2) => 3 + 5 + 2 = 10
sub = operator { sub block } # sub.(13, 5) => 13 - 5 = 8, sub.(13, 5, 2) => 13 - 5 - 2 = 6
multi = operator { multi block } # multi(3, 5) => 3 * 5 = 15, multi(3, 5, 7) => 3 * 5 * 7 = 105
div = operator { div block } # div(100, 5) => 100 / 5 = 20, div(100, 5, 10) => 100 / 5 / 2= 2, div(10, 0) => show 'can not div by zero'

=end

def operator
  yield 
end

add = operator { ->(*arg) { arg.sum } }
p add.(3, 5)
p add.(3, 5, 2)

sub = operator { ->(*arg) { arg.reduce :- } }
p sub.(13, 5) 
p sub.(13, 5, 2)

multi = operator { ->(*arg) { arg.reduce :* } }

p multi.(3, 5)
p multi.(3, 5, 7)

div = operator { ->(*arg) do 
                    return 'can not div by zero' if arg[1..-1].include?(0)
                    arg.reduce :/ 
                  end }
p div.(100, 5)
p div.(100, 5, 10)
p div.(10, 0)
p div.(0, 10)
