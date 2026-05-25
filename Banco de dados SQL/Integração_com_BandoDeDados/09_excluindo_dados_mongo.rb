require 'mongo'

# Configuração do BD

client = Mongo::Client.new(['localhost:27017'], :database => 'ecommerce')