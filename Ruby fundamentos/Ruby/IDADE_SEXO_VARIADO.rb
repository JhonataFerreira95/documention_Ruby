idade = cont = 0
sexo = ""
cadastro = ""

while true

  puts "-=-=-"*8
  puts "[CADASTRE UMA PESSOA]"
  puts "-=-=-"*8

  puts  "Idade: "
  idade = gets.chomp.to_i
  puts "Sexo [M/F]: "
  sexo = gets.chomp.upcase

  puts "-=-=-"*8
  puts "Quer continua?[S/N] "
  cadastro = gets.chomp.upcase
  puts "-=-=-"*8

  cont += 1

  if cadastro.include?("N")
      
  end

end