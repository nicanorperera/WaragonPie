class Pie

  # Pie = Pastel
  # :sweet = Dulce
  # :fruit = Fruta
  # :candy = Confites
  # :bisqt = Masita

  INGREDIENTS_WITH_THREE_UNITS = [:sweet, :fruit, :candy]

  VALID_INGREDIENTS = INGREDIENTS_WITH_THREE_UNITS + [:bisqt]

  def initialize(array)
    @ingredients = array
  end

  def valid?
    valid_size? && valid_ingredients? && has_enough_ingredients?
  end

  def tasty?
    ingredients_in_rows.any? do |row|
      row.uniq.size == 1 || 
      row.uniq.size == 2 && row.include?(:bisqt)
    end    
  end

  def tasty_row?(row)

  end

  def ingredients_in_rows
    rows = []
    @ingredients.each_slice(3) do |row| 
      rows << row
    end
    rows
  end

  private

  def valid_size?
    @ingredients.size == 9
  end

  def valid_ingredients?
    @ingredients.all? { |i| VALID_INGREDIENTS.include? i }
  end

  def has_enough_ingredients?
    INGREDIENTS_WITH_THREE_UNITS.all?{ |i| @ingredients.count(i) <= 3 } &&
    @ingredients.count(:bisqt) <= 1
  end

end