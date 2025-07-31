	switch (t->back) {
	default: Uerror("bad return move");
	case  0: goto R999; /* nothing to undo */

		 /* PROC Robot */

	case 3: // STATE 1
		;
		XX = 1;
		unrecv(now.toRobot, XX-1, 0, 2, 1);
		;
		;
		goto R999;

	case 4: // STATE 3
		;
		XX = 1;
		unrecv(now.toRobot, XX-1, 0, 1, 1);
		;
		;
		goto R999;
;
		;
		
	case 6: // STATE 8
		;
		XX = 1;
		unrecv(now.toRobot, XX-1, 0, 1, 1);
		;
		;
		goto R999;

	case 7: // STATE 10
		;
		_m = unsend(now.toControlR);
		;
		goto R999;

	case 8: // STATE 14
		;
		_m = unsend(now.toControlR);
		;
		goto R999;

	case 9: // STATE 16
		;
		_m = unsend(now.toControlR);
		;
		goto R999;

	case 10: // STATE 21
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* PROC Controller */

	case 11: // STATE 1
		;
		XX = 1;
		unrecv(now.toControlU, XX-1, 0, ((P1 *)_this)->msg, 1);
		((P1 *)_this)->msg = trpt->bup.oval;
		;
		;
		goto R999;

	case 12: // STATE 2
		;
	/* 0 */	((P1 *)_this)->msg = trpt->bup.oval;
		;
		;
		goto R999;

	case 13: // STATE 3
		;
		_m = unsend(now.toRobot);
		;
		goto R999;

	case 14: // STATE 5
		;
	/* 0 */	((P1 *)_this)->msg = trpt->bup.oval;
		;
		;
		goto R999;
;
		;
		
	case 16: // STATE 13
		;
		XX = 1;
		unrecv(now.toControlU, XX-1, 0, 5, 1);
		;
		;
		goto R999;

	case 17: // STATE 14
		;
		_m = unsend(now.toRobot);
		;
		goto R999;
;
		;
		
	case 19: // STATE 17
		;
		XX = 1;
		unrecv(now.toControlR, XX-1, 0, 4, 1);
		;
		;
		goto R999;
;
		;
		
	case 21: // STATE 22
		;
		XX = 1;
		unrecv(now.toControlR, XX-1, 0, 3, 1);
		;
		;
		goto R999;
;
		;
		
	case 23: // STATE 27
		;
		XX = 1;
		unrecv(now.toControlU, XX-1, 0, 6, 1);
		;
		;
		goto R999;

	case 24: // STATE 32
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* PROC User */

	case 25: // STATE 1
		;
		_m = unsend(now.toControlU);
		;
		goto R999;

	case 26: // STATE 2
		;
		_m = unsend(now.toControlU);
		;
		goto R999;

	case 27: // STATE 3
		;
		_m = unsend(now.toControlU);
		;
		goto R999;

	case 28: // STATE 7
		;
		p_restor(II);
		;
		;
		goto R999;
	}

