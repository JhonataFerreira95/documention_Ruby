agenda = [ {nome: "Anna", number: "2832-3923"},
 {nome: "Pedro", number: "2325-3923"},
 {nome: "Lucas", number: "1124-9801"}
]

puts "Bem vindo a agenda de contatos com hash! \n----------------------------------------\n"

puts "Qual contato deseja busca, digite o nome do contato: "
contato = gets.chomp

contato_encontrado = agenda.find { |contact| contact[:nome] == contato }

if contato_encontrado
  puts "O contato foi achado: #{contato_encontrado[:nome]} e o número é #{contato_encontrado[:number]}"
else
  puts "Seu contato não foi achado, tente novamente!"
end