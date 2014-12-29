repeat="y"
while (repeat=="y")

  flag=0
  puts "Please enter a number "
  num=gets.chomp.to_i
  i=1
  while (num>=2 && i<num)
    i+=1
    if(i==num)
      flag=1;
    elsif (num%i==0)
      break

    end

  end

  if (flag==0)
    puts num.to_s+" is not a prime number"
  else
    puts num.to_s+" is a prime number"
  end
  puts "Do you want check another number?(y/n)"
  repeat=gets.chomp
end