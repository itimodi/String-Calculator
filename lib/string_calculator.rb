class StringCalculator
  def add(numbers)
    return 0 if numbers.empty?

    numbers.split(/[\n,]/).map(&:to_i).reduce(0, :+)
  end
end
