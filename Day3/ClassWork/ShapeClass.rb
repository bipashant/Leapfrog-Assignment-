class Shape
    def area
      if @type == 'rec'
          p length * breadth
      else
        p 3.14 * radius * radius
      end
    end
end


class Circle < Shape
attr_accessor :radius, :type
    def initialize(radius)
      @radius = radius
      @type = "circle"
    end

end


class Rectangle < Shape

  attr_accessor :length, :breadth, :type
  def initialize(length,breadth)
    @length = length
    @breadth = breadth
    @type = "rec"
  end

end


c1 = Circle.new 5

c1.area

r1=Rectangle.new 5,5
r1.area

