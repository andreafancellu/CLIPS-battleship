;  ---------------------------------------------
;  --- Definizione del modulo e dei template ---
;  ---------------------------------------------
(defmodule AGENT (import MAIN ?ALL) (import ENV ?ALL) (export ?ALL))

(defrule print-rows-i-know
	(k-per-row (row ?r) (num ?n))
=>
	(printout t "I know that row " ?r ", contains " ?n " pieces." crlf)
)

(defrule print-columns-i-know
	(k-per-col (col ?c) (num ?n))
=>
	(printout t "I know that col " ?c ", contains " ?n " pieces." crlf)
)

(defrule guess-known (declare (salience 20)); se c'è una cella nota che contiene un sottomarino, allora mettici la guess. ESEGUE 20 VOLTE (perchè ho 20 esecuzioni per la guess)
	(status (step ?s)(currently running))
	(k-cell (x ?x)(y ?y)(content sub | bot | middle | top))
	(not (exec  (action guess) (x ?x) (y ?y)))
=>
	(assert (exec (step ?s) (action guess) (x ?x) (y ?y)))
	(printout t "guess-known in pos [" ?x ", " ?y "] at step" ?s  crlf)
    (pop-focus)
)

(defrule guess-from-bot (declare (salience 10))
	(status (step ?s)(currently running))
	(k-cell (x ?x)(y ?y)(content bot))
	(not (exec (action guess) (x = (- ?x 1)) (y ?y)))
=>
	(bind ?x (- ?x 1))
	(assert (exec (step ?s) (action guess) (x ?x) (y ?y)))
	(printout t "guess-from-bot in pos [" ?x ", " ?y "] at step " ?s  crlf)
    (pop-focus)
)

(defrule guess-from-top (declare (salience 10))
	(status (step ?s)(currently running))
	(k-cell (x ?x)(y ?y)(content top))
	(not (exec (action guess) (x = (+ ?x 1)) (y ?y)))
=>
	(bind ?x (+ ?x 1))
	(assert (exec (step ?s) (action guess) (x ?x) (y ?y)))
	(printout t "guess-from-top in pos [" ?x ", " ?y "] at step " ?s crlf)
    (pop-focus)
)

(defrule fire-most-likelihood-cell (declare (salience 30))
	(status (step ?s)(currently running))
	(not (exec (action fire) (x ?x) (y ?y)))
	(k-per-row (row ?x) (num ?n&:(> ?n 1)))
	(k-per-col (col ?y) (num ?n&:(> ?n 1)))
=>
	(assert (exec (step ?s) (action fire) (x ?x) (y ?y)))
	(printout t "FIRE in pos [" ?x ", " ?y "] at step " ?s crlf)
	(pop-focus)
)



; idea per sttrategia da implementare:
; - se ci sono caselle note che contengono una barca/pezzo di barca, contrassegnale come guessed
; - non fare guess su caselle che sono all'intersezione di righe colonne entrambe con 0 su (k-per-col, k-per-row)
; - fai le fire sulle caselle in cui l'intersezione è maggiore
; - se da una fire viene fuori che la casella contiene un pezzo di barca, fai guess
; - se al passo n hai fatto fire e hai scoperto che c'è un pezzo di barca, ai passi successivi fai guess nelle caselle adiacenti
; - usa fire per decidere quale delle guess messe è quella che contiene un pezzo di barca.