class Punto
  def initialize(x, y)
    @x = x
    @y = y
  end
  
  def mostrar
    puts '[' + @x.to_s + ', ' + @y.to_s + ']'
  end
end

class Lista 
  def initialize
    @l = []
  end
  
  def anadir (p)
    @l.push(p)  
  end
  
  def mostrar
    for ps in @l 
      ps.mostrar()
    end
  end
end

#main
 l = Lista.new()
 
 p1 = Punto.new(5.5, 3.5)
 p2 = Punto.new(6.5, 4.5)
 
 l.anadir(p1)
 l.anadir(p2)
 
 l.mostrar