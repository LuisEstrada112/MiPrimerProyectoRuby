require_relative 'cliente.rb'
require_relative 'producto.rb'

class Venta
  def initialize (codigo='', cliente='', producto='', cantidad=0,igv=0,total=0)
    @codigo=codigo
    @cliente=cliente
    @producto=producto
    @cantidad=cantidad
    @igv=igv
    @total=total
  end
  def realizar_venta(ventas, productos)
    @prec
    system('clear')
    puts "VENTA DE PRODUCTOS".center(50,'=')
    print "\n\n\tCodigo de venta: "
    cant=ventas.size()+1
    cant=cant.to_s
    largo=0-cant.length
    codigo="V000"
    codigo[largo,2]=cant
    print codigo
    print "\n\n\tIngrese codigo del cliente: "
    cliente=gets.chomp
    print "\n\n\tIngrese codigo del producto: "
    producto=gets.chomp
    print "\n\n\tIngrese cantidad a comprar: "
    cantidad=gets.chomp
    cantidad=cantidad.to_f



    productos.each do |prod|
      if prod.codigo==producto then
        @prec=prod.precio
      end
    end
    print "\n\n\tEl precio del producto es: #{@prec}"
    subtotal=@prec* cantidad
    igv=subtotal*0.18
    print "\n\n\tEl IGV a cobrar es: #{igv}"
    total=subtotal+igv
    print "\n\n\tEl TOTAL de la venta realizada es: #{total}"
    vent = Venta.new(codigo,cliente,producto, cantidad, igv, total)
    ventas=ventas.push(vent)
    gets
  end
  def mostrar_ventas(ventas, clientes, productos)
    system('clear')
    puts "RELACION DE VENTAS".center(100,'=')
    ventas.each do |vent|
      print vent.codigo.ljust(8)
      print vent.cliente.ljust(8)
      clientes.each do |clie|
        if vent.cliente==clie.codigo then
          print clie.nombre.ljust(15)
        end
      end
      productos.each do |prod|
        if prod.codigo==vent.producto then
          print prod.descripcion.ljust(25)
        end
      end
      print vent.cantidad.to_s.rjust(10)
#      NumberFormat formatter = new DecimalFormat{"#0.00"}

#      print formatter.format(vent.igv).to_s.rjust(10)
#      print formatter.format(vent.total).to_s.rjust(10)
      print vent.igv.to_s.rjust(10)
      puts vent.total.to_s.rjust(10)
    end
    gets()

  end

  attr_accessor :codigo
  attr_accessor :cliente
  attr_accessor :producto
  attr_accessor :producto
  attr_accessor :cantidad
  attr_accessor :igv
  attr_accessor :total

end