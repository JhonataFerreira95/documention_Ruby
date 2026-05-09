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
    Para deleter dados digite [4]: "
    operacoes = gets.chomp.to_i

    if operacoes == 1
      query_select = 'SELECT * FROM cadastro' 
      conexao = conection.exec(query_select)

      conexao.each do |row|
        puts "ID: #{row['id']}, LOGIN: #{row['login']}, SENHA: #{row['senha']}, NOME: #{row['nome_usuario']}"
      end
      
      sleep 2
      puts "Deseja continuar?[S/N] "
      opcao = gets.chomp.upcase
      if  opcao.include?("N")
        break
      else
        next
      end 
    elsif operacoes == 2

    elsif operacoes == 3

    elsif operacoes == 4
      puts "Digite o id do usuario que deseja fazer a exclusão: "
      id = gets.chomp.to_i

      query_delete = "DELETE FROM cadastro WHERE id=#{id}"
      conexao = conection.exec(query_delete)

      conexao.each do |row|
        puts "Dados deletado ID: #{row['id']}, LOGIN: #{row['login']}, SENHA #{row['nome_usuario']}"
      end

      sleep 2
      puts "Deseja continuar?[S/N] "
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