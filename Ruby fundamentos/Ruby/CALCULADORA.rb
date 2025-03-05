puts "Bem-vindo ao app calculadora! "

loop do
  puts "Escolha entre as opções adi, subi, mult, div. Caso deseje sair digite (x): ".downcase
  op = gets.chomp

  case op 
  when "x"
    puts "Você escolheu sair da calculadora!"
    puts "Saindo . . ."
    break
  when "adi"
    adi = 0
    adi2 = 0
    puts "Digite o primeiro número da soma: "
    adi = gets.chomp.to_f
    puts "Digite o segundo número da soma: "
    adi2 = gets.chomp.to_f
    adir = lambda { |adir| adi + adi2 }
    puts adir.call(adir)
    break
  when "subi"
    subi = 0
    subi2 = 0
    puts "Digite o primeiro número da subtração: "
    subi = gets.chomp.to_f
    puts "Digite o segundo número da subtração: "
    subi2 = gets.chomp.to_f
    subr = lambda { |subr| subi - subi2 }
    puts subr.call(subr)
    break
  when "mult"
    mult = 0
    mult2 = 0
    puts "Digite o primeiro número da multiplicação: "
    mult = gets.chomp.to_f
    puts "Digite o segundo número da multiplicação: "
    mult2 = gets.chomp.to_f
    multr = lambda { |adir| mult * mult2 }
    puts multr.call(multr)
    break
  when "div"
    div = 0
    div2 = 0
    puts "Digite o primeiro número da divisão: "
    div = gets.chomp.to_f
    puts "Digite o segundo número da divisão: "
    div2 = gets.chomp.to_f
    divr = lambda { |divr| div / div2 }
    puts divr.call(divr)
    break
  end
end