# Módulo de conversão de comprimento

# 1-Milhas para pés.
# 2-Milhas para polegadas.
# 3-Milhas para centímetros.

module LengthConversions
  def self.miles_to_feet(miles) # Para indica que o metódo que foi criado, faz parte do meu módulo utilizamos o <self.(nome módulo)>.
    miles * 5280 # Cálculo para converte milhas para pés.
  end

  def self.miles.to_inches(miles) # Para indica que o metódo que foi criado, faz parte do meu módulo utilizamos o <self.(nome módulo)>.
    feet = miles_to_feet(miles) # Como ver, aqui não precisamos do <self.>, já que estamos execultando o módulo em si e não atribuindo. Criando a referência para reaproveitar o módulo <self.miles_to_feet>.
    feet * 12 # Cálculo para converte milhas para polegadas. feet = 5280 * 12 = 63360.
  end

  def
end
