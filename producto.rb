class Producto
  def initialize (codigo='',descrip='',precio=0)
    @codigo = codigo
    @descripcion = descrip
    @precio = precio
  end
  def mostrar_productos(productos)
    system('clear')
    puts "LISTA DE PRODUCTOS".center(50,'=')
    productos.each do |prod|
      print prod.codigo.ljust(5)
      print '    '
      print prod.descripcion.ljust(15)
      print '    '
      puts prod.precio.to_s.rjust(10)
    end
    gets()
  end
  def ingresar_producto(productos)

  end

  attr_accessor :codigo
  attr_accessor :descripcion
  attr_accessor :precio
end