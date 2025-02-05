# Dados

name = "Hisstrahr"

name2 = "hisstrahr"

# Ruby é case sensitive

puts name == name2

des = "Hiss é uma pessoa complicada"
des2 = <<Text # Aqui trabalhamos com multilinha
  O #{name} é uma pessoa complicada 
Text

puts des2

# Para verificar o tamanho da string

puts des2.length 
puts des.size

#  1-Indexação

puts des2[0]
puts des2[-1]
puts des2[0,4] # Último caractere dessa usando o <,> é exclusivo
puts des2[0..4] # Último caractere dessa usando o <..> é inclusivo
puts des2.slice(0)
puts des2.slice(0,4)

# 2-Quebrando um string

print des2.split()
print des2.split("uma")

# 3-Quebrando uma string em caracteres

print des2.chars

# 4-Conta a ocorrência de caracteres

puts des2.count("a")

# 5-Maiúsculo e minúsculo

puts des2.upcase # Converte todos os caracteres para MAIÚSCULAS -> "EXEMPLO DE TEXTO"
puts des2.downcase # Converte todos os caracteres para minúsculas -> "exemplo de texto"
puts des2.capitalize # Apenas a primeira letra fica maiúscula, o restante minúsculo -> "Exemplo de texto"
puts des2.swapcase # Inverte maiúsculas e minúsculas -> "eXEMPLO DE tEXTO"
puts des2.chop # Remove o último caractere da string -> "Exemplo de Text"

# 6-Verificar o índice

puts des2.index("complicada") # Retorna o índice (posição) onde a palavra "complicada" começa na string. Se a palavra não existir, retorna `nil`


# 7-Alterar palavras

puts des2.gsub("complicada", "personalidade forte") # Substitui "complicada" por "personalidade forte" na string

# 8-Outras operações

puts "Ruby".center(10, "-")

# Centraliza a palavra "Ruby" em um total de 10 caracteres, preenchendo com "-"

puts "=" * 20

# Repete o caractere "=" 20 vezes, criando uma linha de separação

puts des2.include?("complicada")

# Verifica se a palavra "complicada" está presente na string (true ou false)

puts "  Ruby".lstrip # Remove os espaços em branco do início da string -> "Ruby"

puts "Ruby  ".rstrip0 # Remove os espaços em branco do final da string -> "Ruby"

puts " Ruby ".strip # Remove os espaços em branco do início e do fim da string -> "Ruby"
