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
  attr_accessor :codigo
  attr_accessor :nombre
  attr_accessor :direccion
end