require 'pg'

conection = PG.connect(
  dbname: 'crud',
  user: 'postgres',
  password: '2319',
  host: 'localhost',
  port: 5432
)


begin

  while true


    puts "Bem vindo ao CRUD básico sobre Cadastro de usuarios!"

    sleep 0.5

    puts "Selecione uma das operações abaixo: "
    puts "  Ver dados digite [1]:\
    Para inserir dados digite [2]:\
    Para atualizar dados digite [3]:\
    Para delete dados digite [4]: "
    operacoes = gets.chomp.to_i

    if operacoes == 1
      query_select = 'SELECT * FROM cadastro' 
      conexao = conection.exec(query_select)

      conexao.each do |row|
        puts "ID: #{row['id']}, LOGIN: #{row['login']}, SENHA: #{row['senha']}, NOME: #{row['nome_usuario']}"
      end
      
      sleep 2
      puts "Deseja continuar?[S/N]? "
      opcao = gets.chomp.upcase
      if  opcao.include?("N")
        break
      else
        next
      end 
    elsif operacoes == 2
      insercao = {}

      puts "Digite o seu login: "
      insercao[:login] = gets.chomp
      sleep 0.5
      puts "Digite a sua senha: "
      insercao[:senha] = gets.chomp
      sleep 0.5
      puts "Digite o seu nome de usuario: "
      insercao[:nome_usuario] = gets.chomp

      query_insert = "INSERT INTO cadastro(login, senha, nome_usuario) VALUES('#{insercao[:login]}', '#{insercao[:senha]}', '#{insercao[:nome_usuario]}');"
      conexao = conection.exec(query_insert)

      puts "Inserção feita com sucesso! Seu login: #{insercao[:login]}, sua senha é #{insercao[:senha]}, seu nome de usuario é #{insercao[:nome_usuario]}"

      sleep 2
      puts "Deseja continuar[S/N]? "
      opcao = gets.chomp.upcase
      if opcao.include?("N")
        break
      else
        next
      end 

    elsif operacoes == 3
      update = {}

      puts "Digite o id que deseja ser modificado: "
      update[:id] = gets.chomp.to_i
      puts "Digite o novo login: "
      update[:login] = gets.chomp
      puts "Digite a nova senha: "
      update[:senha] = gets.chomp
      puts "Digite o novo nome de usuario: "
      update[:nome_usuario] = gets.chomp

    elsif operacoes == 4
      puts "Digite o id do usuario que deseja fazer a exclusão: "
      id = gets.chomp.to_i

      query_delete = "DELETE FROM cadastro WHERE id=#{id}"
      conexao = conection.exec(query_delete)

      conexao.each do |row|
        puts "Dados deletado ID: #{row['id']}, LOGIN: #{row['login']}, SENHA #{row['nome_usuario']}"
      end

      sleep 2
      puts "Deseja continuar?[S/N]? "
      opcao = gets.chomp.upcase
      if opcao.include?("N")
        break
      else
        next
      end
    else
      puts "Digite um número válido"
      sleep 2
      puts "=-" * 30
      next
    end
    

  end

  ensure

  conection.close

end