=begin

Você foi contratado por uma empresa de logística para ajudar a calcular o tempo estimado de entrega de pacotes.
A empresa deseja uma função que receba a data de envio e o tempo estimado de entrega em dias úteis
e retorne a data estimada de entrega, levando em consideração apenas os dias úteis (segunda a sexta-feira).

Escreva uma função chamada calcular_data_entrega que recebe dois parâmetros:
data_envio (no formato "YYYY-MM-DD") e tempo_entrega_dias (um inteiro representando os dias úteis necessários para a entrega).
A função deve retornar a data estimada de entrega no formato "YYYY-MM-DD", levando em consideração os dias úteis.

=end

def calcular_data_entrega(data_envio, tempo_entrega_dias)
    tempo_total = 1 + tempo_entrega_dias

    

end


puts "!===================================Bem vindo ao calculador de entregas===================================!"

sleep 2

puts "Digite a data do envio no formato ANO, MÊS, DIA: "
entrada = gets.chomp

corte = entrada.split(",")
data_envio_pacote = corte[0].to_i, corte[1].to_i, corte[2].to_i

data = Time.new(corte[0], corte[1], corte[3])

def saber_dia(dia)

    segunda = dia.monday?
    terca = dia.tuesday?
    quarta = dia.wednesday?
    quinta = dia.thursday?
    sexta = dia.friday?
    sabado = dia.saturday?
    domingo = dia.sunday?

    if segunda == true
        return puts "Hoje é domingo? #{segunda}"
    elsif terca == true
        return puts "Hoje é domingo? #{t}"
    elsif quarta == true
        return puts "Hoje é domingo? #{domingo}"
    elsif quinta == true
        return puts "Hoje é domingo? #{domingo}"
    elsif sexta == true
        return puts "Hoje é domingo? #{domingo}"
    elsif sabado == true
        return puts "Hoje é domingo? #{domingo}"
    elsif domingo == true
        return puts "Hoje é domingo? #{domingo}"
    end

end

puts saber_dia(data)

sleep 1

puts "Digite em quantos dias deseja que a entrega seja feita: "
data_entrega = gets.chomp.to_i

calcular_data_entrega(data_envio_pacote, data_entrega)




