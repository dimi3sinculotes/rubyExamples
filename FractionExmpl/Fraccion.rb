class Fraccion
  def initialize(num,den)
    @num, @den = num, den
  end
  
  attr_reader :num, :den
  
  def to_s
    @num.to_s + '/' + @den.to_s
  end
  
  def is_less?(f)
    return compare(f) < 0
  end
  
  def is_grater?(f)
    return compare(f) > 0
  end
  
  def is_equal?(f)
    return compare(f) == 0
  end
  
  private  
    def compare(f)
      (@num*f.den) - (f.num*@den)
    end
end


# OR -------------------------------->
class Fraccion
  def initialize(num,den)
    @num, @den = num, den
  end
  
  attr_reader :num, :den
  
  def to_s
    @num.to_s + '/' + @den.to_s
  end
  
  def is_less?(other)
    return self < other
  end
  
  def is_grater?(other)
    return self > other
  end
  
  def is_equal?(other)
    return self == other
  end
  
  def <=> (other)
    (@num*other.den) <=> (other.num*@den)
  end
  #Under test
  
