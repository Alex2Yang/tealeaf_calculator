puts "what's the first number?"
num1 = gets.chomp

puts "what's the second number?"
num2 = gets.chomp

puts "operator:1)add 2)sub 3)multiply 4)divide"
operator = gets.chomp

result = case operator
         when '1'
           num1.to_i + num2.to_i
         when '2'
           num1.to_i - num2.to_i
         when '3'
           num1.to_i * num2.to_i
         when '4'
           num1.to_f / num2.to_f
         end

puts "result is #{result}"