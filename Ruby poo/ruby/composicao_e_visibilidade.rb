class Motor

  attr_accessor :potencia

  def initialize(potencia)
    @potencia = potencia
  end

  def to_s
    "#{@potencia}-"
  end

  protected 

  def ligar
    puts "O motor de #{@potencia}CV está ligado!"
  end

end

class Carro < Motor

  attr_accessor :modelo 

  def initialize(potencia, modelo)
    super(potencia)
    @modelo = modelo
  end

  def to_s
    "#{super}-#{@modelo}"
  end

  def iniciar
    puts "Iniciando o carro #{@modelo}"
    self.ligar
    
  end

end

carro = Carro.new(300, "Civic")
puts carro.iniciar