matriz = [
  [0,0,0],
  [0,0,0],
  [0,0,0]
]

for l in 0..2
  for c in 0..2
    puts "Digite um valor para #{matriz}: " 
    matriz[l][c] = gets.chomp.to_i     
  end
end

for l in 0..2
  for c in 0..2
    print"[#{matriz[l][c]}]"
  end
  puts ""
end