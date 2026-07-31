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