puts "=-=-=-=-=" * 5
puts "Bem-Vindo ao calculo faotorial!"
puts "=-=-=-=-=" * 5

puts "Digite o número para saber seu calculo faotiral: "
fatorial = gets.chomp.to_i
calculo_fatorial = fatorial
resultado_fatorial = 1

puts "Calculando o fatorial de #{calculo_fatorial}!"

while calculo_fatorial > 0
    puts "=-=-=-=-=" * 5
    puts calculo_fatorial > 1 ? "#{fatorial} x #{calculo_fatorial}" : "#{fatorial} = #{resultado_fatorial}"
    resultado_fatorial *= calculo_fatorial
    calculo_fatorial -= 1
end

