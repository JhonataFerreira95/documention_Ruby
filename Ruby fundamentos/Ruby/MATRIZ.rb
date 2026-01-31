matriz = [
  [0,0,0],
  [0,0,0],
  [0,0,0]
]

for l in range 0..3
  for c in range 0..3
    puts "Digite um valor para #{matriz}: " 
    matriz[l][c] = gets.chomp.to_i     
  end
end

puts matriz