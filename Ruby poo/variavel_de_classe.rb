class Carro
                                
                attr_accessor :marca, :modelo, :preco # Utilizando o método <attr_accessor> para definir que os atríbutos são de escrita e leitura ao mesmo tempo
                
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

            # instânciando minhas <classes>

            carro = Carro.new("Ford", "Kar", 34000)
            puts carro
            puts carro.tecnico

            carro1 = Carro.new("Fiat", "Marea", 14000)
            puts carro1
            puts carro1.tecnico

            carro2 = Carro.new("BYD", "Dolph-mine", 111000)
            puts carro2
            puts carro2.tecnico

            # Chamando o método de <classe> que consume uma variável de <classe> em nosso <initialize>

            puts "Quantidade de carros vendidos #{Carro.conta_vendas}" 
