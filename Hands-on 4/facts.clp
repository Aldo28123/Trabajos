(deffacts productos
    (Smartphone (marca apple) (modelo iPhone15) (precio 17000) (color rojo))
    (Computadora (marca apple) (modelo MacBookAir) (precio 25000) (color gris))
    (TarjetaCredito (banco bbva) (grupo visa) (fecha-expiracion 01-12-23))
    (Cliente (nombre "Juan Pérez") (tipo menudista))
    (Cliente (nombre "María López") (tipo mayorista)))

(deffacts reglas-ofertas
    (OfertaCompraSmartphone (modelo iPhone15) (tarjeta bbva) (meses-sin-intereses 24))
    (OfertaCompraSmartphone (modelo "Samsung Note 12") (tarjeta liverpool) (meses-sin-intereses 12))
    (OfertaCompraConjunta (producto1 MacBookAir) (producto2 iPhone15) (descuento-vales 100)))

(deffacts reglas-descuentos-clientes
    (OfertaDescuentoCliente (tipo "menudista") (descuento 15)))

