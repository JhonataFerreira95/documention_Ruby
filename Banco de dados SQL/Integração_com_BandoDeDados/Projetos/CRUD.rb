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

  while true

    login = {}
    senha = {}
    nome_usuario = {}
    id = {}

    query_select = 'SELECT * FROM'
    query_insert = 'INSERT INTO cadastro(login, senha, nome_usuario) VALUES()'
    query_update = "UPDATE cadastro SET login='#{}', senha='#{}', nome_usuario='#{}'"
    query_delet = "DELETE FROM cadastro WHERE id=#{}"

    puts "Bem vindo ao CRUD básico sobre Cadastro de usuarios!"

    sleep 0.5

    puts "Selecione uma das operações abaixo: "
    puts "Ver dados digite [1]: "
    select = gets.chomp.to_i
    
    sleep 0.5

    puts "Inserir dados digite [2]: "
    insert = gets.chomp.to_i

    sleep 0.5

    puts "Para atualizar dados digite [3]: "
    update = gets.chomp.to_i

    sleep 0.5

    puts "Para deletar dados digite [4]: "
    delete = gets.chom.to_i

    
    

  end

  conection.close
end