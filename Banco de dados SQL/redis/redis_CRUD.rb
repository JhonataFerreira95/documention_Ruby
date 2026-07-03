require 'pg'
require 'redis'
require 'faker'

# Definido a conexão com ambos os bancos

pg_connection = PG.connect(
  dbname: 'cadastro',
  user: 'postgres', 
  password: '2319',
  host: 'localhost',
  port: 5432
)

redis_connection = Redis.new(
  host: 'localhost',
  port: 6379
)

begin

  # Definindo query de Inserção

  query_insert = "INSERT INTO clients(name, age, state) VALUES($1, $2, $3)"

  # Definindo a query de Seleção 

  query_select = "SELECT * FROM clients"

  # Definindo o insert com faker

  100.times do 
    nome = Faker::Name.name
    age = Faker::Number.between(from: 18, to:79)
    state = Faker::Address.state_abbr

    # passando argumentos 
    
    conexao = pg_connection.exec(query_insert, [nome, age, state])

    # execultando query_select

    conexao = pg_connection.exec(query_select)

    conexao.each do |row|
      puts "ID: #{row['id']}, NOME: #{row['name']}, AGE: #{row['age']}, STATE: #{row['state']}"
    end

  end

  pg_connection.close
  redis_connection.close

ensure

end



