(defun c:lbp()

(setq pt1(getpoint "\nPick top left corner of the bar   "))
  
(setq lp1(polar (setq lp3(polar pt1 0 12000)) (* pi 0.5) 12000));point for adding dummy lines
  (setq lp2(polar (setq lp3(polar pt1 0 12000)) (* pi 1.5) 6000));point for adding dummy lines
  (command "line" lp1 lp2 "")
  (setq oil1(entlast))

 (setq lp4(polar (setq lp6(polar pt1 0 24000)) (* pi 0.5) 12000));point for adding dummy lines
  (setq lp5(polar (setq lp6(polar pt1 0 24000)) (* pi 1.5) 6000));point for adding dummy lines
  (command "line" lp4 lp5 "")
  (setq oil2(entlast))
  
   (setq lp7(polar (setq lp9(polar pt1 0 36000)) (* pi 0.5) 12000));point for adding dummy lines
  (setq lp8(polar (setq lp9(polar pt1 0 36000)) (* pi 1.5) 6000));point for adding dummy lines
  (command "line" lp7 lp8 "")
  (setq oil3(entlast))

   (setq lp9(polar pt1 (* pi 0.5) 12000));point for adding dummy lines
  (setq lp10(polar pt1 (* pi 1.5) 6000));point for adding dummy lines
  (command "line" lp9 lp10 "")
  (setq oil4(entlast))

   (setq lp11(polar (setq lp13(polar pt1 0 48000)) (* pi 0.5) 12000));point for adding dummy lines
  (setq lp12(polar (setq lp13(polar pt1 0 48000)) (* pi 1.5) 6000));point for adding dummy lines
  (command "line" lp11 lp12 "")
  (setq oil5(entlast))

  (setq lp14(polar (setq lp16(polar pt1 0 60000)) (* pi 0.5) 12000));point for adding dummy lines
  (setq lp15(polar (setq lp16(polar pt1 0 60000)) (* pi 1.5) 6000));point for adding dummy lines
 (command "line" lp14 lp15 "")
  (setq oil6(entlast))

   ;(setq lp17(polar (setq lp19(polar pt1 pi 36000)) (* pi 0.5) 12000));point for adding dummy lines
 ; (setq lp18(polar (setq lp19(polar pt1 pi 36000)) (* pi 1.5) 6000));point for adding dummy lines
; (command "line" lp17 lp18 "")




  
	(setq dia1 (getint "Enter diameter of bar:"))
  	(setq en1(car(entsel "\nselect object")))
  	(setq pn1(getpoint "\nPoint at which it has to lap   "))

   	(setq pt2 (polar pn1 pi (* 23 dia1)))
   	(setq pt3 (polar pn1 0 (* 23 dia1)))

 	
  
  	(command "Break" en1 pt2 "@" "")
	(command "line" pn1 pt3 "")
  	(setq lin1 (ENTLAST))


	
	

  (setvar "PEDITACCEPT" 1)
  (vl-cmdf "_.pedit" "_m" EN1 LIN1 "" "_j" "_j" "_a" 500 "")

  (setq pt4 (polar pt2 (* pi 1.25) 150))
  	(setq pt5 (polar pt3 (* pi 1.75) 150))
  	(command "line" pt2 pt4 "")
	(command "line" pt5 pt3 "")


  ;(command "dim" "hor" pt2 "hor" pt3)




  (entdel oil1)
  (entdel oil2)(entdel oil3)(entdel oil4)(entdel oil5)(entdel oil6)
  
  )


