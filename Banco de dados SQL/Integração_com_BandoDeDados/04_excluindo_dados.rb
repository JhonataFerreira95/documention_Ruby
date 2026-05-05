require 'pg'

# conexão com o BD

conn = PG.connect(
  dbname: 'fliperama',
  user: 'postgres',
  password: '2319',
  host: 'localhost',
  port: 5432
)

# Delete via id

id_exclusão = 6

# instruções SQL Delete

delete_query = "DELETE FROM jogos WHERE id=#{id_exclusão}"

conn.exec(delete_query)

puts "A query foi execultado com sucesso"

puts "<=========================================================================>"

print delete_query

conn.close