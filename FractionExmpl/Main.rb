require 'Fraccion'

f1 = Fraccion.new(8,10)
f2 = Fraccion.new(2,5)

puts f1, f2

puts f1.is_equal?(f2)
puts f1.is_grater?(f2)
puts f1.is_less?(f2)
