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

print (5..1).to_a # No Ruby, o operador <..> é usado para criar um intervalo inclusivo, ou seja, inclui ambos os extremos. Por exemplo, 1..5 representa os números de 1 a 5 (inclusive)
print ('a'..'z').to_a # O <.to_a> converte os parâmetros em arrays

# 7-Precedência de Operadores

puts 3 + 2* 5
puts (3 + 2) * 5 # A precedência é algo simples, tudo que está em () vai ser calculado primeiro

=begin
  
Em Ruby, a precedência dos operadores determina a ordem em que as operações são executadas. 
Por exemplo, os operadores aritméticos como * e / têm precedência maior que os operadores de adição (+) e subtração (-),
 que, por sua vez, têm precedência maior que os operadores de comparação como == e >.

=end

# 8-Operador Binary left shit

name = ""
name << "Bass"
name << "Hiss"

puts name

=begin

name = "": Aqui, uma string vazia é atribuída à variável name.
name << "Bass": O operador << é usado para adicionar a string "Bass" ao final da variável name. Após essa linha, o valor de name será "Bass".
name << "Hiss": O operador << é novamente usado para adicionar a string "Hiss" ao final de name. Agora, o valor de name será "BassHiss".
puts name: O método puts imprime o valor de name no console, resultando em "BassHiss".

=end