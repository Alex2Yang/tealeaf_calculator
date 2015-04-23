require 'pry'

def say( msg, newline = true )
  newline ? print("=> #{msg}\n=> ") : print("=> #{msg}")
end

num1, num2 = nil

loop do
  say "Enter the number:"
  num1 = gets.chomp
  break unless  num1.empty?
end

loop do
  say "Enter the number:"
  num2 = gets.chomp
  break unless  num2.empty? ||  num2 == '0'
end

#binding.pry

say "Operator:1)add 2)sub 3)multiply 4)divide"
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

say "Result is #{result}", false
