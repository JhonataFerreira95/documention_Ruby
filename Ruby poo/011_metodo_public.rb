# Método Public

# Pode ser chaamado em qualquer lugar, dentro ou fora da <classe>

class Game


  attr_accessor :name, :genre, :price # leitura e escrita
  attr_reader :multiplayer, :versions # apenas leitura

  def initialize(name, genre, multiplayer, versions, price) # Passando parâmetros no métodos <initialize> para deixá-lo mais dinâmico
      # Variável de instância
      @name = name
      @genre = genre
      @multiplayer = multiplayer
      @versions = versions
      @price = price
  end

  def techinal_sheet
    puts "Dados do jogo"
    puts "nome do jogo: #{@name}"
    puts "genero do jogo: #{@genre}"
    puts "preço do jogo: #{@price}"
  end

  def to_s # método de sobrescrita 
    "#{@genre}-#{@multiplayer}-#{@versions}-#{@name}"
  end

  private # Para utilizar o método privado utilizamos da palavra resevada <private>

  def apply_discount(discount_percentage)
    @price -= (@price * discount_percentage / 100)
  end

  public # Para utilizar o método público utilizamos da palavra reservada <public>

end

game1 = Game.new("silksong", "Aventura", true, [2025], 60)

puts game1

game1.apply_discount(10) # Não consigo chaama o método já que é um método privado e está fora da minha classe










