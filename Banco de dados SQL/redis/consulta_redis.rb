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

# teste com redis

redis_start = Time.now 

# Execultando o redis

query_time.times do

    client_cache = redis_connection.get(id_cliente.to_s)

  if client_cache.nil?

    client = pg_connection.exec_params(
      'SELECT * FROM clients WHERE id = $1 LIMIT 1',
      [id_cliente]
    ).first

    redis_connection.set(id_cliente.to_s, client.to_json)

    client_cache = client

  else
    client_cache = JSON.parse(client_cache)
  end

end

redis_end = Time.now

puts "Redis: #{((redis_end - redis_start) * 1000).round(2)}ms"

redis_connection.close

# Execultando com posgresql

pg_start = Time.now

query_time.times do

  pg_connection.exec_params(
      'SELECT * FROM clients WHERE id = $1 LIMIT 1',
      [id_cliente]
  ).first

end

pg_end = Time.now

puts "posgresql: #{((pg_end - pg_start) * 1000).round(2)}ms"

pg_connection.close

