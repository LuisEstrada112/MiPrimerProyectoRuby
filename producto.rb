class Producto
  def initialize (codigo='',descrip='',precio=0)
    @codigo = codigo
    @descripcion = descrip
    @precio = precio
  end
  attr_accessor :nombre
  attr_accessor :descripcion
  attr_accessor :precio
end