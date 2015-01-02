module Name

attr_accessor :scientific_name

  def complete_name
   @name +" ( "+@scientific_name+" ) "
  end
end


class Animal
  attr_accessor :name
  include Name

  def initialize name

    @name=name

  end

end


class Human
  attr_accessor :first_name, :last__name, :name
  include Name

  def initialize first_name, last__name

    @first_name=first_name
    @last_name=last__name
    @name=first_name+" "+last__name

  end
end



frog=Animal.new "Frog"
frog.scientific_name="Rana Tigrina"
p frog.complete_name

ram=Human.new "Ram", "bahadur"
ram.scientific_name="Homo Sepience"
p ram.complete_name
