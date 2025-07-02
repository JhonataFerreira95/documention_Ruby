puts "Quantos termos você quer mostra? "
termos = gets.chop.to_i

fib = 0 

while result <= 10
    result = fib + termos
    puts result
end
