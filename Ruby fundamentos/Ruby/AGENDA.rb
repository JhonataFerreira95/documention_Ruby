agenda = [:nome => "Anna", :number => 2832-3923], [:nome => "Pedro", :number => 2325-3923], [:nome => "Lucas", :number => 1124-9801]

puts "Bem vindo a agenda de contatos com hash! \n----------------------------------------\n"

puts "Qual contato deseja busca, digite o nome do contato: "
contato = gets.chomp

if contato.has_key?("Anna") or (contato.has_key?("Lucas") or contato.has_key?("Pedro"))
    puts "O contato foi achado #{agenda}"
else
  puts "Seu contato não foi achado, tente novamente!"
end