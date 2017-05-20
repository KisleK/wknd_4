# In this example, we have THREE calculators, the two included in the previous
# exercises as well as Whiz Bang Calculator that can even calculate the hypotenuse
# of a triangle if given the length of the other two sides. Figure out how to 
# DRY up all the code below - there shouldn't be a single method duplicated between
# any two classes.

module SimpleCalculations

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

module FancyCalculations  
  def square_root(number)
    Math.sqrt(number)
  end
end

class SimpleCalculator
  include SimpleCalculations
  def initialize(simple)
    @simple = simple
  end
end

class FancyCalculator
  include SimpleCalculations
  include FancyCalculations
    def initialize(fancy)
     @fancy = fancy
    end
end

class WhizBangCalculator
  include SimpleCalculations
  include FancyCalculations

  def initialize(wizbang)
    @wizbang = wizbang
  end
  def square_root(number)
    Math.sqrt(number)
  end

  def hypotenuse(first_number, second_number)
    Math.hypot(first_number, second_number)
  end
  
  def exponent(first_number, exponent_number)
    total = 1
    exponent_number.times { total = multiply(total,first_number) }
    total
  end
end

# Copy your driver code from the previous exercise and more below:


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

whizbang = WhizBangCalculator.new(first_number: 3, second_number: 4, exponent_number: 5)

result = whizbang.hypotenuse(3, 4)

puts "Test Whiz!"
puts result

if result == 5
  puts "PASS!"
else
  puts "F"
end










