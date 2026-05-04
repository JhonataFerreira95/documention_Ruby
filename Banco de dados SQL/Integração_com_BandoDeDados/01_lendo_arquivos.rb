require 'pg'

# Configuração de conexão do BD

conn = PG.connect(
  dbname: 'fliperama',
  user: 'postgres',
  password: '2319',
  host: 'localhost',
  port: 5432
)

# Consulta SQL

query = 'SELECT * FROM jogo'