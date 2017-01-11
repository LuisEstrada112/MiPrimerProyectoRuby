class Producto
  def initialize (codigo='',descrip='',precio=0)
    @codigo = codigo
    @descripcion = descrip
    @precio = precio
  end
  attr_accessor :codigo
  attr_accessor :descripcion
  attr_accessor :precio
end