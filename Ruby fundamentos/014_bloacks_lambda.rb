# 1-Blocks, o que são? Blocos são trechos anônimos de código que aceitam
# entradas de argumentos e retornam um determinado valor.

def hello
  yield # yield é uma palavra reservada que chama o bloco.
end

hello {puts "Olá, mundo!"}
hello {puts "Olá, mundo 2!"}
hello {puts "Olá, mundo 3!"}

# Exemplo 2

def one_two_trhee
  yield 1
  yield 2
  yield 3
end

one_two_trhee {|number| puts number * 10} 

=begin
  
Aqui vou aborda um pouco o usor de pipes, que são usados para passar argumentos para o bloco acima.

Em Ruby, os pipes | | são usados para definir parâmetros de bloco.
Eles permitem que você passe argumentos para o bloco de código que está sendo executado.
No exemplo one_two_trhee {|number| puts number * 10}, |number| indica que o bloco aceita 
um argumento chamado number.

=end

# 2-Lambda, o que é? Lambda é uma função anônima que pode ter qualquer número de argumentos, mas
# retorna apenas um valor.  

power = lambda { |num| num ** 2 } # Função de potência de um número.
puts power.call(4) # Retorna 16 no terminal. O <.call> é para chamada do resultado da função.

# Função de soma de dois são par.

funpar = lambda { |par| par % 2 == 0 } 
puts funpar.call(5) # Retorna false no terminal, já que resto da divisão 5/2=1.

# Função que divide um número por outro.

div = lambda { |a, b| a / b} 
puts div.call(20, 10) # Retorna no console o resultado da divisão de 20/10=2.

# Se perguntou o porque se chama função lambda? Te explico.
# Ela não tem um nome definido, é geralmente atribuída para uma variável/referência.
# Depois você chama sua variável e passa o seus devidos parâmentros.