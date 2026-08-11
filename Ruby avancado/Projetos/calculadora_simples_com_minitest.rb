=begin

Vamos criar uma calculadora simples em Ruby e escrever testes para garantir que as operações

matemáticas básicas estejam corretas. Use o Minitest para criar testes para as funções de adição,

subtração, multiplicação e divisão.

Especificações:

Crie uma classe chamada Calculator que tenha métodos para adição, subtração, multiplicação e divisão.
Escreva testes para cada um desses métodos usando o Minitest.
Certifique-se de testar diferentes cenários, incluindo números positivos, negativos e a divisão por zero.

=end


class CalculatorSimple

  attr_accessor user_entrada:


  def initialize(user_entrada)
    @user_entrada = user_entrada
  end

  def calculation_sub
    @user_entrada - calculation_sub
  end
    
end