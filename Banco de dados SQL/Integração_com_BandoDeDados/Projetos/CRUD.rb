require 'pg'

conection = PG.connect(
  dbname: 'crud',
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
      puts "Os dados disponiveis são #{query_select}"
      sleep 1
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

    else
      puts "Digite um número válido"
      next
    end
    

  end

  conection.close
end