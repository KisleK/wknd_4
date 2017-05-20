# In the previous exercise, you were asked to DRY up your code (remove duplicated code)
# by using Inheritance. In this exercise, you must DRY up your code 
# a different technique using Composition. Hint: Google 'Ruby Mixin Module'. (Using
# mixin modules is how you achieve Composition with Ruby.)
module Calculations

  def add(first_number, second_number)
    first_number + second_number
  end

  def subtract(first_number, second_number)
    first_number - second_number
  end

  def multiply(first_number, second_number)
    first_number * second_number
  end

  def divide(first_number, second_number)
    first_number / second_number
  end
end

class SimpleCalculator

  include Calculations
  
  def initialize(simple)

  @simple = simple
  end

end

class FancyCalculator

  include Calculations

  def initialize(fancy)
    @fancy = fancy
  end

  def square_root(number)
    Math.sqrt(number)
  end

end

# Copy your driver code from the previous exercise below:

simple = SimpleCalculator.new(first_number:12, second_number:4)

result = simple.add(12, 4)

puts "Test simple add"
puts result


if result == 16
  puts "PASS!"
else
  puts "F"
end

result = simple.subtract(12, 4)

puts "Test simple sub"
puts result


if result == 8
  puts "PASS!"
else
  puts "F"
end

result = simple.multiply(12, 4)

puts "Test simple mult"
puts result


if result == 48
  puts "PASS!"
else
  puts "F"
end

result = simple.divide(12, 4)

puts "Test simple divide"
puts result


if result == 3
  puts "PASS!"
else
  puts "F"
end

fancy = FancyCalculator.new(12)


result = fancy.square_root(144)

puts "Test square root"
puts result
 

if result == 12
  puts "PASS!"
else
  puts "F"
end




 result = fancy.add(12, 4)

puts "Test fancy add"
puts result


if result == 16
  puts "PASS!"
else
  puts "F"
end
