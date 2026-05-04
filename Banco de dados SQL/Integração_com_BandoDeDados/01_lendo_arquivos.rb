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

query = 'SELECT * FROM jogos'

begin

  result = conn.exec(query)

  #Itera as linhas do resultado
  result.each do |row|
    puts "ID: #{row['id']}, NOME: #{row['nome']}, DATA: #{row['ano']}, NOTA: #{row['nota_do_jogo']}"
  end

ensure

  conn.close if conn

end

