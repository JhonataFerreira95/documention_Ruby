require 'active_record'

# Configuração do BD

ActiveRecord::Base.establish_connection(
  adapter: 'postgresql',
  host: 'localhost',
  username: 'postgres',
  password: '2319',
  database: 'fliperama'
)

# Criação de uma tabela 

ActiveRecord::Schema.define do
    create_table :users do |t|
      t.string :nome
      t.string :email
    end
end

# Definição de um modelo

class User < ActiveRecord::Base
    
end

user = User.new(nome: 'Macht', email: 'macht@gmail.com') # Equivalente ao INSERT INTO users(nome, email)
user.save

# Recuperando os dados

users = User.all # Equivalente ao SELECT * FROM users
users.each do |user|
  puts "Nome: #{user.nome}, E-mail: #{user.email}"
end