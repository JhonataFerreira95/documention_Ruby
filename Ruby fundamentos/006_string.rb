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

puts des2.upcase
puts des2.downcase
puts des2.capitalize
puts des2.swapcase
puts des2.chop

# 6-Verificar o índice

puts des2.index("complicada")

# 7-Alterar palavras

puts des2.gsub("complicada", "personalidade forte")

# 8-Outras operações

puts "Ruby".center(10, "-")
puts "=" * 20
puts des2.incluide?("complicada")
puts "  Ruby".lstrip
puts "Ruby  ".rstrip
puts " Ruby ".strip
