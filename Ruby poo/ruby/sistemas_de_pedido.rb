module Sistem

    def calcularMontante
      total = @itens.sum(&:preco)
      puts "O total das compras é: R$#{total}"
    end

    def preco_compras
      ""
    end

end

class Produto

  attr_accessor :nome, :preco
  
  def initialize(nome, preco)
    @nome = nome
    @preco = preco
  end

  def to_s
    "#{@nome}-#{@preco}"
  end

  protected

  def descricao
    puts "Produto: #{@nome} - R$#{@preco}"
  end

end


class Pedido 

    include Sistem

    attr_accessor :clientes, :itens

    def initialize(clientes)
      @clientes = clientes
      @itens = []
    end

    def to_s
      "#{super}-#{@clientes}-#{@itens}"
    end

    def adicionar_item(produto)
      @itens << produto
      puts "#{produto.nome} adiconado ao pedido."
    end

    def detalhes
      puts "\n--- Detalhes do Pedido ---"
      puts "Cliente: #{@clientes.nomeCliente}"
      puts "Itens:"
      @itens.each { |item| puts "  - #{item}" }
      calcular_montante
      puts "--------------------------"
    end
end

class Cliente 
    
  attr_accessor :nomeCliente

  def initialize(nomeCliente)
    @nomeCliente = nomeCliente
  end

  def fazer_pedido
    Pedido.new(self)
  end

end

p1 = Produto.new("Cola", 10)
p2 = Produto.new("Caneta", 20)
cliente = Cliente.new("Bass")

pedido = cliente.fazer_pedido
pedido.adicionar_item(p1)
pedido.adicionar_item(p2)
pedido.detalhes
