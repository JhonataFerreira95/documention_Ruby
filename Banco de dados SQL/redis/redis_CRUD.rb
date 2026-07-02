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

# Definindo o insert com faker

100_00.times do 
  nome = Faker::Name.Name
  age = Faker::Number.between(from: 18, to:79)
  state = Faker::Address.state_abbr
end

