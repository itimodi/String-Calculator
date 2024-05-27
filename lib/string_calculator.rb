class StringCalculator
  def add(numbers)
    return 0 if numbers.empty?

    delimiter = /[\n,]/

    if numbers.start_with?("//")
      delimiter = Regexp.escape(numbers[2])
      numbers = numbers[4..]
    end

    numbers_array = numbers.split(/#{delimiter}/).map(&:to_i)

    negatives = numbers_array.select { |n| n < 0 }

    unless negatives.empty?
      raise "Negative numbers not allowed: #{negatives.join(',')}"
    end

    numbers_array.sum
  end
end
