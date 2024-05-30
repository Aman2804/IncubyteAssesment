require_relative '../main'

RSpec.describe StringCalc do

  # Add instance of tested class
  subject(:input_value) { described_class.new }

  describe "Add Function" do
     
    it 'if input is not a string' do
      expect { input_value.add(10) }.to raise_error(ArgumentError, 'Input must be a string')
    end

    it 'return 0 for empty string' do
      expect(input_value.add('')).to eq(0)
    end

    it 'return the same number if has input seprated by commas' do
      expect(input_value.add('1, 2, 3, 4, 5')).to eq(15)
    end

    it 'return the same number if has single input' do
      expect(input_value.add('7')).to eq(7)
    end

    it 'handles newlines as delimiters' do
      expect(input_value.add("1\n2  ,3")).to eq(6)
    end
  end
end