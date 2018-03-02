(defun c:sftw2grid()
(progn
  (setvar "cmdecho" 0)
	(COMMAND "UNDO" "BEGIN")
  	(setq snap(getvar "osmode"))
  	(COMMAND "OSNAP" "NONE")

  	(setq pt (getpoint "Select the point from which grid distance is mentioned"))
	(setq dist (getint "Enter the distance from which grid is to be drawn:"))
  	(setq pt1 (polar pt 0 dist))

  	(initget "X Y")
	(setq blo (getkword "\nSpecify Grid-X/Grid-Y of project (Grid-X/Grid-Y) [X/Y]: "))
	(if (= blo "X")
	(progn

		(initget "2.A 2.B 2.C 2.D 2.E 2.F 2.G C.A 2.H 2.I 2.J 2.K 2.L 2.M 2.N")
		(setq proj (getkword "\nSpecify the start of grid [2.A/2.B/2.C/2.D/2.E/2.F/2.G/C.A/2.H/2.I/2.J/2.K/2.L/2.M/2.N]: "))
		(progn
	;;;;;																			  
			(if (= proj "2.A")
				(progn

				(setq pt2(polar pt1 0 3600))
				(setq pt3(polar pt1 0 9125))
				(setq pt4(polar pt1 0 14800))
				(setq pt5(polar pt1 0 19450))
				(setq pt6(polar pt1 0 22125))
				(setq pt7(polar pt1 0 25025))
				(setq pt8(polar pt1 0 26825))
				(setq pt9(polar pt1 0 28625))
				(setq pt10(polar pt1 0 31525))
				(setq pt11(polar pt1 0 34200))
				(setq pt12(polar pt1 0 38850))
				(setq pt13(polar pt1 0 44525))
				(setq pt14(polar pt1 0 50050))
				(setq pt15(polar pt1 0 53650))

				(setq pn1(polar pt1 (/ pi 2) 1050))
				(setq pn2(polar pt2 (/ pi 2) 1050))
				(setq pn3(polar pt3 (/ pi 2) 1050))
				(setq pn4(polar pt4 (/ pi 2) 1050))
				(setq pn5(polar pt5 (/ pi 2) 1050))
				(setq pn6(polar pt6 (/ pi 2) 1050))
				(setq pn7(polar pt7 (/ pi 2) 1050))
				(setq pn8(polar pt8 (/ pi 2) 1050))
				(setq pn9(polar pt9 (/ pi 2) 1050))
				(setq pn10(polar pt10 (/ pi 2) 1050))
				(setq pn11(polar pt11 (/ pi 2) 1050))
				(setq pn12(polar pt12 (/ pi 2) 1050))
				(setq pn13(polar pt13 (/ pi 2) 1050))
				(setq pn14(polar pt14 (/ pi 2) 1050))
				(setq pn15(polar pt15 (/ pi 2) 1050))
				

				(setq po1(polar pt1 (* pi 1.5) 1700))
				(setq po2(polar pt2 (* pi 1.5) 1700))
				(setq po3(polar pt3 (* pi 1.5) 1700))
				(setq po4(polar pt4 (* pi 1.5) 1700))
				(setq po5(polar pt5 (* pi 1.5) 1700))
				(setq po6(polar pt6 (* pi 1.5) 1700))
				(setq po7(polar pt7 (* pi 1.5) 1700))
				(setq po8(polar pt8 (* pi 1.5) 1700))
				(setq po9(polar pt9 (* pi 1.5) 1700))
				(setq po10(polar pt10 (* pi 1.5) 1700))
				(setq po11(polar pt11 (* pi 1.5) 1700))
				(setq po12(polar pt12 (* pi 1.5) 1700))
				(setq po13(polar pt13 (* pi 1.5) 1700))
				(setq po14(polar pt14 (* pi 1.5) 1700))
				(setq po15(polar pt15 (* pi 1.5) 1700))

				
				(setq pm1(polar pn1 (/ pi 2) 238))
				(setq pm2(polar pn2 (/ pi 2) 238))
				(setq pm3(polar pn3 (/ pi 2) 238))
				(setq pm4(polar pn4 (/ pi 2) 238))
				(setq pm5(polar pn5 (/ pi 2) 238))
				(setq pm6(polar pn6 (/ pi 2) 238))
				(setq pm7(polar pn7 (/ pi 2) 238))
				(setq pm8(polar pn8 (/ pi 2) 238))
				(setq pm9(polar pn9 (/ pi 2) 238))
				(setq pm10(polar pn10 (/ pi 2) 238))
				(setq pm11(polar pn11 (/ pi 2) 238))
				(setq pm12(polar pn12 (/ pi 2) 238))
				(setq pm13(polar pn13 (/ pi 2) 238))
				(setq pm14(polar pn14 (/ pi 2) 238))
				(setq pm15(polar pn15 (/ pi 2) 238))

				
;;;				(SETQ PM(LIST PM1 PM2 PM3 PM4 PM5 PM6 PM7 PM8 PM9 PM10 PM11 PM12 PM13 PM14 PM15))
;;;				(SETQ G-XVAL(LIST "2.A" "2.B" "2.C" "2.D" "2.E" "2.F" "2.G" "C.A" "2.H" "2.I" "2.J" "2.K" "2.L" "2.M" "2.N"))
;;;				(command "layer" "s" "S-SYM_50" "")
;;;				(FOREACH P PM (COMMAND "INSERT" "S-GRID_BUB_50" p "" "" "" (FOREACH G-X  G-XVAL)) (setq tx1 (entlast)))

				

				  
				(COMMAND "INSERT" "S-GRID_BUB_50" pm1 "" "" "" "2.A" )(setq tx1 (entlast))
				(COMMAND "INSERT" "S-GRID_BUB_50" pm2 "" "" "" "2.B" )(setq tx2 (entlast))
				(COMMAND "INSERT" "S-GRID_BUB_50" pm3 "" "" "" "2.C" )(setq tx3 (entlast))
				(COMMAND "INSERT" "S-GRID_BUB_50" pm4 "" "" "" "2.D" )(setq tx4 (entlast))
				(COMMAND "INSERT" "S-GRID_BUB_50" pm5 "" "" "" "2.E" )(setq tx5 (entlast))
				(COMMAND "INSERT" "S-GRID_BUB_50" pm6 "" "" "" "2.F" )(setq tx6 (entlast))
				(COMMAND "INSERT" "S-GRID_BUB_50" pm7 "" "" "" "2.G" )(setq tx7 (entlast))
				(COMMAND "INSERT" "S-GRID_BUB_50" pm8 "" "" "" "C.A" )(setq tx8 (entlast))
				(COMMAND "INSERT" "S-GRID_BUB_50" pm9 "" "" "" "2.H" )(setq tx9 (entlast))
				(COMMAND "INSERT" "S-GRID_BUB_50" pm10 "" "" "" "2.I" )(setq tx10 (entlast))
				(COMMAND "INSERT" "S-GRID_BUB_50" pm11 "" "" "" "2.J" )(setq tx11 (entlast))
				(COMMAND "INSERT" "S-GRID_BUB_50" pm12 "" "" "" "2.K" )(setq tx12 (entlast))
				(COMMAND "INSERT" "S-GRID_BUB_50" pm13 "" "" "" "2.L" )(setq tx13 (entlast))
				(COMMAND "INSERT" "S-GRID_BUB_50" pm14 "" "" "" "2.M" )(setq tx14 (entlast))
				(COMMAND "INSERT" "S-GRID_BUB_50" pm15 "" "" "" "2.N" )(setq tx15 (entlast))
			


				(setq pd1(polar pn1 (* pi 1.5) 100))
				(setq pd2(polar pn2 (* pi 1.5) 100))
				(setq pd3(polar pn3 (* pi 1.5) 100))
				(setq pd4(polar pn4 (* pi 1.5) 100))
				(setq pd5(polar pn5 (* pi 1.5) 100))
				(setq pd6(polar pn6 (* pi 1.5) 100))
				(setq pd7(polar pn7 (* pi 1.5) 100))
				(setq pd8(polar pn8 (* pi 1.5) 100))
				(setq pd9(polar pn9 (* pi 1.5) 100))
				(setq pd10(polar pn10 (* pi 1.5) 100))
				(setq pd11(polar pn11 (* pi 1.5) 100))
				(setq pd12(polar pn12 (* pi 1.5) 100))
				(setq pd13(polar pn13 (* pi 1.5) 100))
				(setq pd14(polar pn14 (* pi 1.5) 100))
				(setq pd15(polar pn15 (* pi 1.5) 100))
				
	  			(command "layer" "s" "S-GRID-DIM_50" "") (COMMAND "-DIMSTYLE" "R" "GRID DIMS 1-50")
	    			(command "dim" "hor" pd1 pd2 pd1 "") (command "exit" "") (setq dm2 (entlast))
				(command "dim" "hor" pd2 pd3 pd2 "") (command "exit" "") (setq dm3 (entlast))
				(command "dim" "hor" pd3 pd4 pd3 "") (command "exit" "") (setq dm4 (entlast))
				(command "dim" "hor" pd4 pd5 pd4 "") (command "exit" "") (setq dm5 (entlast))
				(command "dim" "hor" pd5 pd6 pd5 "") (command "exit" "") (setq dm6 (entlast))
				(command "dim" "hor" pd6 pd7 pd6 "") (command "exit" "") (setq dm7 (entlast))
				(command "dim" "hor" pd7 pd8 pd7 "") (command "exit" "") (setq dm8 (entlast))
				(command "dim" "hor" pd8 pd9 pd8 "") (command "exit" "") (setq dm9 (entlast))
				(command "dim" "hor" pd9 pd10 pd9 "") (command "exit" "") (setq dm10 (entlast))
				(command "dim" "hor" pd10 pd11 pd10 "") (command "exit" "") (setq dm11 (entlast))
				(command "dim" "hor" pd11 pd12 pd11 "") (command "exit" "") (setq dm12 (entlast))
				(command "dim" "hor" pd12 pd13 pd12 "") (command "exit" "") (setq dm13 (entlast))
				(command "dim" "hor" pd13 pd14 pd13 "") (command "exit" "") (setq dm14 (entlast))
				(command "dim" "hor" pd14 pd15 pd14 "") (command "exit" "") (setq dm15 (entlast))
					
		
				(command "layer" "s" "S-GRID" "")
				(command "line" po1 pn1 "")(command "chprop" "l" "" "S" "250" "")(setq ln1(entlast)) 
				(command "line" po2 pn2 "")(command "chprop" "l" "" "S" "250" "")(setq ln2(entlast))
				(command "line" po3 pn3 "")(command "chprop" "l" "" "S" "250" "")(setq ln3(entlast))
				(command "line" po4 pn4 "")(command "chprop" "l" "" "S" "250" "")(setq ln4(entlast))
				(command "line" po5 pn5 "")(command "chprop" "l" "" "S" "250" "")(setq ln5(entlast))
				(command "line" po6 pn6 "")(command "chprop" "l" "" "S" "250" "")(setq ln6(entlast))
				(command "line" po7 pn7 "")(command "chprop" "l" "" "S" "250" "")(setq ln7(entlast))
				(command "line" po8 pn8 "")(command "chprop" "l" "" "S" "250" "")(setq ln8(entlast))
				(command "line" po9 pn9 "")(command "chprop" "l" "" "S" "250" "")(setq ln9(entlast))
				(command "line" po10 pn10 "")(command "chprop" "l" "" "S" "250" "")(setq ln10(entlast))
				(command "line" po11 pn11 "")(command "chprop" "l" "" "S" "250" "")(setq ln11(entlast))
				(command "line" po12 pn12 "")(command "chprop" "l" "" "S" "250" "")(setq ln12(entlast))
				(command "line" po13 pn13 "")(command "chprop" "l" "" "S" "250" "")(setq ln13(entlast))
				(command "line" po14 pn14 "")(command "chprop" "l" "" "S" "250" "")(setq ln14(entlast))
				(command "line" po15 pn15 "")(command "chprop" "l" "" "S" "250" "")(setq ln15(entlast))


	;			 				
				(initget "2.B 2.C 2.D 2.E 2.F 2.G C.A 2.H 2.I 2.J 2.K 2.L 2.M 2.N")
				(progn
				  
				(setq delo (getkword "\nSpecify the end of grid [2.B/2.C/2.D/2.E/2.F/2.G/C.A/2.H/2.I/2.J/2.K/2.L/2.M/2.N]: "))
				(if (= delo "2.B")
					(progn
						(entdel ln3)(entdel tx3)(entdel dm3)
					  	(entdel ln4)(entdel tx4)(entdel dm4)
					  	(entdel ln5)(entdel tx5)(entdel dm5)
					  	(entdel ln6)(entdel tx6)(entdel dm6)
					  	(entdel ln7)(entdel tx7)(entdel dm7)
					  	(entdel ln8)(entdel tx8)(entdel dm8)
					  	(entdel ln9)(entdel tx9)(entdel dm9)
					  	(entdel ln10)(entdel tx10)(entdel dm10)
						(entdel ln11)(entdel tx11)(entdel dm11)
					  	(entdel ln12)(entdel tx12)(entdel dm12)
					  	(entdel ln13)(entdel tx13)(entdel dm13)
					  	(entdel ln14)(entdel tx14)(entdel dm14)
					  	(entdel ln15)(entdel tx15)(entdel dm15)
					)
				)
				(if (= delo "2.C")
					(progn
					  	(entdel ln4)(entdel tx4)(entdel dm4)
					  	(entdel ln5)(entdel tx5)(entdel dm5)
					  	(entdel ln6)(entdel tx6)(entdel dm6)
					  	(entdel ln7)(entdel tx7)(entdel dm7)
					  	(entdel ln8)(entdel tx8)(entdel dm8)
					  	(entdel ln9)(entdel tx9)(entdel dm9)
					  	(entdel ln10)(entdel tx10)(entdel dm10)
						(entdel ln11)(entdel tx11)(entdel dm11)
					  	(entdel ln12)(entdel tx12)(entdel dm12)
					  	(entdel ln13)(entdel tx13)(entdel dm13)
					  	(entdel ln14)(entdel tx14)(entdel dm14)
					  	(entdel ln15)(entdel tx15)(entdel dm15)
					)
				)
				(if (= delo "2.D")
					(progn
					  	
					  	(entdel ln5)(entdel tx5)(entdel dm5)
					  	(entdel ln6)(entdel tx6)(entdel dm6)
					  	(entdel ln7)(entdel tx7)(entdel dm7)
					  	(entdel ln8)(entdel tx8)(entdel dm8)
					  	(entdel ln9)(entdel tx9)(entdel dm9)
					  	(entdel ln10)(entdel tx10)(entdel dm10)
						(entdel ln11)(entdel tx11)(entdel dm11)
					  	(entdel ln12)(entdel tx12)(entdel dm12)
					  	(entdel ln13)(entdel tx13)(entdel dm13)
					  	(entdel ln14)(entdel tx14)(entdel dm14)
					  	(entdel ln15)(entdel tx15)(entdel dm15)
					)
				)
				(if (= delo "2.E")
					(progn
					  	(entdel ln6)(entdel tx6)(entdel dm6)
					  	(entdel ln7)(entdel tx7)(entdel dm7)
					  	(entdel ln8)(entdel tx8)(entdel dm8)
					  	(entdel ln9)(entdel tx9)(entdel dm9)
					  	(entdel ln10)(entdel tx10)(entdel dm10)
						(entdel ln11)(entdel tx11)(entdel dm11)
					  	(entdel ln12)(entdel tx12)(entdel dm12)
					  	(entdel ln13)(entdel tx13)(entdel dm13)
					  	(entdel ln14)(entdel tx14)(entdel dm14)
					  	(entdel ln15)(entdel tx15)(entdel dm15)
					)
				)
				(if (= delo "2.F")
					(progn
					  	(entdel ln7)(entdel tx7)(entdel dm7)
					  	(entdel ln8)(entdel tx8)(entdel dm8)
					  	(entdel ln9)(entdel tx9)(entdel dm9)
					  	(entdel ln10)(entdel tx10)(entdel dm10)
						(entdel ln11)(entdel tx11)(entdel dm11)
					  	(entdel ln12)(entdel tx12)(entdel dm12)
					  	(entdel ln13)(entdel tx13)(entdel dm13)
					  	(entdel ln14)(entdel tx14)(entdel dm14)
					  	(entdel ln15)(entdel tx15)(entdel dm15)
					)
				)
				(if (= delo "2.G")
					(progn
					  	(entdel ln8)(entdel tx8)(entdel dm8)
					  	(entdel ln9)(entdel tx9)(entdel dm9)
					  	(entdel ln10)(entdel tx10)(entdel dm10)
						(entdel ln11)(entdel tx11)(entdel dm11)
					  	(entdel ln12)(entdel tx12)(entdel dm12)
					  	(entdel ln13)(entdel tx13)(entdel dm13)
					  	(entdel ln14)(entdel tx14)(entdel dm14)
					  	(entdel ln15)(entdel tx15)(entdel dm15)
					)
				)
				(if (= delo "C.A")
					(progn
					  	(entdel ln9)(entdel tx9)(entdel dm9)
					  	(entdel ln10)(entdel tx10)(entdel dm10)
						(entdel ln11)(entdel tx11)(entdel dm11)
					  	(entdel ln12)(entdel tx12)(entdel dm12)
					  	(entdel ln13)(entdel tx13)(entdel dm13)
					  	(entdel ln14)(entdel tx14)(entdel dm14)
					  	(entdel ln15)(entdel tx15)(entdel dm15)
					)
				)
				(if (= delo "2.H")
					(progn
					  	(entdel ln10)(entdel tx10)(entdel dm10)
						(entdel ln11)(entdel tx11)(entdel dm11)
					  	(entdel ln12)(entdel tx12)(entdel dm12)
					  	(entdel ln13)(entdel tx13)(entdel dm13)
					  	(entdel ln14)(entdel tx14)(entdel dm14)
					  	(entdel ln15)(entdel tx15)(entdel dm15)
					)
				)
				(if (= delo "2.I")
					(progn
					  	(entdel ln11)(entdel tx11)(entdel dm11)
					  	(entdel ln12)(entdel tx12)(entdel dm12)
					  	(entdel ln13)(entdel tx13)(entdel dm13)
					  	(entdel ln14)(entdel tx14)(entdel dm14)
					  	(entdel ln15)(entdel tx15)(entdel dm15)
					)
				)
				(if (= delo "2.J")
					(progn
					  	(entdel ln12)(entdel tx12)(entdel dm12)
					  	(entdel ln13)(entdel tx13)(entdel dm13)
					  	(entdel ln14)(entdel tx14)(entdel dm14)
					  	(entdel ln15)(entdel tx15)(entdel dm15)
					)
				)
				(if (= delo "2.K")
					(progn
					  	(entdel ln13)(entdel tx13)(entdel dm13)
					  	(entdel ln14)(entdel tx14)(entdel dm14)
					  	(entdel ln15)(entdel tx15)(entdel dm15)
					)
				)
				(if (= delo "2.L")
					(progn
					  	(entdel ln14)(entdel tx14)(entdel dm14)
					  	(entdel ln15)(entdel tx15)(entdel dm15)
					)
				)
				(if (= delo "2.M")
					(progn
					  	(entdel ln15)(entdel tx15)(entdel dm15)
					)
				)


				)
				
				)
		
			)
	;;;;;																			
		  	(if (= proj "2.B")
				(progn

				(setq pt2(polar pt1 0 5525))
				(setq pt3(polar pt1 0 11200))
				(setq pt4(polar pt1 0 15850))
				(setq pt5(polar pt1 0 18525))
				(setq pt6(polar pt1 0 21425))
				(setq pt7(polar pt1 0 23225))
				(setq pt8(polar pt1 0 25025))
				(setq pt9(polar pt1 0 27925))
				(setq pt10(polar pt1 0 30600))
				(setq pt11(polar pt1 0 35250))
				(setq pt12(polar pt1 0 40925))
				(setq pt13(polar pt1 0 46450))
				(setq pt14(polar pt1 0 50050))

					
				
				(setq pn1(polar pt1 (/ pi 2) 1050))
				(setq pn2(polar pt2 (/ pi 2) 1050))
				(setq pn3(polar pt3 (/ pi 2) 1050))
				(setq pn4(polar pt4 (/ pi 2) 1050))
				(setq pn5(polar pt5 (/ pi 2) 1050))
				(setq pn6(polar pt6 (/ pi 2) 1050))
				(setq pn7(polar pt7 (/ pi 2) 1050))
				(setq pn8(polar pt8 (/ pi 2) 1050))
				(setq pn9(polar pt9 (/ pi 2) 1050))
				(setq pn10(polar pt10 (/ pi 2) 1050))
				(setq pn11(polar pt11 (/ pi 2) 1050))
				(setq pn12(polar pt12 (/ pi 2) 1050))
				(setq pn13(polar pt13 (/ pi 2) 1050))
				(setq pn14(polar pt14 (/ pi 2) 1050))
			
				

				(setq po1(polar pt1 (* pi 1.5) 1700))
				(setq po2(polar pt2 (* pi 1.5) 1700))
				(setq po3(polar pt3 (* pi 1.5) 1700))
				(setq po4(polar pt4 (* pi 1.5) 1700))
				(setq po5(polar pt5 (* pi 1.5) 1700))
				(setq po6(polar pt6 (* pi 1.5) 1700))
				(setq po7(polar pt7 (* pi 1.5) 1700))
				(setq po8(polar pt8 (* pi 1.5) 1700))
				(setq po9(polar pt9 (* pi 1.5) 1700))
				(setq po10(polar pt10 (* pi 1.5) 1700))
				(setq po11(polar pt11 (* pi 1.5) 1700))
				(setq po12(polar pt12 (* pi 1.5) 1700))
				(setq po13(polar pt13 (* pi 1.5) 1700))
				(setq po14(polar pt14 (* pi 1.5) 1700))
			

				
				(setq pm1(polar pn1 (/ pi 2) 238))
				(setq pm2(polar pn2 (/ pi 2) 238))
				(setq pm3(polar pn3 (/ pi 2) 238))
				(setq pm4(polar pn4 (/ pi 2) 238))
				(setq pm5(polar pn5 (/ pi 2) 238))
				(setq pm6(polar pn6 (/ pi 2) 238))
				(setq pm7(polar pn7 (/ pi 2) 238))
				(setq pm8(polar pn8 (/ pi 2) 238))
				(setq pm9(polar pn9 (/ pi 2) 238))
				(setq pm10(polar pn10 (/ pi 2) 238))
				(setq pm11(polar pn11 (/ pi 2) 238))
				(setq pm12(polar pn12 (/ pi 2) 238))
				(setq pm13(polar pn13 (/ pi 2) 238))
				(setq pm14(polar pn14 (/ pi 2) 238))
			
				
		
				
				(command "layer" "s" "S-SYM_50" "")
				(COMMAND "INSERT" "S-GRID_BUB_50" pm1 "" "" "" "2.B" )(setq tx1 (entlast))
				(COMMAND "INSERT" "S-GRID_BUB_50" pm2 "" "" "" "2.C" )(setq tx2 (entlast))
				(COMMAND "INSERT" "S-GRID_BUB_50" pm3 "" "" "" "2.D" )(setq tx3 (entlast))
				(COMMAND "INSERT" "S-GRID_BUB_50" pm4 "" "" "" "2.E" )(setq tx4 (entlast))
				(COMMAND "INSERT" "S-GRID_BUB_50" pm5 "" "" "" "2.F" )(setq tx5 (entlast))
				(COMMAND "INSERT" "S-GRID_BUB_50" pm6 "" "" "" "2.G" )(setq tx6 (entlast))
				(COMMAND "INSERT" "S-GRID_BUB_50" pm7 "" "" "" "C.A" )(setq tx7 (entlast))
				(COMMAND "INSERT" "S-GRID_BUB_50" pm8 "" "" "" "2.H" )(setq tx8 (entlast))
				(COMMAND "INSERT" "S-GRID_BUB_50" pm9 "" "" "" "2.I" )(setq tx9 (entlast))
				(COMMAND "INSERT" "S-GRID_BUB_50" pm10 "" "" "" "2.I" )(setq tx10 (entlast))
				(COMMAND "INSERT" "S-GRID_BUB_50" pm11 "" "" "" "2.K" )(setq tx11 (entlast))
				(COMMAND "INSERT" "S-GRID_BUB_50" pm12 "" "" "" "2.L" )(setq tx12 (entlast))
				(COMMAND "INSERT" "S-GRID_BUB_50" pm13 "" "" "" "2.M" )(setq tx13 (entlast))
				(COMMAND "INSERT" "S-GRID_BUB_50" pm14 "" "" "" "2.N" )(setq tx14 (entlast))
			
			


				(setq pd1(polar pn1 (* pi 1.5) 100))
				(setq pd2(polar pn2 (* pi 1.5) 100))
				(setq pd3(polar pn3 (* pi 1.5) 100))
				(setq pd4(polar pn4 (* pi 1.5) 100))
				(setq pd5(polar pn5 (* pi 1.5) 100))
				(setq pd6(polar pn6 (* pi 1.5) 100))
				(setq pd7(polar pn7 (* pi 1.5) 100))
				(setq pd8(polar pn8 (* pi 1.5) 100))
				(setq pd9(polar pn9 (* pi 1.5) 100))
				(setq pd10(polar pn10 (* pi 1.5) 100))
				(setq pd11(polar pn11 (* pi 1.5) 100))
				(setq pd12(polar pn12 (* pi 1.5) 100))
				(setq pd13(polar pn13 (* pi 1.5) 100))
				(setq pd14(polar pn14 (* pi 1.5) 100))
		
				
	  			(command "layer" "s" "S-GRID-DIM_50" "") (COMMAND "-DIMSTYLE" "R" "GRID DIMS 1-50")
	    			(command "dim" "hor" pd1 pd2 pd1 "") (command "exit" "") (setq dm2 (entlast))
				(command "dim" "hor" pd2 pd3 pd2 "") (command "exit" "") (setq dm3 (entlast))
				(command "dim" "hor" pd3 pd4 pd3 "") (command "exit" "") (setq dm4 (entlast))
				(command "dim" "hor" pd4 pd5 pd4 "") (command "exit" "") (setq dm5 (entlast))
				(command "dim" "hor" pd5 pd6 pd5 "") (command "exit" "") (setq dm6 (entlast))
				(command "dim" "hor" pd6 pd7 pd6 "") (command "exit" "") (setq dm7 (entlast))
				(command "dim" "hor" pd7 pd8 pd7 "") (command "exit" "") (setq dm8 (entlast))
				(command "dim" "hor" pd8 pd9 pd8 "") (command "exit" "") (setq dm9 (entlast))
				(command "dim" "hor" pd9 pd10 pd9 "") (command "exit" "") (setq dm10 (entlast))
				(command "dim" "hor" pd10 pd11 pd10 "") (command "exit" "") (setq dm11 (entlast))
				(command "dim" "hor" pd11 pd12 pd11 "") (command "exit" "") (setq dm12 (entlast))
				(command "dim" "hor" pd12 pd13 pd12 "") (command "exit" "") (setq dm13 (entlast))
				(command "dim" "hor" pd13 pd14 pd13 "") (command "exit" "") (setq dm14 (entlast))
			
					
		
				(command "layer" "s" "S-GRID" "")
				(command "line" po1 pn1 "")(command "chprop" "l" "" "S" "250" "")(setq ln1(entlast)) 
				(command "line" po2 pn2 "")(command "chprop" "l" "" "S" "250" "")(setq ln2(entlast))
				(command "line" po3 pn3 "")(command "chprop" "l" "" "S" "250" "")(setq ln3(entlast))
				(command "line" po4 pn4 "")(command "chprop" "l" "" "S" "250" "")(setq ln4(entlast))
				(command "line" po5 pn5 "")(command "chprop" "l" "" "S" "250" "")(setq ln5(entlast))
				(command "line" po6 pn6 "")(command "chprop" "l" "" "S" "250" "")(setq ln6(entlast))
				(command "line" po7 pn7 "")(command "chprop" "l" "" "S" "250" "")(setq ln7(entlast))
				(command "line" po8 pn8 "")(command "chprop" "l" "" "S" "250" "")(setq ln8(entlast))
				(command "line" po9 pn9 "")(command "chprop" "l" "" "S" "250" "")(setq ln9(entlast))
				(command "line" po10 pn10 "")(command "chprop" "l" "" "S" "250" "")(setq ln10(entlast))
				(command "line" po11 pn11 "")(command "chprop" "l" "" "S" "250" "")(setq ln11(entlast))
				(command "line" po12 pn12 "")(command "chprop" "l" "" "S" "250" "")(setq ln12(entlast))
				(command "line" po13 pn13 "")(command "chprop" "l" "" "S" "250" "")(setq ln13(entlast))
				(command "line" po14 pn14 "")(command "chprop" "l" "" "S" "250" "")(setq ln14(entlast))
			


	;			 				
				(initget "2.C 2.D 2.E 2.F 2.G C.A 2.H 2.I 2.J 2.K 2.L 2.M 2.N")
				(progn
				  
				(setq delo (getkword "\nSpecify the end of grid [2.C/2.D/2.E/2.F/2.G/C.A/2.H/2.I/2.J/2.K/2.L/2.M/2.N]: "))
				(if (= delo "2.C")
					(progn
						(entdel ln3)(entdel tx3)(entdel dm3)
					  	(entdel ln4)(entdel tx4)(entdel dm4)
					  	(entdel ln5)(entdel tx5)(entdel dm5)
					  	(entdel ln6)(entdel tx6)(entdel dm6)
					  	(entdel ln7)(entdel tx7)(entdel dm7)
					  	(entdel ln8)(entdel tx8)(entdel dm8)
					  	(entdel ln9)(entdel tx9)(entdel dm9)
					  	(entdel ln10)(entdel tx10)(entdel dm10)
						(entdel ln11)(entdel tx11)(entdel dm11)
					  	(entdel ln12)(entdel tx12)(entdel dm12)
					  	(entdel ln13)(entdel tx13)(entdel dm13)
					  	(entdel ln14)(entdel tx14)(entdel dm14)
				
					)
				)
				(if (= delo "2.D")
					(progn
					  	(entdel ln4)(entdel tx4)(entdel dm4)
					  	(entdel ln5)(entdel tx5)(entdel dm5)
					  	(entdel ln6)(entdel tx6)(entdel dm6)
					  	(entdel ln7)(entdel tx7)(entdel dm7)
					  	(entdel ln8)(entdel tx8)(entdel dm8)
					  	(entdel ln9)(entdel tx9)(entdel dm9)
					  	(entdel ln10)(entdel tx10)(entdel dm10)
						(entdel ln11)(entdel tx11)(entdel dm11)
					  	(entdel ln12)(entdel tx12)(entdel dm12)
					  	(entdel ln13)(entdel tx13)(entdel dm13)
					  	(entdel ln14)(entdel tx14)(entdel dm14)
					  
					)
				)
				(if (= delo "2.E")
					(progn
					  	
					  	(entdel ln5)(entdel tx5)(entdel dm5)
					  	(entdel ln6)(entdel tx6)(entdel dm6)
					  	(entdel ln7)(entdel tx7)(entdel dm7)
					  	(entdel ln8)(entdel tx8)(entdel dm8)
					  	(entdel ln9)(entdel tx9)(entdel dm9)
					  	(entdel ln10)(entdel tx10)(entdel dm10)
						(entdel ln11)(entdel tx11)(entdel dm11)
					  	(entdel ln12)(entdel tx12)(entdel dm12)
					  	(entdel ln13)(entdel tx13)(entdel dm13)
					  	(entdel ln14)(entdel tx14)(entdel dm14)
					  
					)
				)
				(if (= delo "2.F")
					(progn
					  	(entdel ln6)(entdel tx6)(entdel dm6)
					  	(entdel ln7)(entdel tx7)(entdel dm7)
					  	(entdel ln8)(entdel tx8)(entdel dm8)
					  	(entdel ln9)(entdel tx9)(entdel dm9)
					  	(entdel ln10)(entdel tx10)(entdel dm10)
						(entdel ln11)(entdel tx11)(entdel dm11)
					  	(entdel ln12)(entdel tx12)(entdel dm12)
					  	(entdel ln13)(entdel tx13)(entdel dm13)
					  	(entdel ln14)(entdel tx14)(entdel dm14)
					  
					)
				)
				(if (= delo "2.G")
					(progn
					  	(entdel ln7)(entdel tx7)(entdel dm7)
					  	(entdel ln8)(entdel tx8)(entdel dm8)
					  	(entdel ln9)(entdel tx9)(entdel dm9)
					  	(entdel ln10)(entdel tx10)(entdel dm10)
						(entdel ln11)(entdel tx11)(entdel dm11)
					  	(entdel ln12)(entdel tx12)(entdel dm12)
					  	(entdel ln13)(entdel tx13)(entdel dm13)
					  	(entdel ln14)(entdel tx14)(entdel dm14)
					  
					)
				)
				(if (= delo "C.A")
					(progn
					  	(entdel ln8)(entdel tx8)(entdel dm8)
					  	(entdel ln9)(entdel tx9)(entdel dm9)
					  	(entdel ln10)(entdel tx10)(entdel dm10)
						(entdel ln11)(entdel tx11)(entdel dm11)
					  	(entdel ln12)(entdel tx12)(entdel dm12)
					  	(entdel ln13)(entdel tx13)(entdel dm13)
					  	(entdel ln14)(entdel tx14)(entdel dm14)
					  
					)
				)
				(if (= delo "2.H")
					(progn
					  	(entdel ln9)(entdel tx9)(entdel dm9)
					  	(entdel ln10)(entdel tx10)(entdel dm10)
						(entdel ln11)(entdel tx11)(entdel dm11)
					  	(entdel ln12)(entdel tx12)(entdel dm12)
					  	(entdel ln13)(entdel tx13)(entdel dm13)
					  	(entdel ln14)(entdel tx14)(entdel dm14)
					  
					)
				)
				(if (= delo "2.I")
					(progn
					  	(entdel ln10)(entdel tx10)(entdel dm10)
						(entdel ln11)(entdel tx11)(entdel dm11)
					  	(entdel ln12)(entdel tx12)(entdel dm12)
					  	(entdel ln13)(entdel tx13)(entdel dm13)
					  	(entdel ln14)(entdel tx14)(entdel dm14)
					  
					)
				)
				(if (= delo "2.J")
					(progn
					  	(entdel ln11)(entdel tx11)(entdel dm11)
					  	(entdel ln12)(entdel tx12)(entdel dm12)
					  	(entdel ln13)(entdel tx13)(entdel dm13)
					  	(entdel ln14)(entdel tx14)(entdel dm14)
					  
					)
				)
				(if (= delo "2.K")
					(progn
					  	(entdel ln12)(entdel tx12)(entdel dm12)
					  	(entdel ln13)(entdel tx13)(entdel dm13)
					  	(entdel ln14)(entdel tx14)(entdel dm14)
					 
					)
				)
				(if (= delo "2.L")
					(progn
					  	(entdel ln13)(entdel tx13)(entdel dm13)
					  	(entdel ln14)(entdel tx14)(entdel dm14)
					 
					)
				)
				(if (= delo "2.M")
					(progn
					  	(entdel ln14)(entdel tx14)(entdel dm14)
					
					)
				)


				)
				
				)
		
			)

	;;;;;						
			(if (= proj "2.C")
				(progn

				(setq pt2(polar pt1 0 5675))
				(setq pt3(polar pt1 0 10325))
				(setq pt4(polar pt1 0 13000))
				(setq pt5(polar pt1 0 15900))
				(setq pt6(polar pt1 0 17700))
				(setq pt7(polar pt1 0 19500))
				(setq pt8(polar pt1 0 22400))
				(setq pt9(polar pt1 0 25075))
				(setq pt10(polar pt1 0 29725))
				(setq pt11(polar pt1 0 35400))
				(setq pt12(polar pt1 0 40925))
				(setq pt13(polar pt1 0 44525))

				
				
				(setq pn1(polar pt1 (/ pi 2) 1050))
				(setq pn2(polar pt2 (/ pi 2) 1050))
				(setq pn3(polar pt3 (/ pi 2) 1050))
				(setq pn4(polar pt4 (/ pi 2) 1050))
				(setq pn5(polar pt5 (/ pi 2) 1050))
				(setq pn6(polar pt6 (/ pi 2) 1050))
				(setq pn7(polar pt7 (/ pi 2) 1050))
				(setq pn8(polar pt8 (/ pi 2) 1050))
				(setq pn9(polar pt9 (/ pi 2) 1050))
				(setq pn10(polar pt10 (/ pi 2) 1050))
				(setq pn11(polar pt11 (/ pi 2) 1050))
				(setq pn12(polar pt12 (/ pi 2) 1050))
				(setq pn13(polar pt13 (/ pi 2) 1050))
				
				

				(setq po1(polar pt1 (* pi 1.5) 1700))
				(setq po2(polar pt2 (* pi 1.5) 1700))
				(setq po3(polar pt3 (* pi 1.5) 1700))
				(setq po4(polar pt4 (* pi 1.5) 1700))
				(setq po5(polar pt5 (* pi 1.5) 1700))
				(setq po6(polar pt6 (* pi 1.5) 1700))
				(setq po7(polar pt7 (* pi 1.5) 1700))
				(setq po8(polar pt8 (* pi 1.5) 1700))
				(setq po9(polar pt9 (* pi 1.5) 1700))
				(setq po10(polar pt10 (* pi 1.5) 1700))
				(setq po11(polar pt11 (* pi 1.5) 1700))
				(setq po12(polar pt12 (* pi 1.5) 1700))
				(setq po13(polar pt13 (* pi 1.5) 1700))
				

				
				(setq pm1(polar pn1 (/ pi 2) 238))
				(setq pm2(polar pn2 (/ pi 2) 238))
				(setq pm3(polar pn3 (/ pi 2) 238))
				(setq pm4(polar pn4 (/ pi 2) 238))
				(setq pm5(polar pn5 (/ pi 2) 238))
				(setq pm6(polar pn6 (/ pi 2) 238))
				(setq pm7(polar pn7 (/ pi 2) 238))
				(setq pm8(polar pn8 (/ pi 2) 238))
				(setq pm9(polar pn9 (/ pi 2) 238))
				(setq pm10(polar pn10 (/ pi 2) 238))
				(setq pm11(polar pn11 (/ pi 2) 238))
				(setq pm12(polar pn12 (/ pi 2) 238))
				(setq pm13(polar pn13 (/ pi 2) 238))
				
		
				
				(command "layer" "s" "S-SYM_50" "")
				(COMMAND "INSERT" "S-GRID_BUB_50" pm1 "" "" "" "2.C" )(setq tx1 (entlast))
				(COMMAND "INSERT" "S-GRID_BUB_50" pm2 "" "" "" "2.D" )(setq tx2 (entlast))
				(COMMAND "INSERT" "S-GRID_BUB_50" pm3 "" "" "" "2.E" )(setq tx3 (entlast))
				(COMMAND "INSERT" "S-GRID_BUB_50" pm4 "" "" "" "2.F" )(setq tx4 (entlast))
				(COMMAND "INSERT" "S-GRID_BUB_50" pm5 "" "" "" "2.G" )(setq tx5 (entlast))
				(COMMAND "INSERT" "S-GRID_BUB_50" pm6 "" "" "" "C.A" )(setq tx6 (entlast))
				(COMMAND "INSERT" "S-GRID_BUB_50" pm7 "" "" "" "2.H" )(setq tx7 (entlast))
				(COMMAND "INSERT" "S-GRID_BUB_50" pm8 "" "" "" "2.I" )(setq tx8 (entlast))
				(COMMAND "INSERT" "S-GRID_BUB_50" pm9 "" "" "" "2.J" )(setq tx9 (entlast))
				(COMMAND "INSERT" "S-GRID_BUB_50" pm10 "" "" "" "2.K" )(setq tx10 (entlast))
				(COMMAND "INSERT" "S-GRID_BUB_50" pm11 "" "" "" "2.L" )(setq tx11 (entlast))
				(COMMAND "INSERT" "S-GRID_BUB_50" pm12 "" "" "" "2.M" )(setq tx12 (entlast))
				(COMMAND "INSERT" "S-GRID_BUB_50" pm13 "" "" "" "2.N" )(setq tx13 (entlast))
				

				(setq pd1(polar pn1 (* pi 1.5) 100))
				(setq pd2(polar pn2 (* pi 1.5) 100))
				(setq pd3(polar pn3 (* pi 1.5) 100))
				(setq pd4(polar pn4 (* pi 1.5) 100))
				(setq pd5(polar pn5 (* pi 1.5) 100))
				(setq pd6(polar pn6 (* pi 1.5) 100))
				(setq pd7(polar pn7 (* pi 1.5) 100))
				(setq pd8(polar pn8 (* pi 1.5) 100))
				(setq pd9(polar pn9 (* pi 1.5) 100))
				(setq pd10(polar pn10 (* pi 1.5) 100))
				(setq pd11(polar pn11 (* pi 1.5) 100))
				(setq pd12(polar pn12 (* pi 1.5) 100))
				(setq pd13(polar pn13 (* pi 1.5) 100))
				
				
	  			(command "layer" "s" "S-GRID-DIM_50" "") (COMMAND "-DIMSTYLE" "R" "GRID DIMS 1-50")
	    			(command "dim" "hor" pd1 pd2 pd1 "") (command "exit" "") (setq dm2 (entlast))
				(command "dim" "hor" pd2 pd3 pd2 "") (command "exit" "") (setq dm3 (entlast))
				(command "dim" "hor" pd3 pd4 pd3 "") (command "exit" "") (setq dm4 (entlast))
				(command "dim" "hor" pd4 pd5 pd4 "") (command "exit" "") (setq dm5 (entlast))
				(command "dim" "hor" pd5 pd6 pd5 "") (command "exit" "") (setq dm6 (entlast))
				(command "dim" "hor" pd6 pd7 pd6 "") (command "exit" "") (setq dm7 (entlast))
				(command "dim" "hor" pd7 pd8 pd7 "") (command "exit" "") (setq dm8 (entlast))
				(command "dim" "hor" pd8 pd9 pd8 "") (command "exit" "") (setq dm9 (entlast))
				(command "dim" "hor" pd9 pd10 pd9 "") (command "exit" "") (setq dm10 (entlast))
				(command "dim" "hor" pd10 pd11 pd10 "") (command "exit" "") (setq dm11 (entlast))
				(command "dim" "hor" pd11 pd12 pd11 "") (command "exit" "") (setq dm12 (entlast))
				(command "dim" "hor" pd12 pd13 pd12 "") (command "exit" "") (setq dm13 (entlast))
				
			
					
		
				(command "layer" "s" "S-GRID" "")
				(command "line" po1 pn1 "")(command "chprop" "l" "" "S" "250" "")(setq ln1(entlast)) 
				(command "line" po2 pn2 "")(command "chprop" "l" "" "S" "250" "")(setq ln2(entlast))
				(command "line" po3 pn3 "")(command "chprop" "l" "" "S" "250" "")(setq ln3(entlast))
				(command "line" po4 pn4 "")(command "chprop" "l" "" "S" "250" "")(setq ln4(entlast))
				(command "line" po5 pn5 "")(command "chprop" "l" "" "S" "250" "")(setq ln5(entlast))
				(command "line" po6 pn6 "")(command "chprop" "l" "" "S" "250" "")(setq ln6(entlast))
				(command "line" po7 pn7 "")(command "chprop" "l" "" "S" "250" "")(setq ln7(entlast))
				(command "line" po8 pn8 "")(command "chprop" "l" "" "S" "250" "")(setq ln8(entlast))
				(command "line" po9 pn9 "")(command "chprop" "l" "" "S" "250" "")(setq ln9(entlast))
				(command "line" po10 pn10 "")(command "chprop" "l" "" "S" "250" "")(setq ln10(entlast))
				(command "line" po11 pn11 "")(command "chprop" "l" "" "S" "250" "")(setq ln11(entlast))
				(command "line" po12 pn12 "")(command "chprop" "l" "" "S" "250" "")(setq ln12(entlast))
				(command "line" po13 pn13 "")(command "chprop" "l" "" "S" "250" "")(setq ln13(entlast))
				
			


	;			 				
				(initget "2.D 2.E 2.F 2.G C.A 2.H 2.I 2.J 2.K 2.L 2.M 2.N")
				(progn
				  
				(setq delo (getkword "\nSpecify the end of grid [2.D/2.E/2.F/2.G/C.A/2.H/2.I/2.J/2.K/2.L/2.M/2.N]: "))
				(if (= delo "2.D")
					(progn
						(entdel ln3)(entdel tx3)(entdel dm3)
					  	(entdel ln4)(entdel tx4)(entdel dm4)
					  	(entdel ln5)(entdel tx5)(entdel dm5)
					  	(entdel ln6)(entdel tx6)(entdel dm6)
					  	(entdel ln7)(entdel tx7)(entdel dm7)
					  	(entdel ln8)(entdel tx8)(entdel dm8)
					  	(entdel ln9)(entdel tx9)(entdel dm9)
					  	(entdel ln10)(entdel tx10)(entdel dm10)
						(entdel ln11)(entdel tx11)(entdel dm11)
					  	(entdel ln12)(entdel tx12)(entdel dm12)
					  	(entdel ln13)(entdel tx13)(entdel dm13)
					  	
				
					)
				)
				(if (= delo "2.E")
					(progn
					  	(entdel ln4)(entdel tx4)(entdel dm4)
					  	(entdel ln5)(entdel tx5)(entdel dm5)
					  	(entdel ln6)(entdel tx6)(entdel dm6)
					  	(entdel ln7)(entdel tx7)(entdel dm7)
					  	(entdel ln8)(entdel tx8)(entdel dm8)
					  	(entdel ln9)(entdel tx9)(entdel dm9)
					  	(entdel ln10)(entdel tx10)(entdel dm10)
						(entdel ln11)(entdel tx11)(entdel dm11)
					  	(entdel ln12)(entdel tx12)(entdel dm12)
					  	(entdel ln13)(entdel tx13)(entdel dm13)
					  	
					  
					)
				)
				(if (= delo "2.F")
					(progn
					  	
					  	(entdel ln5)(entdel tx5)(entdel dm5)
					  	(entdel ln6)(entdel tx6)(entdel dm6)
					  	(entdel ln7)(entdel tx7)(entdel dm7)
					  	(entdel ln8)(entdel tx8)(entdel dm8)
					  	(entdel ln9)(entdel tx9)(entdel dm9)
					  	(entdel ln10)(entdel tx10)(entdel dm10)
						(entdel ln11)(entdel tx11)(entdel dm11)
					  	(entdel ln12)(entdel tx12)(entdel dm12)
					  	(entdel ln13)(entdel tx13)(entdel dm13)
					  	
					  
					)
				)
				(if (= delo "2.G")
					(progn
					  	(entdel ln6)(entdel tx6)(entdel dm6)
					  	(entdel ln7)(entdel tx7)(entdel dm7)
					  	(entdel ln8)(entdel tx8)(entdel dm8)
					  	(entdel ln9)(entdel tx9)(entdel dm9)
					  	(entdel ln10)(entdel tx10)(entdel dm10)
						(entdel ln11)(entdel tx11)(entdel dm11)
					  	(entdel ln12)(entdel tx12)(entdel dm12)
					  	(entdel ln13)(entdel tx13)(entdel dm13)
					  	
					  
					)
				)
				(if (= delo "C.A")
					(progn
					  	(entdel ln7)(entdel tx7)(entdel dm7)
					  	(entdel ln8)(entdel tx8)(entdel dm8)
					  	(entdel ln9)(entdel tx9)(entdel dm9)
					  	(entdel ln10)(entdel tx10)(entdel dm10)
						(entdel ln11)(entdel tx11)(entdel dm11)
					  	(entdel ln12)(entdel tx12)(entdel dm12)
					  	(entdel ln13)(entdel tx13)(entdel dm13)
					  	
					)
				)
				(if (= delo "2.H")
					(progn
					  	(entdel ln8)(entdel tx8)(entdel dm8)
					  	(entdel ln9)(entdel tx9)(entdel dm9)
					  	(entdel ln10)(entdel tx10)(entdel dm10)
						(entdel ln11)(entdel tx11)(entdel dm11)
					  	(entdel ln12)(entdel tx12)(entdel dm12)
					  	(entdel ln13)(entdel tx13)(entdel dm13)
					  	
					)
				)
				(if (= delo "2.I")
					(progn
					  	(entdel ln9)(entdel tx9)(entdel dm9)
					  	(entdel ln10)(entdel tx10)(entdel dm10)
						(entdel ln11)(entdel tx11)(entdel dm11)
					  	(entdel ln12)(entdel tx12)(entdel dm12)
					  	(entdel ln13)(entdel tx13)(entdel dm13)
					  	
					)
				)
				(if (= delo "2.J")
					(progn
					  	(entdel ln10)(entdel tx10)(entdel dm10)
						(entdel ln11)(entdel tx11)(entdel dm11)
					  	(entdel ln12)(entdel tx12)(entdel dm12)
					  	(entdel ln13)(entdel tx13)(entdel dm13)
					  	
					)
				)
				(if (= delo "2.K")
					(progn
					  	(entdel ln11)(entdel tx11)(entdel dm11)
					  	(entdel ln12)(entdel tx12)(entdel dm12)
					  	(entdel ln13)(entdel tx13)(entdel dm13)
					  	
					)
				)
				(if (= delo "2.L")
					(progn
					  	(entdel ln12)(entdel tx12)(entdel dm12)
					  	(entdel ln13)(entdel tx13)(entdel dm13)
					  	
					)
				)
				(if (= delo "2.M")
					(progn
					  	(entdel ln13)(entdel tx13)(entdel dm13)
					  	
					)
				)

				)
				
				)
		
			)

	;;;;;					  
			(if (= proj "2.D")
				(progn

				(setq pt2(polar pt1 0 4650))
				(setq pt3(polar pt1 0 7325))
				(setq pt4(polar pt1 0 10225))
				(setq pt5(polar pt1 0 12025))
				(setq pt6(polar pt1 0 13825))
				(setq pt7(polar pt1 0 16725))
				(setq pt8(polar pt1 0 19400))
				(setq pt9(polar pt1 0 24050))
				(setq pt10(polar pt1 0 29725))
				(setq pt11(polar pt1 0 35250))
				(setq pt12(polar pt1 0 38850))

			
				(setq pn1(polar pt1 (/ pi 2) 1050))
				(setq pn2(polar pt2 (/ pi 2) 1050))
				(setq pn3(polar pt3 (/ pi 2) 1050))
				(setq pn4(polar pt4 (/ pi 2) 1050))
				(setq pn5(polar pt5 (/ pi 2) 1050))
				(setq pn6(polar pt6 (/ pi 2) 1050))
				(setq pn7(polar pt7 (/ pi 2) 1050))
				(setq pn8(polar pt8 (/ pi 2) 1050))
				(setq pn9(polar pt9 (/ pi 2) 1050))
				(setq pn10(polar pt10 (/ pi 2) 1050))
				(setq pn11(polar pt11 (/ pi 2) 1050))
				(setq pn12(polar pt12 (/ pi 2) 1050))
				
				
				

				(setq po1(polar pt1 (* pi 1.5) 1700))
				(setq po2(polar pt2 (* pi 1.5) 1700))
				(setq po3(polar pt3 (* pi 1.5) 1700))
				(setq po4(polar pt4 (* pi 1.5) 1700))
				(setq po5(polar pt5 (* pi 1.5) 1700))
				(setq po6(polar pt6 (* pi 1.5) 1700))
				(setq po7(polar pt7 (* pi 1.5) 1700))
				(setq po8(polar pt8 (* pi 1.5) 1700))
				(setq po9(polar pt9 (* pi 1.5) 1700))
				(setq po10(polar pt10 (* pi 1.5) 1700))
				(setq po11(polar pt11 (* pi 1.5) 1700))
				(setq po12(polar pt12 (* pi 1.5) 1700))
			
				

				
				(setq pm1(polar pn1 (/ pi 2) 238))
				(setq pm2(polar pn2 (/ pi 2) 238))
				(setq pm3(polar pn3 (/ pi 2) 238))
				(setq pm4(polar pn4 (/ pi 2) 238))
				(setq pm5(polar pn5 (/ pi 2) 238))
				(setq pm6(polar pn6 (/ pi 2) 238))
				(setq pm7(polar pn7 (/ pi 2) 238))
				(setq pm8(polar pn8 (/ pi 2) 238))
				(setq pm9(polar pn9 (/ pi 2) 238))
				(setq pm10(polar pn10 (/ pi 2) 238))
				(setq pm11(polar pn11 (/ pi 2) 238))
				(setq pm12(polar pn12 (/ pi 2) 238))
			
				
		
				
				(command "layer" "s" "S-SYM_50" "")
				(COMMAND "INSERT" "S-GRID_BUB_50" pm1 "" "" "" "2.D" )(setq tx1 (entlast))
				(COMMAND "INSERT" "S-GRID_BUB_50" pm2 "" "" "" "2.E" )(setq tx2 (entlast))
				(COMMAND "INSERT" "S-GRID_BUB_50" pm3 "" "" "" "2.F" )(setq tx3 (entlast))
				(COMMAND "INSERT" "S-GRID_BUB_50" pm4 "" "" "" "2.G" )(setq tx4 (entlast))
				(COMMAND "INSERT" "S-GRID_BUB_50" pm5 "" "" "" "C.A" )(setq tx5 (entlast))
				(COMMAND "INSERT" "S-GRID_BUB_50" pm6 "" "" "" "2.H" )(setq tx6 (entlast))
				(COMMAND "INSERT" "S-GRID_BUB_50" pm7 "" "" "" "2.I" )(setq tx7 (entlast))
				(COMMAND "INSERT" "S-GRID_BUB_50" pm8 "" "" "" "2.J" )(setq tx8 (entlast))
				(COMMAND "INSERT" "S-GRID_BUB_50" pm9 "" "" "" "2.K" )(setq tx9 (entlast))
				(COMMAND "INSERT" "S-GRID_BUB_50" pm10 "" "" "" "2.L" )(setq tx10 (entlast))
				(COMMAND "INSERT" "S-GRID_BUB_50" pm11 "" "" "" "2.M" )(setq tx11 (entlast))
				(COMMAND "INSERT" "S-GRID_BUB_50" pm12 "" "" "" "2.N" )(setq tx12 (entlast))
			
				

				(setq pd1(polar pn1 (* pi 1.5) 100))
				(setq pd2(polar pn2 (* pi 1.5) 100))
				(setq pd3(polar pn3 (* pi 1.5) 100))
				(setq pd4(polar pn4 (* pi 1.5) 100))
				(setq pd5(polar pn5 (* pi 1.5) 100))
				(setq pd6(polar pn6 (* pi 1.5) 100))
				(setq pd7(polar pn7 (* pi 1.5) 100))
				(setq pd8(polar pn8 (* pi 1.5) 100))
				(setq pd9(polar pn9 (* pi 1.5) 100))
				(setq pd10(polar pn10 (* pi 1.5) 100))
				(setq pd11(polar pn11 (* pi 1.5) 100))
				(setq pd12(polar pn12 (* pi 1.5) 100))
			
				
				
	  			(command "layer" "s" "S-GRID-DIM_50" "") (COMMAND "-DIMSTYLE" "R" "GRID DIMS 1-50")
	    			(command "dim" "hor" pd1 pd2 pd1 "") (command "exit" "") (setq dm2 (entlast))
				(command "dim" "hor" pd2 pd3 pd2 "") (command "exit" "") (setq dm3 (entlast))
				(command "dim" "hor" pd3 pd4 pd3 "") (command "exit" "") (setq dm4 (entlast))
				(command "dim" "hor" pd4 pd5 pd4 "") (command "exit" "") (setq dm5 (entlast))
				(command "dim" "hor" pd5 pd6 pd5 "") (command "exit" "") (setq dm6 (entlast))
				(command "dim" "hor" pd6 pd7 pd6 "") (command "exit" "") (setq dm7 (entlast))
				(command "dim" "hor" pd7 pd8 pd7 "") (command "exit" "") (setq dm8 (entlast))
				(command "dim" "hor" pd8 pd9 pd8 "") (command "exit" "") (setq dm9 (entlast))
				(command "dim" "hor" pd9 pd10 pd9 "") (command "exit" "") (setq dm10 (entlast))
				(command "dim" "hor" pd10 pd11 pd10 "") (command "exit" "") (setq dm11 (entlast))
				(command "dim" "hor" pd11 pd12 pd11 "") (command "exit" "") (setq dm12 (entlast))
			
				
			
					
		
				(command "layer" "s" "S-GRID" "")
				(command "line" po1 pn1 "")(command "chprop" "l" "" "S" "250" "")(setq ln1(entlast)) 
				(command "line" po2 pn2 "")(command "chprop" "l" "" "S" "250" "")(setq ln2(entlast))
				(command "line" po3 pn3 "")(command "chprop" "l" "" "S" "250" "")(setq ln3(entlast))
				(command "line" po4 pn4 "")(command "chprop" "l" "" "S" "250" "")(setq ln4(entlast))
				(command "line" po5 pn5 "")(command "chprop" "l" "" "S" "250" "")(setq ln5(entlast))
				(command "line" po6 pn6 "")(command "chprop" "l" "" "S" "250" "")(setq ln6(entlast))
				(command "line" po7 pn7 "")(command "chprop" "l" "" "S" "250" "")(setq ln7(entlast))
				(command "line" po8 pn8 "")(command "chprop" "l" "" "S" "250" "")(setq ln8(entlast))
				(command "line" po9 pn9 "")(command "chprop" "l" "" "S" "250" "")(setq ln9(entlast))
				(command "line" po10 pn10 "")(command "chprop" "l" "" "S" "250" "")(setq ln10(entlast))
				(command "line" po11 pn11 "")(command "chprop" "l" "" "S" "250" "")(setq ln11(entlast))
				(command "line" po12 pn12 "")(command "chprop" "l" "" "S" "250" "")(setq ln12(entlast))
			
				
			


	;			 				
				(initget "2.E 2.F 2.G C.A 2.H 2.I 2.J 2.K 2.L 2.M 2.N")
				(progn
				  
				(setq delo (getkword "\nSpecify the end of grid [2.E/2.F/2.G/C.A/2.H/2.I/2.J/2.K/2.L/2.M/2.N]: "))
				(if (= delo "2.E")
					(progn
						(entdel ln3)(entdel tx3)(entdel dm3)
					  	(entdel ln4)(entdel tx4)(entdel dm4)
					  	(entdel ln5)(entdel tx5)(entdel dm5)
					  	(entdel ln6)(entdel tx6)(entdel dm6)
					  	(entdel ln7)(entdel tx7)(entdel dm7)
					  	(entdel ln8)(entdel tx8)(entdel dm8)
					  	(entdel ln9)(entdel tx9)(entdel dm9)
					  	(entdel ln10)(entdel tx10)(entdel dm10)
						(entdel ln11)(entdel tx11)(entdel dm11)
					  	(entdel ln12)(entdel tx12)(entdel dm12)
					  
					  	
				
					)
				)
				(if (= delo "2.F")
					(progn
					  	(entdel ln4)(entdel tx4)(entdel dm4)
					  	(entdel ln5)(entdel tx5)(entdel dm5)
					  	(entdel ln6)(entdel tx6)(entdel dm6)
					  	(entdel ln7)(entdel tx7)(entdel dm7)
					  	(entdel ln8)(entdel tx8)(entdel dm8)
					  	(entdel ln9)(entdel tx9)(entdel dm9)
					  	(entdel ln10)(entdel tx10)(entdel dm10)
						(entdel ln11)(entdel tx11)(entdel dm11)
					  	(entdel ln12)(entdel tx12)(entdel dm12)
					  
					  	
					  
					)
				)
				(if (= delo "2.G")
					(progn
					  	
					  	(entdel ln5)(entdel tx5)(entdel dm5)
					  	(entdel ln6)(entdel tx6)(entdel dm6)
					  	(entdel ln7)(entdel tx7)(entdel dm7)
					  	(entdel ln8)(entdel tx8)(entdel dm8)
					  	(entdel ln9)(entdel tx9)(entdel dm9)
					  	(entdel ln10)(entdel tx10)(entdel dm10)
						(entdel ln11)(entdel tx11)(entdel dm11)
					  	(entdel ln12)(entdel tx12)(entdel dm12)
					  
					  	
					  
					)
				)
				(if (= delo "C.A")
					(progn
					  	(entdel ln6)(entdel tx6)(entdel dm6)
					  	(entdel ln7)(entdel tx7)(entdel dm7)
					  	(entdel ln8)(entdel tx8)(entdel dm8)
					  	(entdel ln9)(entdel tx9)(entdel dm9)
					  	(entdel ln10)(entdel tx10)(entdel dm10)
						(entdel ln11)(entdel tx11)(entdel dm11)
					  	(entdel ln12)(entdel tx12)(entdel dm12)
				
					  	
					  
					)
				)
				(if (= delo "2.H")
					(progn
					  	(entdel ln7)(entdel tx7)(entdel dm7)
					  	(entdel ln8)(entdel tx8)(entdel dm8)
					  	(entdel ln9)(entdel tx9)(entdel dm9)
					  	(entdel ln10)(entdel tx10)(entdel dm10)
						(entdel ln11)(entdel tx11)(entdel dm11)
					  	(entdel ln12)(entdel tx12)(entdel dm12)
					  
					  	
					)
				)
				(if (= delo "2.I")
					(progn
					  	(entdel ln8)(entdel tx8)(entdel dm8)
					  	(entdel ln9)(entdel tx9)(entdel dm9)
					  	(entdel ln10)(entdel tx10)(entdel dm10)
						(entdel ln11)(entdel tx11)(entdel dm11)
					  	(entdel ln12)(entdel tx12)(entdel dm12)
					  
					  	
					)
				)
				(if (= delo "2.J")
					(progn
					  	(entdel ln9)(entdel tx9)(entdel dm9)
					  	(entdel ln10)(entdel tx10)(entdel dm10)
						(entdel ln11)(entdel tx11)(entdel dm11)
					  	(entdel ln12)(entdel tx12)(entdel dm12)
					  
					  	
					)
				)
				(if (= delo "2.K")
					(progn
					  	(entdel ln10)(entdel tx10)(entdel dm10)
						(entdel ln11)(entdel tx11)(entdel dm11)
					  	(entdel ln12)(entdel tx12)(entdel dm12)
				
					  	
					)
				)
				(if (= delo "2.L")
					(progn
					  	(entdel ln11)(entdel tx11)(entdel dm11)
					  	(entdel ln12)(entdel tx12)(entdel dm12)
					  
					  	
					)
				)
				(if (= delo "2.M")
					(progn
					  	(entdel ln12)(entdel tx12)(entdel dm12)
				
					  	
					)
				)
				
				)
				
				)
		
			)



	;;;;;							
			(if (= proj "2.E")
				(progn

				(setq pt2(polar pt1 0 2675))
				(setq pt3(polar pt1 0 5575))
				(setq pt4(polar pt1 0 7375))
				(setq pt5(polar pt1 0 9175))
				(setq pt6(polar pt1 0 12075))
				(setq pt7(polar pt1 0 14750))
				(setq pt8(polar pt1 0 19400))
				(setq pt9(polar pt1 0 25075))
				(setq pt10(polar pt1 0 30600))
				(setq pt11(polar pt1 0 34200))

				
				(setq pn1(polar pt1 (/ pi 2) 1050))
				(setq pn2(polar pt2 (/ pi 2) 1050))
				(setq pn3(polar pt3 (/ pi 2) 1050))
				(setq pn4(polar pt4 (/ pi 2) 1050))
				(setq pn5(polar pt5 (/ pi 2) 1050))
				(setq pn6(polar pt6 (/ pi 2) 1050))
				(setq pn7(polar pt7 (/ pi 2) 1050))
				(setq pn8(polar pt8 (/ pi 2) 1050))
				(setq pn9(polar pt9 (/ pi 2) 1050))
				(setq pn10(polar pt10 (/ pi 2) 1050))
				(setq pn11(polar pt11 (/ pi 2) 1050))
			
				
				
				

				(setq po1(polar pt1 (* pi 1.5) 1700))
				(setq po2(polar pt2 (* pi 1.5) 1700))
				(setq po3(polar pt3 (* pi 1.5) 1700))
				(setq po4(polar pt4 (* pi 1.5) 1700))
				(setq po5(polar pt5 (* pi 1.5) 1700))
				(setq po6(polar pt6 (* pi 1.5) 1700))
				(setq po7(polar pt7 (* pi 1.5) 1700))
				(setq po8(polar pt8 (* pi 1.5) 1700))
				(setq po9(polar pt9 (* pi 1.5) 1700))
				(setq po10(polar pt10 (* pi 1.5) 1700))
				(setq po11(polar pt11 (* pi 1.5) 1700))
			
			
				

				
				(setq pm1(polar pn1 (/ pi 2) 238))
				(setq pm2(polar pn2 (/ pi 2) 238))
				(setq pm3(polar pn3 (/ pi 2) 238))
				(setq pm4(polar pn4 (/ pi 2) 238))
				(setq pm5(polar pn5 (/ pi 2) 238))
				(setq pm6(polar pn6 (/ pi 2) 238))
				(setq pm7(polar pn7 (/ pi 2) 238))
				(setq pm8(polar pn8 (/ pi 2) 238))
				(setq pm9(polar pn9 (/ pi 2) 238))
				(setq pm10(polar pn10 (/ pi 2) 238))
				(setq pm11(polar pn11 (/ pi 2) 238))
			
			
				
		
				
				(command "layer" "s" "S-SYM_50" "")
				(COMMAND "INSERT" "S-GRID_BUB_50" pm1 "" "" "" "E" )(setq tx1 (entlast))
				(COMMAND "INSERT" "S-GRID_BUB_50" pm2 "" "" "" "F" )(setq tx2 (entlast))
				(COMMAND "INSERT" "S-GRID_BUB_50" pm3 "" "" "" "G" )(setq tx3 (entlast))
				(COMMAND "INSERT" "S-GRID_BUB_50" pm4 "" "" "" "H" )(setq tx4 (entlast))
				(COMMAND "INSERT" "S-GRID_BUB_50" pm5 "" "" "" "I" )(setq tx5 (entlast))
				(COMMAND "INSERT" "S-GRID_BUB_50" pm6 "" "" "" "J" )(setq tx6 (entlast))
				(COMMAND "INSERT" "S-GRID_BUB_50" pm7 "" "" "" "K" )(setq tx7 (entlast))
				(COMMAND "INSERT" "S-GRID_BUB_50" pm8 "" "" "" "L" )(setq tx8 (entlast))
				(COMMAND "INSERT" "S-GRID_BUB_50" pm9 "" "" "" "M" )(setq tx9 (entlast))
				(COMMAND "INSERT" "S-GRID_BUB_50" pm10 "" "" "" "N" )(setq tx10 (entlast))
				(COMMAND "INSERT" "S-GRID_BUB_50" pm11 "" "" "" "O" )(setq tx11 (entlast))
			
			
				

				(setq pd1(polar pn1 (* pi 1.5) 100))
				(setq pd2(polar pn2 (* pi 1.5) 100))
				(setq pd3(polar pn3 (* pi 1.5) 100))
				(setq pd4(polar pn4 (* pi 1.5) 100))
				(setq pd5(polar pn5 (* pi 1.5) 100))
				(setq pd6(polar pn6 (* pi 1.5) 100))
				(setq pd7(polar pn7 (* pi 1.5) 100))
				(setq pd8(polar pn8 (* pi 1.5) 100))
				(setq pd9(polar pn9 (* pi 1.5) 100))
				(setq pd10(polar pn10 (* pi 1.5) 100))
				(setq pd11(polar pn11 (* pi 1.5) 100))
		
			
				
				
	  			(command "layer" "s" "S-GRID-DIM_50" "") (COMMAND "-DIMSTYLE" "R" "GRID DIMS 1-50")
	    			(command "dim" "hor" pd1 pd2 pd1 "") (command "exit" "") (setq dm2 (entlast))
				(command "dim" "hor" pd2 pd3 pd2 "") (command "exit" "") (setq dm3 (entlast))
				(command "dim" "hor" pd3 pd4 pd3 "") (command "exit" "") (setq dm4 (entlast))
				(command "dim" "hor" pd4 pd5 pd4 "") (command "exit" "") (setq dm5 (entlast))
				(command "dim" "hor" pd5 pd6 pd5 "") (command "exit" "") (setq dm6 (entlast))
				(command "dim" "hor" pd6 pd7 pd6 "") (command "exit" "") (setq dm7 (entlast))
				(command "dim" "hor" pd7 pd8 pd7 "") (command "exit" "") (setq dm8 (entlast))
				(command "dim" "hor" pd8 pd9 pd8 "") (command "exit" "") (setq dm9 (entlast))
				(command "dim" "hor" pd9 pd10 pd9 "") (command "exit" "") (setq dm10 (entlast))
				(command "dim" "hor" pd10 pd11 pd10 "") (command "exit" "") (setq dm11 (entlast))
			
			
				
			
					
		
				(command "layer" "s" "S-GRID" "")
				(command "line" po1 pn1 "")(command "chprop" "l" "" "S" "250" "")(setq ln1(entlast)) 
				(command "line" po2 pn2 "")(command "chprop" "l" "" "S" "250" "")(setq ln2(entlast))
				(command "line" po3 pn3 "")(command "chprop" "l" "" "S" "250" "")(setq ln3(entlast))
				(command "line" po4 pn4 "")(command "chprop" "l" "" "S" "250" "")(setq ln4(entlast))
				(command "line" po5 pn5 "")(command "chprop" "l" "" "S" "250" "")(setq ln5(entlast))
				(command "line" po6 pn6 "")(command "chprop" "l" "" "S" "250" "")(setq ln6(entlast))
				(command "line" po7 pn7 "")(command "chprop" "l" "" "S" "250" "")(setq ln7(entlast))
				(command "line" po8 pn8 "")(command "chprop" "l" "" "S" "250" "")(setq ln8(entlast))
				(command "line" po9 pn9 "")(command "chprop" "l" "" "S" "250" "")(setq ln9(entlast))
				(command "line" po10 pn10 "")(command "chprop" "l" "" "S" "250" "")(setq ln10(entlast))
				(command "line" po11 pn11 "")(command "chprop" "l" "" "S" "250" "")(setq ln11(entlast))
			
			
				
			


	;			 				
				(initget "2.F 2.G C.A 2.H 2.I 2.J 2.K 2.L 2.M 2.N")
				(progn
				  
				(setq delo (getkword "\nSpecify the end of grid [2.F/2.G/C.A/2.H/2.I/2.J/2.K/2.L/2.M/2.N]: "))
				(if (= delo "2.F")
					(progn
						(entdel ln3)(entdel tx3)(entdel dm3)
					  	(entdel ln4)(entdel tx4)(entdel dm4)
					  	(entdel ln5)(entdel tx5)(entdel dm5)
					  	(entdel ln6)(entdel tx6)(entdel dm6)
					  	(entdel ln7)(entdel tx7)(entdel dm7)
					  	(entdel ln8)(entdel tx8)(entdel dm8)
					  	(entdel ln9)(entdel tx9)(entdel dm9)
					  	(entdel ln10)(entdel tx10)(entdel dm10)
						(entdel ln11)(entdel tx11)(entdel dm11)
					  
					  
					  	
				
					)
				)
				(if (= delo "2.G")
					(progn
					  	(entdel ln4)(entdel tx4)(entdel dm4)
					  	(entdel ln5)(entdel tx5)(entdel dm5)
					  	(entdel ln6)(entdel tx6)(entdel dm6)
					  	(entdel ln7)(entdel tx7)(entdel dm7)
					  	(entdel ln8)(entdel tx8)(entdel dm8)
					  	(entdel ln9)(entdel tx9)(entdel dm9)
					  	(entdel ln10)(entdel tx10)(entdel dm10)
						(entdel ln11)(entdel tx11)(entdel dm11)
					  
					  
					  	
					  
					)
				)
				(if (= delo "C.A")
					(progn
					  	
					  	(entdel ln5)(entdel tx5)(entdel dm5)
					  	(entdel ln6)(entdel tx6)(entdel dm6)
					  	(entdel ln7)(entdel tx7)(entdel dm7)
					  	(entdel ln8)(entdel tx8)(entdel dm8)
					  	(entdel ln9)(entdel tx9)(entdel dm9)
					  	(entdel ln10)(entdel tx10)(entdel dm10)
						(entdel ln11)(entdel tx11)(entdel dm11)
					  
					  
					  	
					  
					)
				)
				(if (= delo "2.H")
					(progn
					  	(entdel ln6)(entdel tx6)(entdel dm6)
					  	(entdel ln7)(entdel tx7)(entdel dm7)
					  	(entdel ln8)(entdel tx8)(entdel dm8)
					  	(entdel ln9)(entdel tx9)(entdel dm9)
					  	(entdel ln10)(entdel tx10)(entdel dm10)
						(entdel ln11)(entdel tx11)(entdel dm11)
					  
				
					  	
					  
					)
				)
				(if (= delo "2.I")
					(progn
					  	(entdel ln7)(entdel tx7)(entdel dm7)
					  	(entdel ln8)(entdel tx8)(entdel dm8)
					  	(entdel ln9)(entdel tx9)(entdel dm9)
					  	(entdel ln10)(entdel tx10)(entdel dm10)
						(entdel ln11)(entdel tx11)(entdel dm11)
					 
					  
					  	
					)
				)
				(if (= delo "2.J")
					(progn
					  	(entdel ln8)(entdel tx8)(entdel dm8)
					  	(entdel ln9)(entdel tx9)(entdel dm9)
					  	(entdel ln10)(entdel tx10)(entdel dm10)
						(entdel ln11)(entdel tx11)(entdel dm11)
					  
					  
					  	
					)
				)
				(if (= delo "2.K")
					(progn
					  	(entdel ln9)(entdel tx9)(entdel dm9)
					  	(entdel ln10)(entdel tx10)(entdel dm10)
						(entdel ln11)(entdel tx11)(entdel dm11)
					  
					  
					  	
					)
				)
				(if (= delo "2.L")
					(progn
					  	(entdel ln10)(entdel tx10)(entdel dm10)
						(entdel ln11)(entdel tx11)(entdel dm11)
					  
				
					  	
					)
				)
				(if (= delo "2.M")
					(progn
					  	(entdel ln11)(entdel tx11)(entdel dm11)
					  
					  
					  	
					)
				)
				
				
				)
				
				)
		
			)
	;;;;;						
		(if (= proj "2.F")
				(progn

				(setq pt2(polar pt1 0 2900))
				(setq pt3(polar pt1 0 4700))
				(setq pt4(polar pt1 0 6500))
				(setq pt5(polar pt1 0 9400))
				(setq pt6(polar pt1 0 12075))
				(setq pt7(polar pt1 0 16725))
				(setq pt8(polar pt1 0 22400))
				(setq pt9(polar pt1 0 27925))
				(setq pt10(polar pt1 0 31525))

				
				(setq pn1(polar pt1 (/ pi 2) 1050))
				(setq pn2(polar pt2 (/ pi 2) 1050))
				(setq pn3(polar pt3 (/ pi 2) 1050))
				(setq pn4(polar pt4 (/ pi 2) 1050))
				(setq pn5(polar pt5 (/ pi 2) 1050))
				(setq pn6(polar pt6 (/ pi 2) 1050))
				(setq pn7(polar pt7 (/ pi 2) 1050))
				(setq pn8(polar pt8 (/ pi 2) 1050))
				(setq pn9(polar pt9 (/ pi 2) 1050))
				(setq pn10(polar pt10 (/ pi 2) 1050))
				
				(setq po1(polar pt1 (* pi 1.5) 1700))
				(setq po2(polar pt2 (* pi 1.5) 1700))
				(setq po3(polar pt3 (* pi 1.5) 1700))
				(setq po4(polar pt4 (* pi 1.5) 1700))
				(setq po5(polar pt5 (* pi 1.5) 1700))
				(setq po6(polar pt6 (* pi 1.5) 1700))
				(setq po7(polar pt7 (* pi 1.5) 1700))
				(setq po8(polar pt8 (* pi 1.5) 1700))
				(setq po9(polar pt9 (* pi 1.5) 1700))
				(setq po10(polar pt10 (* pi 1.5) 1700))
				
			
				
				(setq pm1(polar pn1 (/ pi 2) 238))
				(setq pm2(polar pn2 (/ pi 2) 238))
				(setq pm3(polar pn3 (/ pi 2) 238))
				(setq pm4(polar pn4 (/ pi 2) 238))
				(setq pm5(polar pn5 (/ pi 2) 238))
				(setq pm6(polar pn6 (/ pi 2) 238))
				(setq pm7(polar pn7 (/ pi 2) 238))
				(setq pm8(polar pn8 (/ pi 2) 238))
				(setq pm9(polar pn9 (/ pi 2) 238))
				(setq pm10(polar pn10 (/ pi 2) 238))
			
			
				
				(command "layer" "s" "S-SYM_50" "")
				(COMMAND "INSERT" "S-GRID_BUB_50" pm1 "" "" "" "2.F" )(setq tx1 (entlast))
				(COMMAND "INSERT" "S-GRID_BUB_50" pm2 "" "" "" "2.G" )(setq tx2 (entlast))
				(COMMAND "INSERT" "S-GRID_BUB_50" pm3 "" "" "" "C.A" )(setq tx3 (entlast))
				(COMMAND "INSERT" "S-GRID_BUB_50" pm4 "" "" "" "2.H" )(setq tx4 (entlast))
				(COMMAND "INSERT" "S-GRID_BUB_50" pm5 "" "" "" "2.I" )(setq tx5 (entlast))
				(COMMAND "INSERT" "S-GRID_BUB_50" pm6 "" "" "" "2.J" )(setq tx6 (entlast))
				(COMMAND "INSERT" "S-GRID_BUB_50" pm7 "" "" "" "2.K" )(setq tx7 (entlast))
				(COMMAND "INSERT" "S-GRID_BUB_50" pm8 "" "" "" "2.L" )(setq tx8 (entlast))
				(COMMAND "INSERT" "S-GRID_BUB_50" pm9 "" "" "" "2.M" )(setq tx9 (entlast))
				(COMMAND "INSERT" "S-GRID_BUB_50" pm10 "" "" "" "2.N" )(setq tx10 (entlast))
			

				(setq pd1(polar pn1 (* pi 1.5) 100))
				(setq pd2(polar pn2 (* pi 1.5) 100))
				(setq pd3(polar pn3 (* pi 1.5) 100))
				(setq pd4(polar pn4 (* pi 1.5) 100))
				(setq pd5(polar pn5 (* pi 1.5) 100))
				(setq pd6(polar pn6 (* pi 1.5) 100))
				(setq pd7(polar pn7 (* pi 1.5) 100))
				(setq pd8(polar pn8 (* pi 1.5) 100))
				(setq pd9(polar pn9 (* pi 1.5) 100))
				(setq pd10(polar pn10 (* pi 1.5) 100))
			
				
	  			(command "layer" "s" "S-GRID-DIM_50" "") (COMMAND "-DIMSTYLE" "R" "GRID DIMS 1-50")
	    			(command "dim" "hor" pd1 pd2 pd1 "") (command "exit" "") (setq dm2 (entlast))
				(command "dim" "hor" pd2 pd3 pd2 "") (command "exit" "") (setq dm3 (entlast))
				(command "dim" "hor" pd3 pd4 pd3 "") (command "exit" "") (setq dm4 (entlast))
				(command "dim" "hor" pd4 pd5 pd4 "") (command "exit" "") (setq dm5 (entlast))
				(command "dim" "hor" pd5 pd6 pd5 "") (command "exit" "") (setq dm6 (entlast))
				(command "dim" "hor" pd6 pd7 pd6 "") (command "exit" "") (setq dm7 (entlast))
				(command "dim" "hor" pd7 pd8 pd7 "") (command "exit" "") (setq dm8 (entlast))
				(command "dim" "hor" pd8 pd9 pd8 "") (command "exit" "") (setq dm9 (entlast))
				(command "dim" "hor" pd9 pd10 pd9 "") (command "exit" "") (setq dm10 (entlast))
					
		
				(command "layer" "s" "S-GRID" "")
				(command "line" po1 pn1 "")(command "chprop" "l" "" "S" "250" "")(setq ln1(entlast)) 
				(command "line" po2 pn2 "")(command "chprop" "l" "" "S" "250" "")(setq ln2(entlast))
				(command "line" po3 pn3 "")(command "chprop" "l" "" "S" "250" "")(setq ln3(entlast))
				(command "line" po4 pn4 "")(command "chprop" "l" "" "S" "250" "")(setq ln4(entlast))
				(command "line" po5 pn5 "")(command "chprop" "l" "" "S" "250" "")(setq ln5(entlast))
				(command "line" po6 pn6 "")(command "chprop" "l" "" "S" "250" "")(setq ln6(entlast))
				(command "line" po7 pn7 "")(command "chprop" "l" "" "S" "250" "")(setq ln7(entlast))
				(command "line" po8 pn8 "")(command "chprop" "l" "" "S" "250" "")(setq ln8(entlast))
				(command "line" po9 pn9 "")(command "chprop" "l" "" "S" "250" "")(setq ln9(entlast))
				(command "line" po10 pn10 "")(command "chprop" "l" "" "S" "250" "")(setq ln10(entlast))
			


	;			 				
				(initget "2.G C.A 2.H 2.I 2.J 2.K 2.L 2.M")
				(progn
				  
				(setq delo (getkword "\nSpecify the end of grid [2.G/C.A/2.H/2.I/2.J/2.K/2.L/2.M/2.N]: "))
				(if (= delo "2.G")
					(progn
						(entdel ln3)(entdel tx3)(entdel dm3)
					  	(entdel ln4)(entdel tx4)(entdel dm4)
					  	(entdel ln5)(entdel tx5)(entdel dm5)
					  	(entdel ln6)(entdel tx6)(entdel dm6)
					  	(entdel ln7)(entdel tx7)(entdel dm7)
					  	(entdel ln8)(entdel tx8)(entdel dm8)
					  	(entdel ln9)(entdel tx9)(entdel dm9)
					  	(entdel ln10)(entdel tx10)(entdel dm10)
						
				
					)
				)
				(if (= delo "C.A")
					(progn
					  	(entdel ln4)(entdel tx4)(entdel dm4)
					  	(entdel ln5)(entdel tx5)(entdel dm5)
					  	(entdel ln6)(entdel tx6)(entdel dm6)
					  	(entdel ln7)(entdel tx7)(entdel dm7)
					  	(entdel ln8)(entdel tx8)(entdel dm8)
					  	(entdel ln9)(entdel tx9)(entdel dm9)
					  	(entdel ln10)(entdel tx10)(entdel dm10)
					
					)
				)
				(if (= delo "2.H")
					(progn
					  	
					  	(entdel ln5)(entdel tx5)(entdel dm5)
					  	(entdel ln6)(entdel tx6)(entdel dm6)
					  	(entdel ln7)(entdel tx7)(entdel dm7)
					  	(entdel ln8)(entdel tx8)(entdel dm8)
					  	(entdel ln9)(entdel tx9)(entdel dm9)
					  	(entdel ln10)(entdel tx10)(entdel dm10)
					
					)
				)
				(if (= delo "2.I")
					(progn
					  	(entdel ln6)(entdel tx6)(entdel dm6)
					  	(entdel ln7)(entdel tx7)(entdel dm7)
					  	(entdel ln8)(entdel tx8)(entdel dm8)
					  	(entdel ln9)(entdel tx9)(entdel dm9)
					  	(entdel ln10)(entdel tx10)(entdel dm10)
						
					  
					)
				)
				(if (= delo "2.J")
					(progn
					  	(entdel ln7)(entdel tx7)(entdel dm7)
					  	(entdel ln8)(entdel tx8)(entdel dm8)
					  	(entdel ln9)(entdel tx9)(entdel dm9)
					  	(entdel ln10)(entdel tx10)(entdel dm10)
						
					)
				)
				(if (= delo "2.K")
					(progn
					  	(entdel ln8)(entdel tx8)(entdel dm8)
					  	(entdel ln9)(entdel tx9)(entdel dm9)
					  	(entdel ln10)(entdel tx10)(entdel dm10)
						
					)
				)
				(if (= delo "2.L")
					(progn
					  	(entdel ln9)(entdel tx9)(entdel dm9)
					  	(entdel ln10)(entdel tx10)(entdel dm10)
						
					)
				)
				(if (= delo "2.M")
					(progn
					  	(entdel ln10)(entdel tx10)(entdel dm10)
						
					)
				)
							
				)
				
				)
		
			)
			


		  
	;;;;;						
			(if (= proj "2.G")
				(progn

				(setq pt2(polar pt1 0 1800))
				(setq pt3(polar pt1 0 3600))
				(setq pt4(polar pt1 0 6500))
				(setq pt5(polar pt1 0 9175))
				(setq pt6(polar pt1 0 13825))
				(setq pt7(polar pt1 0 19500))
				(setq pt8(polar pt1 0 25025))
				(setq pt9(polar pt1 0 28625))

				
			
				(setq pn1(polar pt1 (/ pi 2) 1050))
				(setq pn2(polar pt2 (/ pi 2) 1050))
				(setq pn3(polar pt3 (/ pi 2) 1050))
				(setq pn4(polar pt4 (/ pi 2) 1050))
				(setq pn5(polar pt5 (/ pi 2) 1050))
				(setq pn6(polar pt6 (/ pi 2) 1050))
				(setq pn7(polar pt7 (/ pi 2) 1050))
				(setq pn8(polar pt8 (/ pi 2) 1050))
				(setq pn9(polar pt9 (/ pi 2) 1050))
				
				
				(setq po1(polar pt1 (* pi 1.5) 1700))
				(setq po2(polar pt2 (* pi 1.5) 1700))
				(setq po3(polar pt3 (* pi 1.5) 1700))
				(setq po4(polar pt4 (* pi 1.5) 1700))
				(setq po5(polar pt5 (* pi 1.5) 1700))
				(setq po6(polar pt6 (* pi 1.5) 1700))
				(setq po7(polar pt7 (* pi 1.5) 1700))
				(setq po8(polar pt8 (* pi 1.5) 1700))
				(setq po9(polar pt9 (* pi 1.5) 1700))
				
				
			
				
				(setq pm1(polar pn1 (/ pi 2) 238))
				(setq pm2(polar pn2 (/ pi 2) 238))
				(setq pm3(polar pn3 (/ pi 2) 238))
				(setq pm4(polar pn4 (/ pi 2) 238))
				(setq pm5(polar pn5 (/ pi 2) 238))
				(setq pm6(polar pn6 (/ pi 2) 238))
				(setq pm7(polar pn7 (/ pi 2) 238))
				(setq pm8(polar pn8 (/ pi 2) 238))
				(setq pm9(polar pn9 (/ pi 2) 238))
				
			
			
				
				(command "layer" "s" "S-SYM_50" "")
				(COMMAND "INSERT" "S-GRID_BUB_50" pm1 "" "" "" "2.G" )(setq tx1 (entlast))
				(COMMAND "INSERT" "S-GRID_BUB_50" pm2 "" "" "" "C.A" )(setq tx2 (entlast))
				(COMMAND "INSERT" "S-GRID_BUB_50" pm3 "" "" "" "2.H" )(setq tx3 (entlast))
				(COMMAND "INSERT" "S-GRID_BUB_50" pm4 "" "" "" "2.I" )(setq tx4 (entlast))
				(COMMAND "INSERT" "S-GRID_BUB_50" pm5 "" "" "" "2.J" )(setq tx5 (entlast))
				(COMMAND "INSERT" "S-GRID_BUB_50" pm6 "" "" "" "2.K" )(setq tx6 (entlast))
				(COMMAND "INSERT" "S-GRID_BUB_50" pm7 "" "" "" "2.L" )(setq tx7 (entlast))
				(COMMAND "INSERT" "S-GRID_BUB_50" pm8 "" "" "" "2.M" )(setq tx8 (entlast))
				(COMMAND "INSERT" "S-GRID_BUB_50" pm9 "" "" "" "2.N" )(setq tx9 (entlast))
				
			

				(setq pd1(polar pn1 (* pi 1.5) 100))
				(setq pd2(polar pn2 (* pi 1.5) 100))
				(setq pd3(polar pn3 (* pi 1.5) 100))
				(setq pd4(polar pn4 (* pi 1.5) 100))
				(setq pd5(polar pn5 (* pi 1.5) 100))
				(setq pd6(polar pn6 (* pi 1.5) 100))
				(setq pd7(polar pn7 (* pi 1.5) 100))
				(setq pd8(polar pn8 (* pi 1.5) 100))
				(setq pd9(polar pn9 (* pi 1.5) 100))
				
			
				
	  			(command "layer" "s" "S-GRID-DIM_50" "") (COMMAND "-DIMSTYLE" "R" "GRID DIMS 1-50")
	    			(command "dim" "hor" pd1 pd2 pd1 "") (command "exit" "") (setq dm2 (entlast))
				(command "dim" "hor" pd2 pd3 pd2 "") (command "exit" "") (setq dm3 (entlast))
				(command "dim" "hor" pd3 pd4 pd3 "") (command "exit" "") (setq dm4 (entlast))
				(command "dim" "hor" pd4 pd5 pd4 "") (command "exit" "") (setq dm5 (entlast))
				(command "dim" "hor" pd5 pd6 pd5 "") (command "exit" "") (setq dm6 (entlast))
				(command "dim" "hor" pd6 pd7 pd6 "") (command "exit" "") (setq dm7 (entlast))
				(command "dim" "hor" pd7 pd8 pd7 "") (command "exit" "") (setq dm8 (entlast))
				(command "dim" "hor" pd8 pd9 pd8 "") (command "exit" "") (setq dm9 (entlast))
			
					
		
				(command "layer" "s" "S-GRID" "")
				(command "line" po1 pn1 "")(command "chprop" "l" "" "S" "250" "")(setq ln1(entlast)) 
				(command "line" po2 pn2 "")(command "chprop" "l" "" "S" "250" "")(setq ln2(entlast))
				(command "line" po3 pn3 "")(command "chprop" "l" "" "S" "250" "")(setq ln3(entlast))
				(command "line" po4 pn4 "")(command "chprop" "l" "" "S" "250" "")(setq ln4(entlast))
				(command "line" po5 pn5 "")(command "chprop" "l" "" "S" "250" "")(setq ln5(entlast))
				(command "line" po6 pn6 "")(command "chprop" "l" "" "S" "250" "")(setq ln6(entlast))
				(command "line" po7 pn7 "")(command "chprop" "l" "" "S" "250" "")(setq ln7(entlast))
				(command "line" po8 pn8 "")(command "chprop" "l" "" "S" "250" "")(setq ln8(entlast))
				(command "line" po9 pn9 "")(command "chprop" "l" "" "S" "250" "")(setq ln9(entlast))
			
			


	;			 				
				(initget "C.A 2.H 2.I 2.J 2.K 2.L 2.M")
				(progn
				  
				(setq delo (getkword "\nSpecify the end of grid [C.A/2.H/2.I/2.J/2.K/2.L/2.M/2.N]: "))
				(if (= delo "C.A")
					(progn
						(entdel ln3)(entdel tx3)(entdel dm3)
					  	(entdel ln4)(entdel tx4)(entdel dm4)
					  	(entdel ln5)(entdel tx5)(entdel dm5)
					  	(entdel ln6)(entdel tx6)(entdel dm6)
					  	(entdel ln7)(entdel tx7)(entdel dm7)
					  	(entdel ln8)(entdel tx8)(entdel dm8)
					  	(entdel ln9)(entdel tx9)(entdel dm9)
					  	
						
					)
				)
				(if (= delo "2.H")
					(progn
					  	(entdel ln4)(entdel tx4)(entdel dm4)
					  	(entdel ln5)(entdel tx5)(entdel dm5)
					  	(entdel ln6)(entdel tx6)(entdel dm6)
					  	(entdel ln7)(entdel tx7)(entdel dm7)
					  	(entdel ln8)(entdel tx8)(entdel dm8)
					  	(entdel ln9)(entdel tx9)(entdel dm9)
					  	
					)
				)
				(if (= delo "2.I")
					(progn
					  	
					  	(entdel ln5)(entdel tx5)(entdel dm5)
					  	(entdel ln6)(entdel tx6)(entdel dm6)
					  	(entdel ln7)(entdel tx7)(entdel dm7)
					  	(entdel ln8)(entdel tx8)(entdel dm8)
					  	(entdel ln9)(entdel tx9)(entdel dm9)
					  	
					
					)
				)
				(if (= delo "2.J")
					(progn
					  	(entdel ln6)(entdel tx6)(entdel dm6)
					  	(entdel ln7)(entdel tx7)(entdel dm7)
					  	(entdel ln8)(entdel tx8)(entdel dm8)
					  	(entdel ln9)(entdel tx9)(entdel dm9)
					  	
					)
				)
				(if (= delo "2.K")
					(progn
					  	(entdel ln7)(entdel tx7)(entdel dm7)
					  	(entdel ln8)(entdel tx8)(entdel dm8)
					  	(entdel ln9)(entdel tx9)(entdel dm9)
					  		
					)
				)
				(if (= delo "2.L")
					(progn
					  	(entdel ln8)(entdel tx8)(entdel dm8)
					  	(entdel ln9)(entdel tx9)(entdel dm9)
					  	
					)
				)
				(if (= delo "2.M")
					(progn
					  	(entdel ln9)(entdel tx9)(entdel dm9)
					  	
					)
				)
									
				)
				
				)
		
			)
			
		  
	;;;;;								
			(if (= proj "C.A")
				(progn

				(setq pt2(polar pt1 0 1800))
				(setq pt3(polar pt1 0 4700))
				(setq pt4(polar pt1 0 7375))
				(setq pt5(polar pt1 0 12025))
				(setq pt6(polar pt1 0 17700))
				(setq pt7(polar pt1 0 23225))
				(setq pt8(polar pt1 0 26825))

			
				(setq pn1(polar pt1 (/ pi 2) 1050))
				(setq pn2(polar pt2 (/ pi 2) 1050))
				(setq pn3(polar pt3 (/ pi 2) 1050))
				(setq pn4(polar pt4 (/ pi 2) 1050))
				(setq pn5(polar pt5 (/ pi 2) 1050))
				(setq pn6(polar pt6 (/ pi 2) 1050))
				(setq pn7(polar pt7 (/ pi 2) 1050))
				(setq pn8(polar pt8 (/ pi 2) 1050))
				
				
				
				(setq po1(polar pt1 (* pi 1.5) 1700))
				(setq po2(polar pt2 (* pi 1.5) 1700))
				(setq po3(polar pt3 (* pi 1.5) 1700))
				(setq po4(polar pt4 (* pi 1.5) 1700))
				(setq po5(polar pt5 (* pi 1.5) 1700))
				(setq po6(polar pt6 (* pi 1.5) 1700))
				(setq po7(polar pt7 (* pi 1.5) 1700))
				(setq po8(polar pt8 (* pi 1.5) 1700))
				
				
				
			
				
				(setq pm1(polar pn1 (/ pi 2) 238))
				(setq pm2(polar pn2 (/ pi 2) 238))
				(setq pm3(polar pn3 (/ pi 2) 238))
				(setq pm4(polar pn4 (/ pi 2) 238))
				(setq pm5(polar pn5 (/ pi 2) 238))
				(setq pm6(polar pn6 (/ pi 2) 238))
				(setq pm7(polar pn7 (/ pi 2) 238))
				(setq pm8(polar pn8 (/ pi 2) 238))
				
				
			
			
				
				(command "layer" "s" "S-SYM_50" "")
				(COMMAND "INSERT" "S-GRID_BUB_50" pm1 "" "" "" "C.A" )(setq tx1 (entlast))
				(COMMAND "INSERT" "S-GRID_BUB_50" pm2 "" "" "" "2.H" )(setq tx2 (entlast))
				(COMMAND "INSERT" "S-GRID_BUB_50" pm3 "" "" "" "2.I" )(setq tx3 (entlast))
				(COMMAND "INSERT" "S-GRID_BUB_50" pm4 "" "" "" "2.J" )(setq tx4 (entlast))
				(COMMAND "INSERT" "S-GRID_BUB_50" pm5 "" "" "" "2.K" )(setq tx5 (entlast))
				(COMMAND "INSERT" "S-GRID_BUB_50" pm6 "" "" "" "2.L" )(setq tx6 (entlast))
				(COMMAND "INSERT" "S-GRID_BUB_50" pm7 "" "" "" "2.M" )(setq tx7 (entlast))
				(COMMAND "INSERT" "S-GRID_BUB_50" pm8 "" "" "" "2.N" )(setq tx8 (entlast))
				
				
			

				(setq pd1(polar pn1 (* pi 1.5) 100))
				(setq pd2(polar pn2 (* pi 1.5) 100))
				(setq pd3(polar pn3 (* pi 1.5) 100))
				(setq pd4(polar pn4 (* pi 1.5) 100))
				(setq pd5(polar pn5 (* pi 1.5) 100))
				(setq pd6(polar pn6 (* pi 1.5) 100))
				(setq pd7(polar pn7 (* pi 1.5) 100))
				(setq pd8(polar pn8 (* pi 1.5) 100))
				
				
			
				
	  			(command "layer" "s" "S-GRID-DIM_50" "") (COMMAND "-DIMSTYLE" "R" "GRID DIMS 1-50")
	    			(command "dim" "hor" pd1 pd2 pd1 "") (command "exit" "") (setq dm2 (entlast))
				(command "dim" "hor" pd2 pd3 pd2 "") (command "exit" "") (setq dm3 (entlast))
				(command "dim" "hor" pd3 pd4 pd3 "") (command "exit" "") (setq dm4 (entlast))
				(command "dim" "hor" pd4 pd5 pd4 "") (command "exit" "") (setq dm5 (entlast))
				(command "dim" "hor" pd5 pd6 pd5 "") (command "exit" "") (setq dm6 (entlast))
				(command "dim" "hor" pd6 pd7 pd6 "") (command "exit" "") (setq dm7 (entlast))
				(command "dim" "hor" pd7 pd8 pd7 "") (command "exit" "") (setq dm8 (entlast))
				
			
					
		
				(command "layer" "s" "S-GRID" "")
				(command "line" po1 pn1 "")(command "chprop" "l" "" "S" "250" "")(setq ln1(entlast)) 
				(command "line" po2 pn2 "")(command "chprop" "l" "" "S" "250" "")(setq ln2(entlast))
				(command "line" po3 pn3 "")(command "chprop" "l" "" "S" "250" "")(setq ln3(entlast))
				(command "line" po4 pn4 "")(command "chprop" "l" "" "S" "250" "")(setq ln4(entlast))
				(command "line" po5 pn5 "")(command "chprop" "l" "" "S" "250" "")(setq ln5(entlast))
				(command "line" po6 pn6 "")(command "chprop" "l" "" "S" "250" "")(setq ln6(entlast))
				(command "line" po7 pn7 "")(command "chprop" "l" "" "S" "250" "")(setq ln7(entlast))
				(command "line" po8 pn8 "")(command "chprop" "l" "" "S" "250" "")(setq ln8(entlast))
				
			

	;			 				
				(initget "2.H 2.I 2.J 2.K 2.L 2.M")
				(progn
				  
				(setq delo (getkword "\nSpecify the end of grid [2.H/2.I/2.J/2.K/2.L/2.M/2.N]: "))
				(if (= delo "2.H")
					(progn
						(entdel ln3)(entdel tx3)(entdel dm3)
					  	(entdel ln4)(entdel tx4)(entdel dm4)
					  	(entdel ln5)(entdel tx5)(entdel dm5)
					  	(entdel ln6)(entdel tx6)(entdel dm6)
					  	(entdel ln7)(entdel tx7)(entdel dm7)
					  	(entdel ln8)(entdel tx8)(entdel dm8)
					  	
					)
				)
				(if (= delo "2.I")
					(progn
					  	(entdel ln4)(entdel tx4)(entdel dm4)
					  	(entdel ln5)(entdel tx5)(entdel dm5)
					  	(entdel ln6)(entdel tx6)(entdel dm6)
					  	(entdel ln7)(entdel tx7)(entdel dm7)
					  	(entdel ln8)(entdel tx8)(entdel dm8)
					  	
					  	
					)
				)
				(if (= delo "2.J")
					(progn
					  	
					  	(entdel ln5)(entdel tx5)(entdel dm5)
					  	(entdel ln6)(entdel tx6)(entdel dm6)
					  	(entdel ln7)(entdel tx7)(entdel dm7)
					  	(entdel ln8)(entdel tx8)(entdel dm8)
					  	
					  	
					
					)
				)
				(if (= delo "2.K")
					(progn
					  	(entdel ln6)(entdel tx6)(entdel dm6)
					  	(entdel ln7)(entdel tx7)(entdel dm7)
					  	(entdel ln8)(entdel tx8)(entdel dm8)
					  	
					  	
					)
				)
				(if (= delo "2.L")
					(progn
					  	(entdel ln7)(entdel tx7)(entdel dm7)
					  	(entdel ln8)(entdel tx8)(entdel dm8)
					  	
					  		
					)
				)
				(if (= delo "2.M")
					(progn
					  	(entdel ln8)(entdel tx8)(entdel dm8)
					  	
					  	
					)
				)
												
				)
				
				)
		
			)

		  

	;;;;;;;						
			(if (= proj "2.H")
				(progn

				(setq pt2(polar pt1 0 2900))
				(setq pt3(polar pt1 0 5575))
				(setq pt4(polar pt1 0 10225))
				(setq pt5(polar pt1 0 15900))
				(setq pt6(polar pt1 0 21425))
				(setq pt7(polar pt1 0 25025))

			
				(setq pn1(polar pt1 (/ pi 2) 1050))
				(setq pn2(polar pt2 (/ pi 2) 1050))
				(setq pn3(polar pt3 (/ pi 2) 1050))
				(setq pn4(polar pt4 (/ pi 2) 1050))
				(setq pn5(polar pt5 (/ pi 2) 1050))
				(setq pn6(polar pt6 (/ pi 2) 1050))
				(setq pn7(polar pt7 (/ pi 2) 1050))
						
				
				
				(setq po1(polar pt1 (* pi 1.5) 1700))
				(setq po2(polar pt2 (* pi 1.5) 1700))
				(setq po3(polar pt3 (* pi 1.5) 1700))
				(setq po4(polar pt4 (* pi 1.5) 1700))
				(setq po5(polar pt5 (* pi 1.5) 1700))
				(setq po6(polar pt6 (* pi 1.5) 1700))
				(setq po7(polar pt7 (* pi 1.5) 1700))
				
				
				
				
			
				
				(setq pm1(polar pn1 (/ pi 2) 238))
				(setq pm2(polar pn2 (/ pi 2) 238))
				(setq pm3(polar pn3 (/ pi 2) 238))
				(setq pm4(polar pn4 (/ pi 2) 238))
				(setq pm5(polar pn5 (/ pi 2) 238))
				(setq pm6(polar pn6 (/ pi 2) 238))
				(setq pm7(polar pn7 (/ pi 2) 238))
				
				
				
			
			
				
				(command "layer" "s" "S-SYM_50" "")
				(COMMAND "INSERT" "S-GRID_BUB_50" pm1 "" "" "" "2.H" )(setq tx1 (entlast))
				(COMMAND "INSERT" "S-GRID_BUB_50" pm2 "" "" "" "2.I" )(setq tx2 (entlast))
				(COMMAND "INSERT" "S-GRID_BUB_50" pm3 "" "" "" "2.J" )(setq tx3 (entlast))
				(COMMAND "INSERT" "S-GRID_BUB_50" pm4 "" "" "" "2.K" )(setq tx4 (entlast))
				(COMMAND "INSERT" "S-GRID_BUB_50" pm5 "" "" "" "2.L" )(setq tx5 (entlast))
				(COMMAND "INSERT" "S-GRID_BUB_50" pm6 "" "" "" "2.M" )(setq tx6 (entlast))
				(COMMAND "INSERT" "S-GRID_BUB_50" pm7 "" "" "" "2.N" )(setq tx7 (entlast))
				
				
				
			

				(setq pd1(polar pn1 (* pi 1.5) 100))
				(setq pd2(polar pn2 (* pi 1.5) 100))
				(setq pd3(polar pn3 (* pi 1.5) 100))
				(setq pd4(polar pn4 (* pi 1.5) 100))
				(setq pd5(polar pn5 (* pi 1.5) 100))
				(setq pd6(polar pn6 (* pi 1.5) 100))
				(setq pd7(polar pn7 (* pi 1.5) 100))
			
				
				
			
				
	  			(command "layer" "s" "S-GRID-DIM_50" "") (COMMAND "-DIMSTYLE" "R" "GRID DIMS 1-50")
	    			(command "dim" "hor" pd1 pd2 pd1 "") (command "exit" "") (setq dm2 (entlast))
				(command "dim" "hor" pd2 pd3 pd2 "") (command "exit" "") (setq dm3 (entlast))
				(command "dim" "hor" pd3 pd4 pd3 "") (command "exit" "") (setq dm4 (entlast))
				(command "dim" "hor" pd4 pd5 pd4 "") (command "exit" "") (setq dm5 (entlast))
				(command "dim" "hor" pd5 pd6 pd5 "") (command "exit" "") (setq dm6 (entlast))
				(command "dim" "hor" pd6 pd7 pd6 "") (command "exit" "") (setq dm7 (entlast))
				
				
			
					
		
				(command "layer" "s" "S-GRID" "")
				(command "line" po1 pn1 "")(command "chprop" "l" "" "S" "250" "")(setq ln1(entlast)) 
				(command "line" po2 pn2 "")(command "chprop" "l" "" "S" "250" "")(setq ln2(entlast))
				(command "line" po3 pn3 "")(command "chprop" "l" "" "S" "250" "")(setq ln3(entlast))
				(command "line" po4 pn4 "")(command "chprop" "l" "" "S" "250" "")(setq ln4(entlast))
				(command "line" po5 pn5 "")(command "chprop" "l" "" "S" "250" "")(setq ln5(entlast))
				(command "line" po6 pn6 "")(command "chprop" "l" "" "S" "250" "")(setq ln6(entlast))
				(command "line" po7 pn7 "")(command "chprop" "l" "" "S" "250" "")(setq ln7(entlast))
			
				
			

	;			 				
				(initget "2.I 2.J 2.K 2.L 2.M 2.N")
				(progn
				  
				(setq delo (getkword "\nSpecify the end of grid [2.I/2.J/2.K/2.L/2.M/2.N]: "))
				(if (= delo "2.I")
					(progn
						(entdel ln3)(entdel tx3)(entdel dm3)
					  	(entdel ln4)(entdel tx4)(entdel dm4)
					  	(entdel ln5)(entdel tx5)(entdel dm5)
					  	(entdel ln6)(entdel tx6)(entdel dm6)
					  	(entdel ln7)(entdel tx7)(entdel dm7)
					  
					  	
					)
				)
				(if (= delo "2.J")
					(progn
					  	(entdel ln4)(entdel tx4)(entdel dm4)
					  	(entdel ln5)(entdel tx5)(entdel dm5)
					  	(entdel ln6)(entdel tx6)(entdel dm6)
					  	(entdel ln7)(entdel tx7)(entdel dm7)
					  	
					  	
					  	
					)
				)
				(if (= delo "2.K")
					(progn
					  	
					  	(entdel ln5)(entdel tx5)(entdel dm5)
					  	(entdel ln6)(entdel tx6)(entdel dm6)
					  	(entdel ln7)(entdel tx7)(entdel dm7)
					  	
					  	
					  	
					
					)
				)
				(if (= delo "2.L")
					(progn
					  	(entdel ln6)(entdel tx6)(entdel dm6)
					  	(entdel ln7)(entdel tx7)(entdel dm7)
					  	
					  	
					  	
					)
				)
				(if (= delo "2.M")
					(progn
					  	(entdel ln7)(entdel tx7)(entdel dm7)
					  
					  	
					  		
					)
				)
																
				)
				
				)
		
			)
		  	;;;;;				
			(if (= proj "2.I")
				(progn

				(setq pt2(polar pt1 0 2675))
				(setq pt3(polar pt1 0 7325))
				(setq pt4(polar pt1 0 13000))
				(setq pt5(polar pt1 0 18525))
				(setq pt6(polar pt1 0 22125))


				
				(setq pn1(polar pt1 (/ pi 2) 1050))
				(setq pn2(polar pt2 (/ pi 2) 1050))
				(setq pn3(polar pt3 (/ pi 2) 1050))
				(setq pn4(polar pt4 (/ pi 2) 1050))
				(setq pn5(polar pt5 (/ pi 2) 1050))
				(setq pn6(polar pt6 (/ pi 2) 1050))
			
				
				
				(setq po1(polar pt1 (* pi 1.5) 1700))
				(setq po2(polar pt2 (* pi 1.5) 1700))
				(setq po3(polar pt3 (* pi 1.5) 1700))
				(setq po4(polar pt4 (* pi 1.5) 1700))
				(setq po5(polar pt5 (* pi 1.5) 1700))
				(setq po6(polar pt6 (* pi 1.5) 1700))
				
			
				
				(setq pm1(polar pn1 (/ pi 2) 238))
				(setq pm2(polar pn2 (/ pi 2) 238))
				(setq pm3(polar pn3 (/ pi 2) 238))
				(setq pm4(polar pn4 (/ pi 2) 238))
				(setq pm5(polar pn5 (/ pi 2) 238))
				(setq pm6(polar pn6 (/ pi 2) 238))
				
				
				
				(command "layer" "s" "S-SYM_50" "")
				(COMMAND "INSERT" "S-GRID_BUB_50" pm1 "" "" "" "2.I" )(setq tx1 (entlast))
				(COMMAND "INSERT" "S-GRID_BUB_50" pm2 "" "" "" "2.J" )(setq tx2 (entlast))
				(COMMAND "INSERT" "S-GRID_BUB_50" pm3 "" "" "" "2.K" )(setq tx3 (entlast))
				(COMMAND "INSERT" "S-GRID_BUB_50" pm4 "" "" "" "2.L" )(setq tx4 (entlast))
				(COMMAND "INSERT" "S-GRID_BUB_50" pm5 "" "" "" "2.M" )(setq tx5 (entlast))
				(COMMAND "INSERT" "S-GRID_BUB_50" pm6 "" "" "" "2.N" )(setq tx6 (entlast))
			
				

				(setq pd1(polar pn1 (* pi 1.5) 100))
				(setq pd2(polar pn2 (* pi 1.5) 100))
				(setq pd3(polar pn3 (* pi 1.5) 100))
				(setq pd4(polar pn4 (* pi 1.5) 100))
				(setq pd5(polar pn5 (* pi 1.5) 100))
				(setq pd6(polar pn6 (* pi 1.5) 100))
			
				
				
	  			(command "layer" "s" "S-GRID-DIM_50" "") (COMMAND "-DIMSTYLE" "R" "GRID DIMS 1-50")
	    			(command "dim" "hor" pd1 pd2 pd1 "") (command "exit" "") (setq dm2 (entlast))
				(command "dim" "hor" pd2 pd3 pd2 "") (command "exit" "") (setq dm3 (entlast))
				(command "dim" "hor" pd3 pd4 pd3 "") (command "exit" "") (setq dm4 (entlast))
				(command "dim" "hor" pd4 pd5 pd4 "") (command "exit" "") (setq dm5 (entlast))
				(command "dim" "hor" pd5 pd6 pd5 "") (command "exit" "") (setq dm6 (entlast))
				
				
				(command "layer" "s" "S-GRID" "")
				(command "line" po1 pn1 "")(command "chprop" "l" "" "S" "250" "")(setq ln1(entlast)) 
				(command "line" po2 pn2 "")(command "chprop" "l" "" "S" "250" "")(setq ln2(entlast))
				(command "line" po3 pn3 "")(command "chprop" "l" "" "S" "250" "")(setq ln3(entlast))
				(command "line" po4 pn4 "")(command "chprop" "l" "" "S" "250" "")(setq ln4(entlast))
				(command "line" po5 pn5 "")(command "chprop" "l" "" "S" "250" "")(setq ln5(entlast))
				(command "line" po6 pn6 "")(command "chprop" "l" "" "S" "250" "")(setq ln6(entlast))
				
				

	;			 				
				(initget "2.J 2.K 2.L 2.M 2.N")
				(progn
				  
				(setq delo (getkword "\nSpecify the end of grid [2.J/2.K/2.L/2.M/2.N]: "))
				(if (= delo "2.J")
					(progn
						(entdel ln3)(entdel tx3)(entdel dm3)
					  	(entdel ln4)(entdel tx4)(entdel dm4)
					  	(entdel ln5)(entdel tx5)(entdel dm5)
					  	(entdel ln6)(entdel tx6)(entdel dm6)
					  	
					  			  	
					)
				)
				(if (= delo "2.K")
					(progn
					  	(entdel ln4)(entdel tx4)(entdel dm4)
					  	(entdel ln5)(entdel tx5)(entdel dm5)
					  	(entdel ln6)(entdel tx6)(entdel dm6)
					  	
					  	
					)
				)
				(if (= delo "2.L")
					(progn
					  	
					  	(entdel ln5)(entdel tx5)(entdel dm5)
					  	(entdel ln6)(entdel tx6)(entdel dm6)
					  	
					  
					)
				)
				(if (= delo "2.M")
					(progn
					  	(entdel ln6)(entdel tx6)(entdel dm6)
					  
					  
					)
				)
																			
				)
				
				)
		
			)
	;;;;;						  
			(if (= proj "2.J")
				(progn

				(setq pt2(polar pt1 0 4650))
				(setq pt3(polar pt1 0 10325))
				(setq pt4(polar pt1 0 15850))
				(setq pt5(polar pt1 0 19450))

			
				(setq pn1(polar pt1 (/ pi 2) 1050))
				(setq pn2(polar pt2 (/ pi 2) 1050))
				(setq pn3(polar pt3 (/ pi 2) 1050))
				(setq pn4(polar pt4 (/ pi 2) 1050))
				(setq pn5(polar pt5 (/ pi 2) 1050))
			
			
				(setq po1(polar pt1 (* pi 1.5) 1700))
				(setq po2(polar pt2 (* pi 1.5) 1700))
				(setq po3(polar pt3 (* pi 1.5) 1700))
				(setq po4(polar pt4 (* pi 1.5) 1700))
				(setq po5(polar pt5 (* pi 1.5) 1700))
			
				
				(setq pm1(polar pn1 (/ pi 2) 238))
				(setq pm2(polar pn2 (/ pi 2) 238))
				(setq pm3(polar pn3 (/ pi 2) 238))
				(setq pm4(polar pn4 (/ pi 2) 238))
				(setq pm5(polar pn5 (/ pi 2) 238))
				
				
				(command "layer" "s" "S-SYM_50" "")
				(COMMAND "INSERT" "S-GRID_BUB_50" pm1 "" "" "" "2.J" )(setq tx1 (entlast))
				(COMMAND "INSERT" "S-GRID_BUB_50" pm2 "" "" "" "2.K" )(setq tx2 (entlast))
				(COMMAND "INSERT" "S-GRID_BUB_50" pm3 "" "" "" "2.L" )(setq tx3 (entlast))
				(COMMAND "INSERT" "S-GRID_BUB_50" pm4 "" "" "" "2.M" )(setq tx4 (entlast))
				(COMMAND "INSERT" "S-GRID_BUB_50" pm5 "" "" "" "2.N" )(setq tx5 (entlast))
				
				
				(setq pd1(polar pn1 (* pi 1.5) 100))
				(setq pd2(polar pn2 (* pi 1.5) 100))
				(setq pd3(polar pn3 (* pi 1.5) 100))
				(setq pd4(polar pn4 (* pi 1.5) 100))
				(setq pd5(polar pn5 (* pi 1.5) 100))
			
				
	  			(command "layer" "s" "S-GRID-DIM_50" "") (COMMAND "-DIMSTYLE" "R" "GRID DIMS 1-50")
	    			(command "dim" "hor" pd1 pd2 pd1 "") (command "exit" "") (setq dm2 (entlast))
				(command "dim" "hor" pd2 pd3 pd2 "") (command "exit" "") (setq dm3 (entlast))
				(command "dim" "hor" pd3 pd4 pd3 "") (command "exit" "") (setq dm4 (entlast))
				(command "dim" "hor" pd4 pd5 pd4 "") (command "exit" "") (setq dm5 (entlast))
			
				
				(command "layer" "s" "S-GRID" "")
				(command "line" po1 pn1 "")(command "chprop" "l" "" "S" "250" "")(setq ln1(entlast)) 
				(command "line" po2 pn2 "")(command "chprop" "l" "" "S" "250" "")(setq ln2(entlast))
				(command "line" po3 pn3 "")(command "chprop" "l" "" "S" "250" "")(setq ln3(entlast))
				(command "line" po4 pn4 "")(command "chprop" "l" "" "S" "250" "")(setq ln4(entlast))
				(command "line" po5 pn5 "")(command "chprop" "l" "" "S" "250" "")(setq ln5(entlast))
			
				
	;			 				
				(initget "2.K 2.L 2.M 2.N")
				(progn
				  
				(setq delo (getkword "\nSpecify the end of grid [2.K/2.L/2.M/2.N]: "))
				(if (= delo "2.K")
					(progn
						(entdel ln3)(entdel tx3)(entdel dm3)
					  	(entdel ln4)(entdel tx4)(entdel dm4)
					  	(entdel ln5)(entdel tx5)(entdel dm5)
					 
					  			  	
					)
				)
				(if (= delo "2.L")
					(progn
					  	(entdel ln4)(entdel tx4)(entdel dm4)
					  	(entdel ln5)(entdel tx5)(entdel dm5)
					  
					  	
					)
				)
				(if (= delo "2.M")
					(progn
					  	
					  	(entdel ln5)(entdel tx5)(entdel dm5)
					 
					  
					)
				)
																						
				)
				
				)
		
			)


	;;;;									
			(if (= proj "2.K")
				(progn

				(setq pt2(polar pt1 0 5675))
				(setq pt3(polar pt1 0 11200))
				(setq pt4(polar pt1 0 14800))

			
				(setq pn1(polar pt1 (/ pi 2) 1050))
				(setq pn2(polar pt2 (/ pi 2) 1050))
				(setq pn3(polar pt3 (/ pi 2) 1050))
				(setq pn4(polar pt4 (/ pi 2) 1050))
			
				
				(setq po1(polar pt1 (* pi 1.5) 1700))
				(setq po2(polar pt2 (* pi 1.5) 1700))
				(setq po3(polar pt3 (* pi 1.5) 1700))
				(setq po4(polar pt4 (* pi 1.5) 1700))
			
				
				(setq pm1(polar pn1 (/ pi 2) 238))
				(setq pm2(polar pn2 (/ pi 2) 238))
				(setq pm3(polar pn3 (/ pi 2) 238))
				(setq pm4(polar pn4 (/ pi 2) 238))
			
				
				(command "layer" "s" "S-SYM_50" "")
				(COMMAND "INSERT" "S-GRID_BUB_50" pm1 "" "" "" "2.K" )(setq tx1 (entlast))
				(COMMAND "INSERT" "S-GRID_BUB_50" pm2 "" "" "" "2.L" )(setq tx2 (entlast))
				(COMMAND "INSERT" "S-GRID_BUB_50" pm3 "" "" "" "2.M" )(setq tx3 (entlast))
				(COMMAND "INSERT" "S-GRID_BUB_50" pm4 "" "" "" "2.N" )(setq tx4 (entlast))
			
				
				(setq pd1(polar pn1 (* pi 1.5) 100))
				(setq pd2(polar pn2 (* pi 1.5) 100))
				(setq pd3(polar pn3 (* pi 1.5) 100))
				(setq pd4(polar pn4 (* pi 1.5) 100))
		
				
	  			(command "layer" "s" "S-GRID-DIM_50" "") (COMMAND "-DIMSTYLE" "R" "GRID DIMS 1-50")
	    			(command "dim" "hor" pd1 pd2 pd1 "") (command "exit" "") (setq dm2 (entlast))
				(command "dim" "hor" pd2 pd3 pd2 "") (command "exit" "") (setq dm3 (entlast))
				(command "dim" "hor" pd3 pd4 pd3 "") (command "exit" "") (setq dm4 (entlast))
				
				(command "layer" "s" "S-GRID" "")
				(command "line" po1 pn1 "")(command "chprop" "l" "" "S" "250" "")(setq ln1(entlast)) 
				(command "line" po2 pn2 "")(command "chprop" "l" "" "S" "250" "")(setq ln2(entlast))
				(command "line" po3 pn3 "")(command "chprop" "l" "" "S" "250" "")(setq ln3(entlast))
				(command "line" po4 pn4 "")(command "chprop" "l" "" "S" "250" "")(setq ln4(entlast))
			
				
	;			 				
				(initget "2.L 2.M 2.N")
				(progn
				  
				(setq delo (getkword "\nSpecify the end of grid [2.L/2.M/2.N]: "))
				(if (= delo "2.L")
					(progn
						(entdel ln3)(entdel tx3)(entdel dm3)
					  	(entdel ln4)(entdel tx4)(entdel dm4)
					  
					)
				)
				(if (= delo "2.M")
					(progn
					  	(entdel ln4)(entdel tx4)(entdel dm4)
					  
					 )
				)
																						
				)
				
				)
		
			)

	;;;;						
			(if (= proj "2.L")
				(progn

				(setq pt2(polar pt1 0 5525))
				(setq pt3(polar pt1 0 9125))
				
				(setq pn1(polar pt1 (/ pi 2) 1050))
				(setq pn2(polar pt2 (/ pi 2) 1050))
				(setq pn3(polar pt3 (/ pi 2) 1050))
				
				
				(setq po1(polar pt1 (* pi 1.5) 1700))
				(setq po2(polar pt2 (* pi 1.5) 1700))
				(setq po3(polar pt3 (* pi 1.5) 1700))
			
				
				(setq pm1(polar pn1 (/ pi 2) 238))
				(setq pm2(polar pn2 (/ pi 2) 238))
				(setq pm3(polar pn3 (/ pi 2) 238))
			
				
				(command "layer" "s" "S-SYM_50" "")
				(COMMAND "INSERT" "S-GRID_BUB_50" pm1 "" "" "" "2.L" )(setq tx1 (entlast))
				(COMMAND "INSERT" "S-GRID_BUB_50" pm2 "" "" "" "2.M" )(setq tx2 (entlast))
				(COMMAND "INSERT" "S-GRID_BUB_50" pm3 "" "" "" "2.N" )(setq tx3 (entlast))
			
				
				(setq pd1(polar pn1 (* pi 1.5) 100))
				(setq pd2(polar pn2 (* pi 1.5) 100))
				(setq pd3(polar pn3 (* pi 1.5) 100))
			
				
	  			(command "layer" "s" "S-GRID-DIM_50" "") (COMMAND "-DIMSTYLE" "R" "GRID DIMS 1-50")
	    			(command "dim" "hor" pd1 pd2 pd1 "") (command "exit" "") (setq dm2 (entlast))
				(command "dim" "hor" pd2 pd3 pd2 "") (command "exit" "") (setq dm3 (entlast))
			
				(command "layer" "s" "S-GRID" "")
				(command "line" po1 pn1 "")(command "chprop" "l" "" "S" "250" "")(setq ln1(entlast)) 
				(command "line" po2 pn2 "")(command "chprop" "l" "" "S" "250" "")(setq ln2(entlast))
				(command "line" po3 pn3 "")(command "chprop" "l" "" "S" "250" "")(setq ln3(entlast))
			
				
	;			 				
				(initget "2.M 2.N")
				(progn
				  
				(setq delo (getkword "\nSpecify the end of grid [2.M/2.N]: "))
				(if (= delo "2.M")
					(progn
						(entdel ln3)(entdel tx3)(entdel dm3)
					  
					)
				)
																									
				)
				
				)
		
			)	

	;;;;											
		  (if (= proj "2.M")
				(progn

				(setq pt2(polar pt1 0 3600))

				
				(setq pn1(polar pt1 (/ pi 2) 1050))
				(setq pn2(polar pt2 (/ pi 2) 1050))
				
				
				(setq po1(polar pt1 (* pi 1.5) 1700))
				(setq po2(polar pt2 (* pi 1.5) 1700))
				
				
				(setq pm1(polar pn1 (/ pi 2) 238))
				(setq pm2(polar pn2 (/ pi 2) 238))
				
				
				(command "layer" "s" "S-SYM_50" "")
				(COMMAND "INSERT" "S-GRID_BUB_50" pm1 "" "" "" "2.M" )(setq tx1 (entlast))
				(COMMAND "INSERT" "S-GRID_BUB_50" pm2 "" "" "" "2.N" )(setq tx2 (entlast))
				
				
				(setq pd1(polar pn1 (* pi 1.5) 100))
				(setq pd2(polar pn2 (* pi 1.5) 100))
			
				
	  			(command "layer" "s" "S-GRID-DIM_50" "") (COMMAND "-DIMSTYLE" "R" "GRID DIMS 1-50")
	    			(command "dim" "hor" pd1 pd2 pd1 "") (command "exit" "") (setq dm2 (entlast))
				
				
				(command "layer" "s" "S-GRID" "")
				(command "line" po1 pn1 "")(command "chprop" "l" "" "S" "250" "")(setq ln1(entlast)) 
				(command "line" po2 pn2 "")(command "chprop" "l" "" "S" "250" "")(setq ln2(entlast))
			
				
	;			 				
			
				
				
				)
		
			)


	;;;;;;;											
		(if (= proj "2.N")
				(progn
								
				(setq pn1(polar pt1 (/ pi 2) 1050))
				
				
				(setq po1(polar pt1 (* pi 1.5) 1700))
			
				
				(setq pm1(polar pn1 (/ pi 2) 238))
			
				
				(command "layer" "s" "S-SYM_50" "")
				(COMMAND "INSERT" "S-GRID_BUB_50" pm1 "" "" "" "2.N" )(setq tx1 (entlast))
			
				
				(setq pd1(polar pn1 (* pi 1.5) 100))
			
	  	
				
				(command "layer" "s" "S-GRID" "")
				(command "line" po1 pn1 "")(command "chprop" "l" "" "S" "250" "")(setq ln1(entlast)) 
						
				)
		
			)	
		  
	;;;;			
		
	;;;;						  
		  

		  )
	  )
	  )
;;;;;;																																								
  ;;;;;;;																																
;;;;;																																	
  ;;;;;;;																															

  	 (if (= blo "Y")
	(progn

		(initget "2.9 2.8 2.7 2.6 C.2 2.5 2.4 2.3 2.2 2.1")
		(setq proj (getkword "\nSpecify the start of grid [2.9/2.8/2.7/2.6/C.2/2.5/2.4/2.3/2.2/2.1]: "))
		(progn
	;;;;;																			  
			
	;;;;;																			
		  	

	;;;;;						
			

	;;;;;					  
			

	;;;;;							
			(if (= proj "2.10")
				(progn
				(setq pt2(polar pt1 0 3615))
				(setq pt3(polar pt1 0 11450))
				(setq pt4(polar pt1 0 13450))
				(setq pt5(polar pt1 0 15950))
				(setq pt6(polar pt1 0 17310))
				(setq pt7(polar pt1 0 18670))
				(setq pt8(polar pt1 0 21170))
				(setq pt9(polar pt1 0 23170))
				(setq pt10(polar pt1 0 31005))
				(setq pt11(polar pt1 0 34620))

				
				(setq pn1(polar pt1 (/ pi 2) 1050))
				(setq pn2(polar pt2 (/ pi 2) 1050))
				(setq pn3(polar pt3 (/ pi 2) 1050))
				(setq pn4(polar pt4 (/ pi 2) 1050))
				(setq pn5(polar pt5 (/ pi 2) 1050))
				(setq pn6(polar pt6 (/ pi 2) 1050))
				(setq pn7(polar pt7 (/ pi 2) 1050))
				(setq pn8(polar pt8 (/ pi 2) 1050))
				(setq pn9(polar pt9 (/ pi 2) 1050))
				(setq pn10(polar pt10 (/ pi 2) 1050))
				(setq pn11(polar pt11 (/ pi 2) 1050))
			
				
				
				

				(setq po1(polar pt1 (* pi 1.5) 1700))
				(setq po2(polar pt2 (* pi 1.5) 1700))
				(setq po3(polar pt3 (* pi 1.5) 1700))
				(setq po4(polar pt4 (* pi 1.5) 1700))
				(setq po5(polar pt5 (* pi 1.5) 1700))
				(setq po6(polar pt6 (* pi 1.5) 1700))
				(setq po7(polar pt7 (* pi 1.5) 1700))
				(setq po8(polar pt8 (* pi 1.5) 1700))
				(setq po9(polar pt9 (* pi 1.5) 1700))
				(setq po10(polar pt10 (* pi 1.5) 1700))
				(setq po11(polar pt11 (* pi 1.5) 1700))
			
			
				

				
				(setq pm1(polar pn1 (/ pi 2) 238))
				(setq pm2(polar pn2 (/ pi 2) 238))
				(setq pm3(polar pn3 (/ pi 2) 238))
				(setq pm4(polar pn4 (/ pi 2) 238))
				(setq pm5(polar pn5 (/ pi 2) 238))
				(setq pm6(polar pn6 (/ pi 2) 238))
				(setq pm7(polar pn7 (/ pi 2) 238))
				(setq pm8(polar pn8 (/ pi 2) 238))
				(setq pm9(polar pn9 (/ pi 2) 238))
				(setq pm10(polar pn10 (/ pi 2) 238))
				(setq pm11(polar pn11 (/ pi 2) 238))
			
			
				
		
				
				(command "layer" "s" "S-SYM_50" "")
				(COMMAND "INSERT" "S-GRID_BUB_50" pm1 "" "" "" "2.10" )(setq tx1 (entlast))
				(COMMAND "INSERT" "S-GRID_BUB_50" pm2 "" "" "" "2.9" )(setq tx2 (entlast))
				(COMMAND "INSERT" "S-GRID_BUB_50" pm3 "" "" "" "2.8" )(setq tx3 (entlast))
				(COMMAND "INSERT" "S-GRID_BUB_50" pm4 "" "" "" "2.7" )(setq tx4 (entlast))
				(COMMAND "INSERT" "S-GRID_BUB_50" pm5 "" "" "" "2.6" )(setq tx5 (entlast))
				(COMMAND "INSERT" "S-GRID_BUB_50" pm6 "" "" "" "C.2" )(setq tx6 (entlast))
				(COMMAND "INSERT" "S-GRID_BUB_50" pm7 "" "" "" "2.5" )(setq tx7 (entlast))
				(COMMAND "INSERT" "S-GRID_BUB_50" pm8 "" "" "" "2.4" )(setq tx8 (entlast))
				(COMMAND "INSERT" "S-GRID_BUB_50" pm9 "" "" "" "2.3" )(setq tx9 (entlast))
				(COMMAND "INSERT" "S-GRID_BUB_50" pm10 "" "" "" "2.2" )(setq tx10 (entlast))
				(COMMAND "INSERT" "S-GRID_BUB_50" pm11 "" "" "" "2.1" )(setq tx11 (entlast))
			
			
				

				(setq pd1(polar pn1 (* pi 1.5) 100))
				(setq pd2(polar pn2 (* pi 1.5) 100))
				(setq pd3(polar pn3 (* pi 1.5) 100))
				(setq pd4(polar pn4 (* pi 1.5) 100))
				(setq pd5(polar pn5 (* pi 1.5) 100))
				(setq pd6(polar pn6 (* pi 1.5) 100))
				(setq pd7(polar pn7 (* pi 1.5) 100))
				(setq pd8(polar pn8 (* pi 1.5) 100))
				(setq pd9(polar pn9 (* pi 1.5) 100))
				(setq pd10(polar pn10 (* pi 1.5) 100))
				(setq pd11(polar pn11 (* pi 1.5) 100))
		
			
				
				
	  			(command "layer" "s" "S-GRID-DIM_50" "") (COMMAND "-DIMSTYLE" "R" "GRID DIMS 1-50")
	    			(command "dim" "hor" pd1 pd2 pd1 "") (command "exit" "") (setq dm2 (entlast))
				(command "dim" "hor" pd2 pd3 pd2 "") (command "exit" "") (setq dm3 (entlast))
				(command "dim" "hor" pd3 pd4 pd3 "") (command "exit" "") (setq dm4 (entlast))
				(command "dim" "hor" pd4 pd5 pd4 "") (command "exit" "") (setq dm5 (entlast))
				(command "dim" "hor" pd5 pd6 pd5 "") (command "exit" "") (setq dm6 (entlast))
				(command "dim" "hor" pd6 pd7 pd6 "") (command "exit" "") (setq dm7 (entlast))
				(command "dim" "hor" pd7 pd8 pd7 "") (command "exit" "") (setq dm8 (entlast))
				(command "dim" "hor" pd8 pd9 pd8 "") (command "exit" "") (setq dm9 (entlast))
				(command "dim" "hor" pd9 pd10 pd9 "") (command "exit" "") (setq dm10 (entlast))
				(command "dim" "hor" pd10 pd11 pd10 "") (command "exit" "") (setq dm11 (entlast))
			
			
				
			
					
		
				(command "layer" "s" "S-GRID" "")
				(command "line" po1 pn1 "")(command "chprop" "l" "" "S" "250" "")(setq ln1(entlast)) 
				(command "line" po2 pn2 "")(command "chprop" "l" "" "S" "250" "")(setq ln2(entlast))
				(command "line" po3 pn3 "")(command "chprop" "l" "" "S" "250" "")(setq ln3(entlast))
				(command "line" po4 pn4 "")(command "chprop" "l" "" "S" "250" "")(setq ln4(entlast))
				(command "line" po5 pn5 "")(command "chprop" "l" "" "S" "250" "")(setq ln5(entlast))
				(command "line" po6 pn6 "")(command "chprop" "l" "" "S" "250" "")(setq ln6(entlast))
				(command "line" po7 pn7 "")(command "chprop" "l" "" "S" "250" "")(setq ln7(entlast))
				(command "line" po8 pn8 "")(command "chprop" "l" "" "S" "250" "")(setq ln8(entlast))
				(command "line" po9 pn9 "")(command "chprop" "l" "" "S" "250" "")(setq ln9(entlast))
				(command "line" po10 pn10 "")(command "chprop" "l" "" "S" "250" "")(setq ln10(entlast))
				(command "line" po11 pn11 "")(command "chprop" "l" "" "S" "250" "")(setq ln11(entlast))
			
			
				
			


	;			 				
				(initget "2.9/2.8/2.7/2.6/C.2/2.5/2.4/2.3/2.2/2.1")
				(progn
				  
				(setq delo (getkword "\nSpecify the end of grid [2.9/2.8/2.7/2.6/C.2/2.5/2.4/2.3/2.2/2.1]: "))
				(if (= delo "2.9")
					(progn
						(entdel ln3)(entdel tx3)(entdel dm3)
					  	(entdel ln4)(entdel tx4)(entdel dm4)
					  	(entdel ln5)(entdel tx5)(entdel dm5)
					  	(entdel ln6)(entdel tx6)(entdel dm6)
					  	(entdel ln7)(entdel tx7)(entdel dm7)
					  	(entdel ln8)(entdel tx8)(entdel dm8)
					  	(entdel ln9)(entdel tx9)(entdel dm9)
					  	(entdel ln10)(entdel tx10)(entdel dm10)
						(entdel ln11)(entdel tx11)(entdel dm11)
					  
					  
					  	
				
					)
				)
				(if (= delo "2.8")
					(progn
					  	(entdel ln4)(entdel tx4)(entdel dm4)
					  	(entdel ln5)(entdel tx5)(entdel dm5)
					  	(entdel ln6)(entdel tx6)(entdel dm6)
					  	(entdel ln7)(entdel tx7)(entdel dm7)
					  	(entdel ln8)(entdel tx8)(entdel dm8)
					  	(entdel ln9)(entdel tx9)(entdel dm9)
					  	(entdel ln10)(entdel tx10)(entdel dm10)
						(entdel ln11)(entdel tx11)(entdel dm11)
					  
					  
					  	
					  
					)
				)
				(if (= delo "2.7")
					(progn
					  	
					  	(entdel ln5)(entdel tx5)(entdel dm5)
					  	(entdel ln6)(entdel tx6)(entdel dm6)
					  	(entdel ln7)(entdel tx7)(entdel dm7)
					  	(entdel ln8)(entdel tx8)(entdel dm8)
					  	(entdel ln9)(entdel tx9)(entdel dm9)
					  	(entdel ln10)(entdel tx10)(entdel dm10)
						(entdel ln11)(entdel tx11)(entdel dm11)
					  
					  
					  	
					  
					)
				)
				(if (= delo "2.6")
					(progn
					  	(entdel ln6)(entdel tx6)(entdel dm6)
					  	(entdel ln7)(entdel tx7)(entdel dm7)
					  	(entdel ln8)(entdel tx8)(entdel dm8)
					  	(entdel ln9)(entdel tx9)(entdel dm9)
					  	(entdel ln10)(entdel tx10)(entdel dm10)
						(entdel ln11)(entdel tx11)(entdel dm11)
					  
				
					  	
					  
					)
				)
				(if (= delo "C.2")
					(progn
					  	(entdel ln7)(entdel tx7)(entdel dm7)
					  	(entdel ln8)(entdel tx8)(entdel dm8)
					  	(entdel ln9)(entdel tx9)(entdel dm9)
					  	(entdel ln10)(entdel tx10)(entdel dm10)
						(entdel ln11)(entdel tx11)(entdel dm11)
					 
					  
					  	
					)
				)
				(if (= delo "2.5")
					(progn
					  	(entdel ln8)(entdel tx8)(entdel dm8)
					  	(entdel ln9)(entdel tx9)(entdel dm9)
					  	(entdel ln10)(entdel tx10)(entdel dm10)
						(entdel ln11)(entdel tx11)(entdel dm11)
					  
					  
					  	
					)
				)
				(if (= delo "2.4")
					(progn
					  	(entdel ln9)(entdel tx9)(entdel dm9)
					  	(entdel ln10)(entdel tx10)(entdel dm10)
						(entdel ln11)(entdel tx11)(entdel dm11)
					  
					  
					  	
					)
				)
				(if (= delo "2.3")
					(progn
					  	(entdel ln10)(entdel tx10)(entdel dm10)
						(entdel ln11)(entdel tx11)(entdel dm11)
					  
				
					  	
					)
				)
				(if (= delo "2.2")
					(progn
					  	(entdel ln11)(entdel tx11)(entdel dm11)
					  
					  
					  	
					)
				)
				
				
				)
				
				)
		
			)
	;;;;;						
		(if (= proj "2.9")
				(progn

				(setq pt2(polar pt1 0 7835))
				(setq pt3(polar pt1 0 9835))
				(setq pt4(polar pt1 0 12335))
				(setq pt5(polar pt1 0 13695))
				(setq pt6(polar pt1 0 15055))
				(setq pt7(polar pt1 0 17555))
				(setq pt8(polar pt1 0 19555))
				(setq pt9(polar pt1 0 27390))
				(setq pt10(polar pt1 0 31005))


				
				(setq pn1(polar pt1 (/ pi 2) 1050))
				(setq pn2(polar pt2 (/ pi 2) 1050))
				(setq pn3(polar pt3 (/ pi 2) 1050))
				(setq pn4(polar pt4 (/ pi 2) 1050))
				(setq pn5(polar pt5 (/ pi 2) 1050))
				(setq pn6(polar pt6 (/ pi 2) 1050))
				(setq pn7(polar pt7 (/ pi 2) 1050))
				(setq pn8(polar pt8 (/ pi 2) 1050))
				(setq pn9(polar pt9 (/ pi 2) 1050))
				(setq pn10(polar pt10 (/ pi 2) 1050))
				
				(setq po1(polar pt1 (* pi 1.5) 1700))
				(setq po2(polar pt2 (* pi 1.5) 1700))
				(setq po3(polar pt3 (* pi 1.5) 1700))
				(setq po4(polar pt4 (* pi 1.5) 1700))
				(setq po5(polar pt5 (* pi 1.5) 1700))
				(setq po6(polar pt6 (* pi 1.5) 1700))
				(setq po7(polar pt7 (* pi 1.5) 1700))
				(setq po8(polar pt8 (* pi 1.5) 1700))
				(setq po9(polar pt9 (* pi 1.5) 1700))
				(setq po10(polar pt10 (* pi 1.5) 1700))
				
			
				
				(setq pm1(polar pn1 (/ pi 2) 238))
				(setq pm2(polar pn2 (/ pi 2) 238))
				(setq pm3(polar pn3 (/ pi 2) 238))
				(setq pm4(polar pn4 (/ pi 2) 238))
				(setq pm5(polar pn5 (/ pi 2) 238))
				(setq pm6(polar pn6 (/ pi 2) 238))
				(setq pm7(polar pn7 (/ pi 2) 238))
				(setq pm8(polar pn8 (/ pi 2) 238))
				(setq pm9(polar pn9 (/ pi 2) 238))
				(setq pm10(polar pn10 (/ pi 2) 238))
			
			
				
				(command "layer" "s" "S-SYM_50" "")
				(COMMAND "INSERT" "S-GRID_BUB_50" pm1 "" "" "" "2.9" )(setq tx1 (entlast))
				(COMMAND "INSERT" "S-GRID_BUB_50" pm2 "" "" "" "2.8" )(setq tx2 (entlast))
				(COMMAND "INSERT" "S-GRID_BUB_50" pm3 "" "" "" "2.7" )(setq tx3 (entlast))
				(COMMAND "INSERT" "S-GRID_BUB_50" pm4 "" "" "" "2.6" )(setq tx4 (entlast))
				(COMMAND "INSERT" "S-GRID_BUB_50" pm5 "" "" "" "C.2" )(setq tx5 (entlast))
				(COMMAND "INSERT" "S-GRID_BUB_50" pm6 "" "" "" "2.5" )(setq tx6 (entlast))
				(COMMAND "INSERT" "S-GRID_BUB_50" pm7 "" "" "" "2.4" )(setq tx7 (entlast))
				(COMMAND "INSERT" "S-GRID_BUB_50" pm8 "" "" "" "2.3" )(setq tx8 (entlast))
				(COMMAND "INSERT" "S-GRID_BUB_50" pm9 "" "" "" "2.2" )(setq tx9 (entlast))
				(COMMAND "INSERT" "S-GRID_BUB_50" pm10 "" "" "" "2.1" )(setq tx10 (entlast))
			

				(setq pd1(polar pn1 (* pi 1.5) 100))
				(setq pd2(polar pn2 (* pi 1.5) 100))
				(setq pd3(polar pn3 (* pi 1.5) 100))
				(setq pd4(polar pn4 (* pi 1.5) 100))
				(setq pd5(polar pn5 (* pi 1.5) 100))
				(setq pd6(polar pn6 (* pi 1.5) 100))
				(setq pd7(polar pn7 (* pi 1.5) 100))
				(setq pd8(polar pn8 (* pi 1.5) 100))
				(setq pd9(polar pn9 (* pi 1.5) 100))
				(setq pd10(polar pn10 (* pi 1.5) 100))
			
				
	  			(command "layer" "s" "S-GRID-DIM_50" "") (COMMAND "-DIMSTYLE" "R" "GRID DIMS 1-50")
	    			(command "dim" "hor" pd1 pd2 pd1 "") (command "exit" "") (setq dm2 (entlast))
				(command "dim" "hor" pd2 pd3 pd2 "") (command "exit" "") (setq dm3 (entlast))
				(command "dim" "hor" pd3 pd4 pd3 "") (command "exit" "") (setq dm4 (entlast))
				(command "dim" "hor" pd4 pd5 pd4 "") (command "exit" "") (setq dm5 (entlast))
				(command "dim" "hor" pd5 pd6 pd5 "") (command "exit" "") (setq dm6 (entlast))
				(command "dim" "hor" pd6 pd7 pd6 "") (command "exit" "") (setq dm7 (entlast))
				(command "dim" "hor" pd7 pd8 pd7 "") (command "exit" "") (setq dm8 (entlast))
				(command "dim" "hor" pd8 pd9 pd8 "") (command "exit" "") (setq dm9 (entlast))
				(command "dim" "hor" pd9 pd10 pd9 "") (command "exit" "") (setq dm10 (entlast))
					
		
				(command "layer" "s" "S-GRID" "")
				(command "line" po1 pn1 "")(command "chprop" "l" "" "S" "250" "")(setq ln1(entlast)) 
				(command "line" po2 pn2 "")(command "chprop" "l" "" "S" "250" "")(setq ln2(entlast))
				(command "line" po3 pn3 "")(command "chprop" "l" "" "S" "250" "")(setq ln3(entlast))
				(command "line" po4 pn4 "")(command "chprop" "l" "" "S" "250" "")(setq ln4(entlast))
				(command "line" po5 pn5 "")(command "chprop" "l" "" "S" "250" "")(setq ln5(entlast))
				(command "line" po6 pn6 "")(command "chprop" "l" "" "S" "250" "")(setq ln6(entlast))
				(command "line" po7 pn7 "")(command "chprop" "l" "" "S" "250" "")(setq ln7(entlast))
				(command "line" po8 pn8 "")(command "chprop" "l" "" "S" "250" "")(setq ln8(entlast))
				(command "line" po9 pn9 "")(command "chprop" "l" "" "S" "250" "")(setq ln9(entlast))
				(command "line" po10 pn10 "")(command "chprop" "l" "" "S" "250" "")(setq ln10(entlast))
			


	;			 				
				(initget "2.8 2.7 2.6 C.2 2.5 2.4 2.3 2.2 2.1")
				(progn
				  
				(setq delo (getkword "\nSpecify the end of grid [2.8/2.7/2.6/C.2/2.5/2.4/2.3/2.2/2.1]: "))
				(if (= delo "2.8")
					(progn
						(entdel ln3)(entdel tx3)(entdel dm3)
					  	(entdel ln4)(entdel tx4)(entdel dm4)
					  	(entdel ln5)(entdel tx5)(entdel dm5)
					  	(entdel ln6)(entdel tx6)(entdel dm6)
					  	(entdel ln7)(entdel tx7)(entdel dm7)
					  	(entdel ln8)(entdel tx8)(entdel dm8)
					  	(entdel ln9)(entdel tx9)(entdel dm9)
					  	(entdel ln10)(entdel tx10)(entdel dm10)
						
				
					)
				)
				(if (= delo "2.7")
					(progn
					  	(entdel ln4)(entdel tx4)(entdel dm4)
					  	(entdel ln5)(entdel tx5)(entdel dm5)
					  	(entdel ln6)(entdel tx6)(entdel dm6)
					  	(entdel ln7)(entdel tx7)(entdel dm7)
					  	(entdel ln8)(entdel tx8)(entdel dm8)
					  	(entdel ln9)(entdel tx9)(entdel dm9)
					  	(entdel ln10)(entdel tx10)(entdel dm10)
					
					)
				)
				(if (= delo "2.6")
					(progn
					  	
					  	(entdel ln5)(entdel tx5)(entdel dm5)
					  	(entdel ln6)(entdel tx6)(entdel dm6)
					  	(entdel ln7)(entdel tx7)(entdel dm7)
					  	(entdel ln8)(entdel tx8)(entdel dm8)
					  	(entdel ln9)(entdel tx9)(entdel dm9)
					  	(entdel ln10)(entdel tx10)(entdel dm10)
					
					)
				)
				(if (= delo "C.2")
					(progn
					  	(entdel ln6)(entdel tx6)(entdel dm6)
					  	(entdel ln7)(entdel tx7)(entdel dm7)
					  	(entdel ln8)(entdel tx8)(entdel dm8)
					  	(entdel ln9)(entdel tx9)(entdel dm9)
					  	(entdel ln10)(entdel tx10)(entdel dm10)
						
					  
					)
				)
				(if (= delo "2.5")
					(progn
					  	(entdel ln7)(entdel tx7)(entdel dm7)
					  	(entdel ln8)(entdel tx8)(entdel dm8)
					  	(entdel ln9)(entdel tx9)(entdel dm9)
					  	(entdel ln10)(entdel tx10)(entdel dm10)
						
					)
				)
				(if (= delo "2.4")
					(progn
					  	(entdel ln8)(entdel tx8)(entdel dm8)
					  	(entdel ln9)(entdel tx9)(entdel dm9)
					  	(entdel ln10)(entdel tx10)(entdel dm10)
						
					)
				)
				(if (= delo "2.3")
					(progn
					  	(entdel ln9)(entdel tx9)(entdel dm9)
					  	(entdel ln10)(entdel tx10)(entdel dm10)
						
					)
				)
				(if (= delo "2.2")
					(progn
					  	(entdel ln10)(entdel tx10)(entdel dm10)
						
					)
				)
							
				)
				
				)
		
			)
			


		  
	;;;;;						
			(if (= proj "2.8")
				(progn

				(setq pt2(polar pt1 0 2000))
				(setq pt3(polar pt1 0 4500))
				(setq pt4(polar pt1 0 5860))
				(setq pt5(polar pt1 0 7220))
				(setq pt6(polar pt1 0 9720))
				(setq pt7(polar pt1 0 11720))
				(setq pt8(polar pt1 0 19555))
				(setq pt9(polar pt1 0 23170))

				
			
				(setq pn1(polar pt1 (/ pi 2) 1050))
				(setq pn2(polar pt2 (/ pi 2) 1050))
				(setq pn3(polar pt3 (/ pi 2) 1050))
				(setq pn4(polar pt4 (/ pi 2) 1050))
				(setq pn5(polar pt5 (/ pi 2) 1050))
				(setq pn6(polar pt6 (/ pi 2) 1050))
				(setq pn7(polar pt7 (/ pi 2) 1050))
				(setq pn8(polar pt8 (/ pi 2) 1050))
				(setq pn9(polar pt9 (/ pi 2) 1050))
				
				
				(setq po1(polar pt1 (* pi 1.5) 1700))
				(setq po2(polar pt2 (* pi 1.5) 1700))
				(setq po3(polar pt3 (* pi 1.5) 1700))
				(setq po4(polar pt4 (* pi 1.5) 1700))
				(setq po5(polar pt5 (* pi 1.5) 1700))
				(setq po6(polar pt6 (* pi 1.5) 1700))
				(setq po7(polar pt7 (* pi 1.5) 1700))
				(setq po8(polar pt8 (* pi 1.5) 1700))
				(setq po9(polar pt9 (* pi 1.5) 1700))
				
				
			
				
				(setq pm1(polar pn1 (/ pi 2) 238))
				(setq pm2(polar pn2 (/ pi 2) 238))
				(setq pm3(polar pn3 (/ pi 2) 238))
				(setq pm4(polar pn4 (/ pi 2) 238))
				(setq pm5(polar pn5 (/ pi 2) 238))
				(setq pm6(polar pn6 (/ pi 2) 238))
				(setq pm7(polar pn7 (/ pi 2) 238))
				(setq pm8(polar pn8 (/ pi 2) 238))
				(setq pm9(polar pn9 (/ pi 2) 238))
				
			
			
				
				(command "layer" "s" "S-SYM_50" "")
				(COMMAND "INSERT" "S-GRID_BUB_50" pm1 "" "" "" "2.8" )(setq tx1 (entlast))
				(COMMAND "INSERT" "S-GRID_BUB_50" pm2 "" "" "" "2.7" )(setq tx2 (entlast))
				(COMMAND "INSERT" "S-GRID_BUB_50" pm3 "" "" "" "2.6" )(setq tx3 (entlast))
				(COMMAND "INSERT" "S-GRID_BUB_50" pm4 "" "" "" "C.2" )(setq tx4 (entlast))
				(COMMAND "INSERT" "S-GRID_BUB_50" pm5 "" "" "" "2.5" )(setq tx5 (entlast))
				(COMMAND "INSERT" "S-GRID_BUB_50" pm6 "" "" "" "2.4" )(setq tx6 (entlast))
				(COMMAND "INSERT" "S-GRID_BUB_50" pm7 "" "" "" "2.3" )(setq tx7 (entlast))
				(COMMAND "INSERT" "S-GRID_BUB_50" pm8 "" "" "" "2.2" )(setq tx8 (entlast))
				(COMMAND "INSERT" "S-GRID_BUB_50" pm9 "" "" "" "2.1" )(setq tx9 (entlast))
				
			

				(setq pd1(polar pn1 (* pi 1.5) 100))
				(setq pd2(polar pn2 (* pi 1.5) 100))
				(setq pd3(polar pn3 (* pi 1.5) 100))
				(setq pd4(polar pn4 (* pi 1.5) 100))
				(setq pd5(polar pn5 (* pi 1.5) 100))
				(setq pd6(polar pn6 (* pi 1.5) 100))
				(setq pd7(polar pn7 (* pi 1.5) 100))
				(setq pd8(polar pn8 (* pi 1.5) 100))
				(setq pd9(polar pn9 (* pi 1.5) 100))
				
			
				
	  			(command "layer" "s" "S-GRID-DIM_50" "") (COMMAND "-DIMSTYLE" "R" "GRID DIMS 1-50")
	    			(command "dim" "hor" pd1 pd2 pd1 "") (command "exit" "") (setq dm2 (entlast))
				(command "dim" "hor" pd2 pd3 pd2 "") (command "exit" "") (setq dm3 (entlast))
				(command "dim" "hor" pd3 pd4 pd3 "") (command "exit" "") (setq dm4 (entlast))
				(command "dim" "hor" pd4 pd5 pd4 "") (command "exit" "") (setq dm5 (entlast))
				(command "dim" "hor" pd5 pd6 pd5 "") (command "exit" "") (setq dm6 (entlast))
				(command "dim" "hor" pd6 pd7 pd6 "") (command "exit" "") (setq dm7 (entlast))
				(command "dim" "hor" pd7 pd8 pd7 "") (command "exit" "") (setq dm8 (entlast))
				(command "dim" "hor" pd8 pd9 pd8 "") (command "exit" "") (setq dm9 (entlast))
			
					
		
				(command "layer" "s" "S-GRID" "")
				(command "line" po1 pn1 "")(command "chprop" "l" "" "S" "250" "")(setq ln1(entlast)) 
				(command "line" po2 pn2 "")(command "chprop" "l" "" "S" "250" "")(setq ln2(entlast))
				(command "line" po3 pn3 "")(command "chprop" "l" "" "S" "250" "")(setq ln3(entlast))
				(command "line" po4 pn4 "")(command "chprop" "l" "" "S" "250" "")(setq ln4(entlast))
				(command "line" po5 pn5 "")(command "chprop" "l" "" "S" "250" "")(setq ln5(entlast))
				(command "line" po6 pn6 "")(command "chprop" "l" "" "S" "250" "")(setq ln6(entlast))
				(command "line" po7 pn7 "")(command "chprop" "l" "" "S" "250" "")(setq ln7(entlast))
				(command "line" po8 pn8 "")(command "chprop" "l" "" "S" "250" "")(setq ln8(entlast))
				(command "line" po9 pn9 "")(command "chprop" "l" "" "S" "250" "")(setq ln9(entlast))
			
			


	;			 				
				(initget "2.7 2.6 C.2 2.5 2.4 2.3 2.2 2.1")
				(progn
				  
				(setq delo (getkword "\nSpecify the end of grid [2.7/2.6/C.2/2.5/2.4/2.3/2.2/2.1]: "))
				(if (= delo "2.7")
					(progn
						(entdel ln3)(entdel tx3)(entdel dm3)
					  	(entdel ln4)(entdel tx4)(entdel dm4)
					  	(entdel ln5)(entdel tx5)(entdel dm5)
					  	(entdel ln6)(entdel tx6)(entdel dm6)
					  	(entdel ln7)(entdel tx7)(entdel dm7)
					  	(entdel ln8)(entdel tx8)(entdel dm8)
					  	(entdel ln9)(entdel tx9)(entdel dm9)
					  	
						
					)
				)
				(if (= delo "2.6")
					(progn
					  	(entdel ln4)(entdel tx4)(entdel dm4)
					  	(entdel ln5)(entdel tx5)(entdel dm5)
					  	(entdel ln6)(entdel tx6)(entdel dm6)
					  	(entdel ln7)(entdel tx7)(entdel dm7)
					  	(entdel ln8)(entdel tx8)(entdel dm8)
					  	(entdel ln9)(entdel tx9)(entdel dm9)
					  	
					)
				)
				(if (= delo "C.2")
					(progn
					  	
					  	(entdel ln5)(entdel tx5)(entdel dm5)
					  	(entdel ln6)(entdel tx6)(entdel dm6)
					  	(entdel ln7)(entdel tx7)(entdel dm7)
					  	(entdel ln8)(entdel tx8)(entdel dm8)
					  	(entdel ln9)(entdel tx9)(entdel dm9)
					  	
					
					)
				)
				(if (= delo "2.5")
					(progn
					  	(entdel ln6)(entdel tx6)(entdel dm6)
					  	(entdel ln7)(entdel tx7)(entdel dm7)
					  	(entdel ln8)(entdel tx8)(entdel dm8)
					  	(entdel ln9)(entdel tx9)(entdel dm9)
					  	
					)
				)
				(if (= delo "2.4")
					(progn
					  	(entdel ln7)(entdel tx7)(entdel dm7)
					  	(entdel ln8)(entdel tx8)(entdel dm8)
					  	(entdel ln9)(entdel tx9)(entdel dm9)
					  		
					)
				)
				(if (= delo "2.3")
					(progn
					  	(entdel ln8)(entdel tx8)(entdel dm8)
					  	(entdel ln9)(entdel tx9)(entdel dm9)
					  	
					)
				)
				(if (= delo "2.2")
					(progn
					  	(entdel ln9)(entdel tx9)(entdel dm9)
					  	
					)
				)
									
				)
				
				)
		
			)
			
		  
	;;;;;								
			(if (= proj "2.7")
				(progn

				(setq pt2(polar pt1 0 2500))
				(setq pt3(polar pt1 0 3860))
				(setq pt4(polar pt1 0 5220))
				(setq pt5(polar pt1 0 7720))
				(setq pt6(polar pt1 0 9720))
				(setq pt7(polar pt1 0 17555))
				(setq pt8(polar pt1 0 21170))

				
			
				(setq pn1(polar pt1 (/ pi 2) 1050))
				(setq pn2(polar pt2 (/ pi 2) 1050))
				(setq pn3(polar pt3 (/ pi 2) 1050))
				(setq pn4(polar pt4 (/ pi 2) 1050))
				(setq pn5(polar pt5 (/ pi 2) 1050))
				(setq pn6(polar pt6 (/ pi 2) 1050))
				(setq pn7(polar pt7 (/ pi 2) 1050))
				(setq pn8(polar pt8 (/ pi 2) 1050))
				
				
				
				(setq po1(polar pt1 (* pi 1.5) 1700))
				(setq po2(polar pt2 (* pi 1.5) 1700))
				(setq po3(polar pt3 (* pi 1.5) 1700))
				(setq po4(polar pt4 (* pi 1.5) 1700))
				(setq po5(polar pt5 (* pi 1.5) 1700))
				(setq po6(polar pt6 (* pi 1.5) 1700))
				(setq po7(polar pt7 (* pi 1.5) 1700))
				(setq po8(polar pt8 (* pi 1.5) 1700))
				
				
				
			
				
				(setq pm1(polar pn1 (/ pi 2) 238))
				(setq pm2(polar pn2 (/ pi 2) 238))
				(setq pm3(polar pn3 (/ pi 2) 238))
				(setq pm4(polar pn4 (/ pi 2) 238))
				(setq pm5(polar pn5 (/ pi 2) 238))
				(setq pm6(polar pn6 (/ pi 2) 238))
				(setq pm7(polar pn7 (/ pi 2) 238))
				(setq pm8(polar pn8 (/ pi 2) 238))
				
				
			
			
				
				(command "layer" "s" "S-SYM_50" "")
				(COMMAND "INSERT" "S-GRID_BUB_50" pm1 "" "" "" "2.7" )(setq tx1 (entlast))
				(COMMAND "INSERT" "S-GRID_BUB_50" pm2 "" "" "" "2.6" )(setq tx2 (entlast))
				(COMMAND "INSERT" "S-GRID_BUB_50" pm3 "" "" "" "C.2" )(setq tx3 (entlast))
				(COMMAND "INSERT" "S-GRID_BUB_50" pm4 "" "" "" "2.5" )(setq tx4 (entlast))
				(COMMAND "INSERT" "S-GRID_BUB_50" pm5 "" "" "" "2.4" )(setq tx5 (entlast))
				(COMMAND "INSERT" "S-GRID_BUB_50" pm6 "" "" "" "2.3" )(setq tx6 (entlast))
				(COMMAND "INSERT" "S-GRID_BUB_50" pm7 "" "" "" "2.2" )(setq tx7 (entlast))
				(COMMAND "INSERT" "S-GRID_BUB_50" pm8 "" "" "" "2.1" )(setq tx8 (entlast))
				
				
			

				(setq pd1(polar pn1 (* pi 1.5) 100))
				(setq pd2(polar pn2 (* pi 1.5) 100))
				(setq pd3(polar pn3 (* pi 1.5) 100))
				(setq pd4(polar pn4 (* pi 1.5) 100))
				(setq pd5(polar pn5 (* pi 1.5) 100))
				(setq pd6(polar pn6 (* pi 1.5) 100))
				(setq pd7(polar pn7 (* pi 1.5) 100))
				(setq pd8(polar pn8 (* pi 1.5) 100))
				
				
			
				
	  			(command "layer" "s" "S-GRID-DIM_50" "") (COMMAND "-DIMSTYLE" "R" "GRID DIMS 1-50")
	    			(command "dim" "hor" pd1 pd2 pd1 "") (command "exit" "") (setq dm2 (entlast))
				(command "dim" "hor" pd2 pd3 pd2 "") (command "exit" "") (setq dm3 (entlast))
				(command "dim" "hor" pd3 pd4 pd3 "") (command "exit" "") (setq dm4 (entlast))
				(command "dim" "hor" pd4 pd5 pd4 "") (command "exit" "") (setq dm5 (entlast))
				(command "dim" "hor" pd5 pd6 pd5 "") (command "exit" "") (setq dm6 (entlast))
				(command "dim" "hor" pd6 pd7 pd6 "") (command "exit" "") (setq dm7 (entlast))
				(command "dim" "hor" pd7 pd8 pd7 "") (command "exit" "") (setq dm8 (entlast))
				
			
					
		
				(command "layer" "s" "S-GRID" "")
				(command "line" po1 pn1 "")(command "chprop" "l" "" "S" "250" "")(setq ln1(entlast)) 
				(command "line" po2 pn2 "")(command "chprop" "l" "" "S" "250" "")(setq ln2(entlast))
				(command "line" po3 pn3 "")(command "chprop" "l" "" "S" "250" "")(setq ln3(entlast))
				(command "line" po4 pn4 "")(command "chprop" "l" "" "S" "250" "")(setq ln4(entlast))
				(command "line" po5 pn5 "")(command "chprop" "l" "" "S" "250" "")(setq ln5(entlast))
				(command "line" po6 pn6 "")(command "chprop" "l" "" "S" "250" "")(setq ln6(entlast))
				(command "line" po7 pn7 "")(command "chprop" "l" "" "S" "250" "")(setq ln7(entlast))
				(command "line" po8 pn8 "")(command "chprop" "l" "" "S" "250" "")(setq ln8(entlast))
				
			

	;			 				
				(initget "2.6 C.2 2.5 2.4 2.3 2.2 2.1")
				(progn
				  
				(setq delo (getkword "\nSpecify the end of grid [2.6/C.2/2.5/2.4/2.3/2.2/2.1]: "))
				(if (= delo "2.6")
					(progn
						(entdel ln3)(entdel tx3)(entdel dm3)
					  	(entdel ln4)(entdel tx4)(entdel dm4)
					  	(entdel ln5)(entdel tx5)(entdel dm5)
					  	(entdel ln6)(entdel tx6)(entdel dm6)
					  	(entdel ln7)(entdel tx7)(entdel dm7)
					  	(entdel ln8)(entdel tx8)(entdel dm8)
					  	
					)
				)
				(if (= delo "C.2")
					(progn
					  	(entdel ln4)(entdel tx4)(entdel dm4)
					  	(entdel ln5)(entdel tx5)(entdel dm5)
					  	(entdel ln6)(entdel tx6)(entdel dm6)
					  	(entdel ln7)(entdel tx7)(entdel dm7)
					  	(entdel ln8)(entdel tx8)(entdel dm8)
					  	
					  	
					)
				)
				(if (= delo "2.5")
					(progn
					  	
					  	(entdel ln5)(entdel tx5)(entdel dm5)
					  	(entdel ln6)(entdel tx6)(entdel dm6)
					  	(entdel ln7)(entdel tx7)(entdel dm7)
					  	(entdel ln8)(entdel tx8)(entdel dm8)
					  	
					  	
					
					)
				)
				(if (= delo "2.4")
					(progn
					  	(entdel ln6)(entdel tx6)(entdel dm6)
					  	(entdel ln7)(entdel tx7)(entdel dm7)
					  	(entdel ln8)(entdel tx8)(entdel dm8)
					  	
					  	
					)
				)
				(if (= delo "2.3")
					(progn
					  	(entdel ln7)(entdel tx7)(entdel dm7)
					  	(entdel ln8)(entdel tx8)(entdel dm8)
					  	
					  		
					)
				)
				(if (= delo "2.2")
					(progn
					  	(entdel ln8)(entdel tx8)(entdel dm8)
					  	
					  	
					)
				)
												
				)
				
				)
		
			)

		  

	;;;;;;;						

			(if (= proj "2.6")
				(progn

				(setq pt2(polar pt1 0 1360))
				(setq pt3(polar pt1 0 2720))
				(setq pt4(polar pt1 0 5220))
				(setq pt5(polar pt1 0 7220))
				(setq pt6(polar pt1 0 15055))
				(setq pt7(polar pt1 0 18670))

				
				(setq pn1(polar pt1 (/ pi 2) 1050))
				(setq pn2(polar pt2 (/ pi 2) 1050))
				(setq pn3(polar pt3 (/ pi 2) 1050))
				(setq pn4(polar pt4 (/ pi 2) 1050))
				(setq pn5(polar pt5 (/ pi 2) 1050))
				(setq pn6(polar pt6 (/ pi 2) 1050))
				(setq pn7(polar pt7 (/ pi 2) 1050))
				
				
				(setq po1(polar pt1 (* pi 1.5) 1700))
				(setq po2(polar pt2 (* pi 1.5) 1700))
				(setq po3(polar pt3 (* pi 1.5) 1700))
				(setq po4(polar pt4 (* pi 1.5) 1700))
				(setq po5(polar pt5 (* pi 1.5) 1700))
				(setq po6(polar pt6 (* pi 1.5) 1700))
				(setq po7(polar pt7 (* pi 1.5) 1700))
			
				
				(setq pm1(polar pn1 (/ pi 2) 238))
				(setq pm2(polar pn2 (/ pi 2) 238))
				(setq pm3(polar pn3 (/ pi 2) 238))
				(setq pm4(polar pn4 (/ pi 2) 238))
				(setq pm5(polar pn5 (/ pi 2) 238))
				(setq pm6(polar pn6 (/ pi 2) 238))
				(setq pm7(polar pn7 (/ pi 2) 238))
				
				
				(command "layer" "s" "S-SYM_50" "")
				(COMMAND "INSERT" "S-GRID_BUB_50" pm1 "" "" "" "2.6" )(setq tx1 (entlast))
				(COMMAND "INSERT" "S-GRID_BUB_50" pm2 "" "" "" "C.2" )(setq tx2 (entlast))
				(COMMAND "INSERT" "S-GRID_BUB_50" pm3 "" "" "" "2.5" )(setq tx3 (entlast))
				(COMMAND "INSERT" "S-GRID_BUB_50" pm4 "" "" "" "2.4" )(setq tx4 (entlast))
				(COMMAND "INSERT" "S-GRID_BUB_50" pm5 "" "" "" "2.3" )(setq tx5 (entlast))
				(COMMAND "INSERT" "S-GRID_BUB_50" pm6 "" "" "" "2.2" )(setq tx6 (entlast))
				(COMMAND "INSERT" "S-GRID_BUB_50" pm7 "" "" "" "2.1" )(setq tx7 (entlast))
				

				(setq pd1(polar pn1 (* pi 1.5) 100))
				(setq pd2(polar pn2 (* pi 1.5) 100))
				(setq pd3(polar pn3 (* pi 1.5) 100))
				(setq pd4(polar pn4 (* pi 1.5) 100))
				(setq pd5(polar pn5 (* pi 1.5) 100))
				(setq pd6(polar pn6 (* pi 1.5) 100))
				(setq pd7(polar pn7 (* pi 1.5) 100))
				
				
	  			(command "layer" "s" "S-GRID-DIM_50" "") (COMMAND "-DIMSTYLE" "R" "GRID DIMS 1-50")
	    			(command "dim" "hor" pd1 pd2 pd1 "") (command "exit" "") (setq dm2 (entlast))
				(command "dim" "hor" pd2 pd3 pd2 "") (command "exit" "") (setq dm3 (entlast))
				(command "dim" "hor" pd3 pd4 pd3 "") (command "exit" "") (setq dm4 (entlast))
				(command "dim" "hor" pd4 pd5 pd4 "") (command "exit" "") (setq dm5 (entlast))
				(command "dim" "hor" pd5 pd6 pd5 "") (command "exit" "") (setq dm6 (entlast))
				(command "dim" "hor" pd6 pd7 pd6 "") (command "exit" "") (setq dm7 (entlast))
				
				(command "layer" "s" "S-GRID" "")
				(command "line" po1 pn1 "")(command "chprop" "l" "" "S" "250" "")(setq ln1(entlast)) 
				(command "line" po2 pn2 "")(command "chprop" "l" "" "S" "250" "")(setq ln2(entlast))
				(command "line" po3 pn3 "")(command "chprop" "l" "" "S" "250" "")(setq ln3(entlast))
				(command "line" po4 pn4 "")(command "chprop" "l" "" "S" "250" "")(setq ln4(entlast))
				(command "line" po5 pn5 "")(command "chprop" "l" "" "S" "250" "")(setq ln5(entlast))
				(command "line" po6 pn6 "")(command "chprop" "l" "" "S" "250" "")(setq ln6(entlast))
				(command "line" po7 pn7 "")(command "chprop" "l" "" "S" "250" "")(setq ln7(entlast))
				

	;			 				
				(initget "C.2 2.5 2.4 2.3 2.2 2.1")
				(progn
				  
				(setq delo (getkword "\nSpecify the end of grid [C.2/2.5/2.4/2.3/2.2/2.1]: "))
				(if (= delo "C.2")
					(progn
						(entdel ln3)(entdel tx3)(entdel dm3)
					  	(entdel ln4)(entdel tx4)(entdel dm4)
					  	(entdel ln5)(entdel tx5)(entdel dm5)
					  	(entdel ln6)(entdel tx6)(entdel dm6)
					  	(entdel ln7)(entdel tx7)(entdel dm7)
					  			  	
					)
				)
				(if (= delo "2.5")
					(progn
					  	(entdel ln4)(entdel tx4)(entdel dm4)
					  	(entdel ln5)(entdel tx5)(entdel dm5)
					  	(entdel ln6)(entdel tx6)(entdel dm6)
					  	(entdel ln7)(entdel tx7)(entdel dm7)
					  	
					)
				)
				(if (= delo "2.4")
					(progn
					  	
					  	(entdel ln5)(entdel tx5)(entdel dm5)
					  	(entdel ln6)(entdel tx6)(entdel dm6)
					  	(entdel ln7)(entdel tx7)(entdel dm7)
					  
					)
				)
				(if (= delo "2.3")
					(progn
					  	(entdel ln6)(entdel tx6)(entdel dm6)
					  	(entdel ln7)(entdel tx7)(entdel dm7)
					  
					)
				)
				(if (= delo "2.2")
					(progn
					  	(entdel ln7)(entdel tx7)(entdel dm7)
					  		
					)
				)
															
				)
				
				)
		
			)
	;;;;;						  
			(if (= proj "C.2")
				(progn

				(setq pt2(polar pt1 0 1360))
				(setq pt3(polar pt1 0 3860))
				(setq pt4(polar pt1 0 5860))
				(setq pt5(polar pt1 0 13695))
				(setq pt6(polar pt1 0 17310))

			
				(setq pn1(polar pt1 (/ pi 2) 1050))
				(setq pn2(polar pt2 (/ pi 2) 1050))
				(setq pn3(polar pt3 (/ pi 2) 1050))
				(setq pn4(polar pt4 (/ pi 2) 1050))
				(setq pn5(polar pt5 (/ pi 2) 1050))
				(setq pn6(polar pt6 (/ pi 2) 1050))
			
				(setq po1(polar pt1 (* pi 1.5) 1700))
				(setq po2(polar pt2 (* pi 1.5) 1700))
				(setq po3(polar pt3 (* pi 1.5) 1700))
				(setq po4(polar pt4 (* pi 1.5) 1700))
				(setq po5(polar pt5 (* pi 1.5) 1700))
				(setq po6(polar pt6 (* pi 1.5) 1700))
				
				(setq pm1(polar pn1 (/ pi 2) 238))
				(setq pm2(polar pn2 (/ pi 2) 238))
				(setq pm3(polar pn3 (/ pi 2) 238))
				(setq pm4(polar pn4 (/ pi 2) 238))
				(setq pm5(polar pn5 (/ pi 2) 238))
				(setq pm6(polar pn6 (/ pi 2) 238))
				
				(command "layer" "s" "S-SYM_50" "")
				(COMMAND "INSERT" "S-GRID_BUB_50" pm1 "" "" "" "C.2" )(setq tx1 (entlast))
				(COMMAND "INSERT" "S-GRID_BUB_50" pm2 "" "" "" "2.5" )(setq tx2 (entlast))
				(COMMAND "INSERT" "S-GRID_BUB_50" pm3 "" "" "" "2.4" )(setq tx3 (entlast))
				(COMMAND "INSERT" "S-GRID_BUB_50" pm4 "" "" "" "2.3" )(setq tx4 (entlast))
				(COMMAND "INSERT" "S-GRID_BUB_50" pm5 "" "" "" "2.2" )(setq tx5 (entlast))
				(COMMAND "INSERT" "S-GRID_BUB_50" pm6 "" "" "" "2.1" )(setq tx6 (entlast))
				
				(setq pd1(polar pn1 (* pi 1.5) 100))
				(setq pd2(polar pn2 (* pi 1.5) 100))
				(setq pd3(polar pn3 (* pi 1.5) 100))
				(setq pd4(polar pn4 (* pi 1.5) 100))
				(setq pd5(polar pn5 (* pi 1.5) 100))
				(setq pd6(polar pn6 (* pi 1.5) 100))
				
	  			(command "layer" "s" "S-GRID-DIM_50" "") (COMMAND "-DIMSTYLE" "R" "GRID DIMS 1-50")
	    			(command "dim" "hor" pd1 pd2 pd1 "") (command "exit" "") (setq dm2 (entlast))
				(command "dim" "hor" pd2 pd3 pd2 "") (command "exit" "") (setq dm3 (entlast))
				(command "dim" "hor" pd3 pd4 pd3 "") (command "exit" "") (setq dm4 (entlast))
				(command "dim" "hor" pd4 pd5 pd4 "") (command "exit" "") (setq dm5 (entlast))
				(command "dim" "hor" pd5 pd6 pd5 "") (command "exit" "") (setq dm6 (entlast))
				
				(command "layer" "s" "S-GRID" "")
				(command "line" po1 pn1 "")(command "chprop" "l" "" "S" "250" "")(setq ln1(entlast)) 
				(command "line" po2 pn2 "")(command "chprop" "l" "" "S" "250" "")(setq ln2(entlast))
				(command "line" po3 pn3 "")(command "chprop" "l" "" "S" "250" "")(setq ln3(entlast))
				(command "line" po4 pn4 "")(command "chprop" "l" "" "S" "250" "")(setq ln4(entlast))
				(command "line" po5 pn5 "")(command "chprop" "l" "" "S" "250" "")(setq ln5(entlast))
				(command "line" po6 pn6 "")(command "chprop" "l" "" "S" "250" "")(setq ln6(entlast))
				
	;			 				
				(initget "2.5/2.4/2.3/2.2/2.1")
				(progn
				  
				(setq delo (getkword "\nSpecify the end of grid [2.5/2.4/2.3/2.2/2.1]: "))
				(if (= delo "2.5")
					(progn
						(entdel ln3)(entdel tx3)(entdel dm3)
					  	(entdel ln4)(entdel tx4)(entdel dm4)
					  	(entdel ln5)(entdel tx5)(entdel dm5)
					  	(entdel ln6)(entdel tx6)(entdel dm6)
					  			  	
					)
				)
				(if (= delo "2.4")
					(progn
					  	(entdel ln4)(entdel tx4)(entdel dm4)
					  	(entdel ln5)(entdel tx5)(entdel dm5)
					  	(entdel ln6)(entdel tx6)(entdel dm6)
					  	
					)
				)
				(if (= delo "2.3")
					(progn
					  	
					  	(entdel ln5)(entdel tx5)(entdel dm5)
					  	(entdel ln6)(entdel tx6)(entdel dm6)
					  
					)
				)
				(if (= delo "2.2")
					(progn
					  	(entdel ln6)(entdel tx6)(entdel dm6)
					  
					)
				)
																		
				)
				
				)
		
			)


	;;;;									
			(if (= proj "2.5")
				(progn

				(setq pt2(polar pt1 0 2500))
				(setq pt3(polar pt1 0 4500))
				(setq pt4(polar pt1 0 12335))
				(setq pt5(polar pt1 0 15950))

			
				(setq pn1(polar pt1 (/ pi 2) 1050))
				(setq pn2(polar pt2 (/ pi 2) 1050))
				(setq pn3(polar pt3 (/ pi 2) 1050))
				(setq pn4(polar pt4 (/ pi 2) 1050))
				(setq pn5(polar pt5 (/ pi 2) 1050))
				
				(setq po1(polar pt1 (* pi 1.5) 1700))
				(setq po2(polar pt2 (* pi 1.5) 1700))
				(setq po3(polar pt3 (* pi 1.5) 1700))
				(setq po4(polar pt4 (* pi 1.5) 1700))
				(setq po5(polar pt5 (* pi 1.5) 1700))
				
				(setq pm1(polar pn1 (/ pi 2) 238))
				(setq pm2(polar pn2 (/ pi 2) 238))
				(setq pm3(polar pn3 (/ pi 2) 238))
				(setq pm4(polar pn4 (/ pi 2) 238))
				(setq pm5(polar pn5 (/ pi 2) 238))
				
				(command "layer" "s" "S-SYM_50" "")
				(COMMAND "INSERT" "S-GRID_BUB_50" pm1 "" "" "" "2.5" )(setq tx1 (entlast))
				(COMMAND "INSERT" "S-GRID_BUB_50" pm2 "" "" "" "2.4" )(setq tx2 (entlast))
				(COMMAND "INSERT" "S-GRID_BUB_50" pm3 "" "" "" "2.3" )(setq tx3 (entlast))
				(COMMAND "INSERT" "S-GRID_BUB_50" pm4 "" "" "" "2.2" )(setq tx4 (entlast))
				(COMMAND "INSERT" "S-GRID_BUB_50" pm5 "" "" "" "2.1" )(setq tx5 (entlast))
				
				(setq pd1(polar pn1 (* pi 1.5) 100))
				(setq pd2(polar pn2 (* pi 1.5) 100))
				(setq pd3(polar pn3 (* pi 1.5) 100))
				(setq pd4(polar pn4 (* pi 1.5) 100))
				(setq pd5(polar pn5 (* pi 1.5) 100))
				
	  			(command "layer" "s" "S-GRID-DIM_50" "") (COMMAND "-DIMSTYLE" "R" "GRID DIMS 1-50")
	    			(command "dim" "hor" pd1 pd2 pd1 "") (command "exit" "") (setq dm2 (entlast))
				(command "dim" "hor" pd2 pd3 pd2 "") (command "exit" "") (setq dm3 (entlast))
				(command "dim" "hor" pd3 pd4 pd3 "") (command "exit" "") (setq dm4 (entlast))
				(command "dim" "hor" pd4 pd5 pd4 "") (command "exit" "") (setq dm5 (entlast))
				
				(command "layer" "s" "S-GRID" "")
				(command "line" po1 pn1 "")(command "chprop" "l" "" "S" "250" "")(setq ln1(entlast)) 
				(command "line" po2 pn2 "")(command "chprop" "l" "" "S" "250" "")(setq ln2(entlast))
				(command "line" po3 pn3 "")(command "chprop" "l" "" "S" "250" "")(setq ln3(entlast))
				(command "line" po4 pn4 "")(command "chprop" "l" "" "S" "250" "")(setq ln4(entlast))
				(command "line" po5 pn5 "")(command "chprop" "l" "" "S" "250" "")(setq ln5(entlast))
				
	;			 				
				(initget "2.4 2.3 2.2 2.1")
				(progn
				  
				(setq delo (getkword "\nSpecify the end of grid [2.4/2.3/2.2/2.1]: "))
				(if (= delo "2.4")
					(progn
						(entdel ln3)(entdel tx3)(entdel dm3)
					  	(entdel ln4)(entdel tx4)(entdel dm4)
					  	(entdel ln5)(entdel tx5)(entdel dm5)
					)
				)
				(if (= delo "2.3")
					(progn
					  	(entdel ln4)(entdel tx4)(entdel dm4)
					  	(entdel ln5)(entdel tx5)(entdel dm5)
					 )
				)
				(if (= delo "2.2")
					(progn
					  	
					  	(entdel ln5)(entdel tx5)(entdel dm5)
					)
				)
																		
				)
				
				)
		
			)

	;;;;						
			(if (= proj "2.4")
				(progn

				(setq pt2(polar pt1 0 2000))
				(setq pt3(polar pt1 0 9835))
				(setq pt4(polar pt1 0 13450))

				
				(setq pn1(polar pt1 (/ pi 2) 1050))
				(setq pn2(polar pt2 (/ pi 2) 1050))
				(setq pn3(polar pt3 (/ pi 2) 1050))
				(setq pn4(polar pt4 (/ pi 2) 1050))
				
				(setq po1(polar pt1 (* pi 1.5) 1700))
				(setq po2(polar pt2 (* pi 1.5) 1700))
				(setq po3(polar pt3 (* pi 1.5) 1700))
				(setq po4(polar pt4 (* pi 1.5) 1700))
				
				(setq pm1(polar pn1 (/ pi 2) 238))
				(setq pm2(polar pn2 (/ pi 2) 238))
				(setq pm3(polar pn3 (/ pi 2) 238))
				(setq pm4(polar pn4 (/ pi 2) 238))
				
				(command "layer" "s" "S-SYM_50" "")
				(COMMAND "INSERT" "S-GRID_BUB_50" pm1 "" "" "" "2.4" )(setq tx1 (entlast))
				(COMMAND "INSERT" "S-GRID_BUB_50" pm2 "" "" "" "2.3" )(setq tx2 (entlast))
				(COMMAND "INSERT" "S-GRID_BUB_50" pm3 "" "" "" "2.2" )(setq tx3 (entlast))
				(COMMAND "INSERT" "S-GRID_BUB_50" pm4 "" "" "" "2.1" )(setq tx4 (entlast))
				
				(setq pd1(polar pn1 (* pi 1.5) 100))
				(setq pd2(polar pn2 (* pi 1.5) 100))
				(setq pd3(polar pn3 (* pi 1.5) 100))
				(setq pd4(polar pn4 (* pi 1.5) 100))
				
	  			(command "layer" "s" "S-GRID-DIM_50" "") (COMMAND "-DIMSTYLE" "R" "GRID DIMS 1-50")
	    			(command "dim" "hor" pd1 pd2 pd1 "") (command "exit" "") (setq dm2 (entlast))
				(command "dim" "hor" pd2 pd3 pd2 "") (command "exit" "") (setq dm3 (entlast))
				(command "dim" "hor" pd3 pd4 pd3 "") (command "exit" "") (setq dm4 (entlast))
				
				(command "layer" "s" "S-GRID" "")
				(command "line" po1 pn1 "")(command "chprop" "l" "" "S" "250" "")(setq ln1(entlast)) 
				(command "line" po2 pn2 "")(command "chprop" "l" "" "S" "250" "")(setq ln2(entlast))
				(command "line" po3 pn3 "")(command "chprop" "l" "" "S" "250" "")(setq ln3(entlast))
				(command "line" po4 pn4 "")(command "chprop" "l" "" "S" "250" "")(setq ln4(entlast))
				
	;			 				
				(initget "2.3 2.2 2.1")
				(progn
				  
				(setq delo (getkword "\nSpecify the end of grid [2.3/2.2/2.1]: "))
				(if (= delo "2.3")
					(progn
						(entdel ln3)(entdel tx3)(entdel dm3)
					  	(entdel ln4)(entdel tx4)(entdel dm4)
					)
				)
				(if (= delo "2.2")
					(progn
					  	(entdel ln4)(entdel tx4)(entdel dm4)
					 )
				)
																					
				)
				
				)
		
			)	

	;;;;											
		  (if (= proj "2.3")
				(progn

				(setq pt2(polar pt1 0 7835))
				(setq pt3(polar pt1 0 11450))

				
				(setq pn1(polar pt1 (/ pi 2) 1050))
				(setq pn2(polar pt2 (/ pi 2) 1050))
				(setq pn3(polar pt3 (/ pi 2) 1050))
				
				(setq po1(polar pt1 (* pi 1.5) 1700))
				(setq po2(polar pt2 (* pi 1.5) 1700))
				(setq po3(polar pt3 (* pi 1.5) 1700))
				
				(setq pm1(polar pn1 (/ pi 2) 238))
				(setq pm2(polar pn2 (/ pi 2) 238))
				(setq pm3(polar pn3 (/ pi 2) 238))
				
				(command "layer" "s" "S-SYM_50" "")
				(COMMAND "INSERT" "S-GRID_BUB_50" pm1 "" "" "" "2.3" )(setq tx1 (entlast))
				(COMMAND "INSERT" "S-GRID_BUB_50" pm2 "" "" "" "2.2" )(setq tx2 (entlast))
				(COMMAND "INSERT" "S-GRID_BUB_50" pm3 "" "" "" "2.1" )(setq tx3 (entlast))
				
				(setq pd1(polar pn1 (* pi 1.5) 100))
				(setq pd2(polar pn2 (* pi 1.5) 100))
				(setq pd3(polar pn3 (* pi 1.5) 100))
				
	  			(command "layer" "s" "S-GRID-DIM_50" "") (COMMAND "-DIMSTYLE" "R" "GRID DIMS 1-50")
	    			(command "dim" "hor" pd1 pd2 pd1 "") (command "exit" "") (setq dm2 (entlast))
				(command "dim" "hor" pd2 pd3 pd2 "") (command "exit" "") (setq dm3 (entlast))
				
				(command "layer" "s" "S-GRID" "")
				(command "line" po1 pn1 "")(command "chprop" "l" "" "S" "250" "")(setq ln1(entlast)) 
				(command "line" po2 pn2 "")(command "chprop" "l" "" "S" "250" "")(setq ln2(entlast))
				(command "line" po3 pn3 "")(command "chprop" "l" "" "S" "250" "")(setq ln3(entlast))
				
	;			 				
				(initget "2.2 2.1")
				(progn
				  
				(setq delo (getkword "\nSpecify the end of grid [2.2/2.1]: "))
				(if (= delo "2.2")
					(progn
						(entdel ln3)(entdel tx3)(entdel dm3)
					 )
				)
																								
				)
				
				)
		
			)


	;;;;;;;											
		(if (= proj "2.2")
				(progn

				(setq pt2(polar pt1 0 3615))
				
				(setq pn1(polar pt1 (/ pi 2) 1050))
				(setq pn2(polar pt2 (/ pi 2) 1050))
				
				(setq po1(polar pt1 (* pi 1.5) 1700))
				(setq po2(polar pt2 (* pi 1.5) 1700))
				
				(setq pm1(polar pn1 (/ pi 2) 238))
				(setq pm2(polar pn2 (/ pi 2) 238))
				
				(command "layer" "s" "S-SYM_50" "")
				(COMMAND "INSERT" "S-GRID_BUB_50" pm1 "" "" "" "2.2" )(setq tx1 (entlast))
				(COMMAND "INSERT" "S-GRID_BUB_50" pm2 "" "" "" "2.1" )(setq tx2 (entlast))
				
				(setq pd1(polar pn1 (* pi 1.5) 100))
				(setq pd2(polar pn2 (* pi 1.5) 100))
				
	  			(command "layer" "s" "S-GRID-DIM_50" "") (COMMAND "-DIMSTYLE" "R" "GRID DIMS 1-50")
	    			(command "dim" "hor" pd1 pd2 pd1 "") (command "exit" "") (setq dm2 (entlast))
				
				(command "layer" "s" "S-GRID" "")
				(command "line" po1 pn1 "")(command "chprop" "l" "" "S" "250" "")(setq ln1(entlast)) 
				(command "line" po2 pn2 "")(command "chprop" "l" "" "S" "250" "")(setq ln2(entlast))
				
				)
		
			)	
		  
	;;;;			
		(if (= proj "2.1")
				(progn

						
				(setq pn1(polar pt1 (/ pi 2) 1050))
				
				(setq po1(polar pt1 (* pi 1.5) 1700))
				
				(setq pm1(polar pn1 (/ pi 2) 238))
				
				(command "layer" "s" "S-SYM_50" "")
				(COMMAND "INSERT" "S-GRID_BUB_50" pm1 "" "" "" "2.1" )(setq tx1 (entlast))
				
				(setq pd1(polar pn1 (* pi 1.5) 100))
				   			
				(command "layer" "s" "S-GRID" "")
				(command "line" po1 pn1 "")(command "chprop" "l" "" "S" "250" "")(setq ln1(entlast)) 
				
				)
		
			)
	;;;;						  
		  

		  )
	  )
	  )





  
)
  (setvar "osmode" snap)
  (COMMAND "UNDO" "END")
)