=begin 

Crie um programa que tenha a função leiaInt(), que vai funcionar de forma semelhante 
‘a função input() do ruby, só que fazendo a validação para aceitar apenas um valor numérico. 

=end

def leiaInt(msg)
  
  ok = false
  valor = 0

  while true
    n = gets.chomp(msg)

    if n.to_i
      valor = n.to_i
      ok = true
    else
      puts "Erro, digite um númeiro inteiro válido!"
    end

    if ok == true
      break
    end

  end

  return valor

end