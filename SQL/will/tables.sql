-- Ejecutar desde el usuario will

create table CLIENTES
(
    ID_CLIENTE NUMBER not null
        constraint CLIENTES_PK
            primary key,
    NOMBRE     VARCHAR2(100),
    DIRECCION  VARCHAR2(100),
    TELEFONO   VARCHAR2(100)
);

create table PROVEEDORES
(
    ID_PROVEEDOR NUMBER not null
        constraint PROVEEDORES_PK
            primary key,
    NOMBRE       VARCHAR2(100),
    DIRECCION    VARCHAR2(100),
    TELEFONO     VARCHAR2(100)
);

create table FACTURAS
(
    ID_FACTURA NUMBER not null
        constraint FACTURAS_PK
            primary key,
    FECHA      DATE,
    ID_CLIENTE NUMBER
        constraint FACTURAS_CLIENTES_ID_CLIENTE_FK
            references CLIENTES
                on delete cascade
);

create table CATEGORIAS
(
    ID_CATEGORIA NUMBER not null
        constraint CATEGORIAS_PK
            primary key,
    DESCRIPCION  VARCHAR2(100)
);

create table PRODUCTOS
(
    ID_PRODUCTO  NUMBER not null
        constraint PRODUCTOS_PK
            primary key,
    DESCRIPCION  VARCHAR2(100),
    PRECIO       VARCHAR2(100),
    ID_CATEGORIA NUMBER
        constraint PRODUCTOS_CATEGORIAS_ID_CATEGORIA_FK
            references CATEGORIAS
                on delete cascade,
    ID_PROVEEDOR NUMBER
        constraint PRODUCTOS_PROVEEDORES_ID_PROVEEDOR_FK
            references PROVEEDORES
                on delete cascade
);

create table VENTAS
(
    ID_VENTA    NUMBER not null
        constraint VENTAS_PK
            primary key,
    ID_FACTURA  NUMBER
        constraint VENTAS_FACTURAS_ID_FACTURA_FK
            references FACTURAS,
    ID_PRODUCTO NUMBER
        constraint VENTAS_PRODUCTOS_ID_PRODUCTO_FK
            references PRODUCTOS,
    CANTIDAD    NUMBER
);