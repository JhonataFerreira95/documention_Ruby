# A palavra chave self no contexto do código fornecido
# refere-se à instância atual da classe Game. Ela pode ser usada para se referir a métodos ou variáveis de instância.

class Game

    puts "Novo objeto foi criado#{self}"

  def initialize # O initialize funciona como um constructor ou construtor
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

  def techinal_sheet
    puts "Dados do jogo"
    puts "nome do jogo: #{@name}"
    puts "genero do jogo: #{@genre}"
    puts "preço do jogo: #{@price}"
  end

  def to_s # método de sobrescrita 
    "#{@genre}-#{@multiplayer}-#{@versions}-#{@name}"
  end

  def details
    puts "detalhes do jogo #{self}"
  end

end

game = Game.new # instânciado a nossa classe

puts game.information # agora pdodemos chama nosso método instânciado

puts game

puts game.details # chamando o método que possuí o self na classe

