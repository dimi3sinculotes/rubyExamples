#                            POINT
class Point
    
  def initialize(x, y)
    @x = x
    @y = y
  end
  
  def getx
      return @x
  end
  
  def gety
      return @y
  end
  
  def show
    puts '[' + @x.to_s + ', ' + @y.to_s + ']'
  end
  
  def distance
    return (Math.sqrt(@x**2 + @y**2))  
  end
  
  def dist_between(p)
    a = (p.getx - @x).abs
    b = (p.gety - @y).abs 
    return (Math.sqrt(a**2 + b**2))
  end
end

#                          LIST
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
  
  def delete(p)
    @l.delete(p)
  end
  
  def le
    puts @l.length
  end  
  
  def exists(p)
    if @l.index(p)
      print 'There is a point like: '
      p.show
    else
      print 'There is NO point like: '
      p.show  
    end
  end
  
  def condi_print(p)
    for ps in @l 
      if(ps.dist_between(p) < ps.distance)
        ps.show  
      end
    end
  end
  
end

#                                      main
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
 puts ''
 
 l.delete(p1)
 
 l.show
 puts ''
 
 l.le
 puts ''
 
 l.exists(p2)
 puts ''
 
 p2.show
 puts '-------'
 l.condi_print(p2)
 puts ''
