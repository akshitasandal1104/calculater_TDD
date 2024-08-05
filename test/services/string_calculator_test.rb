require 'test_helper'

class StringCalculatorTest < ActiveSupport::TestCase
  def setup
    @calculator = StringCalculator.new
  end

  test "returns 0 for an empty string" do
    assert_equal 0, @calculator.add("")
  end

  test "returns the number itself for a single number" do
    assert_equal 1, @calculator.add("1")
  end

  test "returns the sum of two numbers" do
    assert_equal 6, @calculator.add("1,5")
  end
end
