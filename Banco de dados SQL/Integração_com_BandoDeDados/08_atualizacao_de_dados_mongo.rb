require 'mongo'

# Configuração do BD

client = Mongo::Client.new(['localhost:27017'], :database => 'ecommerce')

# Atualização de dados (podemos ter o update_one ou update_many)
