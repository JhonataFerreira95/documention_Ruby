# Módulo de conversão de comprimento

# 1-Milhas para pés.
# 2-Milhas para polegadas.
# 3-Milhas para centímetros.

module LengthConversions
  def self.miles_to_feet(miles) # Para indica que o metódo que foi criado, faz parte do meu módulo utilizamos o <self.(nome módulo)>.
    miles * 5280 # Cálculo para converte milhas para pés.
  end

  def self.miles_to_inches(miles) # Para indica que o metódo que foi criado, faz parte do meu módulo utilizamos o <self.(nome módulo)>.
    feet = miles_to_feet(miles) # Como ver, aqui não precisamos do <self.>, já que estamos execultando o módulo em si e não atribuindo. Criando a referência para reaproveitar o módulo <self.miles_to_feet>.
    feet * 12 # Cálculo para converte milhas para polegadas. feet = 5280 * 12 = 63360.
  end

  def self.miles_to_centimers(miles) # Para indica que o metódo que foi criado, faz parte do meu módulo utilizamos o <self.(nome módulo)>.
    inches =  miles_to_inches(miles) # Como ver, aqui não precisamos do <self.>, já que estamos execultando o módulo em si e não atribuindo. Criando a referência para reaproveitar o módulo <self.miles_to_inches>.
    inches * 2.54 # Cálculo para converte milhas para centímetros. inches = 63280 * 2.54 = 160934.
  end
end

puts LengthConversions.miles_to_feet(10) # Para fazer a conversão de milhas para pés.
puts LengthConversions.miles_to_feet(10) # Para fazer a conversão de milhas para polegas.
puts LengthConversions.miles_to_inches(10) # Para fazer a conversão de milhas para centímetros.
