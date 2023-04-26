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

(defrule guess-1 ; se c'è una cella nota che contiene un sottomarino, allora mettici la guess. PROBLEMA, LO ESEGUE 20 VOLTE, È SEMPRE ATTIVABILE (perchè ho 20 guess a disposizione, vorrei eseguirla solo uan volta)
	(status (step ?s)(currently running))
	(k-cell (x ?x)(y ?y)(content sub))
	(not (exec (action guess) (x ?x) (y ?y))) ; questo dovrebbe risovlere il problema ma non funziona
=>
	(assert (exec (step ?s) (action guess) (x 7) (y 4)))
	(assert (k-cell (x ?x) (y ?y) (content water)))
	(printout t "guess in pos [" ?x ", " ?y "] at step" ?s crlf)
    (pop-focus)
)




; idea per sttrategia da implementare:
; - se ci sono caselle note che contengono una barca/pezzo di barca, contrassegnale come guessed
; - non fare guess su caselle che sono all'intersezione di righe colonne entrambe con 0 su (k-per-col, k-per-row)
; - fai le fire sulle caselle in cui l'intersezione è maggiore
; - se da una fire viene fuori che la casella contiene un pezzo di barca, fai guess
; - se al passo n hai fatto fire e hai scoperto che c'è un pezzo di barca, ai passi successivi fai guess nelle caselle adiacenti
; - usa fire per decidere quale delle guess messe è quella che contiene un pezzo di barca.