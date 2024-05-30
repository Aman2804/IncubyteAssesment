require_relative '../main'

RSpec.describe StringCalc do

  # Add instance of tested class
  subject(:input_value) { described_class.new }

  describe "Add Function" do
     
    it 'if input is not a string' do
      expect { input_value.add(10) }.to raise_error(ArgumentError, 'Input must be a string')
    end 
  end
end