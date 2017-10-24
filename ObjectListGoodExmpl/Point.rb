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
  
  def to_s
   '[' + @x.to_s + ', ' + @y.to_s + ']'
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
