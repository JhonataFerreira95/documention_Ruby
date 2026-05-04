require 'pg'

# conexão com o BD

conn = PG.connect(
  dbname: 'fliperama',
  user: 'postgres',
  password: '2319',
  host: 'localhost',
  port: 5432
)


# adcionando dados com um array

registros = [
  {nome: 'hytale', ano: '2026-03-15', nota_do_jogo: 8.2},
  {nome: 'Minecraft', ano: '2008-03-15', nota_do_jogo: 9.5},
]

# interando os dados do array

registros.each do |registros|

    nome = registros[:nome]
    ano = registros[:ano]
    nota_do_jogo = registros[:nota_do_jogo]

    # instrução SQL para inserção
    
    insert_query = "INSERT INTO jogos(nome, ano, nota_do_jogo) VALUES('#{nome}', '#{ano}', #{nota_do_jogo})"

    conn.exec(insert_query)

end

puts "Registros inseridos com sucesso!"

conn.close