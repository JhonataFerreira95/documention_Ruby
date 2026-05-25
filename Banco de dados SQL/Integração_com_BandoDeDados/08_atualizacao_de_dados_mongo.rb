require 'mongo'

# Configuração do BD

client = Mongo::Client.new(['localhost:27017'], :database => 'ecommerce')

# Atualização de dados (podemos ter o update_one ou update_many)

result = client[:products].update_one({name: 'smarthphone'}, {
  "$set" => {category: {name: 'dispositivo móveis'}}
})

# Verificação do resultado

if result.modified_count > 0
  puts "Dados atualizados!"
else
  puts "Nenhum documentos foi atualizado"
end