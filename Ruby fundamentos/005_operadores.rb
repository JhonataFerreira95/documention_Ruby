puts "Digite o primeiro número: "

num1 = gets.chomp.to_i

puts "Digite o segundo número: "

num2 = gets.chomp.to_i

# 1-Operadores Aritméticos

sum = num1 + num2 
subt = num1 - num2
div = num1 / num2
mult = num1 * num2
mod = num1 % num2
exp = num1 ** num2

# puts sum, subt, div, mult, mod, exp

# 2-Operadores de Atribuição

num1 += 1 # seria o mesmo que num1 = num1 + 1
num1 -= 1 # seria o mesmo que num1 = num1 - 1
num1 /= 1 # seria o mesmo que num1 = num1 / 1
num1 *= 1 # seria o mesmo que num1 = num1 * 1

# 3-Atribuição paralela

a, b = 5, 4
a, b =b, a # invertendo valores
puts a,b

# 4-Operadores de Comparação

bigger = num1 > num2 # aqui o > reoresenta o maior que
smaller = num1 < num2 # aqui o < reoresenta o menor que
equal = num1 == num2 # aqui o == representa o igual
differente = num1 != num2 # aqui o != representa o diferente igual
bigger_equal = num1 >= num2 # aqui o >= reoresenta o maior que ou igual
smaller_equal = num1 <= num2 # aqui o <= reoresenta o maior que ou igual

# 5-Operadores Lógicos

puts ((2 > 4) and (3 > 1)) # Quando se utiliza o <and> ambos os lados precisam ser verdadeiros para retorna um valor true
puts ((2 > 4) or (3 > 1)) # Quando se utiliza o <or> apenas um dos lados precisam ser verdadeiros para retorna um valor true

# 6-Operadores Especiais 






