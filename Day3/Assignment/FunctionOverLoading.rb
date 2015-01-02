class Box
  attr_accessor :width, :height
  def initialize(width,height)
    @width = width
    @height = height
  end

def ==(other)
  @width==other.width && @height==other.height
    true

end


end


box1=Box.new 2,4
box2=Box.new 2,4

if box1 == box2
  p "Equals"
else
  p "not Equals"
end

