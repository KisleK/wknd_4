# Below, we have two types of calculators. The simple one can perform basic arithmetic, 
# while the fancy one can also do square roots in addition to basic arithmetic.
# There is nothing wrong with the code below per se, but there is duplication
# between the two classes, since they each contain four identical methods.
# This is generally considered to be a code design flaw, since there may come
# a time where we decide to change how these methods work, and we may accidentally
# update the methods in one class, and forget to update them in the other, and our
# two classes become out of sync. This known as the DRY principle, that is:
# Don't Repeat Yourself.
# There are a number of techniques that we can use to fix this example. One is 
# a fundamental concept in OOP known as Inheritance. Your exercise is to research 
# Inheritance in Ruby, and use it to remove the duplication (or DRY up) the code 
# below. You must also write the driver code to test your classes.

class SimpleCalculator
 
  def initialize(simple)
    @simple = simple
  end

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

class FancyCalculator < SimpleCalculator
  def initialize(fancy)
    @fancy = fancy
  end

  def square_root(number)
    Math.sqrt(number)
  end

end

# Write your own driver code below:
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




