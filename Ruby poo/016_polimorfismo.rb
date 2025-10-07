
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

# Criando uma <Sub-classe>

class Download < Game  # Utilizando o sinal de `menor que <` para que nossa nova <classe> herde os parâmetros da <super-classe>

    # Definição dos atributos pelo <attr_acessor> que é escrita e leitura

    attr_accessor :download_size

    # Definição do meu <initialize>

    def initialize(name, genre, multiplayer, versions, price, download_size)
      super(name, genre, multiplayer, versions, price) # O <super> é uma palavra reservada para chama o método da sua <super-classe> na sua <sub-classe> usando reutilização de código, segundo a ordem de precedência, <super-classe> com seus parâmetros primeiros e <sub-classe> em seguida
      @download_size = download_size
    end

    

end

# Instânciando as <Classes>

game = Game.new("Hollow Knight", "Aventura", true, [2017], 60)
puts game
puts game.techinal_sheet

# Instânciando a nossa <sub-classe>

game2 = Download.new("Final fantasy", "RPG", false, [1995], 40, 10)
puts game2
puts game2.techinal_sheet


