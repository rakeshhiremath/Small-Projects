(defun c:ahm()
(progn
  (setvar "cmdecho" 0)
	(COMMAND "UNDO" "BEGIN")

  	(setq pt (getpoint "Select the point from which grid distance is mentioned"))
	(setq dist (getint "Enter the distance from which grid is to be drawn:"))
  	(setq pt1 (polar pt 0 dist))


	(initget "A B C D")
	(setq proj (getkword "\nSpecify the start of grid [A/B/C/D]: "))
	(progn
		(if (= proj "A")
			(progn

			(setq pt2(polar pt1 0 575))
			(setq pt3(polar pt1 0 3780))
			(setq pt4(polar pt1 0 10280))

			
			(setq pn1(polar pt1 (/ pi 2) 650))
			(setq pn2(polar pt2 (/ pi 2) 650))
			(setq pn3(polar pt3 (/ pi 2) 650))
			(setq pn4(polar pt4 (/ pi 2) 650))

	
			(command "line" pt1 pn1 "")(setq ln1(entlast)) 
			(command "line" pt2 pn2 "")(setq ln2(entlast))
			(command "line" pt3 pn3 "")(setq ln3(entlast))
			(command "line" pt4 pn4 "")(setq ln4(entlast))
			
			(initget "B C D")
			(setq delo (getkword "\nSpecify the end of grid [B/C/D]: "))
;						
			(if (= delo "B")
				(progn
					(entdel ln3 "")
				  	(entdel ln4 "")
				)
			)
			(if (= delo "C")
				(progn
				  	(entdel ln4 "")
				)
			)
;							
			)
		)
  		(if (= proj "B")
			(progn
			(setq pt2(polar pt1 0 3205))
			(setq pt3(polar pt1 0 9705))

			(setq pn1(polar pt1 (/ pi 2) 650))
			(setq pn2(polar pt2 (/ pi 2) 650))
			(setq pn3(polar pt3 (/ pi 2) 650))

			(command "line" pt1 pn1 "")(setq ln2(entlast))
			(command "line" pt2 pn2 "")(setq ln3(entlast))
			(command "line" pt3 pn3 "")(setq ln4(entlast))
;;;						
			(if (= delo "C")
				(progn	
				  	(entdel ln4)
				)
			)
;;; 					
			)
		)
  		(if (= proj "C")
			(progn
			(setq pt2(polar pt1 0 6500))

			
			(setq pn1(polar pt1 (/ pi 2) 650))
			(setq pn2(polar pt2 (/ pi 2) 650))

			(command "line" pt1 pn1 "")
			(command "line" pt2 pn2 "")
			)
		)
  		(if (= proj "D")
			(progn
			(setq pn1(polar pt1 (/ pi 2) 650))
			(command "line" pt1 pn1 "")
			)
		)
	)		
)
)			

			

			
				