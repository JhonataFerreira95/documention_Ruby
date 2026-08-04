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