require './List'

input = List.new()


input.addAll(ARGV)

even = List.new()
odd = List.new()

even.addAll(input.get_even)
odd.addAll(input.get_odd)

puts input
puts ""
puts even
puts ""
puts odd
