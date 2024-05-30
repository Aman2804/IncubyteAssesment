module StringCalculator
  module Calculator

    def add(string)
      raise ArgumentError, 'Input must be a string' unless string.is_a?(String)
      return 0 if string.empty?
    end
  end
end