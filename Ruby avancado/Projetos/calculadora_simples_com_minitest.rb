=begin

Vamos criar uma calculadora simples em Ruby e escrever testes para garantir que as operações

matemáticas básicas estejam corretas. Use o Minitest para criar testes para as funções de adição,

subtração, multiplicação e divisão.

Especificações:

Crie uma classe chamada Calculator que tenha métodos para adição, subtração, multiplicação e divisão.
Escreva testes para cada um desses métodos usando o Minitest.
Certifique-se de testar diferentes cenários, incluindo números positivos, negativos e a divisão por zero.

=end

require 'minitest/autorun'


class CalculatorSimple

  attr_accessor :user_entrada1, :user_entrada2


  def initialize(user_entrada1, user_entrada2)
    @user_entrada1 = user_entrada1
    @user_entrada2 = user_entrada2
  end

  def calculation_sub
    @user_entrada1 - @user_entrada2
  end

  def calculation_mult
    @user_entrada1 * @user_entrada2
  end

  def calculation_div
    @user_entrada1 / @user_entrada2
  end
    
end

class TestCalculationSimple < Minitest::Test
    
  def setup
    @calculator = CalculatorSimple.new(20, 60)
  end

  def teardown
    @calculator = nil
  end

  def test_calculation_sub
    @calculator.calculation_sub
    assert_equal(40, "O resultado da subtração de #{@user_entrada1} - #{@user_entrada2} é #{}")
  end

end