require 'mongo'

# Configurando o BD

client = Mongo::Client.new(['localhost:27017'], :database => 'ecommerce')

# Litura de dados

collection = client[:products]
documents = collection.find

# Exibição dos dados
puts "Produtcs: "

documents.each do |document|
  puts "Nome: #{document[:name]}, Categoria: #{document[:category][:name]}"
end