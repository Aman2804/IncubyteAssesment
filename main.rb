require_relative 'calculator'

class StringCalc
  include StringCalculator::Calculator
end

if ARGV.length.positive?
  input = ARGV[0]
  puts "Calculating for: #{input}"
  begin
    calculator = StringCalc.new
    result = calculator.add(input)
    puts "Result: #{result}"
  rescue StandardError => e
    puts "Error: #{e.message}"
  end
else
  puts 'Error: Invalid Input'
end