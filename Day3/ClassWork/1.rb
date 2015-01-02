class Box

  BOX_COLOR="Red"

  @@area = 123 #static Variable
    def initialize(width,height)
      @width = width
      @height = height
    end

    def getwidth
      @width
    end
  def getArea

    @@area += 1
  end

  def changeConstant


    #    BOX_COLOR="White" error aauxa
    puts BOX_COLOR
  end

def self.staicFunction
  puts "I'm in a selft function like static in other language"
end

end


box1=Box.new 2,4
box2=Box.new 1,2

box1.changeConstant

puts "color of the Box is #{Box::BOX_COLOR}"







=begin

Box.staicFunction
p box1.getArea    #p for puts
p box2.getArea
=end
