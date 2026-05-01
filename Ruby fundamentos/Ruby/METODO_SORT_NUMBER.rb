=begin

Faça um programa que tenha uma lista chamada números e duas funções chamadas sorteia() e somaPar(). 
A primeira função vai sortear 5 números e vai colocá-los dentro da lista e a segunda função vai mostrar a soma entre todos os valores pares sorteados pela função anterior.

=end

require 'securerandom'

num = []

def sorteia(lista)

    for _ in 1..5
        lista << (SecureRandom.random_number(1..10))
    end
    
    return lista

end

def somaPar(lista)

    soma = 0

    for valor in lista

        if  valor % 2 == 0
            soma += valor  
        end

    end

    return lista

end


sorteia(num)
somaPar(num)
