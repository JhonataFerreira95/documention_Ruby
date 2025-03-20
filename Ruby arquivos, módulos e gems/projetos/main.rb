# Importando o módulo, alternativa 1.

# Aqui utilizamos o <require> para importa o nosso módulo. Essa é uma das forma de importação de módulos. Como ele está no mesmo diretório do nosso <main> utilizamos <./>
 require './conversao.rb' 

# Importando o módulo, alternativa 2.

# Aqui utilizamos o <require_relative> para importa o modulo de forma relativa, ele precisa está no mesmo diretório para ser importado.
 require_relative 'conversao'


puts LengthConversions.miles_to_feet(10) # Para fazer a conversão de milhas para pés.
puts LengthConversions.miles_to_inches(20) # Para fazer a conversão de milhas para polegas.
puts LengthConversions.miles_to_centimers(30) # Para fazer a conversão de milhas para centímetros.