class Cliente
  def initialize (codigo='',nombre='',direccion='')
    @codigo = codigo
    @nombre = nombre
    @direccion  = direccion
  end
  attr_accessor :codigo
  attr_accessor :nombre
  attr_accessor :direccion
end