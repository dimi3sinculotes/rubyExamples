class Fraccion
  def initialize(num,den)
    @num, @den = num, den
  end
  
  attr_reader :num, :den
  
  def to_s
    @num.to_s + '/' + @den.to_s
  end
  
  def is_less?(f)
    oper('<',f)
  end
  
  def is_grater?(f)
    oper('>',f)
  end
  
  def is_equal?(f)
    oper('=',f)
  end
  
  # Obviously there is  no  need  for doing this, but i wanted  to  test  some  private views
  private  
    def oper(o, f)
      case o
      when '<'
        ((@num*f.den) < (f.num*@den))
      when'>'
        ((@num*f.den) > (f.num*@den))
      else
        ((@num*f.den) == (f.num*@den))
      end
    end
end
