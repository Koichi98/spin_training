	switch (t->back) {
	default: Uerror("bad return move");
	case  0: goto R999; /* nothing to undo */

		 /* CLAIM upEventually */
;
		;
		;
		;
		
	case 5: // STATE 13
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* PROC User */
;
		;
		
	case 7: // STATE 2
		;
		now.currentEV = trpt->bup.oval;
		;
		goto R999;

	case 8: // STATE 3
		;
		now.currentEV = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 10: // STATE 5
		;
		now.currentEV = trpt->bup.oval;
		;
		goto R999;

	case 11: // STATE 6
		;
		now.upIssued = trpt->bup.oval;
		;
		goto R999;

	case 12: // STATE 7
		;
		now.currentEV = trpt->bup.oval;
		;
		goto R999;

	case 13: // STATE 8
		;
		now.currentEV = trpt->bup.oval;
		;
		goto R999;

	case 14: // STATE 11
		;
		now.endUser = trpt->bup.oval;
		;
		goto R999;

	case 15: // STATE 12
		;
		now.startUser = trpt->bup.oval;
		;
		goto R999;

	case 16: // STATE 16
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* PROC Loader */

	case 17: // STATE 2
		;
		now.startLoader = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 19: // STATE 20
		;
		now.count = trpt->bup.ovals[2];
		now.stateLoader = trpt->bup.ovals[1];
		now.pstateLoader = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 3);
		goto R999;
;
		;
		
	case 21: // STATE 20
		;
		now.count = trpt->bup.ovals[2];
		now.stateLoader = trpt->bup.ovals[1];
		now.pstateLoader = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 3);
		goto R999;

	case 22: // STATE 20
		;
		now.count = trpt->bup.ovals[2];
		now.stateLoader = trpt->bup.ovals[1];
		now.pstateLoader = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 3);
		goto R999;

	case 23: // STATE 20
		;
		now.count = trpt->bup.ovals[1];
		now.stateLoader = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 24: // STATE 25
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* PROC Player */

	case 25: // STATE 2
		;
		now.startPlayer = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 27: // STATE 21
		;
		now.count = trpt->bup.ovals[2];
		now.statePlayer = trpt->bup.ovals[1];
		now.pstatePlayer = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 3);
		goto R999;
;
		;
		
	case 29: // STATE 21
		;
		now.count = trpt->bup.ovals[2];
		now.statePlayer = trpt->bup.ovals[1];
		now.pstatePlayer = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 3);
		goto R999;

	case 30: // STATE 21
		;
		now.count = trpt->bup.ovals[3];
		now.statePlayer = trpt->bup.ovals[2];
		now.upPerformed = trpt->bup.ovals[1];
		now.pstatePlayer = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 4);
		goto R999;

	case 31: // STATE 21
		;
		now.count = trpt->bup.ovals[1];
		now.statePlayer = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 32: // STATE 26
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* PROC Lamp */

	case 33: // STATE 2
		;
		now.startLamp = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 35: // STATE 18
		;
		now.count = trpt->bup.ovals[2];
		now.stateLamp = trpt->bup.ovals[1];
		now.pstateLamp = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 3);
		goto R999;
;
		;
		
	case 37: // STATE 18
		;
		now.count = trpt->bup.ovals[2];
		now.stateLamp = trpt->bup.ovals[1];
		now.pstateLamp = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 3);
		goto R999;

	case 38: // STATE 18
		;
		now.count = trpt->bup.ovals[1];
		now.stateLamp = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 39: // STATE 23
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* PROC Go */

	case 40: // STATE 3
		;
		now.startLoader = trpt->bup.ovals[2];
		now.startPlayer = trpt->bup.ovals[1];
		now.startLamp = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 3);
		goto R999;

	case 41: // STATE 7
		;
		now.startUser = trpt->bup.ovals[1];
		now.endUser = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 42: // STATE 10
		;
		now.count = trpt->bup.oval;
		;
		goto R999;

	case 43: // STATE 16
		;
		now.stateLoader = trpt->bup.ovals[5];
		now.statePlayer = trpt->bup.ovals[4];
		now.stateLamp = trpt->bup.ovals[3];
		now.startLoader = trpt->bup.ovals[2];
		now.startPlayer = trpt->bup.ovals[1];
		now.startLamp = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 6);
		goto R999;
;
		;
		
	case 45: // STATE 22
		;
		now.startLoader = trpt->bup.ovals[2];
		now.startPlayer = trpt->bup.ovals[1];
		now.startLamp = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 3);
		goto R999;

	case 46: // STATE 28
		;
		p_restor(II);
		;
		;
		goto R999;
	}

