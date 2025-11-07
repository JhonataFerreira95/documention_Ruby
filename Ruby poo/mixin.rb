module Anuncio
    def exibicao_anuncio
      puts "---Este é um dos carros da BYD---
      "
      self.tecnico
      puts "=-=-=" * 7
    end
end


class Carro

  include Anuncio
                                
                attr_accessor :marca, :modelo, :preco # Utilizando o método <attr_accessor> para definir que os atríbutos são de escrita e leitura ao mesmo tempo
                          
                # Inicializando minha variável de <classe>

                @@contador_carro = 0

                def initialize(marca, modelo, preco) # Adicionamos novamente os parâmetros para fica algo dinâmico, sem valores estáticos
                    @marca = marca
                    @modelo = modelo
                    @preco = preco

                    # Utilizando a variável de <classe>
                    @@contador_carro += 1 # Icrementador para saber a quantidade de <Classes> instânciada
                end

                def to_s # Tem que ser criado com esse nome para que funcione, já que é uma palavra reservada
                    "#{@marca}-#{@modelo}-#{@preco}" # Definido a menssagem de criação do objeto
                end

                def tecnico
                    puts "#Dados do Carro"
                    puts "Sua marca é #{@marca}"
                    puts "Seu modelo é #{@modelo}"
                    puts "Seu preco é #{@preco}"
                end

                # Utilizando o método de <classe> em conjunto com a variável de <classe>

                def self.conta_vendas
                    @@contador_carro
                end
                                                    
end

            # criando a nossa <sub-classe>

class Moto < Carro # Utilizando o sinal de `menor que <` para que nossa nova <classe> herde os parâmetros da <super-classe>

  include Anuncio

                # Definição dos atributos pelo <attr_acessor> que é escrita e leitura
                
                attr_accessor :motor

                # dinição do nosso <initialize>

                def initialize(marca, modelo, preco, motor)
                    # A palavra reservada <supe> é utilizada para trazer os métodos da nossa <super-classe> para nossa <sub-classe>
                    super(marca, modelo, preco) 
                    @motor = motor # Como nosso único atributo é motor, então só precisamos declarar o mesmo em noosso <initialize>
                end

                def to_s
                    "#{super}-#{@motor}" # Herdando o <to_s> e adc nosso parâmetro com polimorfismo
                end

                def tecnico
                  super # A palavra reservada <super> aproveita todo métood da nosssa <super-classe> e podemos adicionar mais parâmetros casos seja desejado
                  puts "O motor do carro é #{@motor}."
                end

end

            # instânciando minhas <classes>

            carro = Carro.new("Ford", "Kar", 34000)
            puts carro
            puts carro.tecnico

            # Chamando o método de <classe> que consume uma variável de <classe> em nosso <initialize>

            puts "Quantidade de carros vendidos #{Carro.conta_vendas}"

            # Instânciando a nossa <sub-classe>

            carro1 = Moto.new("BYD", "Dolphe", 11000, "eletrico")
            puts carro1
            puts carro1.tecnico
            carro1.exibicao_anuncio
