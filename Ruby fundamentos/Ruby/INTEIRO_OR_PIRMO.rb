puts "Bem vindo ao verificador de números primos!\n-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=\n"

puts "Digite um número para verificar se ele é primo: "
primo = gets.chomp.to_i

calculo_primo = primo % 1 == primo

for i in (1..primo + 1)
 puts i 
end

puts primo % 1 == primo ? "O número #{primo} foi divisível #{calculo_primo} E por isso ele NÃO É PRIMO!" : "O número #{primo} foi divisível #{calculo_primo} E por isso ele É PRIMO!"



