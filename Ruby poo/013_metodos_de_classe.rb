# Método protected

# Os métodos podem ser chamado a partir de instâncias da mesma <classe> onde foram definidos.

# ou em suas <sub-classes>

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

  # Método de <classe> para calcular preço com desconto

  def self.discount_price(price, discount_percentage)
    price -= (price * (discount_percentage.to_f / 100))
  end
  
end

game1 = Game.new("silksong", "Aventura", true, [2025], 60)

puts game1

puts game1.techinal_sheet

# Utilizando o método de <Classe>

puts Game.discount_price(game1.price, 20)


