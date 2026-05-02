=begin

Crie um programa que tenha uma função chamada voto() 
que vai receber como parâmetro o ano de nascimento de uma pessoa, 
retornando um valor literal indicando se uma pessoa tem voto NEGADO, OPCIONAL e OBRIGATÓRIO nas eleições.

=end


def voto(ano)

    require 'date'

    atual = date.today.year
    idade = atual - ano


    if idade < 16
        return "Com #{idade} você não vota!"
    elsif idade < 18 or idade <=16 or idade >= 65
        return "Com #{idade} seu voto é opcional!"
    else
        return "Com #{idade} seu voto é obrigatório!"
    end

end

