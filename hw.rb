```

class Quadrilateral
  def initialize(side1, side2, side3, side4)
    @sides = [side1, side2, side3, side4]
  end
  def perimeter
    @sides[0]+@sides[1]+@sides[2]+@sides[3]
  end
end

class Rectangle < Quadrilateral
  def initialize(side1_2, side3_4)
    @sides = side1_2, side1_2, side3_4, side3_4
  end
end

class Trapezoid <Quadrilateral
  def initialize(side1, side2, side3_4)
    @sides = [side1, side2, side3_4, side3_4]
  end
end

class Square < Rectangle
  def initialize(sides)
    @sides = [sides, sides, sides, sides]
  end
end

class Rhombus < Trapezoid
  def initialize(sides)
    @sides = [sides, sides, sides, sides]
  end
end

def test
  quad = Quadrilateral.new(1,2,3,4)
  rectangle = Rectangle.new(1,2)
  trapezoid = Trapezoid.new(1,1,2)
  square = Square.new(1)
  rhombus = Rhombus.new(1)

  puts quad.perimeter == 10
  puts rectangle.perimeter == 6
  puts trapezoid.perimeter == 6
  puts square.perimeter == 4
  puts rhombus.perimeter == 4
end

test

# def test
#   squa = Square.new
#   puts squa.is_a? Rectangle
#   puts squa.is_a? Quadrilateral
#
#   rect = Rectangle.new
#   puts rect.is_a? Quadrilateral
#   puts not(rect.is_a? Trapezoid)
# end
#
# test



# def test
#   quad = Quadrilateral.new(1,1,1,1)
#   rectangle = Rectangle.new(1,1)
#   trapezoid = Trapezoid.new(1,1,1)
#   square = Square.new(1)
#   rhombus = Rhombus.new(1)
# end
#
# test
```
