
class Projeto 

  def initialize
    @name = "autmação web"
    @budget = 10000
    @members = ["hollow", "hornet"]
  end

  def to_s
    "#{name}-#{budget}-#{members}"
  end


  def name
    @name
  end

  def budget
    @budget
  end

  def members
    @members
  end

  def budget=(new_get)
    @budget = new_get
  end

end

projeto = Projeto.new

puts projeto.name, projeto.budget, projeto.members

# alterando o valor

projeto.budget = 25

puts projeto.budget

