require 'mongo'

# Configuração do BD

client = Mongo::Client.new(['localhost:27017'], :database => 'ecommerce')

# Exclusão de dados

result = client[:products].delete_one({name: 'smartphone'})

# Verificação da exclusão dos dados

if result.deleted_count > 0
  puts "Registro excluído com sucesso."
else
  puts "nenhum registro excluído!"
end