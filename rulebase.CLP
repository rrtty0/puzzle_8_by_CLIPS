(defrule data-input
  (initial-fact)
=>
)

(defglobal
?*Id* = 0
)

(deffunction Get_Id()
(bind ?*Id* (+ ?*Id* 1))
?*Id*
)

(deftemplate Node
(slot LT (type NUMBER))
(slot MT (type NUMBER))
(slot RT (type NUMBER))
(slot LM (type NUMBER))
(slot MM (type NUMBER))
(slot RM (type NUMBER))
(slot LD (type NUMBER))
(slot MD (type NUMBER))
(slot RD (type NUMBER))
(slot Depth (type NUMBER))
(slot Id (type NUMBER) (default 0))
(slot Status (type NUMBER) (default 0))
(slot From (type NUMBER))
(slot Exp (type NUMBER))
(slot TreeFrom (type SYMBOL))
)

(deffunction f1_from_Start(?Depth ?LT ?MT ?RT ?LM ?MM ?RM ?LD ?MD)
(bind ?a ?Depth)
(if (not (= ?LT 1)) then (bind ?a (+ ?a 1)))
(if (not (= ?MT 2)) then (bind ?a (+ ?a 1)))
(if (not (= ?RT 3)) then (bind ?a (+ ?a 1)))
(if (not (= ?LM 8)) then (bind ?a (+ ?a 1)))
(if (not (= ?MM 0)) then (bind ?a (+ ?a 1)))
(if (not (= ?RM 4)) then (bind ?a (+ ?a 1)))
(if (not (= ?LD 7)) then (bind ?a (+ ?a 1)))
(if (not (= ?MD 6)) then (bind ?a (+ ?a 1)))
?a
)

(deffunction f1_from_Finish(?Depth ?LT ?MT ?RT ?LM ?MM ?RM ?LD ?MD)
(bind ?a ?Depth)
(if (not (= ?LT 6)) then (bind ?a (+ ?a 1)))
(if (not (= ?MT 0)) then (bind ?a (+ ?a 1)))
(if (not (= ?RT 8)) then (bind ?a (+ ?a 1)))
(if (not (= ?LM 5)) then (bind ?a (+ ?a 1)))
(if (not (= ?MM 2)) then (bind ?a (+ ?a 1)))
(if (not (= ?RM 1)) then (bind ?a (+ ?a 1)))
(if (not (= ?LD 4)) then (bind ?a (+ ?a 1)))
(if (not (= ?MD 3)) then (bind ?a (+ ?a 1)))
?a
)

(deffunction f2_from_Start(?Depth ?LT ?MT ?RT ?LM ?MM ?RM ?LD ?MD ?RD)
(bind ?a ?Depth)
(if (or (= ?LM 1) (= ?MT 1)) then (bind ?a (+ ?a 1)))
(if (or (= ?LD 1) (= ?MM 1) (= ?RT 1)) then (bind ?a (+ ?a 2)))
(if (or (= ?MD 1) (= ?RM 1)) then (bind ?a (+ ?a 3)))
(if (= ?RD 1) then (bind ?a (+ ?a 4)))

(if (or (= ?LT 2) (= ?MM 2) (= ?RT 2)) then (bind ?a (+ ?a 1)))
(if (or (= ?LM 2) (= ?MD 2) (= ?RM 2)) then (bind ?a (+ ?a 2)))
(if (or (= ?LD 2) (= ?RD 2)) then (bind ?a (+ ?a 3)))

(if (or (= ?MT 3) (= ?RM 3)) then (bind ?a (+ ?a 1)))
(if (or (= ?LT 3) (= ?MM 3) (= ?RD 1)) then (bind ?a (+ ?a 2)))
(if (or (= ?LM 3) (= ?MD 3)) then (bind ?a (+ ?a 3)))
(if (= ?LD 3) then (bind ?a (+ ?a 4)))

(if (or (= ?LT 8) (= ?MM 8) (= ?LD 8)) then (bind ?a (+ ?a 1)))
(if (or (= ?MT 8) (= ?RM 8) (= ?MD 8)) then (bind ?a (+ ?a 2)))
(if (or (= ?RT 8) (= ?RD 8)) then (bind ?a (+ ?a 3)))

(if (or (= ?LM 0) (= ?MT 0) (= ?RM 0) (= ?MD 0)) then (bind ?a (+ ?a 1)))
(if (or (= ?LT 0) (= ?RT 0) (= ?LD 0) (= ?RD 0)) then (bind ?a (+ ?a 2)))

(if (or (= ?RT 4) (= ?MM 4) (= ?RD 4)) then (bind ?a (+ ?a 1)))
(if (or (= ?MT 4) (= ?LM 4) (= ?MD 4)) then (bind ?a (+ ?a 2)))
(if (or (= ?LT 4) (= ?LD 4)) then (bind ?a (+ ?a 3)))

(if (or (= ?LM 7) (= ?MD 7)) then (bind ?a (+ ?a 1)))
(if (or (= ?LT 7) (= ?MM 7) (= ?RD 7)) then (bind ?a (+ ?a 2)))
(if (or (= ?MT 7) (= ?RM 7)) then (bind ?a (+ ?a 3)))
(if (= ?RT 7) then (bind ?a (+ ?a 4)))

(if (or (= ?LD 6) (= ?MM 6) (= ?RD 6)) then (bind ?a (+ ?a 1)))
(if (or (= ?LM 6) (= ?MT 6) (= ?RM 6)) then (bind ?a (+ ?a 2)))
(if (or (= ?LT 6) (= ?RT 6)) then (bind ?a (+ ?a 3)))

(if (or (= ?MD 5) (= ?RM 5)) then (bind ?a (+ ?a 1)))
(if (or (= ?LD 5) (= ?MM 5) (= ?RT 5)) then (bind ?a (+ ?a 2)))
(if (or (= ?LM 5) (= ?MT 5)) then (bind ?a (+ ?a 3)))
(if (= ?LT 5) then (bind ?a (+ ?a 4)))
?a
)

(deffunction f2_from_Finish(?Depth ?LT ?MT ?RT ?LM ?MM ?RM ?LD ?MD ?RD)
(bind ?a ?Depth)
(if (or (= ?LM 6) (= ?MT 6)) then (bind ?a (+ ?a 1)))
(if (or (= ?LD 6) (= ?MM 6) (= ?RT 6)) then (bind ?a (+ ?a 2)))
(if (or (= ?MD 6) (= ?RM 6)) then (bind ?a (+ ?a 3)))
(if (= ?RD 6) then (bind ?a (+ ?a 4)))

(if (or (= ?LT 0) (= ?MM 0) (= ?RT 0)) then (bind ?a (+ ?a 1)))
(if (or (= ?LM 0) (= ?MD 0) (= ?RM 0)) then (bind ?a (+ ?a 2)))
(if (or (= ?LD 0) (= ?RD 0)) then (bind ?a (+ ?a 3)))

(if (or (= ?MT 8) (= ?RM 8)) then (bind ?a (+ ?a 1)))
(if (or (= ?LT 8) (= ?MM 8) (= ?RD 8)) then (bind ?a (+ ?a 2)))
(if (or (= ?LM 8) (= ?MD 8)) then (bind ?a (+ ?a 3)))
(if (= ?LD 3) then (bind ?a (+ ?a 4)))

(if (or (= ?LT 5) (= ?MM 5) (= ?LD 5)) then (bind ?a (+ ?a 1)))
(if (or (= ?MT 5) (= ?RM 5) (= ?MD 5)) then (bind ?a (+ ?a 2)))
(if (or (= ?RT 5) (= ?RD 5)) then (bind ?a (+ ?a 3)))

(if (or (= ?LM 2) (= ?MT 2) (= ?RM 2) (= ?MD 2)) then (bind ?a (+ ?a 1)))
(if (or (= ?LT 2) (= ?RT 2) (= ?LD 2) (= ?RD 2)) then (bind ?a (+ ?a 2)))

(if (or (= ?RT 1) (= ?MM 1) (= ?RD 1)) then (bind ?a (+ ?a 1)))
(if (or (= ?MT 1) (= ?LM 1) (= ?MD 1)) then (bind ?a (+ ?a 2)))
(if (or (= ?LT 1) (= ?LD 1)) then (bind ?a (+ ?a 3)))

(if (or (= ?LM 4) (= ?MD 4)) then (bind ?a (+ ?a 1)))
(if (or (= ?LT 4) (= ?MM 4) (= ?RD 4)) then (bind ?a (+ ?a 2)))
(if (or (= ?MT 4) (= ?RM 4)) then (bind ?a (+ ?a 3)))
(if (= ?RT 4) then (bind ?a (+ ?a 4)))

(if (or (= ?LD 3) (= ?MM 3) (= ?RD 3)) then (bind ?a (+ ?a 1)))
(if (or (= ?LM 3) (= ?MT 3) (= ?RM 3)) then (bind ?a (+ ?a 2)))
(if (or (= ?LT 3) (= ?RT 3)) then (bind ?a (+ ?a 3)))

(if (or (= ?MD 7) (= ?RM 7)) then (bind ?a (+ ?a 1)))
(if (or (= ?LD 7) (= ?MM 7) (= ?RT 7)) then (bind ?a (+ ?a 2)))
(if (or (= ?LM 7) (= ?MT 7)) then (bind ?a (+ ?a 3)))
(if (= ?LT 7) then (bind ?a (+ ?a 4)))
?a
)

(deffacts start
(Node (LT 6) (MT 0) (RT 8) (LM 5) (MM 2) (RM 1) (LD 4) (MD 3) (RD 7) (Depth 0) (From 0) (Exp (f2_from_Start 0 6 0 8 5 2 1 4 3 7)) (Id (Get_Id)) (TreeFrom 'S'))
(min_from_Start (f2_from_Start 0 6 0 8 5 2 1 4 3 7))
(result 'NONE')
)

(deffacts finish
(Node (LT 1) (MT 2) (RT 3) (LM 8) (MM 0) (RM 4) (LD 7) (MD 6) (RD 5) (Depth 0) (From 0) (Exp (f2_from_Finish 0 1 2 3 8 0 4 7 6 5)) (Id (Get_Id)) (TreeFrom 'F'))
(min_from_Finish (f2_from_Finish 0 1 2 3 8 0 4 7 6 5))
)

(defrule make_LT_S
(declare (salience 100))
?fmin <- (min_from_Start ?min)
?f <- (Node (Depth ?L) (Status 0) (Id ?Id) (LT 0) (MT ?MT) (RT ?RT) (LM ?LM) (MM ?MM) (RM ?RM) (LD ?LD) (MD ?MD) (RD ?RD) (Exp ?E& :(= ?E ?min)) (TreeFrom 'S'))
(test (< ?L 20)) 
=>
(modify ?f (Status 1))
(bind ?aR (f2_from_Start (+ 1 ?L) ?MT 0 ?RT ?LM ?MM ?RM ?LD ?MD ?RD))
(bind ?aD (f2_from_Start (+ 1 ?L) ?LM ?MT ?RT 0 ?MM ?RM ?LD ?MD ?RD))
(retract ?fmin)
(assert (min_from_Start ?aR))
(assert (Node (LT ?MT) (MT 0) (RT ?RT) (LM ?LM) (MM ?MM) (RM ?RM) (LD ?LD) (MD ?MD) (RD ?RD) (Depth (+ ?L 1)) (From ?Id) (Exp ?aR) (Id (Get_Id)) (TreeFrom 'S')))
(assert (Node (LT ?LM) (MT ?MT) (RT ?RT) (LM 0) (MM ?MM) (RM ?RM) (LD ?LD) (MD ?MD) (RD ?RD) (Depth (+ ?L 1)) (From ?Id) (Exp ?aD) (Id (Get_Id)) (TreeFrom 'S')))
(printout t "Tree: Start(LT); From " ?Id crlf)
)

(defrule make_LT_F
(declare (salience 100))
?fmin <- (min_from_Finish ?min)
?f <- (Node (Depth ?L) (Status 0) (Id ?Id) (LT 0) (MT ?MT) (RT ?RT) (LM ?LM) (MM ?MM) (RM ?RM) (LD ?LD) (MD ?MD) (RD ?RD) (Exp ?E& :(= ?E ?min)) (TreeFrom 'F'))
(test (< ?L 20))
=>
(modify ?f (Status 1))
(bind ?aR (f2_from_Finish (+ 1 ?L) ?MT 0 ?RT ?LM ?MM ?RM ?LD ?MD ?RD))
(bind ?aD (f2_from_Finish (+ 1 ?L) ?LM ?MT ?RT 0 ?MM ?RM ?LD ?MD ?RD))
(retract ?fmin)
(assert (min_from_Finish ?aR))
(assert (Node (LT ?MT) (MT 0) (RT ?RT) (LM ?LM) (MM ?MM) (RM ?RM) (LD ?LD) (MD ?MD) (RD ?RD) (Depth (+ ?L 1)) (From ?Id) (Exp ?aR) (Id (Get_Id)) (TreeFrom 'F')))
(assert (Node (LT ?LM) (MT ?MT) (RT ?RT) (LM 0) (MM ?MM) (RM ?RM) (LD ?LD) (MD ?MD) (RD ?RD) (Depth (+ ?L 1)) (From ?Id) (Exp ?aD) (Id (Get_Id)) (TreeFrom 'F')))
(printout t "Tree: Finish(LT); From " ?Id crlf)
)

(defrule make_MT_S
(declare (salience 100))
?fmin <- (min_from_Start ?min)
?f <- (Node (Depth ?L) (Status 0) (Id ?Id) (LT ?LT) (MT 0) (RT ?RT) (LM ?LM) (MM ?MM) (RM ?RM) (LD ?LD) (MD ?MD) (RD ?RD) (Exp ?E& :(= ?E ?min)) (TreeFrom 'S'))
(test (< ?L 20))
=>
(modify ?f (Status 1))
(bind ?aL (f2_from_Start (+ 1 ?L) 0 ?LT ?RT ?LM ?MM ?RM ?LD ?MD ?RD))
(bind ?aD (f2_from_Start (+ 1 ?L) ?LT ?MM ?RT ?LM 0 ?RM ?LD ?MD ?RD))
(bind ?aR (f2_from_Start (+ 1 ?L) ?LT ?RT 0 ?LM ?MM ?RM ?LD ?MD ?RD))
(retract ?fmin)
(assert (min_from_Start ?aL))
(assert (Node (LT 0) (MT ?LT) (RT ?RT) (LM ?LM) (MM ?MM) (RM ?RM) (LD ?LD) (MD ?MD) (RD ?RD) (Depth (+ ?L 1)) (From ?Id) (Exp ?aL) (Id (Get_Id)) (TreeFrom 'S')))
(assert (Node (LT ?LT) (MT ?MM) (RT ?RT) (LM ?LM) (MM 0) (RM ?RM) (LD ?LD) (MD ?MD) (RD ?RD) (Depth (+ ?L 1)) (From ?Id) (Exp ?aD) (Id (Get_Id)) (TreeFrom 'S')))
(assert (Node (LT ?LT) (MT ?RT) (RT 0) (LM ?LM) (MM ?MM) (RM ?RM) (LD ?LD) (MD ?MD) (RD ?RD) (Depth (+ ?L 1)) (From ?Id) (Exp ?aR) (Id (Get_Id)) (TreeFrom 'S')))
(printout t "Tree: Start(MT); From " ?Id crlf)
)

(defrule make_MT_F
(declare (salience 100))
?fmin <- (min_from_Finish ?min)
?f <- (Node (Depth ?L) (Status 0) (Id ?Id) (LT ?LT) (MT 0) (RT ?RT) (LM ?LM) (MM ?MM) (RM ?RM) (LD ?LD) (MD ?MD) (RD ?RD) (Exp ?E& :(= ?E ?min)) (TreeFrom 'F'))
(test (< ?L 20))
=>
(modify ?f (Status 1))
(bind ?aL (f2_from_Finish (+ 1 ?L) 0 ?LT ?RT ?LM ?MM ?RM ?LD ?MD ?RD))
(bind ?aD (f2_from_Finish (+ 1 ?L) ?LT ?MM ?RT ?LM 0 ?RM ?LD ?MD ?RD))
(bind ?aR (f2_from_Finish (+ 1 ?L) ?LT ?RT 0 ?LM ?MM ?RM ?LD ?MD ?RD))
(retract ?fmin)
(assert (min_from_Finish ?aL))
(assert (Node (LT 0) (MT ?LT) (RT ?RT) (LM ?LM) (MM ?MM) (RM ?RM) (LD ?LD) (MD ?MD) (RD ?RD) (Depth (+ ?L 1)) (From ?Id) (Exp ?aL) (Id (Get_Id)) (TreeFrom 'F')))
(assert (Node (LT ?LT) (MT ?MM) (RT ?RT) (LM ?LM) (MM 0) (RM ?RM) (LD ?LD) (MD ?MD) (RD ?RD) (Depth (+ ?L 1)) (From ?Id) (Exp ?aD) (Id (Get_Id)) (TreeFrom 'F')))
(assert (Node (LT ?LT) (MT ?RT) (RT 0) (LM ?LM) (MM ?MM) (RM ?RM) (LD ?LD) (MD ?MD) (RD ?RD) (Depth (+ ?L 1)) (From ?Id) (Exp ?aR) (Id (Get_Id)) (TreeFrom 'F')))
(printout t "Tree: Finish(MT); From " ?Id crlf)
)

(defrule make_RT_S
(declare (salience 100))
?fmin <- (min_from_Start ?min)
?f <- (Node (Depth ?L) (Status 0) (Id ?Id) (LT ?LT) (MT ?MT) (RT 0) (LM ?LM) (MM ?MM) (RM ?RM) (LD ?LD) (MD ?MD) (RD ?RD) (Exp ?E& :(= ?E ?min)) (TreeFrom 'S'))
(test (< ?L 20))
=>
(modify ?f (Status 1))
(bind ?aL (f2_from_Start (+ 1 ?L) ?LT 0 ?MT ?LM ?MM ?RM ?LD ?MD ?RD))
(bind ?aD (f2_from_Start (+ 1 ?L) ?LT ?MT ?RM ?LM ?MM 0 ?LD ?MD ?RD))
(retract ?fmin)
(assert (min_from_Start ?aL))
(assert (Node (LT ?LT) (MT 0) (RT ?MT) (LM ?LM) (MM ?MM) (RM ?RM) (LD ?LD) (MD ?MD) (RD ?RD) (Depth (+ ?L 1)) (From ?Id) (Exp ?aL) (Id (Get_Id)) (TreeFrom 'S')))
(assert (Node (LT ?LT) (MT ?MT) (RT ?RM) (LM ?LM) (MM ?MM) (RM 0) (LD ?LD) (MD ?MD) (RD ?RD) (Depth (+ ?L 1)) (From ?Id) (Exp ?aD) (Id (Get_Id)) (TreeFrom 'S')))
(printout t "Tree: Start(RT); From " ?Id crlf)
)

(defrule make_RT_F
(declare (salience 100))
?fmin <- (min_from_Finish ?min)
?f <- (Node (Depth ?L) (Status 0) (Id ?Id) (LT ?LT) (MT ?MT) (RT 0) (LM ?LM) (MM ?MM) (RM ?RM) (LD ?LD) (MD ?MD) (RD ?RD) (Exp ?E& :(= ?E ?min)) (TreeFrom 'F'))
(test (< ?L 20))
=>
(modify ?f (Status 1))
(bind ?aL (f2_from_Finish (+ 1 ?L) ?LT 0 ?MT ?LM ?MM ?RM ?LD ?MD ?RD))
(bind ?aD (f2_from_Finish (+ 1 ?L) ?LT ?MT ?RM ?LM ?MM 0 ?LD ?MD ?RD))
(retract ?fmin)
(assert (min_from_Finish ?aL))
(assert (Node (LT ?LT) (MT 0) (RT ?MT) (LM ?LM) (MM ?MM) (RM ?RM) (LD ?LD) (MD ?MD) (RD ?RD) (Depth (+ ?L 1)) (From ?Id) (Exp ?aL) (Id (Get_Id)) (TreeFrom 'F')))
(assert (Node (LT ?LT) (MT ?MT) (RT ?RM) (LM ?LM) (MM ?MM) (RM 0) (LD ?LD) (MD ?MD) (RD ?RD) (Depth (+ ?L 1)) (From ?Id) (Exp ?aD) (Id (Get_Id)) (TreeFrom 'F')))
(printout t "Tree: Finish(RT); From " ?Id crlf)
)

(defrule make_LM_S
(declare (salience 100))
?fmin <- (min_from_Start ?min)
?f <- (Node (Depth ?L) (Status 0) (Id ?Id) (LT ?LT) (MT ?MT) (RT ?RT) (LM 0) (MM ?MM) (RM ?RM) (LD ?LD) (MD ?MD) (RD ?RD) (Exp ?E& :(= ?E ?min)) (TreeFrom 'S'))
(test (< ?L 20))
=>
(modify ?f (Status 1))
(bind ?aT (f2_from_Start (+ 1 ?L) 0 ?MT ?RT ?LT ?MM ?RM ?LD ?MD ?RD))
(bind ?aR (f2_from_Start (+ 1 ?L) ?LT ?MT ?RT ?MM 0 ?RM ?LD ?MD ?RD))
(bind ?aD (f2_from_Start (+ 1 ?L) ?LT ?MT ?RT ?LD ?MM ?RM 0 ?MD ?RD))
(retract ?fmin)
(assert (min_from_Start ?aT))
(assert (Node (LT 0) (MT ?MT) (RT ?RT) (LM ?LT) (MM ?MM) (RM ?RM) (LD ?LD) (MD ?MD) (RD ?RD) (Depth (+ ?L 1)) (From ?Id) (Exp ?aT) (Id (Get_Id)) (TreeFrom 'S')))
(assert (Node (LT ?LT) (MT ?MT) (RT ?RT) (LM ?MM) (MM 0) (RM ?RM) (LD ?LD) (MD ?MD) (RD ?RD) (Depth (+ ?L 1)) (From ?Id) (Exp ?aR) (Id (Get_Id)) (TreeFrom 'S')))
(assert (Node (LT ?LT) (MT ?MT) (RT ?RT) (LM ?LD) (MM ?MM) (RM ?RM) (LD 0) (MD ?MD) (RD ?RD) (Depth (+ ?L 1)) (From ?Id) (Exp ?aD) (Id (Get_Id)) (TreeFrom 'S')))
(printout t "Tree: Start(LM); From " ?Id crlf)
)

(defrule make_LM_F
(declare (salience 100))
?fmin <- (min_from_Finish ?min)
?f <- (Node (Depth ?L) (Status 0) (Id ?Id) (LT ?LT) (MT ?MT) (RT ?RT) (LM 0) (MM ?MM) (RM ?RM) (LD ?LD) (MD ?MD) (RD ?RD) (Exp ?E& :(= ?E ?min)) (TreeFrom 'F'))
(test (< ?L 20))
=>
(modify ?f (Status 1))
(bind ?aT (f2_from_Finish (+ 1 ?L) 0 ?MT ?RT ?LT ?MM ?RM ?LD ?MD ?RD))
(bind ?aR (f2_from_Finish (+ 1 ?L) ?LT ?MT ?RT ?MM 0 ?RM ?LD ?MD ?RD))
(bind ?aD (f2_from_Finish (+ 1 ?L) ?LT ?MT ?RT ?LD ?MM ?RM 0 ?MD ?RD))
(retract ?fmin)
(assert (min_from_Finish ?aT))
(assert (Node (LT 0) (MT ?MT) (RT ?RT) (LM ?LT) (MM ?MM) (RM ?RM) (LD ?LD) (MD ?MD) (RD ?RD) (Depth (+ ?L 1)) (From ?Id) (Exp ?aT) (Id (Get_Id)) (TreeFrom 'F')))
(assert (Node (LT ?LT) (MT ?MT) (RT ?RT) (LM ?MM) (MM 0) (RM ?RM) (LD ?LD) (MD ?MD) (RD ?RD) (Depth (+ ?L 1)) (From ?Id) (Exp ?aR) (Id (Get_Id)) (TreeFrom 'F')))
(assert (Node (LT ?LT) (MT ?MT) (RT ?RT) (LM ?LD) (MM ?MM) (RM ?RM) (LD 0) (MD ?MD) (RD ?RD) (Depth (+ ?L 1)) (From ?Id) (Exp ?aD) (Id (Get_Id)) (TreeFrom 'F')))
(printout t "Tree: Finish(LM); From " ?Id crlf)
)

(defrule make_MM_S
(declare (salience 100))
?fmin <- (min_from_Start ?min)
?f <- (Node (Depth ?L) (Status 0) (Id ?Id) (LT ?LT) (MT ?MT) (RT ?RT) (LM ?LM) (MM 0) (RM ?RM) (LD ?LD) (MD ?MD) (RD ?RD) (Exp ?E& :(= ?E ?min)) (TreeFrom 'S'))
(test (< ?L 20))
=>
(modify ?f (Status 1))
(bind ?aL (f2_from_Start (+ 1 ?L) ?LT ?MT ?RT 0 ?LM ?RM ?LD ?MD ?RD))
(bind ?aT (f2_from_Start (+ 1 ?L) ?LT 0 ?RT ?LT ?MT ?RM ?LD ?MD ?RD))
(bind ?aR (f2_from_Start (+ 1 ?L) ?LT ?MT ?RT ?LM ?RM 0 ?LD ?MD ?RD))
(bind ?aD (f2_from_Start (+ 1 ?L) ?LT ?MT ?RT ?LM ?MD ?RM ?LD 0 ?RD))
(retract ?fmin)
(assert (min_from_Start ?aL))
(assert (Node (LT ?LT) (MT ?MT) (RT ?RT) (LM 0) (MM ?LM) (RM ?RM) (LD ?LD) (MD ?MD) (RD ?RD) (Depth (+ ?L 1)) (From ?Id) (Exp ?aL) (Id (Get_Id)) (TreeFrom 'S')))
(assert (Node (LT ?LT) (MT 0) (RT ?RT) (LM ?LT) (MM ?MT) (RM ?RM) (LD ?LD) (MD ?MD) (RD ?RD) (Depth (+ ?L 1)) (From ?Id) (Exp ?aT) (Id (Get_Id)) (TreeFrom 'S')))
(assert (Node (LT ?LT) (MT ?MT) (RT ?RT) (LM ?LM) (MM ?RM) (RM 0) (LD ?LD) (MD ?MD) (RD ?RD) (Depth (+ ?L 1)) (From ?Id) (Exp ?aR) (Id (Get_Id)) (TreeFrom 'S')))
(assert (Node (LT ?LT) (MT ?MT) (RT ?RT) (LM ?LM) (MM ?MD) (RM ?RM) (LD ?LD) (MD 0) (RD ?RD) (Depth (+ ?L 1)) (From ?Id) (Exp ?aD) (Id (Get_Id)) (TreeFrom 'S')))
(printout t "Tree: Start(MM); From " ?Id crlf)
)

(defrule make_MM_F
(declare (salience 100))
?fmin <- (min_from_Finish ?min)
?f <- (Node (Depth ?L) (Status 0) (Id ?Id) (LT ?LT) (MT ?MT) (RT ?RT) (LM ?LM) (MM 0) (RM ?RM) (LD ?LD) (MD ?MD) (RD ?RD) (Exp ?E& :(= ?E ?min)) (TreeFrom 'F'))
(test (< ?L 20))
=>
(modify ?f (Status 1))
(bind ?aL (f2_from_Finish (+ 1 ?L) ?LT ?MT ?RT 0 ?LM ?RM ?LD ?MD ?RD))
(bind ?aT (f2_from_Finish (+ 1 ?L) ?LT 0 ?RT ?LT ?MT ?RM ?LD ?MD ?RD))
(bind ?aR (f2_from_Finish (+ 1 ?L) ?LT ?MT ?RT ?LM ?RM 0 ?LD ?MD ?RD))
(bind ?aD (f2_from_Finish (+ 1 ?L) ?LT ?MT ?RT ?LM ?MD ?RM ?LD 0 ?RD))
(retract ?fmin)
(assert (min_from_Finish ?aL))
(assert (Node (LT ?LT) (MT ?MT) (RT ?RT) (LM 0) (MM ?LM) (RM ?RM) (LD ?LD) (MD ?MD) (RD ?RD) (Depth (+ ?L 1)) (From ?Id) (Exp ?aL) (Id (Get_Id)) (TreeFrom 'F')))
(assert (Node (LT ?LT) (MT 0) (RT ?RT) (LM ?LT) (MM ?MT) (RM ?RM) (LD ?LD) (MD ?MD) (RD ?RD) (Depth (+ ?L 1)) (From ?Id) (Exp ?aT) (Id (Get_Id)) (TreeFrom 'F')))
(assert (Node (LT ?LT) (MT ?MT) (RT ?RT) (LM ?LM) (MM ?RM) (RM 0) (LD ?LD) (MD ?MD) (RD ?RD) (Depth (+ ?L 1)) (From ?Id) (Exp ?aR) (Id (Get_Id)) (TreeFrom 'F')))
(assert (Node (LT ?LT) (MT ?MT) (RT ?RT) (LM ?LM) (MM ?MD) (RM ?RM) (LD ?LD) (MD 0) (RD ?RD) (Depth (+ ?L 1)) (From ?Id) (Exp ?aD) (Id (Get_Id)) (TreeFrom 'F')))
(printout t "Tree: Finish(MM); From " ?Id crlf)
)

(defrule make_RM_S
(declare (salience 100))
?fmin <- (min_from_Start ?min)
?f <- (Node (Depth ?L) (Status 0) (Id ?Id) (LT ?LT) (MT ?MT) (RT ?RT) (LM ?LM) (MM ?MM) (RM 0) (LD ?LD) (MD ?MD) (RD ?RD) (Exp ?E& :(= ?E ?min)) (TreeFrom 'S'))
(test (< ?L 20))
=>
(modify ?f (Status 1))
(bind ?aT (f2_from_Start (+ 1 ?L) ?LT ?MT 0 ?LM ?MM ?RT ?LD ?MD ?RD))
(bind ?aL (f2_from_Start (+ 1 ?L) ?LT ?MT ?RT ?LM 0 ?MM ?LD ?MD ?RD))
(bind ?aD (f2_from_Start (+ 1 ?L) ?LT ?MT ?RT ?LM ?MM ?RD ?LD ?MD 0))
(retract ?fmin)
(assert (min_from_Start ?aT))
(assert (Node (LT ?LT) (MT ?MT) (RT 0) (LM ?LM) (MM ?MM) (RM ?RT) (LD ?LD) (MD ?MD) (RD ?RD) (Depth (+ ?L 1)) (From ?Id) (Exp ?aT) (Id (Get_Id)) (TreeFrom 'S')))
(assert (Node (LT ?LT) (MT ?MT) (RT ?RT) (LM ?LM) (MM 0) (RM ?MM) (LD ?LD) (MD ?MD) (RD ?RD) (Depth (+ ?L 1)) (From ?Id) (Exp ?aL) (Id (Get_Id)) (TreeFrom 'S')))
(assert (Node (LT ?LT) (MT ?MT) (RT ?RT) (LM ?LM) (MM ?MM) (RM ?RD) (LD ?LD) (MD ?MD) (RD 0) (Depth (+ ?L 1)) (From ?Id) (Exp ?aD) (Id (Get_Id)) (TreeFrom 'S')))
(printout t "Tree: Start(RM); From " ?Id crlf)
)

(defrule make_RM_F
(declare (salience 100))
?fmin <- (min_from_Finish ?min)
?f <- (Node (Depth ?L) (Status 0) (Id ?Id) (LT ?LT) (MT ?MT) (RT ?RT) (LM ?LM) (MM ?MM) (RM 0) (LD ?LD) (MD ?MD) (RD ?RD) (Exp ?E& :(= ?E ?min)) (TreeFrom 'F'))
(test (< ?L 20))
=>
(modify ?f (Status 1))
(bind ?aT (f2_from_Finish (+ 1 ?L) ?LT ?MT 0 ?LM ?MM ?RT ?LD ?MD ?RD))
(bind ?aL (f2_from_Finish (+ 1 ?L) ?LT ?MT ?RT ?LM 0 ?MM ?LD ?MD ?RD))
(bind ?aD (f2_from_Finish (+ 1 ?L) ?LT ?MT ?RT ?LM ?MM ?RD ?LD ?MD 0))
(retract ?fmin)
(assert (min_from_Finish ?aT))
(assert (Node (LT ?LT) (MT ?MT) (RT 0) (LM ?LM) (MM ?MM) (RM ?RT) (LD ?LD) (MD ?MD) (RD ?RD) (Depth (+ ?L 1)) (From ?Id) (Exp ?aT) (Id (Get_Id)) (TreeFrom 'F')))
(assert (Node (LT ?LT) (MT ?MT) (RT ?RT) (LM ?LM) (MM 0) (RM ?MM) (LD ?LD) (MD ?MD) (RD ?RD) (Depth (+ ?L 1)) (From ?Id) (Exp ?aL) (Id (Get_Id)) (TreeFrom 'F')))
(assert (Node (LT ?LT) (MT ?MT) (RT ?RT) (LM ?LM) (MM ?MM) (RM ?RD) (LD ?LD) (MD ?MD) (RD 0) (Depth (+ ?L 1)) (From ?Id) (Exp ?aD) (Id (Get_Id)) (TreeFrom 'F')))
(printout t "Tree: Finish(RM); From " ?Id crlf)
)

(defrule make_LD_S
(declare (salience 100))
?fmin <- (min_from_Start ?min)
?f <- (Node (Depth ?L) (Status 0) (Id ?Id) (LT ?LT) (MT ?MT) (RT ?RT) (LM ?LM) (MM ?MM) (RM ?RM) (LD 0) (MD ?MD) (RD ?RD) (Exp ?E& :(= ?E ?min)) (TreeFrom 'S')) 
(test (< ?L 20))
=>
(modify ?f (Status 1))
(bind ?aT (f2_from_Start (+ 1 ?L) ?LT ?MT ?RT 0 ?MM ?RM ?LM ?MD ?RD))
(bind ?aR (f2_from_Start (+ 1 ?L) ?LT ?MT ?RT ?LM ?MM ?RM ?MD 0 ?RD))
(retract ?fmin)
(assert (min_from_Start ?aR))
(assert (Node (LT ?LT) (MT ?MT) (RT ?RT) (LM 0) (MM ?MM) (RM ?RM) (LD ?LM) (MD ?MD) (RD ?RD) (Depth (+ ?L 1)) (From ?Id) (Exp ?aT) (Id (Get_Id)) (TreeFrom 'S')))
(assert (Node (LT ?LT) (MT ?MT) (RT ?RT) (LM ?LM) (MM ?MM) (RM ?RM) (LD ?MD) (MD 0) (RD ?RD) (Depth (+ ?L 1)) (From ?Id) (Exp ?aR) (Id (Get_Id)) (TreeFrom 'S')))
(printout t "Tree: Start(LD); From " ?Id crlf)
)

(defrule make_LD_F
(declare (salience 100))
?fmin <- (min_from_Finish ?min)
?f <- (Node (Depth ?L) (Status 0) (Id ?Id) (LT ?LT) (MT ?MT) (RT ?RT) (LM ?LM) (MM ?MM) (RM ?RM) (LD 0) (MD ?MD) (RD ?RD) (Exp ?E& :(= ?E ?min)) (TreeFrom 'F'))  
(test (< ?L 20))
=>
(modify ?f (Status 1))
(bind ?aT (f2_from_Finish (+ 1 ?L) ?LT ?MT ?RT 0 ?MM ?RM ?LM ?MD ?RD))
(bind ?aR (f2_from_Finish (+ 1 ?L) ?LT ?MT ?RT ?LM ?MM ?RM ?MD 0 ?RD))
(retract ?fmin)
(assert (min_from_Finish ?aR))
(assert (Node (LT ?LT) (MT ?MT) (RT ?RT) (LM 0) (MM ?MM) (RM ?RM) (LD ?LM) (MD ?MD) (RD ?RD) (Depth (+ ?L 1)) (From ?Id) (Exp ?aT) (Id (Get_Id)) (TreeFrom 'F')))
(assert (Node (LT ?LT) (MT ?MT) (RT ?RT) (LM ?LM) (MM ?MM) (RM ?RM) (LD ?MD) (MD 0) (RD ?RD) (Depth (+ ?L 1)) (From ?Id) (Exp ?aR) (Id (Get_Id)) (TreeFrom 'F')))
(printout t "Tree: Finish(LD); From " ?Id crlf)
)

(defrule make_MD_S
(declare (salience 100))
?fmin <- (min_from_Start ?min)
?f <- (Node (Depth ?L) (Status 0) (Id ?Id) (LT ?LT) (MT ?MT) (RT ?RT) (LM ?LM) (MM ?MM) (RM ?RM) (LD ?LD) (MD 0) (RD ?RD) (Exp ?E& :(= ?E ?min)) (TreeFrom 'S'))
(test (< ?L 20))
=>
(modify ?f (Status 1))
(bind ?aL (f2_from_Start (+ 1 ?L) ?LT ?MT ?RT ?LM ?MM ?RM 0 ?LD ?RD))
(bind ?aT (f2_from_Start (+ 1 ?L) ?LT ?MT ?RT ?LM 0 ?RM ?LD ?MM ?RD))
(bind ?aR (f2_from_Start (+ 1 ?L) ?LT ?MT ?RT ?LM ?MM ?RM ?LD ?RD 0))
(retract ?fmin)
(assert (min_from_Start ?aL))
(assert (Node (LT ?LT) (MT ?MT) (RT ?RT) (LM ?LM) (MM ?MM) (RM ?RM) (LD 0) (MD ?LD) (RD ?RD) (Depth (+ ?L 1)) (From ?Id) (Exp ?aL) (Id (Get_Id)) (TreeFrom 'S')))
(assert (Node (LT ?LT) (MT ?MT) (RT ?RT) (LM ?LM) (MM 0) (RM ?RM) (LD ?LD) (MD ?MM) (RD ?RD) (Depth (+ ?L 1)) (From ?Id) (Exp ?aT) (Id (Get_Id)) (TreeFrom 'S')))
(assert (Node (LT ?LT) (MT ?MT) (RT ?RT) (LM ?LM) (MM ?MM) (RM ?RM) (LD ?LD) (MD ?RD) (RD 0) (Depth (+ ?L 1)) (From ?Id) (Exp ?aR) (Id (Get_Id)) (TreeFrom 'S')))
(printout t "Tree: Start(MD); From " ?Id crlf)
)

(defrule make_MD_F
(declare (salience 100))
?fmin <- (min_from_Finish ?min)
?f <- (Node (Depth ?L) (Status 0) (Id ?Id) (LT ?LT) (MT ?MT) (RT ?RT) (LM ?LM) (MM ?MM) (RM ?RM) (LD ?LD) (MD 0) (RD ?RD) (Exp ?E& :(= ?E ?min)) (TreeFrom 'F'))
(test (< ?L 20))
=>
(modify ?f (Status 1))
(bind ?aL (f2_from_Finish (+ 1 ?L) ?LT ?MT ?RT ?LM ?MM ?RM 0 ?LD ?RD))
(bind ?aT (f2_from_Finish (+ 1 ?L) ?LT ?MT ?RT ?LM 0 ?RM ?LD ?MM ?RD))
(bind ?aR (f2_from_Finish (+ 1 ?L) ?LT ?MT ?RT ?LM ?MM ?RM ?LD ?RD 0))
(retract ?fmin)
(assert (min_from_Finish ?aL))
(assert (Node (LT ?LT) (MT ?MT) (RT ?RT) (LM ?LM) (MM ?MM) (RM ?RM) (LD 0) (MD ?LD) (RD ?RD) (Depth (+ ?L 1)) (From ?Id) (Exp ?aL) (Id (Get_Id)) (TreeFrom 'F')))
(assert (Node (LT ?LT) (MT ?MT) (RT ?RT) (LM ?LM) (MM 0) (RM ?RM) (LD ?LD) (MD ?MM) (RD ?RD) (Depth (+ ?L 1)) (From ?Id) (Exp ?aT) (Id (Get_Id)) (TreeFrom 'F')))
(assert (Node (LT ?LT) (MT ?MT) (RT ?RT) (LM ?LM) (MM ?MM) (RM ?RM) (LD ?LD) (MD ?RD) (RD 0) (Depth (+ ?L 1)) (From ?Id) (Exp ?aR) (Id (Get_Id)) (TreeFrom 'F')))
(printout t "Tree: Finish(MT); From " ?Id crlf)
)

(defrule make_RD_S
(declare (salience 100))
?fmin <- (min_from_Start ?min)
?f <- (Node (Depth ?L) (Status 0) (Id ?Id) (LT ?LT) (MT ?MT) (RT ?RT) (LM ?LM) (MM ?MM) (RM ?RM) (LD ?LD) (MD ?MD) (RD 0) (Exp ?E& :(= ?E ?min)) (TreeFrom 'S'))
(test (< ?L 20))
=>
(modify ?f (Status 1))
(bind ?aT (f2_from_Start (+ 1 ?L) ?LT ?MT ?RT ?LM ?MM 0 ?LD ?MD ?RM))
(bind ?aL (f2_from_Start (+ 1 ?L) ?LT ?MT ?RT ?LM ?MM ?RM ?LD 0 ?MD))
(retract ?fmin)
(assert (min_from_Start ?aL))
(assert (Node (LT ?LT) (MT ?MT) (RT ?RT) (LM ?LM) (MM ?MM) (RM 0) (LD ?LD) (MD ?MD) (RD ?RM) (Depth (+ ?L 1)) (From ?Id) (Exp ?aT) (Id (Get_Id)) (TreeFrom 'S')))
(assert (Node (LT ?LT) (MT ?MT) (RT ?RT) (LM ?LM) (MM ?MM) (RM ?RM) (LD ?LD) (MD 0) (RD ?MD) (Depth (+ ?L 1)) (From ?Id) (Exp ?aL) (Id (Get_Id)) (TreeFrom 'S')))
(printout t "Tree: Start(RD); From " ?Id crlf)
)

(defrule make_RD_F
(declare (salience 100))
?fmin <- (min_from_Finish ?min)
?f <- (Node (Depth ?L) (Status 0) (Id ?Id) (LT ?LT) (MT ?MT) (RT ?RT) (LM ?LM) (MM ?MM) (RM ?RM) (LD ?LD) (MD ?MD) (RD 0) (Exp ?E& :(= ?E ?min)) (TreeFrom 'F'))
(test (< ?L 20))
=>
(modify ?f (Status 1))
(bind ?aT (f2_from_Finish (+ 1 ?L) ?LT ?MT ?RT ?LM ?MM 0 ?LD ?MD ?RM))
(bind ?aL (f2_from_Finish (+ 1 ?L) ?LT ?MT ?RT ?LM ?MM ?RM ?LD 0 ?MD))
(retract ?fmin)
(assert (min_from_Finish ?aL))
(assert (Node (LT ?LT) (MT ?MT) (RT ?RT) (LM ?LM) (MM ?MM) (RM 0) (LD ?LD) (MD ?MD) (RD ?RM) (Depth (+ ?L 1)) (From ?Id) (Exp ?aT) (Id (Get_Id)) (TreeFrom 'F')))
(assert (Node (LT ?LT) (MT ?MT) (RT ?RT) (LM ?LM) (MM ?MM) (RM ?RM) (LD ?LD) (MD 0) (RD ?MD) (Depth (+ ?L 1)) (From ?Id) (Exp ?aL) (Id (Get_Id)) (TreeFrom 'F')))
(printout t "Tree: Finish(RD); From " ?Id crlf)
)

(defrule find_min_from_Start
(declare (salience 150))
?fmin <- (min_from_Start ?min)
(Node (Exp ?E& :(< ?E ?min)) (Status 0) (TreeFrom 'S'))
=>
(retract ?fmin)
(assert (min_from_Start ?E))
)

(defrule find_min_from_Finish
(declare (salience 150))
?fmin <- (min_from_Finish ?min)
(Node (Exp ?E& :(< ?E ?min)) (Status 0) (TreeFrom 'F'))
=>
(retract ?fmin)
(assert (min_from_Finish ?E))
)

(defrule move_circle_from_Start
(declare (salience 1000))
(Node (Exp ?X)(LT ?LT_X)(MT ?MT_X)(RT ?RT_X)(LM ?LM_X)(MM ?MM_X)(RM ?RM_X)(LD ?LD_X)(MD ?MD_X)(RD ?RD_X)(TreeFrom 'S')(From ?f_X))
?f <- (Node (Exp ?Y)(Status 0)(LT ?LT_X)(MT ?MT_X)(RT ?RT_X)(LM ?LM_X)(MM ?MM_X)(RM ?RM_X)(LD ?LD_X)(MD ?MD_X)(RD ?RD_X)(TreeFrom 'S')(From ?f_Y))
(test (and (<= ?X ?Y) (not (= ?f_X ?f_Y))))
?fmin <- (min_from_Start ?min)
=>
(retract ?f)
(retract ?fmin)
(assert (min_from_Start 1000))
(printout t "delete state from Start: " ?f crlf)
(printout t ?LT_X " " ?MT_X " " ?RT_X crlf)
(printout t ?LM_X " " ?MM_X " " ?RM_X crlf)
(printout t ?LD_X " " ?MD_X " " ?RD_X crlf)
)

(defrule move_circle_from_Finish
(declare (salience 1000))
(Node (Exp ?X)(LT ?LT_X)(MT ?MT_X)(RT ?RT_X)(LM ?LM_X)(MM ?MM_X)(RM ?RM_X)(LD ?LD_X)(MD ?MD_X)(RD ?RD_X)(TreeFrom 'F')(From ?f_X))
?f <- (Node (Exp ?Y)(Status 0)(LT ?LT_X)(MT ?MT_X)(RT ?RT_X)(LM ?LM_X)(MM ?MM_X)(RM ?RM_X)(LD ?LD_X)(MD ?MD_X)(RD ?RD_X)(TreeFrom 'F')(From ?f_Y))
(test (and (<= ?X ?Y) (not (= ?f_X ?f_Y))))
?fmin <- (min_from_Finish ?min)
=>
(retract ?f)
(retract ?fmin)
(assert (min_from_Finish 1000))
(printout t "delete state from Finish: " ?f crlf)
(printout t ?LT_X " " ?MT_X " " ?RT_X crlf)
(printout t ?LM_X " " ?MM_X " " ?RM_X crlf)
(printout t ?LD_X " " ?MD_X " " ?RD_X crlf)
)

(defrule goal_test
(declare (salience 500))
?f_Start <- (Node (Status ~2)(LT ?LT_S)(MT ?MT_S)(RT ?RT_S)(LM ?LM_S)(MM ?MM_S)(RM ?RM_S)(LD ?LD_S)(MD ?MD_S)(RD ?RD_S)(TreeFrom 'S'))
?f_Finish <- (Node (Status ~2)(LT ?LT_S)(MT ?MT_S)(RT ?RT_S)(LM ?LM_S)(MM ?MM_S)(RM ?RM_S)(LD ?LD_S)(MD ?MD_S)(RD ?RD_S)(TreeFrom 'F'))
?result <- (result 'NONE')
=>
(modify ?f_Start (Status 2))
(modify ?f_Finish (Status 2))
(retract ?result)
(assert (result 'YES'))
)

(defrule select_answer
(declare (salience 500))
(Node (Status 2) (From ?Id))
?f <- (Node (Id ?Id) (Status ~2))
=>
(modify ?f (Status 2))
)

(defrule delete_not_answer
(declare (salience 400))
(Node (Status 2))
?f <- (Node (Status 0|1))
=>
(retract ?f)
)

(defrule delete_double_at_answer
(declare (salience 300))
?f_Start <- (Node (Status 2)(LT ?LT_S)(MT ?MT_S)(RT ?RT_S)(LM ?LM_S)(MM ?MM_S)(RM ?RM_S)(LD ?LD_S)(MD ?MD_S)(RD ?RD_S)(TreeFrom 'S')(From ?from))
?f_Finish <- (Node (Status 2)(LT ?LT_S)(MT ?MT_S)(RT ?RT_S)(LM ?LM_S)(MM ?MM_S)(RM ?RM_S)(LD ?LD_S)(MD ?MD_S)(RD ?RD_S)(TreeFrom 'F')(Id ?id))
=>
(retract ?f_Start)
(assert (final_id_at_finish ?id))
(printout t "Result path:" crlf)
)

(defrule print_result_from_start
(declare (salience 200))
(Node (Status 2))
?f_parent <- (Node (Status 2)(TreeFrom 'S')(From 0)(LT ?LT)(MT ?MT)(RT ?RT)(LM ?LM)(MM ?MM)(RM ?RM)(LD ?LD)(MD ?MD)(RD ?RD)(Id ?Id))
?f <- (Node (Status 2)(From ?Id)(TreeFrom 'S'))
=>
(printout t ?LT " " ?MT " " ?RT crlf)
(printout t ?LM " " ?MM " " ?RM crlf)
(printout t ?LD " " ?MD " " ?RD crlf)
(printout t "---------" crlf)
(modify ?f (From 0))
(retract ?f_parent)
)

(defrule finish_print_result_from_start
(declare (salience 195))
(Node (Status 2))
?f <- (Node (Status 2)(TreeFrom 'S')(LT ?LT)(MT ?MT)(RT ?RT)(LM ?LM)(MM ?MM)(RM ?RM)(LD ?LD)(MD ?MD)(RD ?RD))
=>
(printout t ?LT " " ?MT " " ?RT crlf)
(printout t ?LM " " ?MM " " ?RM crlf)
(printout t ?LD " " ?MD " " ?RD crlf)
(printout t "---------" crlf)
(modify ?f (Status 3))
)

(defrule print_result_from_finish
(declare (salience 190))
(Node (Status 2))
?f <- (Node (Status 2)(TreeFrom 'F')(Id ?id)(From ?from)(LT ?LT)(MT ?MT)(RT ?RT)(LM ?LM)(MM ?MM)(RM ?RM)(LD ?LD)(MD ?MD)(RD ?RD))
?f_final_id <- (final_id_at_finish ?final_id)
(test (= ?id ?final_id))
=>
(printout t ?LT " " ?MT " " ?RT crlf)
(printout t ?LM " " ?MM " " ?RM crlf)
(printout t ?LD " " ?MD " " ?RD crlf)
(printout t "---------" crlf)
(retract ?f_final_id)
(assert (final_id_at_finish ?from))
(retract ?f)
)

(defrule stop_1
(declare (salience 175))
(Node (Status 3))
(result 'YES')
=>
(halt)
(printout t "Solution found!!" crlf)
)

(defrule stop_2
(declare (salience 175))
(not (Node (Status 0|2)))
(result 'NONE')
=>
(halt)
(printout t "Solution didn't find!!" crlf)
)