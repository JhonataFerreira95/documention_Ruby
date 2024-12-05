puts "Informe o seu primeiro nome: "

nome1 = gets.chomp.downcase

puts "Informe o seu segundo nome: "

nome2 = gets.chomp.downcase

puts "Informe o nome da sua companhia: "

company = gets.chomp.downcase

ponto = "."
var1 = "@"
var2 = ".com"

result = nome1+ponto+nome2+var1+company+var2

print result

# Gerador de E-mail REFATORANDO

puts "Informe o seu primeiro nome: "

nome1 = gets.chomp

puts "Informe o seu segundo nome: "

nome2 = gets.chomp

puts "Informe o nome da sua companhia: "

company = gets.chomp

email = ""

email << name.downcase.split.join(".")

email << "."

email << lastname.downcase.split.join(".")

email << "@"

email << company.downcase.split.join

email << ".com"

puts email

