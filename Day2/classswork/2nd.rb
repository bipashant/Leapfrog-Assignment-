def calculate
  puts "Please enter first number"
  a=gets.chomp.to_i

  puts "Please enter first number"
  b=gets.chomp.to_i

  yield a,b



end

calculate{|a, b |puts result=a+b; puts result=a-b}
