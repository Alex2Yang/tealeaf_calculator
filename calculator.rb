def say(msg)
  puts "=> #{msg}"
end

def get_num
  begin
    say "Enter the number:"
    num = gets.chomp
  end while num.empty?
  num
end

def get_operator
  begin
    say "Operator:1)add 2)sub 3)multiply 4)divide"
    operator = gets.chomp
  end while operator.empty?
  operator
end

def calculate(number_1, operator, number_2)
  if (operator == '4' && n2 == '0')
    puts "#{n1} cann't be  divided by 0"
  else
    result =  case operator
            when '1' then number_1.to_i + number_2.to_i
            when '2' then number_1.to_i - number_2.to_i
            when '3' then number_1.to_i * number_2.to_i
            when '4' then number_1.to_f / number_2.to_f
            end
    puts "Result is #{result}."
  end
end

loop do
  num1 = get_num
  num2 = get_num
  operator = get_operator
  calculate( num1, operator, num2 )
  say "Once agagin? (yes or no)"
  ans = gets.chomp
  break if !ans.empty? && ans.downcase[0] = 'n'
end
