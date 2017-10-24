require 'Point'
require 'List'
 
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
 
 puts l
 puts ''
 
 l.delete(p1)
 
 puts l
 puts ''
 
 l.le
 puts ''
 
 l.exists(p2)
 puts ''
 
 puts p2
 puts '-------'
 l.condi_print(p2)
 puts ''
