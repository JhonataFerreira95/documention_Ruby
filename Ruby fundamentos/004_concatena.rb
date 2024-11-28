puts "informe o nome do sua classe:"
name = gets.chomp
  
  
puts "informe o ano do sua classe:"
yearLaunch = gets.chomp.to_i
  

puts "informe o preço do sua classe:"
price = gets.chomp.to_f
  
# 1-Concatenação e exibição dos valores

puts "nome da classe: " + name
puts "ano de lançamento: " + yearLaunch.to_s # Aqui o <.to_s> converte o valor para string
puts "preço da classe: " + price.to_s # Aqui o <.to_s> converte para float, já que o tudo que vai no puts é string
  
# 2-Utilizando o #{}, vamos fazer o mesmo código só que de forma mais prática

puts "nome da classe: #{name}" 
puts "ano de lançamento: #{yearLaunch}" # Aqui não é necessário fazer a converção, já que é intrínseco
puts "preço da classe: #{price}" 

# 3-Utiliando um único puts

puts "nome da classe: #{name}\n ano de lançamento: #{yearLaunch}\n preço da classe: #{price}\n" # quando se escreve tudo em um puts ele não quebra linha sozinho, por isso utilizamos o <\n>

# 4-String multilinha

puts <<~MULTILINE_STRING
  nome da classe: #{name}
  ano de lançamento: #{yearLaunch}
  preço da classe: #{price}
MULTILINE_STRING


