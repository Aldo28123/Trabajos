(defrule oferta-meses-sin-intereses-iPhone15
   ?oferta <- (OfertaCompraSmartphone (modelo "iPhone15") (tarjeta ?tarjeta) (meses-sin-intereses ?meses))
   ?orden <- (OrdenCompra (items $? ?tipo&:(eq ?tipo smartphone) (marca apple) (modelo "iPhone15") (color ?color)) $?)
   =>
   (printout t "Oferta: " ?meses " meses sin intereses en la compra de un iPhone 15 con tarjeta " ?tarjeta crlf)
   (retract ?oferta))

(defrule oferta-meses-sin-intereses-samsung
   ?oferta <- (OfertaCompraSmartphone (modelo "Samsung Note 12") (tarjeta liverpool) (meses-sin-intereses 12))
   ?orden <- (OrdenCompra (items $? ?tipo&:(eq ?tipo smartphone) (marca "Samsung") (modelo "Samsung Note 12")) $?)
   =>
   (printout t "Oferta: 12 meses sin intereses en la compra de un Samsung Note 12 con tarjeta Liverpool VISA" crlf)
   (retract ?oferta))

(defrule oferta-descuento-vales
   ?oferta <- (OfertaCompraConjunta (producto1 MacBookAir) (producto2 iPhone15) (descuento-vales ?descuento))
   ?orden1 <- (OrdenCompra (items $? ?tipo1&:(eq ?tipo1 smartphone) (marca apple) (modelo "iPhone15") (color ?color1)) $?)
   ?orden2 <- (OrdenCompra (items $? ?tipo2&:(eq ?tipo2 computer) (marca apple) (modelo MacBookAir) (color ?color2)) $?)
   =>
   (printout t "Oferta: $100 en vales por cada $1000 de compra al adquirir una MacBook Air y un iPhone 15" crlf)
   (retract ?oferta))

(defrule oferta-funda-mica
   ?cliente <- (Cliente (nombre ?nombre) (tipo menudista))
   ?orden <- (OrdenCompra (items $? ?tipo&:(eq ?tipo smartphone) $?))
   =>
   (printout t "Oferta: 15% de descuento en funda y mica al comprar un smartphone" crlf))
