require 'pg'

conection = PG.connect(
  dbname: 'cadastro',
  user: 'postgres',
  password: '2319',
  host: 'localhost',
  port: 5432
)


begin

cadastro = []

query_select = 'SELECT * FROM'
query_insert = 'INSERT INTO cadastro(login, senha, nome_usuario) VALUES()'
query_update = "UPDATE cadastro SET login='#{}', senha='#{}', nome_usuario='#{}'"
query_delet = "DELETE FROM cadastro WHERE id=#{}"



end