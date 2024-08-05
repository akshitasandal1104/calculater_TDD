require 'rails_helper'

describe StringCalculator do
  describe '#add' do
    it 'returns 0 for an empty string' do
      expect(subject.add("")).to eq(0)
    end

    it 'returns the number for a single number input' do
      expect(subject.add("1")).to eq(1)
    end

    it 'returns the sum of two numbers' do
      expect(subject.add("1,2")).to eq(3)
    end

    it 'returns the sum of multiple numbers' do
      expect(subject.add("1,2,3")).to eq(6)
    end

    it 'handles new lines as delimiters' do
      expect(subject.add("1\n2,3")).to eq(6)
    end

    it 'supports custom delimiters' do
      expect(subject.add("//;\n1;2")).to eq(3)
    end

    it 'raises an exception for negative numbers' do
      expect { subject.add("1,-2,3") }.to raise_error("Negative numbers not allowed: -2")
    end

    it 'raises an exception with all negative numbers listed' do
      expect { subject.add("1,-2,-3,4") }.to raise_error("Negative numbers not allowed: -2, -3")
    end
  end
end
