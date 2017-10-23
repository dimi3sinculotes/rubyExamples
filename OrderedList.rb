# This example handle 2 classes, a Point class [x, y], and a List one, [p1]->[p2]->[p3]...
# Ponints in the list will be always inserted in strict order, determined by the distance between each Point and [0, 0]
# As extra information, in order to get the distance, the Pitagoras algorithm is applied

class Point
  def initialize(x, y)
    @x = x
    @y = y
  end
  
  def show
    puts '[' + @x.to_s + ', ' + @y.to_s + ']'
  end
  
  def distance
    return (Math.sqrt(@x**2 + @y**2))  
  end
end

class List
  def initialize
    @l = []
  end
  
  def add (p)
    i = 0
    while (i < @l.length) && (@l[i].distance < p.distance())
      i += 1 
    end
    @l.insert(i, p)  
  end
  
  def show
    for ps in @l 
      ps.show()
    end
  end
end

#main
 l = List.new()
 
 p5 = Point.new(3.5, 1.5)
 p1 = Point.new(5.5, 3.5)
 p2 = Point.new(6.5, 4.5)
 p4 = Point.new(4.5, 2.5)
 p3 = Point.new(7.5, 5.5)
 
 l.add(p1)
 l.add(p2)
 l.add(p3)
 l.add(p4)
 l.add(p5)
 
 l.show
