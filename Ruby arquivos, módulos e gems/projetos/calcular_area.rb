# Escreva um programa Ruby calcula a área de um quadrado e um retângulo. Em cada um dos casos, deve ser criado um módulo a parte, 
# para que este seja executado de forma independente de outro, ainda que ambos estejam no mesmo arquivo.

module Calcula_quadrado # Criado o nome do módulo.
  def self.quadrado(area) # criado o metódo com o nome e utilizado <self.nome módulo>.
      area * area # Cálculo da area do quadrado.
  end
end

module Calcula_retangulo # Criado o nome do módulo.
  def self.quadrado(base, altura) # criado o metódo com o nome e utilizado <self.nome módulo>.
      base * altura # Cáculo para área de um rentângulo.
  end
end

puts Calcula_quadrado.quadrado(10) # Retorna no terminal nossa área de quadrado, para chamamos nosso metódo utilizamos o <.nome do metódo>, assim ele irá funcionar perfeitamente.
puts Calcula_retangulo.quadrado(20, 20) # Retorna no terminal nossa área de retângulo, para chamamos nosso metódo utilizamos o <.nome do metódo>, assim ele irá funcionar perfeitamente.

