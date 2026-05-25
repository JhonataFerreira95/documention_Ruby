require 'mongo'

# Configurando o BD

client = Mongo::Client.new(['localhost:27017'], :database => 'ecommerce')

# Litura de dados

collection = client[:products]
documents = collection.find