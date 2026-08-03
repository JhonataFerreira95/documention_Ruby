require 'date' 

# Exemplos de date

puts Date.new(2001) # Referente ao ano

puts Date.new(2001, 8) # Referente ao ano e o mês

puts Date.new(2001, 8, 28) # Referente ao ano, mês e dia

# Atribuindo com  vavriável

birthday = Date.new(2001, 8, 28)
puts birthday.class # Recuperando tipo da classe
puts birthday.year # Recuperando ano
puts birthday.day # Recuperando dia
puts birthday.month # Recuperando mês

# data.wday

# 0 - domingo
# 1- segunda
# 3 - terça
# 4 - quarta
# 5 - sexta
#  6 - sábado

puts birthday.monday?
puts birthday.tuesday?
puts birthday.wednesday?
puts birthday.thursday?
puts birthday.friday?