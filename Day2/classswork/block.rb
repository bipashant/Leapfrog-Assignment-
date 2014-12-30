def TestFunction(&blockofcode)
  puts "Starting of a function"

 blockofcode.call('bibek','sharma')

  puts "End of the function"

end

TestFunction do
  | fname , lname |
  puts "First Name #{fname}"
  puts "Last Name #{lname}"
end