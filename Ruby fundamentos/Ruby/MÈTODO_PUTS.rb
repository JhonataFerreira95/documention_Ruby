=begin

Faça um programa que tenha uma função chamada escreva(), 
que receba um texto qualquer como parâmetro e mostre uma mensagem com tamanho adaptável.  

=end

def write(text)

    txt = text.length

    puts "~" * txt
    puts text
    puts "~" * txt
    
end

puts write("aaaaaaaaaaaaaa")
