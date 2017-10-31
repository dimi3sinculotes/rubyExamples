class List
  def initialize
    @list =  []
  end
  
  def addAll(l)
    for item in l
      @list.push(item.to_i)
    end
  end
  
  def to_s
    @list.to_s
  end
  
  def get_even
    l = []
    for item in @list
      if item % 2 == 0 then
        l.push(item)
      end
    end
    return l
  end
  
  def get_odd
    l = []
    for item in @list
      if item % 2 != 0 then
        l.push(item)
      end
    end
    return l
  end
end
