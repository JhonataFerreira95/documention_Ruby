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
data = gets.chomp.to_i

def saber_dia(dia)

    segunda = dia.monday?
    terca = dia.thuesday?
    quarta = dia.wednesday?
    quinta = dia.thuesday?
    sexta = dia.friday?
    sabado = dia.saturday?
    domingo = dia.sunday?

    if segunda == true
        return segunda
    elsif terca == true
        return terca
    elsif quarta == true
        return quarta
    elsif quinta == true
        return quinta
    elsif sexta == true
        return sexta
    elsif sabado == true
        return sabado
    elsif domingo == true
        return domingo
    end

end

saber_dia(data)

corte = data.split("/")
data_envio_pacote = corte[0], corte[1], corte[2]

sleep 1

puts "Digite em quantos dias deseja que a entrega seja feita: "
data_entrega = gets.chomp.to_i

calcular_data_entrega(data_envio_pacote, data_entrega)




