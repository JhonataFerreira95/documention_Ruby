=begin 

Crie um programa que tenha a função leiaInt(), que vai funcionar de forma semelhante 
‘a função input() do ruby, só que fazendo a validação para aceitar apenas um valor numérico. 

=end

def leia_int(msg)
  
  loop do
     
    print msg

    entrada = gets.chomp

    if entrada.match(/^\d+$/)
      return entrada.to_i
    else
      puts "\e[31mErro! Digite um número inteiro válido.\e[0m"
    end

  end

end

n = leia_int("Digite um número: ")

puts "O número digitado foi #{n}"
