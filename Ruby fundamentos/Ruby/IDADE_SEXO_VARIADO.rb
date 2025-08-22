total = totalM = totalF20 =0 

while true

  puts "digite a sua idade: "
  idade = gets.chomp.to_i

  sexo = " "

  while sexo != "M" && sexo != "F"
    puts "Digite o sexo [M/F]: "
    sexo = gets.chomp.upcase
  end

  if idade >= 18
    total += 1
  end

  if sexo == "M"
    totalM += 1
  end

  if sexo == "F" and idade < 20
    totalF20 += 1
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

puts "Total de pessoas com mais de 18 anos: #{total}"
puts "=-=-=-=" * 8
puts "Ao todo temos #{totalM} homens cadastrado"
puts "=-=-=-=" * 8
puts "E temos #{totalF20} mulheres com menos de 20 anos"