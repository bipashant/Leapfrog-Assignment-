#getter and setter
class Box


  attr_accessor :width , :height
  attr_reader :area

  @@area = 123 #static Variable
  def initialize(width,height)
    @width = width
    @height = height
  end

  def get_Width
    width
  end



end


box1=Box.new 10,20
puts box1.get_Width

box1.width =100

puts box1.get_Width

