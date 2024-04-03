use supermercado;

-- tablas de direccion

create table departamentos(
	idDepartamentos  char(2) primary key,
    departamentos    varchar(25) not null, 
    pais             varchar(25)
);
create table direcciones(
    idDireccion int primary key auto_increment,
    liena1 varchar(100) not null,
    linea2 varchar(50) not null,
    linea3 varchar(25) not null,
    codPostal varchar(7)
);
create table distritos(
    idDistrito char(5) primary key,
    distrito   varchar(50) not null,
    idMunicipio  char(3) not null
);
create table municipios(
    idMunicipio char(3) primary key,
    municipio   varchar(50) not null,
    idDepartamentos char(2) not null
);

create table cliente(
   idCliente int primary key auto_increment,
   nombreCliente    varchar(150),
   apellidoCliente  varchar(150),
   DUICliente       varchar(12),
   correoCliente    varchar(150),
   fechaNacimientoCliente datetime,
   telefonoCliente date,
   idDireccion int
);

create table empleado(
   idEmpleado  int primary key auto_increment, 
   nombreEmpleado      varchar(100),
   apellidoEmpleado    varchar(100),
   DUIEmpleado         varchar(12),
   correoEmpleado      varchar(150),
   fechaNacimientoEmpleado  datetime,
   telefonoEmpleado    varchar(45),
   idCargo int,
   idDireccion int
);

create table cargo(
    idCargo  int primary key  auto_increment, 
    cargo    varchar(150),
    descripcionCargo longtext
);
 
create table venta(
   idVenta int primary key auto_increment,
   fechaVenta date not null,
   total decimal(10,0) not null,
   idEmpleado int,
   idCliente int
);

create table detalleVenta(
   idDetalleVenta int primary key auto_increment,
   idProducto int,
   idVenta int, 
   cantidadProductosVenta int
);
  
create table empleado(
  idEmpleado int primary key auto_increment,
  nombreEmpleado varchar(150) not null,
  apellidoEmpleado varchar(150) not null,
  DUIEmpleado varchar(12),
  correoEmpleado varchar(150),
  fechaNacimientoEmpleado date,
  telefonoEmpleado varchar(20),
  idCargo int, 
  idDireccion int
);

create table distribuidor(
   idDistribuidor int primary key auto_increment,
   distribuidor varchar(100) not null,
   idDireccion int,
   descripcionDistribuidor longtext
);

create table producto(
   idProducto int primary key auto_increment,
   producto varchar(100) not null,
   descripcionProducto varchar(200),
   precioVenta decimal(10,0) not null,
   stock int not null,
   fechaCaducidad date,
   idCategoria int,
   idMarca int, 
   idUnidadMedida int, 
   idDistribuidor int, 
   idBodega int
   );
create table categoria(
  idCategoria int primary key auto_increment,
  categoria varchar(50) not null,
  descripcionCategoria longtext
);

create table marca(
  idMarca int primary key auto_increment,
  marca   varchar(50) not null,
  descripcionMarca  longtext
);
create table unidadMEdida(
  idUnidadMedida int primary key auto_increment,
  unidadMedida varchar(30) not null
);
create table bodega(
  idBodega int primary key auto_increment,
  nombreBodega varchar(100) not null,
  descripcionBodega longtext, 
  capacidad int not null,
  tipoAlmacenamiento varchar(200),
  fechaEntrada  date not null,
  fechaSalidad date not null
);

create table facturaCompra(
   idFacturaCompra int primary key auto_increment,
   numeroFacturaCompra varchar(45) not null, 
   montoFacturaCompra decimal not null,
   ivaFacturaCompra decimal,
   creditofiscalFacturaCompra varchar(20),
   idDetallePedido int,
   idFormaPago int
);
create table formaPago(
  idFormaPago int primary key auto_increment,
  formaPago varchar(150)
);

create table facturaVenta(
  idFacturaVenta int primary key auto_increment,
  numeroFacturaVenta varchar(50) not null,
  montoFacturaVenta decimal not null,
  ivaFacturaVenta decimal,
  creditoFiscalFacturaVenta varchar(20),
  idDetalleVenta int,
  idFormaPago int
);
  
create table pedidos(
  idPedido int primary key auto_increment,
  nombrePedido varchar(45) not null,
  unidadesPedido varchar(45),
  fechaPedido date,
  idEmpleado int, 
  idDistribuidor int
  );
  
  create table detallePedido(
    idDetallePedido int primary key auto_increment,
    idPedido int, 
    idProducto int,
    cantidadProductosPedido int
);


   
   
   
