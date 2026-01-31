matriz = [
  [0,0,0],
  [0,0,0],
  [0,0,0]
]

count = 0

while count < 9
  count += 1
  puts "Digite um valor para #{matriz}: " 
  matriz << gets.chomp.to_i
end