Struct.new "Customer", :name, :address do
  def print_name
    p name
  end
end



c1= Struct::Customer.new "Bibek", "Ktm"

puts c1.name
puts c1.address
c1.print_name

puts c1.class
