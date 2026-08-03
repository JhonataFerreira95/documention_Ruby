# Uso do método scan

string = "A linguagem Ruby é poderosa e versátil. Ruby é divertido de aprender"

pattern = /Ruby/

results = string.scan(pattern)

puts "O padrão 'ruby' foi encontrado #{results.length} vezes na string."
puts "As ocorrências encontradas foram: #{results.join(',')}"

# Extraindo todos os dígitos de uma string com o scan

string2 = "A OpenAI lançou o GPT-3 e o GPT-4 em 20202."

number = string2.scan(/\d+/)

puts "Os números inteiros encontrados na string são: #{number.join(', ')}"
