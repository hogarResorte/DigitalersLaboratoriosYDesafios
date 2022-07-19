#1
SELECT P.NOMBRECONTACTO, PN.IDPRODUCTO, 
PN.NOMBREPRODUCTO, PN.PRECIOUNIDAD FROM PROVEEDORES P
JOIN PRODUCTOS_NEPTUNO PN ON P.IDPROVEEDOR = PN.IDPROVEEDOR
ORDER BY PN.NOMBRECONTACTO, NOMBREPRODUCTO;
#2
SELECT P.NOMBRECONTACTO, PN.IDPRODUCTO, 
PN.NOMBREPRODUCTO, PN.PRECIOUNIDAD FROM PROVEEDORES P, PRODUCTOS_NEPTUNO PN  
WHERE P.IDPROVEEDOR = PN.IDPROVEEDOR
ORDER BY PN.NOMBRECONTACTO, NOMBREPRODUCTO;
#3
SELECT C.EMPRESA, P.NUMERO_PEDIDO, P.FECHA_PEDIDO, P.FORMA_PAGO FROM CLIENTES C
JOIN PEDIDOS P ORDER BY C.EMPRESA;
#4
SELECT C.EMPRESA, P.NUMERO_PEDIDO, P.FECHA_PEDIDO, P.FORMA_PAGO FROM CLIENTES C
LEFT JOIN PEDIDOS P 
ON C.COD_CLIENTE = P.CODIGO_CLIENTE WHERE P.NUMERO_PEDIDO IS  NULL ORDER BY C.EMPRESA;
#5
SELECT C.EMPRESA FROM CLIENTES C LEFT JOIN PEDIDOS P 
ON C.COD_CLIENTE = P.CODIGO_CLIENTE WHERE P.NUMERO_PEDIDO IS  NULL ORDER BY C.EMPRESA;
#6
SELECT * FROM PROVEEDORES P JOIN PRODUCTOS_NEPTUNO PN ON P.IDPROVEEDOR = PN.IDPROVEEDOR 
WHERE PN.IDPRODUCTO IS NULL;
#7
SELECT * FROM PROVEEDORES P JOIN PRODUCTOS_NEPTUNO PN ON P.IDPROVEEDOR = PN.IDPROVEEDOR 
WHERE P.IDPROVEEDOR IS NULL;

