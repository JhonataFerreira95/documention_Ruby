
while true

  puts "digite a sua idade: "
  idade = gets.chomp.to_i

  sexo = " "

  while sexo != "M" && sexo != "F"
    puts "Digite o sexo [M/F]: "
    sexo = gets.chomp.upcase
  end

  resp = " "

  while resp != "S" && resp != "N"
    puts "Quer continuar [S/N]? "
    resp = gets.chomp.upcase
  end

  if resp.include?("N")
      break
    end

end