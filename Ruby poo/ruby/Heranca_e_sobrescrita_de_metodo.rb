class Funcionario

  attr_accessor :nome, :salario

  def initialize(nome, salario)
    @nome = nome
    @salario = salario
  end

  def to_s
    "#{@nome}-#{@salario}"
  end

  def detalhes
    puts "O nome do funcionario é #{@nome}"
    puts "O salario do funcionario é #{@salario}"
  end

end

class Gerente < Funcionario

  attr_accessor :bonus

  def initialize(nome, salario, bonus)
    super(nome, salario)
    @bonus = bonus
  end

  def to_s
    "#{super}-#{@bonus}"
  end
  
  def detalhes
    super
    puts "O bonus do funcionario é #{@bonus}"
  end

end

funcionario = Funcionario.new("Maria", 1800)
puts funcionario.to_s
puts funcionario.detalhes

gerente = Gerente.new("Bass", 2400, 1800)
puts gerente.to_s
puts gerente.detalhes