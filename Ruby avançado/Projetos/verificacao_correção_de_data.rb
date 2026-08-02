=begin

​Crie um programa que solicite ao usuário uma data no formato "dd/mm/aaaa" e verifique se a entrada corresponde a este formato. 
Se sim, o programa deve imprimir a data no formato "aaaa-mm-dd". Caso contrário, deve exibir uma mensagem de erro.

=end



puts "!--------------------------------------------------Bem-vindo ao verificador de data!--------------------------------------------------!"

sleep 1

while true

  puts "Digite a data no formato DIA/MÊS/ANO: "
  usuario_entrada = gets.chomp

  if usuario_entrada.length == 10
    corte = usuario_entrada.split("/")
    dia = corte[0].to_i
    mes = corte[1].to_i
    ano = corte[2].to_i

  else

    puts "Digite um valor que corresponda a DIA/MÊS/ANO."
    next

  end

end

