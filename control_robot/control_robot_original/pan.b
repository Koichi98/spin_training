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

	case 4: // STATE 4
		;
		XX = 1;
		unrecv(now.toRobot, XX-1, 0, 1, 1);
		;
		;
		goto R999;

	case 5: // STATE 8
		;
		XX = 1;
		unrecv(now.toRobot, XX-1, 0, 1, 1);
		;
		;
		goto R999;

	case 6: // STATE 9
		;
		_m = unsend(now.toControl);
		;
		goto R999;

	case 7: // STATE 12
		;
		_m = unsend(now.toControl);
		;
		goto R999;

	case 8: // STATE 15
		;
		_m = unsend(now.toControl);
		;
		goto R999;

	case 9: // STATE 21
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* PROC Controller */

	case 10: // STATE 1
		;
		XX = 1;
		unrecv(now.toControl, XX-1, 0, ((P1 *)_this)->msg, 1);
		((P1 *)_this)->msg = trpt->bup.oval;
		;
		;
		goto R999;

	case 11: // STATE 2
		;
	/* 0 */	((P1 *)_this)->msg = trpt->bup.oval;
		;
		;
		goto R999;

	case 12: // STATE 3
		;
		_m = unsend(now.toRobot);
		;
		goto R999;

	case 13: // STATE 5
		;
	/* 0 */	((P1 *)_this)->msg = trpt->bup.oval;
		;
		;
		goto R999;

	case 14: // STATE 12
		;
		XX = 1;
		unrecv(now.toControl, XX-1, 0, ((P1 *)_this)->msg, 1);
		((P1 *)_this)->msg = trpt->bup.oval;
		;
		;
		goto R999;

	case 15: // STATE 13
		;
	/* 0 */	((P1 *)_this)->msg = trpt->bup.oval;
		;
		;
		goto R999;

	case 16: // STATE 14
		;
		_m = unsend(now.toRobot);
		;
		goto R999;

	case 17: // STATE 15
		;
	/* 0 */	((P1 *)_this)->msg = trpt->bup.oval;
		;
		;
		goto R999;

	case 18: // STATE 18
		;
	/* 0 */	((P1 *)_this)->msg = trpt->bup.oval;
		;
		;
		goto R999;

	case 19: // STATE 21
		;
	/* 0 */	((P1 *)_this)->msg = trpt->bup.oval;
		;
		;
		goto R999;

	case 20: // STATE 28
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* PROC User */

	case 21: // STATE 1
		;
		_m = unsend(now.toControl);
		;
		goto R999;

	case 22: // STATE 2
		;
		_m = unsend(now.toControl);
		;
		goto R999;

	case 23: // STATE 3
		;
		_m = unsend(now.toControl);
		;
		goto R999;

	case 24: // STATE 7
		;
		p_restor(II);
		;
		;
		goto R999;
	}

