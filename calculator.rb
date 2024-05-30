module StringCalculator
  module Calculator

    def add(string)
      raise ArgumentError, 'Input must be a string' unless string.is_a?(String)
      return 0 if string.empty?

      numbers = extract_numbers(string)
      validate_array(numbers)
      numbers.map(&:to_i).sum
    end

    def extract_numbers(string)
      string = string.gsub('\\n', "\n")
      if string.start_with?('//')
        delimiter_declaration, numbers = string.split("\n", 2)
        delimiter = delimiter_declaration[2..]
      else
        delimiter = nil
        numbers = string
      end
      split_string(numbers, delimiter || ',')
    end

    def split_string(string, delimiter)
      numbers = string.delete(' ')
      numbers&.split(/#{Regexp.escape(delimiter)}|,|\n/)
    end

    def validate_array(numbers)
      raise ArgumentError, 'Invalid Input' if numbers&.any?(&:empty?)
    end
  end
end