require 'pg'
require 'redis'
require 'faker'

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