require 'modulo'

class Pessoa

  attr_accessor falar:

  def initialize(falar)
    include Falante
    @falar = falar
  end

end

class Robo

end