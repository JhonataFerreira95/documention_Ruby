
class Veiculos
  
  attr_accessor :placa, :marca

  def initialize(placa, marca)
    @placa = placa
    @marca = marca
  end

  def to_s
    "|-#{@placa}-#{@marca}-|"
  end

  def detalhes
    puts "A placa do veículo é #{@placa}"
    puts "A marca do veículo é #{@marca}"
  end

end

class Carro < Veiculos

  attr_accessor :portas

  def initialize(placa, marca, portas)
    super(placa, marca)
    @portas = portas
  end

  def detalhes
    super
    puts "A quantidade de portas do seu carro é #{@portas}"
  end

end

class Moto < Veiculos

  attr_accessor :cilindrada

  def initialize(placa, marca, cilindrada)
    super(placa, marca)
    @cilindrada = cilindrada
  end

  def detalhes
    super
    puts "A quantidade de cilindradas da sua moto é #{@cilindrada}"
  end

end

moto = Moto.new(1231231, "Honda", 50)
puts moto.detalhes
puts moto

puts "#-#-#" * 10

carro = Carro.new(1231030, "BYD", 4)
puts carro.detalhes
puts carro

