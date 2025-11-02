class FinancialTransaction

  attr_accessor :completed # Acessor tem a mesma função do getter e setter.

  attr_reader :to, :from, :amount # definição do getter com o <attr_reade> apenas leitura. 

  def initialize(to, from, amount, completed)
    @to = to
    @from = from
    @amount = amount
    @completed = completed
  end

end

trans1 = FinancialTransaction.new("Hornet", "Knight", 1000, false)
p trans1.to
p trans1.from
p trans1.amount
p trans1.completed
trans1.completed = true
p trans1.completed