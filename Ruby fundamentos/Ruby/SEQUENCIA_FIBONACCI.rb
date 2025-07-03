puts "Quantos termos você quer mostra? "
termos = gets.chop.to_i

t1 = 0
t2 = 1

puts "#{t1} -> #{t2}"

cont = 3

while cont <= termos
    t3 = t1 + t2
    puts "-> #{t3}"
    t1 = t2
    t2 = t3
    cont += 1
end

puts "Fim"
