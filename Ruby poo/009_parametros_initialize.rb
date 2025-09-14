class Game


  attr_accessor :name, :genre, :price # leitura e escrita
  attr_reader :multiplayer, :versions # apenas leitura

  def initialize(name, genre, multiplayer, versions, price) # Passando parâmetros no métodos <initialize>
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





