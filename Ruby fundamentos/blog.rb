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