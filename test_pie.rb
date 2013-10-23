require 'minitest/autorun'
require_relative 'pie.rb'

class TestPie < Minitest::Test

  def test_should_be_valid
    a_valid_pie = Pie.new [[:sweet, :fruit, :candy], [:sweet, :fruit, :candy], [:sweet, :fruit, :candy]]
    invalid_pie = Pie.new [[:sweet, :sweet, :sweet], [:sweet, :fruit, :fruit], [:fruit, :candy, :candy]]
    bisquit_pie = Pie.new [[:bisqt, :bisqt, :bisqt], [:bisqt, :bisqt, :bisqt], [:bisqt, :bisqt, :bisqt]]

    assert a_valid_pie.valid?
    refute invalid_pie.valid?
    refute bisquit_pie.valid?
  end

  def test_should_be_tasty
    delicious_pie = Pie.new [[:sweet, :sweet, :sweet], [:fruit, :fruit, :fruit], [:candy, :candy, :candy]]
    tasteless_pie = Pie.new [[:sweet, :fruit, :candy], [:fruit, :candy, :sweet], [:sweet, :fruit, :candy]]

    assert delicious_pie.tasty?
    refute tasteless_pie.tasty?

    puts delicious_pie.to_s
  end

end