=begin

Você foi contratado por uma empresa de logística para ajudar a calcular o tempo estimado de entrega de pacotes.
A empresa deseja uma função que receba a data de envio e o tempo estimado de entrega em dias úteis
e retorne a data estimada de entrega, levando em consideração apenas os dias úteis (segunda a sexta-feira).

Escreva uma função chamada calcular_data_entrega que recebe dois parâmetros:
data_envio (no formato "YYYY-MM-DD") e tempo_entrega_dias (um inteiro representando os dias úteis necessários para a entrega).
A função deve retornar a data estimada de entrega no formato "YYYY-MM-DD", levando em consideração os dias úteis.

=end

def calcular_data_entrega(data_envio, tempo_entrega_dias)
    
    

end


puts "Digite a data do envio no formato ANO/MÊS/DIA: "
data = gets.chomp

corte = data.split("/")

ano = corte[0]
mes = corte[1]
dia = corte[2]

puts ano, mes, dia
