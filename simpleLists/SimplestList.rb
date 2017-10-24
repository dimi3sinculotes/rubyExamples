class Point
  def initialize(x, y)
    @x = x
    @y = y
  end
  
  def showw
    puts '[' + @x.to_s + ', ' + @y.to_s + ']'
  end
end

class Listt 
  def initialize
    @l = []
  end
  
  def addd (p)
    @l.push(p)  
  end
  
  def showw
    for ps in @l 
      ps.showw()
    end
  end
end

#main
 l = Listt.new()
 
 p1 = Point.new(5.5, 3.5)
 p2 = Point.new(6.5, 4.5)
 
 l.addd(p1)
 l.addd(p2)
 
 l.showw
