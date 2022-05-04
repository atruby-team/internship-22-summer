=begin

Exercise 2: Write method folowing:

add_more(num): returns a lambda or proc that given one param and returns param + num.
add4 = add_more(4) => add4.(5) <=> 5 + 4 = 9.
add10 = add_more(10) => add10.(12) <=> 12 + 10 = 22.

multi_more(num): returns a lambda or proc that given one param and returns param * num.
multi10 = multi_more(10) => multi10.(10) <=> 10 * 10 = 100.
multi5 = multi_more(5) => multi5.(10) <=> 10 * 5 = 50

compose(proc1/lambda1, proc2/lambda2) to compose any two lambadas or procs above.
For example: We have lambdas add4 and multi10 then we compose them to add4_and_multi10 or multi10_and_add4.
add4_and_multi10 = compose(add4, multi10) # add4_and_multi10.(10) => (10 + 4) * 10 = 140
multi10_and_add4 = compose(multi10, add4) # multi10_and_add4.(10) => (10 * 10) + 4 = 104

=end

def add_more(num)
  ->(number) {number + num}
end

add4 = add_more(4)
p add4.(5)
add10 = add_more(10)
p add10.(12)

def multi_more(num)
  ->(number) {number * num}
end

multi10 = multi_more(10)
p multi10.(10)
multi5 = multi_more(5)
p multi5.(10)

def compose(my_lambda1 , my_lambda2)
  ->(number) { my_lambda2.(my_lambda1.(number)) }
end

add4_and_multi10 = compose(add4, multi10)
p add4_and_multi10.(10)
multi10_and_add4 = compose(multi10, add4)
p multi10_and_add4.(10)
