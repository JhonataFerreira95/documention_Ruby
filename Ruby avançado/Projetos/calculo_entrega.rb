=begin

Você foi contratado por uma empresa de logística para ajudar a calcular o tempo estimado de entrega de pacotes.
A empresa deseja uma função que receba a data de envio e o tempo estimado de entrega em data_envios úteis
e retorne a data estimada de entrega, levando em consideração apenas os data_envios úteis (segunda a sexta-feira).

Escreva uma função chamada calcular_data_entrega que recebe dois parâmetros:
data_envio (no formato "YYYY-MM-DD") e tempo_entrega_data_envios (um inteiro representando os data_envios úteis necessários para a entrega).
A função deve retornar a data estimada de entrega no formato "YYYY-MM-DD", levando em consideração os data_envios úteis.

=end

require 'date'

$data_atual = 0 

puts "!===================================Bem vindo ao calculador de entregas===================================!"

sleep 2

puts "Digite a data do envio no formato ANO, MÊS, data_envio: "
entrada = gets.chomp

corte = entrada.split(",")
ano = corte[0].to_i
mes = corte[1].to_i
data_envio = corte[2].to_i

data = Time.new(ano, mes, data_envio)

$data_atual = Date.new(ano, mes, data_envio)

def calcular_data_entrega(data_envio, tempo_entrega_envios)

     segunda = data_envio.monday?
     terca = data_envio.tuesday?
     quarta = data_envio.wednesday?
     quinta = data_envio.thursday?
     sexta = data_envio.friday?
     sabado = data_envio.saturday?
     domingo = data_envio.sunday?


     if (segunda == true or terca == true) or (quarta == true or quinta == true) or  sexta == true
          semana_entrega = $data_atual + tempo_entrega_envios
          return semana_entrega
     elsif sabado == true
          sabado_entrega = $data_atual + 1 + tempo_entrega_envios
          return sabado_entrega
     else
          domingo_entrega = $data_atual + 2 + tempo_entrega_envios
          return domingo_entrega
     end

end

sleep 1

puts "Digite em quantos data_envios deseja que a entrega seja feita: "
dias_da_entraga= gets.chomp.to_i

puts "A sua entrega de #{dias_da_entraga} dias úteis será entregue com o prazo máximo até #{calcular_data_entrega(data, dias_da_entraga)}"







