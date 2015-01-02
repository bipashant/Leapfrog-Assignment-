class Student
  @name
  def initialize (fname,lname)
    @name="#{fname} #{lname}"


  end

  def complete
    puts "full name is #{@name}"

  end

end
s1=Student.new "sabi","gaire"
s1.initialize