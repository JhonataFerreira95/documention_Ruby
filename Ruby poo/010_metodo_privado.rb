# Método Privado

# Só podem ser chamados a partir da mesma classe onde foram definidos

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

end

game1 = Game.new("fifa", "esporte", true, [2018, 2019, 2020], 100) # insirindo valores na ordem de definição dos parâmetros do método <initialize>

puts game1

puts game1.techinal_sheet

game2 = Game.new("hollow knight", "aventura", true, [2017, 2018, 2019, 2020, 2021], 39.99)

puts game2

puts game2.techinal_sheet









