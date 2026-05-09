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

    if select == 1
      query_select = 'SELECT * FROM cadastro' 
      puts "Deseja continuar?[S/N] "
      opcao = gets.chomp.upcase
      if  opcao.include?("N")
        break
      else
        next
      end 
    elsif insert == 2

    elsif update == 3

    elsif delete == 4

    else
      puts "Digite um número válido"
      next
    end
    

  end

  conection.close
end