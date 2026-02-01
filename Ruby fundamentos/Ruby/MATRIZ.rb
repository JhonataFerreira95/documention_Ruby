matriz = [
  [0,0,0],
  [0,0,0],
  [0,0,0]
]

spar = mai = scol = 0

for l in 0..2
  for c in 0..2
    puts "Digite um valor para #{matriz}: " 
    matriz[l][c] = gets.chomp.to_i     
  end
end

for l in 0..2
  for c in 0..2
    print"[#{matriz[l][c]}]"
    if matriz[l][c] % 2 == 0
      spar += matriz[l][c]
    end
  end
  puts ""
end

puts "-=" * 10
puts "A soma dos valores pares é #{spar}"

for l in 0..2
    scol += matriz[l][2]
end