factorial = Proc.new do |num|
  fact=1
  for i in 1..num
    fact *= i

  end
  fact

end

puts factorial.call(5)