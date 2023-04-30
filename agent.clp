;  ---------------------------------------------
;  --- Definizione del modulo e dei template ---
;  ---------------------------------------------
(defmodule AGENT (import MAIN ?ALL) (import ENV ?ALL) (export ?ALL))

(deftemplate my-cell
	(slot x)
	(slot y)
	(slot content (allowed-values unknown water boat hit-boat))
	(slot status (allowed-values none guessed fired missed))
)
(deftemplate max_n
	(slot maxr)
	(slot indexr)
	(slot maxc)
	(slot indexc)
)
(deffacts utils-stats
	(max_n (maxr 0) (indexr 0) (maxc 0) (indexc 0))
)

(deffacts my_battle_field
	(my-cell (x 0) (y 0) (content unknown) (status none))
	(my-cell (x 0) (y 1) (content unknown) (status none))
	(my-cell (x 0) (y 2) (content unknown) (status none))
	(my-cell (x 0) (y 3) (content unknown) (status none))
	(my-cell (x 0) (y 4) (content unknown) (status none))
	(my-cell (x 0) (y 5) (content unknown) (status none))
	(my-cell (x 0) (y 6) (content unknown) (status none))
	(my-cell (x 0) (y 7) (content unknown) (status none))
	(my-cell (x 0) (y 8) (content unknown) (status none))
	(my-cell (x 0) (y 9) (content unknown) (status none))
	(my-cell (x 1) (y 0) (content unknown) (status none))
	(my-cell (x 1) (y 1) (content unknown) (status none))
	(my-cell (x 1) (y 2) (content unknown) (status none))
	(my-cell (x 1) (y 3) (content unknown) (status none))
	(my-cell (x 1) (y 4) (content unknown) (status none))
	(my-cell (x 1) (y 5) (content unknown) (status none))
	(my-cell (x 1) (y 6) (content unknown) (status none))
	(my-cell (x 1) (y 7) (content unknown) (status none))
	(my-cell (x 1) (y 8) (content unknown) (status none))
	(my-cell (x 1) (y 9) (content unknown) (status none))
	(my-cell (x 2) (y 0) (content unknown) (status none))
	(my-cell (x 2) (y 1) (content unknown) (status none))
	(my-cell (x 2) (y 2) (content unknown) (status none))
	(my-cell (x 2) (y 3) (content unknown) (status none))
	(my-cell (x 2) (y 4) (content unknown) (status none))
	(my-cell (x 2) (y 5) (content unknown) (status none))
	(my-cell (x 2) (y 6) (content unknown) (status none))
	(my-cell (x 2) (y 7) (content unknown) (status none))
	(my-cell (x 2) (y 8) (content unknown) (status none))
	(my-cell (x 2) (y 9) (content unknown) (status none))
	(my-cell (x 3) (y 0) (content unknown) (status none))
	(my-cell (x 3) (y 1) (content unknown) (status none))
	(my-cell (x 3) (y 2) (content unknown) (status none))
	(my-cell (x 3) (y 3) (content unknown) (status none))
	(my-cell (x 3) (y 4) (content unknown) (status none))
	(my-cell (x 3) (y 5) (content unknown) (status none))
	(my-cell (x 3) (y 6) (content unknown) (status none))
	(my-cell (x 3) (y 7) (content unknown) (status none))
	(my-cell (x 3) (y 8) (content unknown) (status none))
	(my-cell (x 3) (y 9) (content unknown) (status none))
	(my-cell (x 4) (y 0) (content unknown) (status none))
	(my-cell (x 4) (y 1) (content unknown) (status none))
	(my-cell (x 4) (y 2) (content unknown) (status none))
	(my-cell (x 4) (y 3) (content unknown) (status none))
	(my-cell (x 4) (y 4) (content unknown) (status none))
	(my-cell (x 4) (y 5) (content unknown) (status none))
	(my-cell (x 4) (y 6) (content unknown) (status none))
	(my-cell (x 4) (y 7) (content unknown) (status none))
	(my-cell (x 4) (y 8) (content unknown) (status none))
	(my-cell (x 4) (y 9) (content unknown) (status none))
	(my-cell (x 5) (y 0) (content unknown) (status none))
	(my-cell (x 5) (y 1) (content unknown) (status none))
	(my-cell (x 5) (y 2) (content unknown) (status none))
	(my-cell (x 5) (y 3) (content unknown) (status none))
	(my-cell (x 5) (y 4) (content unknown) (status none))
	(my-cell (x 5) (y 5) (content unknown) (status none))
	(my-cell (x 5) (y 6) (content unknown) (status none))
	(my-cell (x 5) (y 7) (content unknown) (status none))
	(my-cell (x 5) (y 8) (content unknown) (status none))
	(my-cell (x 5) (y 9) (content unknown) (status none))
	(my-cell (x 6) (y 0) (content unknown) (status none))
	(my-cell (x 6) (y 1) (content unknown) (status none))
	(my-cell (x 6) (y 2) (content unknown) (status none))
	(my-cell (x 6) (y 3) (content unknown) (status none))
	(my-cell (x 6) (y 4) (content unknown) (status none))
	(my-cell (x 6) (y 5) (content unknown) (status none))
	(my-cell (x 6) (y 6) (content unknown) (status none))
	(my-cell (x 6) (y 7) (content unknown) (status none))
	(my-cell (x 6) (y 8) (content unknown) (status none))
	(my-cell (x 6) (y 9) (content unknown) (status none))
	(my-cell (x 7) (y 0) (content unknown) (status none))
	(my-cell (x 7) (y 1) (content unknown) (status none))
	(my-cell (x 7) (y 2) (content unknown) (status none))
	(my-cell (x 7) (y 3) (content unknown) (status none))
	(my-cell (x 7) (y 4) (content unknown) (status none))
	(my-cell (x 7) (y 5) (content unknown) (status none))
	(my-cell (x 7) (y 6) (content unknown) (status none))
	(my-cell (x 7) (y 7) (content unknown) (status none))
	(my-cell (x 7) (y 8) (content unknown) (status none))
	(my-cell (x 7) (y 9) (content unknown) (status none))
	(my-cell (x 8) (y 0) (content unknown) (status none))
	(my-cell (x 8) (y 1) (content unknown) (status none))
	(my-cell (x 8) (y 2) (content unknown) (status none))
	(my-cell (x 8) (y 3) (content unknown) (status none))
	(my-cell (x 8) (y 4) (content unknown) (status none))
	(my-cell (x 8) (y 5) (content unknown) (status none))
	(my-cell (x 8) (y 6) (content unknown) (status none))
	(my-cell (x 8) (y 7) (content unknown) (status none))
	(my-cell (x 8) (y 8) (content unknown) (status none))
	(my-cell (x 8) (y 9) (content unknown) (status none))
	(my-cell (x 9) (y 0) (content unknown) (status none))
	(my-cell (x 9) (y 1) (content unknown) (status none))
	(my-cell (x 9) (y 2) (content unknown) (status none))
	(my-cell (x 9) (y 3) (content unknown) (status none))
	(my-cell (x 9) (y 4) (content unknown) (status none))
	(my-cell (x 9) (y 5) (content unknown) (status none))
	(my-cell (x 9) (y 6) (content unknown) (status none))
	(my-cell (x 9) (y 7) (content unknown) (status none))
	(my-cell (x 9) (y 8) (content unknown) (status none))
	(my-cell (x 9) (y 9) (content unknown) (status none))
)

(defrule check-max-row (declare (salience 1000))
	?max <- (max_n (maxr ?mr))
	(k-per-row (row ?r) (num ?n &:(> ?n ?mr)))
=>
	(modify ?max (maxr ?n) (indexr ?r))
)
(defrule check-max-col (declare (salience 1000))
	?max <- (max_n (maxc ?mc))
	(k-per-col (col ?c) (num ?n&:(> ?n ?mc)))
=>
	(modify ?max (maxc ?n) (indexc ?c))
)

;metto content water a tutte le celle sulle righe con 0 navi all'interno
(defrule set_water_rows  (declare (salience 100))
	(k-per-row (row ?r) (num ?n))
	(test(= ?n 0))
	?cell <- (my-cell (x ?r) (y ?y) (content unknown) (status none))
=>
	(modify ?cell (content water))
)
;metto content water a tutte le celle sulle colonne con 0 navi all'interno
(defrule set_water_cols (declare (salience 100))
	(k-per-col (col ?c) (num ?n))
	(test(= ?n 0))
	?cell <- (my-cell (x ?x) (y ?c) (content unknown) (status none))
=>
	(modify ?cell (content water))
)


(defrule add-water-from-known (declare (salience 100))
	;(status (step ?s)(currently running))
	(k-cell (x ?x) (y ?y) (content water))
	?cell <- (my-cell (x ?x) (y ?Y) (content unknown) (status none))
=>
	(modify ?cell (content water))
)

(defrule guess-known (declare (salience 90))
	(status (step ?s)(currently running))
	(k-cell (x ?x)(y ?y)(content bot | middle | top | left | right))
	(not (exec  (action guess) (x ?x) (y ?y)))
	?cell <- (my-cell (x ?x) (y ?y) (content unknown) (status none))
	?nrow <- (k-per-row (row ?x) (num ?nr))
	?ncol <- (k-per-col (col ?y) (num ?nc))
=>
	(assert (exec (step ?s) (action guess) (x ?x) (y ?y)))
	
	(modify ?cell (content boat) (status guessed))

	(bind ?nr (- ?nr 1))
	(modify ?nrow (num ?nr))
	(bind ?nc (- ?nc 1))
	(modify ?ncol (num ?nc))
	
	(printout t "guess-known in pos [" ?x ", " ?y "] at step" ?s  crlf)
    (pop-focus)
)

(defrule guess-known-sub (declare (salience 90))
	(status (step ?s)(currently running))
	(k-cell (x ?x)(y ?y)(content sub))
	(not (exec  (action guess) (x ?x) (y ?y)))
	?cell <- (my-cell (x ?x) (y ?y) (content unknown) (status none))
	?nrow <- (k-per-row (row ?x) (num ?nr))
	?ncol <- (k-per-col (col ?y) (num ?nc))
=>
	(assert (exec (step ?s) (action guess) (x ?x) (y ?y)))
	
	(modify ?cell (content boat) (status guessed))

	(bind ?nr (- ?nr 1))
	(modify ?nrow (num ?nr))
	(bind ?nc (- ?nc 1))
	(modify ?ncol (num ?nc))
	
	(printout t "guess-known-sub in pos [" ?x ", " ?y "] at step" ?s  crlf)
    (pop-focus)
)

(defrule guess-from-bot (declare (salience 90))
	(status (step ?s)(currently running))
	(k-cell (x ?x)(y ?y)(content bot))
	(not (exec (action guess) (x = (- ?x 1)) (y ?y)))
	?cell <- (my-cell (x = (- ?x 1)) (y ?y) (content unknown) (status none))
	?nrow <- (k-per-row (row = (- ?x 1)) (num ?nr))
	?ncol <- (k-per-col (col ?y) (num ?nc))
=>
	(bind ?x (- ?x 1))
	(assert (exec (step ?s) (action guess) (x ?x) (y ?y)))
	(modify ?cell (content boat) (status guessed))
	
	(bind ?nr (- ?nr 1))
	(modify ?nrow (num ?nr))
	(bind ?nc (- ?nc 1))
	(modify ?ncol (num ?nc))
	
	(printout t "guess-from-bot in pos [" ?x ", " ?y "] at step " ?s  crlf)
    (pop-focus)
)


(defrule guess-from-top (declare (salience 90))
	(status (step ?s)(currently running))
	(k-cell (x ?x)(y ?y)(content top))
	(not (exec (action guess) (x = (+ ?x 1)) (y ?y)))
	?cell <- (my-cell (x = (+ ?x 1)) (y ?y) (content unknown) (status none))
	?nrow <- (k-per-row (row = (+ ?x 1)) (num ?nr))
	?ncol <- (k-per-col (col ?y) (num ?nc))
=>
	(bind ?x (+ ?x 1))
	(assert (exec (step ?s) (action guess) (x ?x) (y ?y)))
	(modify ?cell (content boat) (status guessed))
	
	(bind ?nr (- ?nr 1))
	(modify ?nrow (num ?nr))
	(bind ?nc (- ?nc 1))
	(modify ?ncol (num ?nc))
	
	(printout t "guess-from-top in pos [" ?x ", " ?y "] at step " ?s  crlf)
    (pop-focus)
)


(defrule guess-from-left (declare (salience 90))
	(status (step ?s)(currently running))
	(k-cell (x ?x)(y ?y)(content left))
	(not (exec (action guess) (x ?x) (y = (+ ?y 1))))
	?cell <- (my-cell (x ?x) (y = (+ ?y 1)) (content unknown) (status none))
	?nrow <- (k-per-row (row ?x) (num ?nr))
	?ncol <- (k-per-col (col = (+ ?y 1)) (num ?nc))
=>
	(bind ?y (+ ?y 1))
	(assert (exec (step ?s) (action guess) (x ?x) (y ?y)))
	(modify ?cell (content boat) (status guessed))
	
	(bind ?nr (- ?nr 1))
	(modify ?nrow (num ?nr))
	(bind ?nc (- ?nc 1))
	(modify ?ncol (num ?nc))
	
	(printout t "guess-from-left in pos [" ?x ", " ?y "] at step " ?s  crlf)
    (pop-focus)
)



(defrule guess-from-right (declare (salience 90))
	(status (step ?s)(currently running))
	(k-cell (x ?x)(y ?y)(content right))
	(not (exec (action guess) (x ?x) (y = (- ?y 1))))
	?cell <- (my-cell (x ?x) (y = (- ?y 1)) (content unknown) (status none))
	?nrow <- (k-per-row (row ?x) (num ?nr))
	?ncol <- (k-per-col (col = (- ?y 1)) (num ?nc))
=>
	(bind ?y (- ?y 1))
	(assert (exec (step ?s) (action guess) (x ?x) (y ?y)))
	(modify ?cell (content boat) (status guessed))
	
	(bind ?nr (- ?nr 1))
	(modify ?nrow (num ?nr))
	(bind ?nc (- ?nc 1))
	(modify ?ncol (num ?nc))
	
	(printout t "guess-from-right in pos [" ?x ", " ?y "] at step " ?s  crlf)
    (pop-focus)
)


(defrule fire-most-likelihood-cell 
	(max_n (indexr ?x) (indexc ?y))
	(status (step ?s)(currently running))
	(my-cell (x ?x) (y ?y) (content unknown) (status none))
	(not (exec (action fire|guess) (x ?x) (y ?y)))
=>
	(assert (exec (step ?s) (action fire) (x ?x) (y ?y)))
	(printout t "FIRE in pos [" ?x ", " ?y "] at step " ?s crlf)
	(pop-focus)
)


(defrule print_my_board
	(my-cell (x ?x) (y ?y) (content ?c) (status ?s))
=>
	(printout t "Mycell: " ?x " - " ?y " is: " ?c "." crlf)
)


;(defrule print-rows-i-know (declare (salience 15))
;	(k-per-row (row ?r) (num ?n))
;=>
;	(printout t "I know that row " ?r ", contains " ?n " pieces." crlf)
;)
 
;(defrule print-columns-i-know (declare (salience 15))
;	(k-per-col (col ?c) (num ?n))
;=>
;	(printout t "I know that col " ?c ", contains " ?n " pieces." crlf)
;)


;(defrule check_values (declare (salience 14))
;	(max_n (maxr ?mr) (maxc ?mc))
;=>
;	(printout t "Max row is " ?mr "." crlf)
;	(printout t "Max col is " ?mc "." crlf)
;)

; idea per strategia da implementare:
; - se ci sono caselle note che contengono una barca/pezzo di barca, contrassegnale come guessed - FATTO
; - non fare guess su caselle che sono all'intersezione di righe colonne entrambe con 0 su (k-per-col, k-per-row)
; - fai le fire sulle caselle in cui l'intersezione è maggiore
; - se da una fire viene fuori che la casella contiene un pezzo di barca, fai guess - FATTO
; - se al passo n hai fatto fire e hai scoperto che c'è un pezzo di barca, ai passi successivi fai guess nelle caselle adiacenti - FATTO
; - usa fire per decidere quale delle guess messe è quella che contiene un pezzo di barca.