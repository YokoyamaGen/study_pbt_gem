class CalculatorService
  def self.triple(value)
    unless value.is_a?(Numeric)
      raise ArgumentError, "Value must be a number"
    end

    value * 3
  end
end