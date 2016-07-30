require 'test_helper'
require 'pp'

class MainTest < Minitest::Test

  def setup
    @main = A15z7knNiitsuma2016Gem::Main.new

  end


  def test_that_it_has_a_version_number
    refute_nil ::A15z7knNiitsuma2016Gem::VERSION
  end

  def test_odd
    refute @main.odd?(0), '0 is not odd'
    assert @main.odd?(1), '1 is odd'
    refute @main.odd?(2), '2 is not odd'
    assert @main.odd?(3), '3 is odd'
    refute @main.odd?(4), '4 is not odd'
  end

  def tetst_check_number?
    refute @main.check_number?(0), '0 is invalid'
    refute @main.check_number?(999), '999 is invalid'
    assert @main.check_number?(1000), '1000 is valid'
  end

  def test_enough_length?
    refute @main.enough_length?('a'), '"a" is invalid'
    refute @main.enough_length?('ab'), '"ab" is invalid'
    assert @main.enough_length?('abc'), '"abc" is valid'
    assert @main.enough_length?('abcd'), '"abcd" is valid'
    refute  @main.enough_length?('abcdefghi'), '"abcdefghi" is valid'
  end

  def test_divide
    assert @main.divide(2, 10) == 5.0, ' 10 / 2 = 5'
    assert @main.divide(8, 64) == 8, ' 64 / 8 = 8'
    assert_raises ZeroDivisionError, 'zero division error' do
      @main.divide(0, 64)
    end

  end

  def test_fizz_buzz
    assert @main.fizz_buzz(6) == 'Fizz', '6 is Fizz'
    assert @main.fizz_buzz(20) == 'Buzz', '20 is Buzz'
    assert @main.fizz_buzz(60) == 'FizzBuzz', '60 is FizzBazz'
  end

  def test_say_hello
    out, err = capture_io do
      @main.say_hello
    end 
    assert out == 'Hello', 'Say Hello'
  end

end
