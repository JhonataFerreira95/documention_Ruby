
puts Time.new 
puts Time.now # Para saber o tempo de agora

# Usando dia, mês e ano

puts Time.new(2023)

puts Time.new(2023, 5, 12, 18, 43, 51) # Usando ano, mês, dia, hora, minuito e segundo

# atribuindo a uma váriável 

some_time = Time.new(2023, 5, 12, 18, 43, 51) # Atribuindo a uma várivel 

puts some_time.year
puts some_time.month
puts some_time.day

puts some_time.hour
puts some_time.min
puts some_time.sec

puts some_time.wday

# Adição e subtração

start_of_year = Time.new(2024)
puts start_of_year

# 60 segundos em minuto
# 60 mintos em uma hora
# 24 horas em um dia
# 30 dias

puts start_of_year + (60*60*24*30)
