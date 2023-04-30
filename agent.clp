;  ---------------------------------------------
;  --- Definizione del modulo e dei template ---
;  ---------------------------------------------
(defmodule AGENT (import MAIN ?ALL) (import ENV ?ALL) (export ?ALL))


(deftemplate my-cell
	(slot x)
	(slot y)
	(slot content (allowed-values unknown water boat hit-boat maybe-boat))
	(slot status (allowed-values none guessed fired missed))
)
(deftemplate navy
	(slot submarines)
	(slot destroyers)
	(slot cruisers)
	(slot battleship)
)
(deftemplate max_n
	(slot maxr)
	(slot indexr)
	(slot maxc)
	(slot indexc)
	(slot max-maybe)
	(slot x-maybe)
	(slot y-maybe)
)
(deftemplate n_actions
	(slot n_guess)
	(slot n_fire)
)


(deffacts game_navy
	(submarines 4)
	(destroyers 3)
	(cruisers 2)
	(battleship 1)
)

(deffacts utils-stats
	(max_n (maxr 0) (indexr 0) (maxc 0) (indexc 0) (max-maybe 0) (x-maybe 0) (y-maybe 0))
)

(deffacts actions
	(n_actions (n_guess 0) (n_fire 0))
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


; ------------------------------ UTILS ------------------------------
; TODO: aggiornamento valore massimo
(defrule check-max-row (declare (salience 20))
	?max <- (max_n (maxr ?mr) (indexr ?idxr))
	(k-per-row (row ?r) (num ?n &:(> ?n ?mr)))
=>
	(modify ?max (maxr ?n) (indexr ?r))
)

(defrule check-max-col (declare (salience 20))
	?max <- (max_n (maxc ?mc) (indexc ?idxc))
	(k-per-col (col ?c) (num ?n&:(> ?n ?mc)))
=>
	(modify ?max (maxc ?n) (indexc ?c))
)

;mette content water in tutte le celle sulle righe con 0 navi all'interno
(defrule set_water_rows  (declare (salience 20))
	(k-per-row (row ?r) (num ?n))
	(test(= ?n 0))
	?cell <- (my-cell (x ?r) (y ?y) (content unknown) (status none))
=>
	(modify ?cell (content water))
)

;mette content water in tutte le celle sulle colonne con 0 navi all'interno
(defrule set_water_cols (declare (salience 20))
	(k-per-col (col ?c) (num ?n))
	(test(= ?n 0))
	?cell <- (my-cell (x ?x) (y ?c) (content unknown) (status none))
=>
	(modify ?cell (content water))
)

(defrule add-water-from-known (declare (salience 20))
	(k-cell (x ?x) (y ?y) (content water))
	?cell <- (my-cell (x ?x) (y ?y) (content unknown) (status none))
=>
	(modify ?cell (content water))
)

(defrule maybe-boat-down-from-middle (declare (salience 20))
	(status (step ?s)(currently running))
	(k-cell (x ?x)(y ?y)(content middle))
	?down <- (my-cell (x = (+ ?x 1)) (y ?y) (content unknown) (status none))
	(k-per-row (row = (+ ?x 1)) (num ?nr&:(> ?nr 0)))
	(k-per-col (col ?y) (num ?nc&:(> ?nc 0)))
=>
	(modify ?down (content maybe-boat))
)

(defrule maybe-boat-up-from-middle (declare (salience 20))
	(status (step ?s)(currently running))
	(k-cell (x ?x)(y ?y)(content middle))
	?up <- (my-cell (x = (- ?x 1)) (y ?y) (content unknown) (status none))
	(k-per-row (row = (- ?x 1)) (num ?nr&:(> ?nr 0)))
	(k-per-col (col ?y) (num ?nc&:(> ?nc 0)))
=>
	(modify ?up (content maybe-boat))
)

(defrule maybe-boat-left-from-middle (declare (salience 20))
	(status (step ?s)(currently running))
	(k-cell (x ?x)(y ?y)(content middle))
	?left <- (my-cell (x ?x) (y = (- ?y 1)) (content unknown))
	(k-per-row (row ?x) (num ?nr&:(> ?nr 0)))
	(k-per-col (col = (- ?y 1)) (num ?nc&:(> ?nc 0)))
=>
	(modify ?left (content maybe-boat))
)

(defrule maybe-boat-right-from-middle (declare (salience 20))
	(status (step ?s)(currently running))
	(k-cell (x ?x)(y ?y)(content middle))
	?right <- (my-cell (x ?x) (y = (+ ?y 1)) (content unknown) (status none))
	(k-per-row (row ?x) (num ?nr&:(> ?nr 0)))
	(k-per-col (col = (+ ?y 1)) (num ?nc&:(> ?nc 0)))
=>
	(modify ?right (content maybe-boat))
)

(defrule check-max-maybe-boats (declare (salience 20))
	?max <- (max_n (max-maybe ?mm) (x-maybe ?mx) (y-maybe ?my))
	?cell <- (my-cell (x ?x) (y ?y) (content maybe-boat))
	(k-per-row (row ?x) (num ?nr))
	(k-per-col (col ?y) (num ?nc))
	?sum <- (+ ?nr ?nc)
	(> ?sum ?mm)
=>
	(modify ?max (max-maybe (+ ?nr ?nc)) (x-maybe ?x) (y-maybe ?y))
)

; ------------------------------ GUESS ------------------------------
; TODO: aggiornare valore massimo dopo ogni guess (rimetterlo a 0 per poi ricalcolarlo nel next step)
(defrule guess-known (declare (salience 10))
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

(defrule guess-known-sub (declare (salience 10))
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

(defrule guess-from-bot (declare (salience 10))
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

(defrule guess-from-top (declare (salience 10))
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

(defrule guess-from-left (declare (salience 10))
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

(defrule guess-from-right (declare (salience 10))
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

(defrule guess-down-from-middle (declare (salience 10))
	(status (step ?s)(currently running))
	(k-cell (x ?x)(y ?y)(content middle))
	?parent <- (my-cell (x = (- ?x 1))(y ?y)(status guessed))
	(not (exec (action guess) (x = (+ ?x 1)) (y ?y)))
	?child <- (my-cell (x = (+ ?x 1)) (y ?y) (content unknown) (status none))
	?nrow <- (k-per-row (row =(+ ?x 1)) (num ?nr))
	?ncol <- (k-per-col (col ?y) (num ?nc))
=>
	(bind ?x (+ ?x 1))
	(assert (exec (step ?s) (action guess) (x ?x) (y ?y)))
	(modify ?child (content boat) (status guessed))
	
	(bind ?nr (- ?nr 1))
	(modify ?nrow (num ?nr))
	(bind ?nc (- ?nc 1))
	(modify ?ncol (num ?nc))
	
	(printout t "guess-down-from-middle in pos [" ?x ", " ?y "] at step " ?s  crlf)
    (pop-focus)
)

(defrule guess-up-from-middle (declare (salience 10))
	(status (step ?s)(currently running))
	(k-cell (x ?x)(y ?y)(content middle))
	?parent <- (my-cell (x = (+ ?x 1))(y ?y)(status guessed))
	(not (exec (action guess) (x = (- ?x 1)) (y ?y)))
	?child <- (my-cell (x = (- ?x 1)) (y ?y) (content unknown) (status none))
	?nrow <- (k-per-row (row =(- ?x 1)) (num ?nr))
	?ncol <- (k-per-col (col ?y) (num ?nc))
=>
	(bind ?x (- ?x 1))
	(assert (exec (step ?s) (action guess) (x ?x) (y ?y)))
	(modify ?child (content boat) (status guessed))
	
	(bind ?nr (- ?nr 1))
	(modify ?nrow (num ?nr))
	(bind ?nc (- ?nc 1))
	(modify ?ncol (num ?nc))
	
	(printout t "guess-up-from-middle in pos [" ?x ", " ?y "] at step " ?s  crlf)
    (pop-focus)
)

(defrule guess-left-from-middle (declare (salience 10))
	(status (step ?s)(currently running))
	(k-cell (x ?x)(y ?y)(content middle))
	?parent <- (my-cell (x ?x)(y = (+ ?y 1))(status guessed))
	(not (exec (action guess) (x ?x) (y = (- ?y 1))))
	?child <- (my-cell (x ?x) (y = (- ?y 1)) (content unknown) (status none))
	?nrow <- (k-per-row (row ?x) (num ?nr))
	?ncol <- (k-per-col (col = (- ?y 1)) (num ?nc))
=>
	(bind ?y (- ?y 1))
	(assert (exec (step ?s) (action guess) (x ?x) (y ?y)))
	(modify ?child (content boat) (status guessed))
	
	(bind ?nr (- ?nr 1))
	(modify ?nrow (num ?nr))
	(bind ?nc (- ?nc 1))
	(modify ?ncol (num ?nc))
	
	(printout t "guess-left-from-middle in pos [" ?x ", " ?y "] at step " ?s  crlf)
    (pop-focus)
)

(defrule guess-right-from-middle (declare (salience 10))
	(status (step ?s)(currently running))
	(k-cell (x ?x)(y ?y)(content middle))
	?parent <- (my-cell (x ?x)(y = (- ?y 1))(status guessed))
	(not (exec (action guess) (x ?x) (y = (+ ?y 1))))
	?child <- (my-cell (x ?x) (y = (+ ?y 1)) (content unknown) (status none))
	?nrow <- (k-per-row (row ?x) (num ?nr))
	?ncol <- (k-per-col (col = (+ ?y 1)) (num ?nc))
=>
	(bind ?y (+ ?y 1))
	(assert (exec (step ?s) (action guess) (x ?x) (y ?y)))
	(modify ?child (content boat) (status guessed))
	
	(bind ?nr (- ?nr 1))
	(modify ?nrow (num ?nr))
	(bind ?nc (- ?nc 1))
	(modify ?ncol (num ?nc))
	
	(printout t "guess-right-from-middle in pos [" ?x ", " ?y "] at step " ?s  crlf)
    (pop-focus)
)

; ------------------------------ FIRE ------------------------------
(defrule fire-down-from-top
	(status (step ?s)(currently running))
	(k-cell (x ?x)(y ?y)(content top))
	(my-cell (x = (+ ?x 2)) (y ?y) (content unknown) (status none))
	(not (exec (action fire|guess) (x = (+ ?x 2)) (y ?y)))
=>
	(bind ?x (+ ?x 2)) 
	(assert (exec (step ?s) (action fire) (x ?x) (y ?y)))
	
	(printout t "FIRE in pos [" ?x ", " ?y "] at step " ?s crlf)
	(pop-focus)
)

(defrule fire-up-from-bot
	(status (step ?s)(currently running))
	(k-cell (x ?x)(y ?y)(content bot))
	(my-cell (x = (- ?x 2)) (y ?y) (content unknown) (status none))
	(not (exec (action fire|guess) (x = (- ?x 2)) (y ?y)))
=>
	(bind ?x (- ?x 2)) 
	(assert (exec (step ?s) (action fire) (x ?x) (y ?y)))
	
	(printout t "FIRE in pos [" ?x ", " ?y "] at step " ?s crlf)
	(pop-focus)
)

(defrule fire-left-from-right
	(status (step ?s)(currently running))
	(k-cell (x ?x)(y ?y)(content right))
	(my-cell (x ?x) (y = (- ?y 2)) (content unknown) (status none))
	(not (exec (action fire|guess) (x ?x) (y = (- ?y 2))))
=>
	(bind ?y (- ?y 2)) 
	(assert (exec (step ?s) (action fire) (x ?x) (y ?y)))
	
	(printout t "FIRE in pos [" ?x ", " ?y "] at step " ?s crlf)
	(pop-focus)
)

(defrule fire-right-from-left
	(status (step ?s)(currently running))
	(k-cell (x ?x)(y ?y)(content right))
	(my-cell (x ?x) (y = (+ ?y 2)) (content unknown) (status none))
	(not (exec (action fire|guess) (x ?x) (y = (+ ?y 2))))
=>
	(bind ?y (+ ?y 2)) 
	(assert (exec (step ?s) (action fire) (x ?x) (y ?y)))
	
	(printout t "FIRE in pos [" ?x ", " ?y "] at step " ?s crlf)
	(pop-focus)
)

(defrule fire-most-likelihood-cell 
    ?max <- (max_n (indexr ?x) (indexc ?y))
    (status (step ?s)(currently running))
    (my-cell (x ?x) (y ?y) (content unknown) (status none))
    (not (exec (action fire|guess) (x ?x) (y ?y)))
=>
    (assert (exec (step ?s) (action fire) (x ?x) (y ?y)))
    (modify ?max (maxr 0) (indexr 0) (maxc 0) (indexc 0))
    (printout t "FIRE in pos [" ?x ", " ?y "] at step " ?s crlf)
    (pop-focus)
)

(defrule fire-max-maybe-boat-cell
	(status (step ?s)(currently running))
	(max_n (max-maybe ?mm) (x-maybe ?x) (y-maybe ?y))
	(not (exec (step ?s) (action fire|guess) (x ?x) (y ?y)))
=>
	(assert(exec (step ?s) (action fire) (x ?x) (y ?y)))
	(pop-focus)
)


; ------------------------------ SOLVE ------------------------------

(defrule solve-when-put-all-guess (declare (salience 40))
	(status (step ?s)(currently running))
	(n_actions (n_guess ?n&:(> ?n 19)))
=>
	(assert (exec (step ?s) (action solve)))
	(printout t "solve" crlf)
	(pop-focus)
)

; ------------------------------ PRINT ------------------------------

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
; - fai le fire sulle caselle in cui l'intersezione è maggiore FATTO
; - se da una fire viene fuori che la casella contiene un pezzo di barca, fai guess - FATTO
; - se al passo n hai fatto fire e hai scoperto che c'è un pezzo di barca, ai passi successivi fai guess nelle caselle adiacenti - FATTO
; - usa fire per decidere quale delle guess messe è quella che contiene un pezzo di barca.