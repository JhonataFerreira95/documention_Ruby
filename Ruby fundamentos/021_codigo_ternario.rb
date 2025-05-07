# O que é um código ternário? É um código mais limpo e refatorado. 
# Um operador ternário é composto por três partes, daí vem a palavra "ternário". Essas partes incluem uma declaração condicional e dois resultados possíveis.

# Exemplo sem código ternário:

nome = "kuma"

if nome == "kuma"
  puts "Kuma é um fofo"
else
  puts "Kuma não é um fofo"
end

# Exemplos com código ternário:

puts nome.eql("kuma")? "Kuma é um fofo" : "kuma não é fofo" # Aqui utilizamos o <.eql>  que verificar se os objetos são equivalentes.

# No operador ternário, a esquerda representa <false> == <else> e a direita representa <true> == <if>

