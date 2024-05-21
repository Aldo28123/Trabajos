

(deftemplate Smartphone
    (slot marca)
    (slot modelo)
    (slot precio)
    (slot color))

(deftemplate Computadora
    (slot marca)
    (slot modelo)
    (slot precio)
    (slot color))

(deftemplate TarjetaCredito
    (slot banco)
    (slot grupo)
    (slot fecha-expiracion))

(deftemplate OrdenCompra
    (multislot items))

(deftemplate Cliente
    (slot nombre)
    (slot tipo))

(deftemplate Vale
    (slot valor))

(deftemplate OfertaCompraSmartphone
    (slot modelo)
    (slot tarjeta)
    (slot meses-sin-intereses))

(deftemplate OfertaCompraConjunta
    (slot producto1)
    (slot producto2)
    (slot descuento-vales))

(deftemplate OfertaDescuentoCliente
    (slot tipo)
    (slot descuento))

