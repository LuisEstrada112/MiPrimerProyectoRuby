class Cliente
  def initialize (codigo='',nombre='',direccion='')
    @codigo = codigo
    @nombre = nombre
    @direccion  = direccion
  end

  def mostrar_clientes (clientes)
    system('clear')
    puts "LISTA DE CLIENTES".center(50,'=')
    clientes.each do |clie|
      print clie.codigo.ljust(5)
      print '    '
      print clie.nombre.ljust(15)
      print '    '
      puts clie.direccion.ljust(25)
    end
    gets()
  end
  def ingresar_cliente (clientes)
    system('clear')
    puts "INGRESO DE CLIENTES".center(50,'=')
    print "\n\n\tCodigo de cliente: "
    cantidad=clientes.size()+1
    cantidad=cantidad.to_s
    largo=0-cantidad.length
    codigo="C000"
    codigo[largo,2]=cantidad
    print codigo
    print "\n\n\tIngrese nombre del cliente: "
    nombre=gets.chomp
    print "\n\n\tIngrese direccion del cliente: "
    direccion=gets.chomp
    clie = Cliente.new(codigo,nombre,direccion)
    clientes=clientes.push(clie)
  end

  attr_accessor :codigo
  attr_accessor :nombre
  attr_accessor :direccion
end