puts "Bem-vindo \n-==-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=\n"

somaidade = 0
mediaidade = 0
maioridadehomem = 0
nomevelho = ''
totmulher20 = 0

for i in 1..4

    puts "Você é a #{i}° a digitar o nome no programa \nDigite o seu nome: "
    nome = gets.chomp.strip
    puts "Você é a #{i}° a digitar o idade no programa \nDigite o sua idade: "
    idade = gets.chomp.to_i
    puts "Você é a #{i}° a digitar o sexo no programa \nDigite o seu sexo assim [M/F]: "
    sexo = gets.chomp.upcase.strip
    somaidade += idade
    if i == 1 and sexo == 'M'
        maioridadehomem = idade 
        nomevelho = nome 
    end
    if sexo == 'M' and idade > maioridadehomem
        maioridadehomem =  idade
        nomevelho = nome  
    end
    if sexo == "F" and idade < 20
        totmulher20 += 1     
    end
end

mediaidade = somaidade / 4

puts "A média da idade do grupo é de #{mediaidade}"
puts "O homem mais velho tem #{maioridadehomem} anos e se chama #{nomevelho}" 
puts "Ao todo são #{totmulher20} com menos de 20 anos!"
