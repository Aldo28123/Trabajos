(deftemplate estado
   (slot mono)
   (slot silla)
   (slot escritorio)
   (slot platano)
   (slot hambriento)
   (slot feliz))

(deffacts estado-inicial
   (estado (mono piso) (silla piso) (escritorio piso) (platano techo) (hambriento si) (feliz no)))

(defrule mover-silla-a-escritorio
   ?s <- (estado (silla piso) (escritorio piso))
   =>
   (modify ?s (silla escritorio))
   (printout t "Mover silla a escritorio" crlf))

(defrule mono-en-silla
   ?s <- (estado (mono piso) (silla piso))
   =>
   (modify ?s (mono silla))
   (printout t "Mono se sube a silla" crlf))

(defrule mono-en-escritorio
   ?s <- (estado (mono piso) (escritorio piso))
   =>
   (modify ?s (mono escritorio))
   (printout t "Mono sube al escritorio" crlf))

(defrule mono-desde-escritorio-a-silla
   ?s <- (estado (mono escritorio) (silla escritorio))
   =>
   (modify ?s (mono silla))
   (printout t "Mono se mueve desde el escritorio a la silla" crlf))

(defrule mono-agarra-platano
   ?s <- (estado (mono silla) (silla escritorio) (platano techo))
   =>
   (modify ?s (platano agarrado) (mono platano))
   (printout t "Mono agarra el platano" crlf))

(defrule comer-platano
   ?s <- (estado (mono platano) (hambriento si))
   =>
   (modify ?s (hambriento no) (feliz si))
   (printout t "Mono come platano y esta feliz" crlf))

(defrule estado-meta
   (estado (feliz si))
   =>
   (printout t "Meta alcanzada: Mono esta feliz" crlf))
