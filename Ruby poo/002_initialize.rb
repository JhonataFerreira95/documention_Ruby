class Game

  def initialize # O initialize funciona como um constructor ou construtor
      puts "Novo objeto foi criado"
      # Variável d instância
      @name = "pes"
      @genre = "esporte"
      @multiplayer = true
      @versions = [2018, 2019, 2020]
      @price = 100
  end
end

game = Game.new # estanciando a nossa classe
puts game
p game