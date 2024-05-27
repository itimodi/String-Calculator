# spec/string_calculator_spec.rb

require 'rspec'
require_relative '../lib/string_calculator'

RSpec.describe StringCalculator do
  let(:calculator) { StringCalculator.new }

  describe '#add' do
    it "returns 0 for an empty string" do
      expect(calculator.add("")).to eq(0)
    end

    it "returns number for a single number string" do
      expect(calculator.add("1")).to eq(1)
    end

    it "returns the sum of two numbers" do
      expect(calculator.add("1,2")).to eq(3)
    end

    it "returns the sum of multiple numbers" do
      expect(calculator.add("1,3,4")).to eq(8)
    end

    it "return sum if new lines seperator added between numbers" do
      expect(calculator.add("1\n2,3")).to eq(6)
    end
  end
end
