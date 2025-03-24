# 1-# Para ver o tipo, no caso do <Math> ele é tipo módulo.

puts Math.class 

# Para ver todo os metódos que tem dentro do <Math> utilizamos <.methods> e <.sort> para ordena os metódos.

puts Math.methods.sort 

# Metódo para ver a raiz quadrada.

puts Math.sqrt(4) # Passamos entre () o número desejado para a raiz quadrada.

# Metódo para ver Pi.
# Quando passamos <::>, siginifica que estamos querendo utilizar um módulos com os primeiros <:> e no segundo a referência a classe que está dentro do módulo que vamos usar, que no caso seria <PI>.

puts Math::PI # Retorna o valor de PI no terminal.

# 2-Cálculo a área de um círculo.

def calcular_area(raio)
    return Math::PI * raio ** 2 # cálculo para calcular a área de um círculo.
end

# 3-Cáculo perímetro de um círculo.

def calcular_perimetro(raio)
    return 2 * Math::PI * raio
end

# 4-Entrada de dados.

puts "Digite o raio do círculo: "
raio = gets.chomp.to_f

# 5-Execução da função.

area = calcular_area(raio)
perimetro = calcular_perimetro(raio)

# 6-exibindo os resultados.

puts "Área do círculo com raio #{raio} é #{area.round(2)}"
puts "Perímetro do círculo com raio #{raio} é #{perimetro.round(2)}"