# O que é um map? Podemos criar uma nova lista sem alterar a lista de qual recebemos valores.

nomes = ["Hiss", "Ouken", "Bass", "Saturn"] # Inicializando uma lista de nomes

# Aqui inciamos com a variável que será utilizada para injeção dos sobrenome pós temos nosso array <nomes>
nomes_personalidades = nomes.map.with_index do |personality, index| # Com nosso <.map> para inciar o mapa e em seguida com <.with_index> para interar novos valores interpolando nossa array <nomes>
  "#{personality} #{['Astran', 'Ikidori', 'Ovirowa', 'Emu'][index]}" # Utilizamos interpolação para imprimir os sobrenomes, para alocar os sobrenomes com os devidos valores nos locais certos utilizamos o <[index]>
end

puts nomes_personalidades # Imprime o resultado desejado no terminal.

