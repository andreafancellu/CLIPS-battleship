;  ---------------------------------------------
;  --- Definizione del modulo e dei template ---
;  ---------------------------------------------
(defmodule AGENT (import MAIN ?ALL) (import ENV ?ALL) (export ?ALL))


(deftemplate my-cell
	(slot x)
	(slot y)
	(slot content (allowed-values unknown water boat next-guess))
)

(deftemplate n_actions
	(slot n_fire)
)


(deffacts actions
	(n_actions (n_fire 0))
)

(deffacts my_battle_field
	(my-cell (x 0) (y 0) (content unknown) )
	(my-cell (x 0) (y 1) (content unknown) )
	(my-cell (x 0) (y 2) (content unknown) )
	(my-cell (x 0) (y 3) (content unknown) )
	(my-cell (x 0) (y 4) (content unknown) )
	(my-cell (x 0) (y 5) (content unknown) )
	(my-cell (x 0) (y 6) (content unknown) )
	(my-cell (x 0) (y 7) (content unknown) )
	(my-cell (x 0) (y 8) (content unknown) )
	(my-cell (x 0) (y 9) (content unknown) )
	(my-cell (x 1) (y 0) (content unknown) )
	(my-cell (x 1) (y 1) (content unknown) )
	(my-cell (x 1) (y 2) (content unknown) )
	(my-cell (x 1) (y 3) (content unknown) )
	(my-cell (x 1) (y 4) (content unknown) )
	(my-cell (x 1) (y 5) (content unknown) )
	(my-cell (x 1) (y 6) (content unknown) )
	(my-cell (x 1) (y 7) (content unknown) )
	(my-cell (x 1) (y 8) (content unknown) )
	(my-cell (x 1) (y 9) (content unknown) )
	(my-cell (x 2) (y 0) (content unknown) )
	(my-cell (x 2) (y 1) (content unknown) )
	(my-cell (x 2) (y 2) (content unknown) )
	(my-cell (x 2) (y 3) (content unknown) )
	(my-cell (x 2) (y 4) (content unknown) )
	(my-cell (x 2) (y 5) (content unknown) )
	(my-cell (x 2) (y 6) (content unknown) )
	(my-cell (x 2) (y 7) (content unknown) )
	(my-cell (x 2) (y 8) (content unknown) )
	(my-cell (x 2) (y 9) (content unknown) )
	(my-cell (x 3) (y 0) (content unknown) )
	(my-cell (x 3) (y 1) (content unknown) )
	(my-cell (x 3) (y 2) (content unknown) )
	(my-cell (x 3) (y 3) (content unknown) )
	(my-cell (x 3) (y 4) (content unknown) )
	(my-cell (x 3) (y 5) (content unknown) )
	(my-cell (x 3) (y 6) (content unknown) )
	(my-cell (x 3) (y 7) (content unknown) )
	(my-cell (x 3) (y 8) (content unknown) )
	(my-cell (x 3) (y 9) (content unknown) )
	(my-cell (x 4) (y 0) (content unknown) )
	(my-cell (x 4) (y 1) (content unknown) )
	(my-cell (x 4) (y 2) (content unknown) )
	(my-cell (x 4) (y 3) (content unknown) )
	(my-cell (x 4) (y 4) (content unknown) )
	(my-cell (x 4) (y 5) (content unknown) )
	(my-cell (x 4) (y 6) (content unknown) )
	(my-cell (x 4) (y 7) (content unknown) )
	(my-cell (x 4) (y 8) (content unknown) )
	(my-cell (x 4) (y 9) (content unknown) )
	(my-cell (x 5) (y 0) (content unknown) )
	(my-cell (x 5) (y 1) (content unknown) )
	(my-cell (x 5) (y 2) (content unknown) )
	(my-cell (x 5) (y 3) (content unknown) )
	(my-cell (x 5) (y 4) (content unknown) )
	(my-cell (x 5) (y 5) (content unknown) )
	(my-cell (x 5) (y 6) (content unknown) )
	(my-cell (x 5) (y 7) (content unknown) )
	(my-cell (x 5) (y 8) (content unknown) )
	(my-cell (x 5) (y 9) (content unknown) )
	(my-cell (x 6) (y 0) (content unknown) )
	(my-cell (x 6) (y 1) (content unknown) )
	(my-cell (x 6) (y 2) (content unknown) )
	(my-cell (x 6) (y 3) (content unknown) )
	(my-cell (x 6) (y 4) (content unknown) )
	(my-cell (x 6) (y 5) (content unknown) )
	(my-cell (x 6) (y 6) (content unknown) )
	(my-cell (x 6) (y 7) (content unknown) )
	(my-cell (x 6) (y 8) (content unknown) )
	(my-cell (x 6) (y 9) (content unknown) )
	(my-cell (x 7) (y 0) (content unknown) )
	(my-cell (x 7) (y 1) (content unknown) )
	(my-cell (x 7) (y 2) (content unknown) )
	(my-cell (x 7) (y 3) (content unknown) )
	(my-cell (x 7) (y 4) (content unknown) )
	(my-cell (x 7) (y 5) (content unknown) )
	(my-cell (x 7) (y 6) (content unknown) )
	(my-cell (x 7) (y 7) (content unknown) )
	(my-cell (x 7) (y 8) (content unknown) )
	(my-cell (x 7) (y 9) (content unknown) )
	(my-cell (x 8) (y 0) (content unknown) )
	(my-cell (x 8) (y 1) (content unknown) )
	(my-cell (x 8) (y 2) (content unknown) )
	(my-cell (x 8) (y 3) (content unknown) )
	(my-cell (x 8) (y 4) (content unknown) )
	(my-cell (x 8) (y 5) (content unknown) )
	(my-cell (x 8) (y 6) (content unknown) )
	(my-cell (x 8) (y 7) (content unknown) )
	(my-cell (x 8) (y 8) (content unknown) )
	(my-cell (x 8) (y 9) (content unknown) )
	(my-cell (x 9) (y 0) (content unknown) )
	(my-cell (x 9) (y 1) (content unknown) )
	(my-cell (x 9) (y 2) (content unknown) )
	(my-cell (x 9) (y 3) (content unknown) )
	(my-cell (x 9) (y 4) (content unknown) )
	(my-cell (x 9) (y 5) (content unknown) )
	(my-cell (x 9) (y 6) (content unknown) )
	(my-cell (x 9) (y 7) (content unknown) )
	(my-cell (x 9) (y 8) (content unknown) )
	(my-cell (x 9) (y 9) (content unknown) )
)

; ------------------------------ UTILS ------------------------------

;mette content water in tutte le celle sulle righe con 0 navi all'interno
(defrule set_water_rows  (declare (salience 20))
	(k-per-row (row ?r) (num ?n))
	(test(= ?n 0))
	?cell <- (my-cell (x ?r) (y ?y) (content unknown) )
=>
	(modify ?cell (content water))
)

;mette content water in tutte le celle sulle colonne con 0 navi all'interno
(defrule set_water_cols (declare (salience 20))
	(k-per-col (col ?c) (num ?n))
	(test(= ?n 0))
	?cell <- (my-cell (x ?x) (y ?c) (content unknown) )
=>
	(modify ?cell (content water))
)

(defrule add-water-from-known (declare (salience 20))
	(k-cell (x ?x) (y ?y) (content water))
	?cell <- (my-cell (x ?x) (y ?y) (content unknown) )
=>
	(modify ?cell (content water))
	(printout t "added water in [" ?x ", " ?y "]" crlf)
)


(defrule add-water-to-bottom (declare (salience 20))
	?my_cell <- (my-cell (x ?x)(y ?y)(content unknown))
	(k-cell (x ?x_down&:(eq ?x_down (- ?x 1)))(y ?y)(content bot | left | right | sub))
=>
	(modify ?my_cell (content water))
	(printout t "added water to bottom in [" ?x ", " ?y "]" crlf)
)

(defrule add-water-to-top (declare (salience 20))
	?my_cell <- (my-cell (x ?x)(y ?y)(content unknown))
	(k-cell (x ?x_up&:(eq ?x_up (+ ?x 1)))(y ?y)(content top | left | right | sub))
=>
	(modify ?my_cell (content water))
	(printout t "added water to top in [" ?x ", " ?y "]" crlf)
)

(defrule add-water-to-left (declare (salience 20))
	?my_cell <- (my-cell (x ?x)(y ?y)(content unknown))
	(k-cell (x ?x)(y ?y_right&:(eq ?y_right (+ ?y 1)))(content top | bot | left | sub))
=>
	(modify ?my_cell (content water))
	(printout t "added water to left in [" ?x ", " ?y "]" crlf)
)

(defrule add-water-to-right (declare (salience 20))
	?my_cell <- (my-cell (x ?x)(y ?y)(content unknown))
	(k-cell (x ?x)(y ?y_left&:(eq ?y_left (- ?y 1)))(content top | bot | right | sub))
=>
	(modify ?my_cell (content water))
	(printout t "added water to right in [" ?x ", " ?y "]" crlf)
)
; ------------------------------ GUESS ------------------------------
(defrule guess-known (declare (salience 10))
	(status (step ?s)(currently running))
	(k-cell (x ?x)(y ?y)(content bot | middle | top | left | right))
	
	?cell <- (my-cell (x ?x) (y ?y) (content unknown) )
	?nrow <- (k-per-row (row ?x) (num ?nr))
	?ncol <- (k-per-col (col ?y) (num ?nc))
	(not (exec  (action guess) (x ?x) (y ?y)))
=>
	(assert (exec (step ?s) (action guess) (x ?x) (y ?y)))
	(modify ?cell (content boat) )
	
	
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
	
	?cell <- (my-cell (x ?x) (y ?y) (content unknown) )
	?nrow <- (k-per-row (row ?x) (num ?nr))
	?ncol <- (k-per-col (col ?y) (num ?nc))
	(not (exec  (action guess) (x ?x) (y ?y)))
=>
	(assert (exec (step ?s) (action guess) (x ?x) (y ?y)))
	
	(modify ?cell (content boat) )	
	
	
	(bind ?nr (- ?nr 1))
	(modify ?nrow (num ?nr))
	(bind ?nc (- ?nc 1))
	(modify ?ncol (num ?nc))
	
	(printout t "guess-known-sub in pos [" ?x ", " ?y "] at step" ?s  crlf)
    (pop-focus)
)

(defrule guess-from-known-bot (declare (salience 10))
	(status (step ?s)(currently running))
	(k-cell (x ?x)(y ?y)(content bot))
	
	?cell <- (my-cell (x ?x2&:(eq ?x2 (- 1 ?x))) (y ?y) (content unknown) )
	?nrow <- (k-per-row (row ?x2) (num ?nr))
	?ncol <- (k-per-col (col ?y) (num ?nc))
	(not (exec (action guess) (x ?x2) (y ?y)))
=>
	(assert (exec (step ?s) (action guess) (x ?x2) (y ?y)))
	(modify ?cell (content boat) )
	
	
	(bind ?nr (- ?nr 1))
	(modify ?nrow (num ?nr))
	(bind ?nc (- ?nc 1))
	(modify ?ncol (num ?nc))
	
	(printout t "guess-from-bot in pos [" ?x2 ", " ?y "] at step " ?s  crlf)
    (pop-focus)
)

(defrule guess-from-known-top (declare (salience 10))
	(status (step ?s)(currently running))
	(k-cell (x ?x)(y ?y)(content top))
	
	?cell <- (my-cell (x = (+ ?x 1)) (y ?y) (content unknown) )
	?nrow <- (k-per-row (row = (+ ?x 1)) (num ?nr))
	?ncol <- (k-per-col (col ?y) (num ?nc))
	(not (exec (action guess) (x = (+ ?x 1)) (y ?y)))
=>
	(bind ?x (+ ?x 1))
	(assert (exec (step ?s) (action guess) (x ?x) (y ?y)))
	(modify ?cell (content boat) )
	
	
	(bind ?nr (- ?nr 1))
	(modify ?nrow (num ?nr))
	(bind ?nc (- ?nc 1))
	(modify ?ncol (num ?nc))
	
	(printout t "guess-from-top in pos [" ?x ", " ?y "] at step " ?s  crlf)
    (pop-focus)
)

(defrule guess-from-known-left (declare (salience 10))
	(status (step ?s)(currently running))
	(k-cell (x ?x)(y ?y)(content left))
	
	?cell <- (my-cell (x ?x) (y = (+ ?y 1)) (content unknown) )
	?nrow <- (k-per-row (row ?x) (num ?nr))
	?ncol <- (k-per-col (col = (+ ?y 1)) (num ?nc))
	(not (exec (action guess) (x ?x) (y = (+ ?y 1))))
=>
	(bind ?y (+ ?y 1))
	(assert (exec (step ?s) (action guess) (x ?x) (y ?y)))
	(modify ?cell (content boat) )
	
	
	(bind ?nr (- ?nr 1))
	(modify ?nrow (num ?nr))
	(bind ?nc (- ?nc 1))
	(modify ?ncol (num ?nc))
	
	(printout t "guess-from-left in pos [" ?x ", " ?y "] at step " ?s  crlf)
    (pop-focus)
)

(defrule guess-from-known-right (declare (salience 10))
	(status (step ?s)(currently running))
	(k-cell (x ?x)(y ?y)(content right))
	
	?cell <- (my-cell (x ?x) (y = (- ?y 1)) (content unknown) )
	?nrow <- (k-per-row (row ?x) (num ?nr))
	?ncol <- (k-per-col (col = (- ?y 1)) (num ?nc))
	(not (exec (action guess) (x ?x) (y = (- ?y 1))))
=>
	(bind ?y (- ?y 1))
	(assert (exec (step ?s) (action guess) (x ?x) (y ?y)))
	(modify ?cell (content boat) )
	
	
	(bind ?nr (- ?nr 1))
	(modify ?nrow (num ?nr))
	(bind ?nc (- ?nc 1))
	(modify ?ncol (num ?nc))
	
	(printout t "guess-from-right in pos [" ?x ", " ?y "] at step " ?s  crlf)
    (pop-focus)
)

; ------------------------------ FIRE ------------------------------
(defrule fire-down-from-known-top (declare (salience 5))
	(status (step ?s)(currently running))
	?act <- (n_actions (n_fire ?nf&:(< ?nf 5)))
	(k-cell (x ?x)(y ?y)(content top))
	(my-cell (x = (+ ?x 2)) (y ?y) (content unknown) )
	(not (exec (action fire|guess) (x = (+ ?x 2)) (y ?y)))
=>
	(bind ?nf (+ ?nf 1))
	(modify ?act (n_fire ?nf))
	(bind ?x (+ ?x 2)) 
	(assert (exec (step ?s) (action fire) (x ?x) (y ?y)))
	
	(printout t "fire-down-from-top in pos [" ?x ", " ?y "] at step " ?s crlf)
	(pop-focus)
)

(defrule fire-up-from-known-bot (declare (salience 5))
	(status (step ?s)(currently running))
	?act <- (n_actions (n_fire ?nf&:(< ?nf 5)))
	(k-cell (x ?x)(y ?y)(content bot))
	(my-cell (x = (- ?x 2)) (y ?y) (content unknown) )
	(not (exec (action fire|guess) (x = (- ?x 2)) (y ?y)))
=>
	(bind ?nf (+ ?nf 1))
	(modify ?act (n_fire ?nf))
	(bind ?x (- ?x 2)) 
	(assert (exec (step ?s) (action fire) (x ?x) (y ?y)))
	
	(printout t "fire-up-from-bot in pos [" ?x ", " ?y "] at step " ?s crlf)
	(pop-focus)
)

(defrule fire-left-from-known-right (declare (salience 5))
	(status (step ?s)(currently running))
	?act <- (n_actions (n_fire ?nf&:(< ?nf 5)))
	(k-cell (x ?x)(y ?y)(content right))
	(my-cell (x ?x) (y = (- ?y 2)) (content unknown) )
	(not (exec (action fire|guess) (x ?x) (y = (- ?y 2))))
=>
	(bind ?nf (+ ?nf 1))
	(modify ?act (n_fire ?nf))
	(bind ?y (- ?y 2)) 
	(assert (exec (step ?s) (action fire) (x ?x) (y ?y)))
	
	(printout t "fire-left-from-right in pos [" ?x ", " ?y "] at step " ?s crlf)
	(pop-focus)
)

(defrule fire-right-from-known-left (declare (salience 5))
	(status (step ?s)(currently running))
	?act <- (n_actions (n_fire ?nf&:(< ?nf 5)))
	(k-cell (x ?x)(y ?y)(content right))
	(my-cell (x ?x) (y = (+ ?y 2)) (content unknown) )
	(not (exec (action fire|guess) (x ?x) (y = (+ ?y 2))))
=>
	(bind ?nf (+ ?nf 1))
	(modify ?act (n_fire ?nf))
	(bind ?y (+ ?y 2)) 
	(assert (exec (step ?s) (action fire) (x ?x) (y ?y)))
	
	(printout t "fire-right-from-left in pos [" ?x ", " ?y "] at step " ?s crlf)
	(pop-focus)
)

(defrule fire-most-likelihood-cell (declare (salience 5))
    (k-per-row (row ?r) (num ?n_r))
	(k-per-col (col ?c) (num ?n_c))
    (not (k-per-row (row ?r2&:(neq ?r2 ?r)) (num ?n2 &:(> ?n2 ?n_r))))
	(not (k-per-col (col ?c2&:(neq ?c2 ?c)) (num ?m2 &:(> ?m2 ?n_c))))
	?act <- (n_actions (n_fire ?nf&:(< ?nf 5)))
    (status (step ?s)(currently running))
    (my-cell (x ?r) (y ?c) (content unknown))
    (not (exec (action fire|guess) (x ?r) (y ?c)))
=>
	(bind ?nf (+ ?nf 1))
	(modify ?act (n_fire ?nf))
    (assert (exec (step ?s) (action fire) (x ?r) (y ?c)))
    (printout t "fire-most-likelihood in pos [" ?r ", " ?c "] at step " ?s crlf)
    (pop-focus)
)

; ------------------------------ SOLVE ------------------------------

(defrule guess-most-likelihood-cell
	?nrow <- (k-per-row (row ?r) (num ?nr))
	?ncol <- (k-per-col (col ?c) (num ?nc))
    (not (k-per-row (row ?r2&:(neq ?r2 ?r)) (num ?n2 &:(> ?n2 ?nr))))
	(not (k-per-col (col ?c2&:(neq ?c2 ?c)) (num ?m2 &:(> ?m2 ?nc))))
    
    (status (step ?s)(currently running))
    (my-cell (x ?r) (y ?c)(content ~water))
    (not (exec (action guess) (x ?r) (y ?c)))
=>
    (assert (exec (step ?s) (action guess) (x ?r) (y ?c)))
	
		
	(bind ?nr (- ?nr 1))
	(modify ?nrow (num ?nr))
	(bind ?nc (- ?nc 1))
	(modify ?ncol (num ?nc))
    (printout t "guess-most-likelihood in pos [" ?r ", " ?c "] at step " ?s crlf)
    (pop-focus)
)

(defrule guess-what-remains
	(status (step ?s)(currently running))
	
	(my-cell (x ?x) (y ?y) (content ~water))
	?nrow <- (k-per-row (row ?x) (num ?nr))
	?ncol <- (k-per-col (col ?y) (num ?nc))
	(not (exec (action guess) (x ?x) (y ?y)))
=>
	(assert (exec (step ?s) (action guess) (x ?x) (y ?y)))
	
	
	(bind ?nr (- ?nr 1))
	(modify ?nrow (num ?nr))
	(bind ?nc (- ?nc 1))
	(modify ?ncol (num ?nc))
    (printout t "guess-what-remains in pos [" ?x ", " ?y "] at step " ?s crlf)
    (pop-focus)
)

(defrule kill_yourself (declare (salience -1))
	(status (step ?s)(currently running))
=>
	(assert (exec (step ?s) (action solve)))
	(printout t "solve" crlf)
	(pop-focus)
)