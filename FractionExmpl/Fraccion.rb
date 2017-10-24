class Fraccion
  def initialize(dem,num)
    @dem, @num = dem, num
  end
  
  attr_reader :dem, :num
  
  def to_s
    return @dem.to_s + '/' + @num.to_s
  end
  
  def is_less?(f)
    return oper('<',f)
  end
  
  def is_grater?(f)
    return oper('>',f)
  end
  
  def is_equal?(f)
    return oper('=',f)
  end
  
  private  
    def oper(o, f)
      case o
      when '<'
        return ((@dem*f.num) < (f.dem*@num))
      when'>'
        return ((@dem*f.num) > (f.dem*@num))
      else
        return ((@dem*f.num) == (f.dem*@num))
      end
    end
end
