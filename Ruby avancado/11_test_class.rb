require 'minitest/autorun'

class Pessoa

  attr_accessor :nome, :idade

  def initialize(nome, idade)
    @nome = nome
    @idade = idade 
  end

  def apresentar
    "Olá, sou #{nome} e tenho #{idade anos}"
  end

end

class TestPessoa < Minitest::Test

=begin
O método setup é um método especial em teste unitários 
que é executado antes de cada caso de teste em uma classe de teste.
=end

  def setup
    @p1 = Pessoa.new("João", 30)  
  end

  def test_initialize
    assert_equal("João", @p1.nome)
    assert_equal(30, @p1.idade)
  end

end