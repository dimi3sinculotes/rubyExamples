class Point
  def initialize(x, y)
    @x = x
    @y = y
  end
  
  attr_reader :x, :y
  
  def to_s
   '[' + @x.to_s + ', ' + @y.to_s + ']'
  end
  
  def distance
    return (Math.sqrt(@x**2 + @y**2))  
  end
  
  def dist_between(p)
    a = (p.x - @x).abs
    b = (p.y - @y).abs 
    return (Math.sqrt(a**2 + b**2))
  end
end
