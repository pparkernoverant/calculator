def is_number?(string)
  true if Float(string) rescue false
end

operations = [:+, :-, :*, :/]

# get first number
print "Enter first number: "
num1_input = gets.chomp
while ! is_number? num1_input
  puts "'#{num1_input}' is not a valid number."
  print "Enter first number: "
  num1_input = gets.chomp
end
num1 = num1_input.to_f

# get second number
print "Enter second number: "
num2_input = gets.chomp
while ! is_number? num2_input
  puts "'#{num2_input}' is not a valid number."
  print "Enter second number: "
  num2_input = gets.chomp
end
num2 = num2_input.to_f

# get operation
print "Enter operation ([1] addition, [2] subtraction, [3] multiplication, [4] division): "
operation_input = gets.chomp
op_index = operation_input.to_i - 1
while (op_index < 0 || op_index > operations.size - 1)
  puts "'#{operation_input}' is not 1, 2, 3, or 4."
  print "Enter operation ([1] addition, [2] subtraction, [3] multiplication, [4] division): "
  operation_input = gets.chomp
  op_index = operation_input.to_i - 1
end

# calculate and display result
result = num1.method(operations[op_index]).call(num2)
puts "Result: #{result}"