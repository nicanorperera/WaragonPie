class Pie

  INGREDIENTS_WITH_THREE_UNITS = [:sweet, :fruit, :candy]

  VALID_INGREDIENTS = INGREDIENTS_WITH_THREE_UNITS + [:bisqt]

  def initialize(array)
    @ingredients = array
  end

  def valid?
    valid_size? && valid_ingredients? && has_enough_ingredients?
  end

  def tasty?
    has_tasty_row? || has_tasty_col?
  end

  def has_tasty_row?
    @ingredients.any? do |row|
      row.uniq.size == 1 || 
      row.uniq.size == 2 && row.include?(:bisqt)
    end    
  end

  def to_s
    "#{@ingredients[0]}\n#{@ingredients[1]}\n#{@ingredients[2]}\n"
  end

  private

  def has_tasty_col?
    transposed_pie = Pie.new @ingredients.transpose
    transposed_pie.has_tasty_row?
  end

  def flatten_ingredients
    @ingredients.flatten
  end

  def valid_size?
    @ingredients.size == 3 &&
    @ingredients.all? {|row| row.size == 3}
  end

  def valid_ingredients?
    flatten_ingredients.all? { |i| VALID_INGREDIENTS.include? i }
  end

  def has_enough_ingredients?
    INGREDIENTS_WITH_THREE_UNITS.all?{ |i| flatten_ingredients.count(i) <= 3 } &&
    flatten_ingredients.count(:bisqt) <= 1
  end
end