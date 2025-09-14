class Game

  # attr_reader :name, :genre, :price # apenas leitura
  # attr_writer :name, :genre, :price # apenas escrita
  attr_accessor :name, :genre, :price # leitura e escrita

  def initialize # O initialize funciona como um constructor ou construtor
      # Variável de instância
      @name = "pes"
      @genre = "esporte"
      @multiplayer = true
      @versions = [2018, 2019, 2020]
      @price = 100
  end

  def to_s # método de sobrescrita 
    "#{@genre}-#{@multiplayer}-#{@versions}-#{@name}"
  end

end

game = Game.new
p game.name
game.name="Resident Evil"
p game.name
game.genre="Suspense"
game.price=150
p game.genre
p game.price



