class Game

  def initialize # O initialize funciona como um constructor ou construtor
      puts "Novo objeto foi criado"
      # Variável de instância
      @name = "pes"
      @genre = "esporte"
      @multiplayer = true
      @versions = [2018, 2019, 2020]
      @price = 100
  end

  def information
      puts "O jogo é do gênero #{@genre} e as suas verões #{@versions}"
  end

end

game = Game.new # instânciado a nossa classe

puts game.information # agora pdodemos chama nosso método instânciado