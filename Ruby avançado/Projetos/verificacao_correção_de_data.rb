=begin

​Crie um programa que solicite ao usuário uma data no formato "dd/mm/aaaa" e verifique se a entrada corresponde a este formato. 
Se sim, o programa deve imprimir a data no formato "aaaa-mm-dd". Caso contrário, deve exibir uma mensagem de erro.

=end



puts "!--------------------------------------------------Bem-vindo ao verificador de data!--------------------------------------------------!"

sleep 1

while true

  puts "Digite a data no formato DIA/MÊS/ANO: "
  usuario_entrada = gets.chomp



  if usuario_entrada =~ /\A(\d{2})\/(\d{2})\/(\d{4})\z/
    
    dia, mes, ano = usuario_entrada.scan(/\d+/)

    nova_data = "#{ano}-#{mes}-#{dia}"

    puts "A data digitada está correta? [S/N]: "
    opcao = gets.chomp.upcase

    if opcao.include?("S")

      puts "A data no formato 'dd/mm/aaaa' é válida e convertida para o formato 'aaaa-mm-dd': #{nova_data}"
      sleep 2

      break
    else

      puts "Digite a data correta novamente..."
      next

    end

  else

    puts "-=-=-" * 20
    sleep 1

    puts "Digite um valor que corresponda a DIA/MÊS/ANO."
    puts "=====" * 20
    next

  end

end

