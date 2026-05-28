require 'mongo'

conection_db = Mongo::Connection_db.new(['localhost:27017'], database => 'cadastroDB')

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
        
    elsif operacoes == 2

    elsif operacoes == 3

    elsif operacoes == 4

    else
        puts "Digite uma operação válida!"
        next
    end
    
end