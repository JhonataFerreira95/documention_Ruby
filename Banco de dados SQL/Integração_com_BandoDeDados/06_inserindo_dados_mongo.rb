require 'mongo'

# Configurando o BD

client = Mongo::Client.new(['localhost:27017'], :database => 'ecommerce')

# Inserção de dados de prudutos e categorias

result = client[:products].insert_one({
  'name' => 'smarthphone',
  'category' => {
    'name' => 'eletronicos'
  }
})

# Verificação dos dados da Inserção

if result.successful?
  puts "Dados foram inserido com sucesso. Id: #{result.inserted_id}"
else
  puts "Falha ao inserir os dados!"
end