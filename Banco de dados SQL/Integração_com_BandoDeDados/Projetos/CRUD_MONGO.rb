require 'mongo'

connection_db = Mongo::Client.new(['localhost:27017'], :database => 'cadastroDB')

while true

    puts "Bem vindo ao cadastro de usuarios com MongoDB"
    sleep 0.5

    puts "Selecione a operação desejada: "
    puts "-=" * 15
    sleep 0.5


    puts "  Ver dados digite [1]:\
    Para inserir dados digite [2]:\
    Para atualizar dados digite [3]:\
    Para delete dados digite [4]: "
    operacoes = gets.chomp.to_i

    if operacoes == 1
        puts "Exibindo dados da collection: "
        sleep 0.5

        puts "-=" * 15

        collection = connection_db[:users]
        show = collection.find

        show.each do |d|
            puts "Nome: #{d[:nome]}, Idade: #{d[:idade]}, Login: #{d[:login]}, Senha: #{d[:senha]}"
        end

        puts "-=" * 15
        sleep 1.0

        puts "Deseja continuar?[S/N] "
        opcoes = gets.chomp.upcase

        if opcoes.include?("N")
            sleep 1
            puts "Saindo da aplicação..."
            break
        else
            next
        end

    elsif operacoes == 2
        puts "Inserindo dados em nossa collection: "
        sleep 0.5

        puts "-=" * 15

        dados = {}

        puts "Digite o seu nome: "
        dados[:nome] = gets.chomp
        sleep 0.5
        puts "Digite a sua idade: "
        dados[:idade] = gets.chomp.to_i
        sleep 0.5
        puts "Digite o sua login: "
        dados[:login] = gets.chomp
        sleep 0.5
        puts "Digite a sua senha: "
        dados[:senha] = gets.chomp

        collection = connection_db[:users].insert_one({
            'nome' => "#{dados[:nome]}",
            'idade' => "#{dados[:idade]}}",
            'login' => "#{dados[:login]}",
            'senha' => "#{dados[:senha]}",
            'category' => {
                'name' => 'Usuarios'
            }
        })

        if collection.successful?
            puts "Dados foram inserindo com sucesso #{collection.inserted_id}"
        else
            puts "Falha ao inserir dados na collection!"
        end

        puts "-=" * 15
        sleep 1

        puts "Desejar continuar?[S/N] "
        opcoes = gets.chomp.upcase

        if opcoes.include?("N")
            sleep 1
            puts "Saindo da aplicação..."
            break
        else
            next
        end

    elsif operacoes == 3
        puts "Atualizando dados da nossa Collection: "
        sleep 0.5

        puts "-=" * 15
        
        dados = {}

        puts "Digite o seu nome para atualização: "
        dados[:nome_update] = gets.chomp
        puts "Digite a sua idade para atualização: "
        dados[:idade_update] = gets.chomp.to_i
        puts "Digite o seu login para atualização: "
        dados[:login_update] = gets.chomp
        puts "Digite sua senha para atualização: "
        dados[:senha_update] = gets.chomp

        update = connection_db[users].update_one({name:dados[:nome_update]})

    elsif operacoes == 4

    else
        puts "Digite uma operação válida!"
        next
    end
    
end