class StringCalculator
    def add(numbers)
      return 0 if numbers.empty?

  
      nums = numbers.split(delimiter).map(&:to_i)
      negatives = nums.select { |n| n < 0 }
      raise "Negative numbers not allowed: #{negatives.join(', ')}" unless negatives.empty?
  
      nums.sum
    end
end