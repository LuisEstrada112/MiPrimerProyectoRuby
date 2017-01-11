require_relative 'cliente.rb'
require_relative 'producto.rb'
require_relative 'venta.rb'

class Menus
  def initialize
  end

  def menu_principal
    system('clear')
    puts "SISTEMA DE PRUEBA PARA RUBICK".center(50,'=')
    print "\n\n"
    puts "\t1.- Menu Cliente \n\t"
    puts "\t2.- Menu Producto \n\t"
    puts "\t3.- Menu venta \n\t"
    puts "\t4.- Salir"
    print '\n\n\tIngrese una opcion: '
    opt=gets.chomp
    opt = opt.to_i
    return opt
  end
  def menu_cliente
    system('clear')
    puts "MENU CLIENTES".center(50,'=')
    print "\n\n"
    puts "\t1.- Nuevo Cliente \n\t"
    puts "\t2.- Mostrar Clientes\n\t"
    puts "\t3.- Salir"
    print '\n\n\tIngrese una opcion: '
    opt=gets.chomp
    opt = opt.to_i
    return opt
  end

end