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

  # private ## Para utilizar o método privado utilizamos da palavra resevada <private>

  # def apply_discount(discount_percentage)
  #   @price -= (@price * discount_percentage / 100) ## Comentei essa parte para usar de exemplo no método <protected>
  # end

 # public ## Para utilizar o método público utilizamos da palavra reservada <public>

  # def apply_10_percent_discount
  #   apply_discount(20)
  # end

  protected # Para utilizar o método protegido utilizamos a palavra reservada <protected>

  def discount_price(discount_percentage)
    @price -= (@price * (discount_percentage.to_f / 100)) # Convertemos o parâmetros <descount_percentage> para float utilizando o <.to_f>
  end

end

game1 = Game.new("silksong", "Aventura", true, [2025], 60)

puts game1

game1.send(:discount_price, 10) # Utiizando o método <.send> para chama o método de uma forma dinâmica

puts game1.techinal_sheet


# Game 2 exemplo

game2 = Game.new("Hollow night", "Indie", true, [2017], 60)

puts game2

game2.send(:discount_price, 60)

puts game2.techinal_sheet










