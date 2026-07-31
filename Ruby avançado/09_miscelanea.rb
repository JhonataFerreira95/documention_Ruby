# Exemplo de exclusão de caracteres usando expressões regulares

strings = ["apple", "cd", "cherry", "dt", "grape", "fig"]

strings.each do |string|
   if string =~ /^[^aeiou]+$/
    puts "#{string} contém apenas consoantes"
  else
    puts "#{string} contém vogais"
  end 
end

# Exemplos de uso do sub e o gsub em Ruby para substituir partes de uma string

strings2 = "A linguagem Ruby é fácil de aprender e Ruby é divertida."

novo_string_sub = strings2.sub(/Ruby/, 'Python')
novo_string_gsub = strings2.sub(/Ruby/, 'Python')

puts "Usando sub: "
puts "String original: #{strings2}"
puts "String modificada: #{novo_string_gsub}"