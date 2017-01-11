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
    system('clear')
    puts "INGRESO DE PRODUCTOS".center(50,'=')
    print "\n\n\tCodigo de producto: "
    cantidad=productos.size()+1
    cantidad=cantidad.to_s
    largo=0-cantidad.length
    codigo="P000"
    codigo[largo,2]=cantidad
    print codigo
    print "\n\n\tIngrese descripcion del producto: "
    descripcion =gets.chomp
    print "\n\n\tIngrese precio del producto: "
    precio=gets.chomp
    precio=precio.to_f
    prod = Producto.new(codigo,descripcion,precio)
    productos=productos.push(prod)
  end
  attr_accessor :codigo
  attr_accessor :descripcion
  attr_accessor :precio
end