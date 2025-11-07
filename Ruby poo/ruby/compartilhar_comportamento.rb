require_relative "falante"

class Pessoa

  include Falante

  attr_accessor :falar

  def initialize(falar)
    @falar = falar
  end

  def to_s
    "#{@falar}"
  end

end

pessoa = Pessoa.new("olá")
puts pessoa.to_s

pessoa.falar("fala")

puts "Nome do sistema: #{Falante::NOME_SISTEMA}"
puts "Versão: #{Falante::VERSAO}"


