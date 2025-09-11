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

  def to_s # método de sobrescrita 
    "#{@genre}-#{@multiplayer}-#{@versions}-#{@name}"
  end

  def name # Utilizando o Getter
    @name # para variável de instância
  end

  def multiplayer
    @multiplayer
  end

  def price
    @price
  end

  def versions
    @versions
  end

  def name(new_name) # Utilizando o setters
    @name = new_name
  end

  def price(new_price)
    @price = new_price
  end

end

game = Game.new # instânciado a nossa classe

game.name = "hollow knight" # Escrevando novas informações com setters
game.price = 59.99

puts name, price




