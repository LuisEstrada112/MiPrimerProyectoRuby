require_relative 'menus.rb'
require_relative 'cliente.rb'
require_relative 'producto.rb'
require_relative 'venta.rb'




cliente=Cliente.new('C001','Luis','Santa Anita')
clientes = [].push(cliente)
cliente=Cliente.new('C002','Manuel','Los Olivos')
clientes = clientes.push(cliente)

producto=Producto.new('P001','Leche',2.40)
productos = [].push(producto)
producto=Producto.new('P002','Paneton',18.50)
productos = productos.push(producto)
producto=Producto.new('P003','Canela',15.20)
productos = productos.push(producto)
producto=Producto.new('P004','Azucar',3.40)
productos = productos.push(producto)
producto=Producto.new('P005','Arroz',4.40)
productos = productos.push(producto)


men = Menus.new()
opt=0
opt_cliente=0
opt_producto=0
until opt==4 do
  opt=men.menu_principal

  if opt==1 then
    until opt_cliente==3 do
      opt_cliente=men.menu_cliente
      case opt_cliente
        when 1 then cliente.ingresar_cliente(clientes)
        when 2 then cliente.mostrar_clientes(clientes)
        else
      end
    end
  elsif opt==2 then
  elsif opt ==3 then
    puts "Eligio venta"
  elsif opt == 4 then
    puts "Eligio Salir"
  end
end



