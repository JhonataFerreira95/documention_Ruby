require 'redis'
require 'pg'
require 'json'

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

# Consulta 

query_time = 1000
id_cliente = 20

## teste com redis

redis start = Time.now 
