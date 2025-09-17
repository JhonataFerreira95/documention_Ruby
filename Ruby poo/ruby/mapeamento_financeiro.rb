class FinancialTransaction

  attr_accessor: :completed # Acessor tem a mesma função do getter e setter.

  attr_reader: :to, :from, :amount # definição do getter com o <attr_reade> apenas leitura. 

  def initialize(to, from, amount, completed)
    @to = to
    @from = from
    @amount = amount
    @completed = completed
  end

end