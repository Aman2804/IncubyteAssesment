module StringCalculator
  module Calculator

    def add(string)
      raise ArgumentError, 'Input must be a string' unless string.is_a?(String)
    end
  end
end