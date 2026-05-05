require 'pg'

# conexão com o BD

conn = PG.connect(
  dbname: 'fliperama',
  user: 'postgres',
  password: '2319',
  host: 'localhost',
  port: 5432
)

# Update via id 

id_registro = 1

# passando parâmetros para atualização 

new_name = 'Minecraft dungeons'
new_year = '2022-02-20'
new_ratting = 8.0


# instrução SQL de Update

update_query = "UPDATE jogos SET nome=#{new_name}, ano=#{new_year}, nota_do_jogo=#{new_ratting}"
