=begin

Faça um programa que tenha uma função chamada escreva(), 
que receba um texto qualquer como parâmetro e mostre uma mensagem com tamanho adaptável.  

=end

def write(* text)

    txt = text.length
    cont = 0
    quantidade = 0

    while cont < txt
      size = text[cont]
      word = text.length
      cont += 1
      puts cont
    end

    puts "~" * cont
    puts text
    puts "~" * cont
end

puts write("oi")
