class Game

  

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



