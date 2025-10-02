
class Game

  attr_accessor :name, :genre, :price # leitura e escrita
  attr_reader :multiplayer, :versions # apenas leitura

  ## Variável de <Classe> para rastrear o número de jogos

  @@num_jogos = 0

  def initialize(name, genre, multiplayer, versions, price) # Passando parâmetros no métodos <initialize> para deixá-lo mais dinâmico
      # Variável de instância
      @name = name
      @genre = genre
      @multiplayer = multiplayer
      @versions = versions
      @price = price

      #Incrementando o contador de jogos ao criar um novo objetos

      @@num_jogos += 1
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

  # Utilizando método de <classe> para obeter o número total de jogos

  def self.total_games
    @@num_jogos
  end
  
end

# Instânciando as <Classes>

game = Game.new("Hollow Knight", "Aventura", true, [2017], 60)
puts game
puts game.techinal_sheet

game1 = Game.new("Hollow Knight Silksong", "Aventura", true, [2025], 60)
puts game1
puts game1.techinal_sheet

game2 = Game.new("Hollow Knight Pablo", "Aventura", true, [2030], 60)
puts game2
puts game2.techinal_sheet

## Usando método <classe> em conjunto da variável de <classe>

puts "A quantidade de jogos criados foram #{Game.total_games}" # Como sabemos, um método de <classe> só pode ser chamado pela sua <classe> diretamente.

