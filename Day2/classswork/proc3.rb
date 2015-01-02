def testfunction someproc

  someproc.call
end

sayhello=Proc.new{puts "hello"}
saygoodbye=Proc.new{puts "Goodbye"}


testfunction(sayhello)
testfunction(saygoodbye)