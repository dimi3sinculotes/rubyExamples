require 'Point'
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
  
  def to_s
    to_ret = '['
    for ps in @l 
      to_ret += ' ' + ps.to_s
    end
    return (to_ret + ' ]')
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
      puts p.to_s()
    else
      print 'There is NO point like: '
      puts p.to_s()
    end
  end
  
  def condi_print(p)
    for ps in @l 
      if(ps.dist_between(p) < ps.distance)
        puts ps.to_s()
      end
    end
  end
end
