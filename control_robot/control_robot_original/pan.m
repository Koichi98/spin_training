#define rand	pan_rand
#define pthread_equal(a,b)	((a)==(b))
#if defined(HAS_CODE) && defined(VERBOSE)
	#ifdef BFS_PAR
		bfs_printf("Pr: %d Tr: %d\n", II, t->forw);
	#else
		cpu_printf("Pr: %d Tr: %d\n", II, t->forw);
	#endif
#endif
	switch (t->forw) {
	default: Uerror("bad forward move");
	case 0:	/* if without executable clauses */
		continue;
	case 1: /* generic 'goto' or 'skip' */
		IfNotBlocked
		_m = 3; goto P999;
	case 2: /* generic 'else' */
		IfNotBlocked
		if (trpt->o_pm&1) continue;
		_m = 3; goto P999;

		 /* PROC Robot */
	case 3: // STATE 1 - controller_robot.pml:56 - [toRobot?Start] (18:0:0 - 1)
		reached[2][1] = 1;
		if (q_len(now.toRobot) == 0) continue;

		XX=1;
		if (2 != qrecv(now.toRobot, 0, 0, 0)) continue;
		
#ifndef BFS_PAR
		if (q_flds[((Q0 *)qptr(now.toRobot-1))->_t] != 1)
			Uerror("wrong nr of msg fields in rcv");
#endif
		;
		qrecv(now.toRobot, XX-1, 0, 1);
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.toRobot);
		sprintf(simtmp, "%d", 2); strcat(simvals, simtmp);		}
#endif
		;
		/* merge: goto Action(0, 2, 18) */
		reached[2][2] = 1;
		;
		_m = 4; goto P999; /* 1 */
	case 4: // STATE 4 - controller_robot.pml:57 - [toRobot?Stop] (0:0:0 - 1)
		reached[2][4] = 1;
		if (q_len(now.toRobot) == 0) continue;

		XX=1;
		if (1 != qrecv(now.toRobot, 0, 0, 0)) continue;
		
#ifndef BFS_PAR
		if (q_flds[((Q0 *)qptr(now.toRobot-1))->_t] != 1)
			Uerror("wrong nr of msg fields in rcv");
#endif
		;
		qrecv(now.toRobot, XX-1, 0, 1);
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.toRobot);
		sprintf(simtmp, "%d", 1); strcat(simvals, simtmp);		}
#endif
		;
		_m = 4; goto P999; /* 0 */
	case 5: // STATE 8 - controller_robot.pml:62 - [toRobot?Stop] (0:0:0 - 1)
		reached[2][8] = 1;
		if (q_len(now.toRobot) == 0) continue;

		XX=1;
		if (1 != qrecv(now.toRobot, 0, 0, 0)) continue;
		
#ifndef BFS_PAR
		if (q_flds[((Q0 *)qptr(now.toRobot-1))->_t] != 1)
			Uerror("wrong nr of msg fields in rcv");
#endif
		;
		qrecv(now.toRobot, XX-1, 0, 1);
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.toRobot);
		sprintf(simtmp, "%d", 1); strcat(simvals, simtmp);		}
#endif
		;
		_m = 4; goto P999; /* 0 */
	case 6: // STATE 9 - controller_robot.pml:62 - [toControl!Terminate] (5:0:0 - 1)
		IfNotBlocked
		reached[2][9] = 1;
		if (q_full(now.toControl))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.toControl);
		sprintf(simtmp, "%d", 4); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.toControl, 0, 4, 1);
		/* merge: goto Inactive(0, 10, 5) */
		reached[2][10] = 1;
		;
		_m = 2; goto P999; /* 1 */
	case 7: // STATE 12 - controller_robot.pml:63 - [toControl!Terminate] (5:0:0 - 1)
		IfNotBlocked
		reached[2][12] = 1;
		if (q_full(now.toControl))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.toControl);
		sprintf(simtmp, "%d", 4); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.toControl, 0, 4, 1);
		/* merge: goto Inactive(0, 13, 5) */
		reached[2][13] = 1;
		;
		_m = 2; goto P999; /* 1 */
	case 8: // STATE 15 - controller_robot.pml:64 - [toControl!ErrorNotify] (5:0:0 - 1)
		IfNotBlocked
		reached[2][15] = 1;
		if (q_full(now.toControl))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.toControl);
		sprintf(simtmp, "%d", 3); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.toControl, 0, 3, 1);
		/* merge: goto Inactive(0, 16, 5) */
		reached[2][16] = 1;
		;
		_m = 2; goto P999; /* 1 */
	case 9: // STATE 21 - controller_robot.pml:66 - [-end-] (0:0:0 - 1)
		IfNotBlocked
		reached[2][21] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* PROC Controller */
	case 10: // STATE 1 - controller_robot.pml:31 - [toControl?msg] (0:0:1 - 1)
		reached[1][1] = 1;
		if (q_len(now.toControl) == 0) continue;

		XX=1;
		(trpt+1)->bup.oval = ((P1 *)_this)->msg;
		;
		((P1 *)_this)->msg = qrecv(now.toControl, XX-1, 0, 1);
#ifdef VAR_RANGES
		logval("Controller:msg", ((P1 *)_this)->msg);
#endif
		;
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.toControl);
		sprintf(simtmp, "%d", ((P1 *)_this)->msg); strcat(simvals, simtmp);		}
#endif
		;
		_m = 4; goto P999; /* 0 */
	case 11: // STATE 2 - controller_robot.pml:33 - [((msg==StartButton))] (0:0:1 - 1)
		IfNotBlocked
		reached[1][2] = 1;
		if (!((((P1 *)_this)->msg==6)))
			continue;
		if (TstOnly) return 1; /* TT */
		/* dead 1: msg */  (trpt+1)->bup.oval = ((P1 *)_this)->msg;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P1 *)_this)->msg = 0;
		_m = 3; goto P999; /* 0 */
	case 12: // STATE 3 - controller_robot.pml:33 - [toRobot!Start] (25:0:0 - 1)
		IfNotBlocked
		reached[1][3] = 1;
		if (q_full(now.toRobot))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.toRobot);
		sprintf(simtmp, "%d", 2); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.toRobot, 0, 2, 1);
		/* merge: goto Active(0, 4, 25) */
		reached[1][4] = 1;
		;
		_m = 2; goto P999; /* 1 */
	case 13: // STATE 5 - controller_robot.pml:34 - [((msg==StopButton))] (9:0:1 - 1)
		IfNotBlocked
		reached[1][5] = 1;
		if (!((((P1 *)_this)->msg==5)))
			continue;
		if (TstOnly) return 1; /* TT */
		/* dead 1: msg */  (trpt+1)->bup.oval = ((P1 *)_this)->msg;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P1 *)_this)->msg = 0;
		/* merge: .(goto)(0, 7, 9) */
		reached[1][7] = 1;
		;
		/* merge: .(goto)(0, 10, 9) */
		reached[1][10] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 14: // STATE 12 - controller_robot.pml:40 - [toControl?msg] (0:0:1 - 1)
		reached[1][12] = 1;
		if (q_len(now.toControl) == 0) continue;

		XX=1;
		(trpt+1)->bup.oval = ((P1 *)_this)->msg;
		;
		((P1 *)_this)->msg = qrecv(now.toControl, XX-1, 0, 1);
#ifdef VAR_RANGES
		logval("Controller:msg", ((P1 *)_this)->msg);
#endif
		;
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.toControl);
		sprintf(simtmp, "%d", ((P1 *)_this)->msg); strcat(simvals, simtmp);		}
#endif
		;
		_m = 4; goto P999; /* 0 */
	case 15: // STATE 13 - controller_robot.pml:42 - [((msg==StopButton))] (0:0:1 - 1)
		IfNotBlocked
		reached[1][13] = 1;
		if (!((((P1 *)_this)->msg==5)))
			continue;
		if (TstOnly) return 1; /* TT */
		/* dead 1: msg */  (trpt+1)->bup.oval = ((P1 *)_this)->msg;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P1 *)_this)->msg = 0;
		_m = 3; goto P999; /* 0 */
	case 16: // STATE 14 - controller_robot.pml:42 - [toRobot!Stop] (25:0:0 - 1)
		IfNotBlocked
		reached[1][14] = 1;
		if (q_full(now.toRobot))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.toRobot);
		sprintf(simtmp, "%d", 1); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.toRobot, 0, 1, 1);
		/* merge: .(goto)(0, 23, 25) */
		reached[1][23] = 1;
		;
		/* merge: .(goto)(0, 26, 25) */
		reached[1][26] = 1;
		;
		_m = 2; goto P999; /* 2 */
	case 17: // STATE 15 - controller_robot.pml:43 - [((msg==Terminate))] (9:0:1 - 1)
		IfNotBlocked
		reached[1][15] = 1;
		if (!((((P1 *)_this)->msg==4)))
			continue;
		if (TstOnly) return 1; /* TT */
		/* dead 1: msg */  (trpt+1)->bup.oval = ((P1 *)_this)->msg;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P1 *)_this)->msg = 0;
		/* merge: printf('Display (end)\\n')(9, 16, 9) */
		reached[1][16] = 1;
		Printf("Display (end)\n");
		/* merge: goto Inactive(9, 17, 9) */
		reached[1][17] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 18: // STATE 18 - controller_robot.pml:45 - [((msg==ErrorNotify))] (9:0:1 - 1)
		IfNotBlocked
		reached[1][18] = 1;
		if (!((((P1 *)_this)->msg==3)))
			continue;
		if (TstOnly) return 1; /* TT */
		/* dead 1: msg */  (trpt+1)->bup.oval = ((P1 *)_this)->msg;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P1 *)_this)->msg = 0;
		/* merge: printf('Display (error)\\n')(9, 19, 9) */
		reached[1][19] = 1;
		Printf("Display (error)\n");
		/* merge: goto Inactive(9, 20, 9) */
		reached[1][20] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 19: // STATE 21 - controller_robot.pml:47 - [((msg==StartButton))] (25:0:1 - 1)
		IfNotBlocked
		reached[1][21] = 1;
		if (!((((P1 *)_this)->msg==6)))
			continue;
		if (TstOnly) return 1; /* TT */
		/* dead 1: msg */  (trpt+1)->bup.oval = ((P1 *)_this)->msg;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P1 *)_this)->msg = 0;
		/* merge: .(goto)(0, 23, 25) */
		reached[1][23] = 1;
		;
		/* merge: .(goto)(0, 26, 25) */
		reached[1][26] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 20: // STATE 28 - controller_robot.pml:50 - [-end-] (0:0:0 - 1)
		IfNotBlocked
		reached[1][28] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* PROC User */
	case 21: // STATE 1 - controller_robot.pml:21 - [toControl!StartButton] (0:0:0 - 1)
		IfNotBlocked
		reached[0][1] = 1;
		if (q_full(now.toControl))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.toControl);
		sprintf(simtmp, "%d", 6); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.toControl, 0, 6, 1);
		_m = 2; goto P999; /* 0 */
	case 22: // STATE 2 - controller_robot.pml:22 - [toControl!StartButton] (0:0:0 - 1)
		IfNotBlocked
		reached[0][2] = 1;
		if (q_full(now.toControl))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.toControl);
		sprintf(simtmp, "%d", 6); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.toControl, 0, 6, 1);
		_m = 2; goto P999; /* 0 */
	case 23: // STATE 3 - controller_robot.pml:22 - [toControl!StopButton] (0:0:0 - 1)
		IfNotBlocked
		reached[0][3] = 1;
		if (q_full(now.toControl))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.toControl);
		sprintf(simtmp, "%d", 5); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.toControl, 0, 5, 1);
		_m = 2; goto P999; /* 0 */
	case 24: // STATE 7 - controller_robot.pml:24 - [-end-] (0:0:0 - 1)
		IfNotBlocked
		reached[0][7] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */
	case  _T5:	/* np_ */
		if (!((!(trpt->o_pm&4) && !(trpt->tau&128))))
			continue;
		/* else fall through */
	case  _T2:	/* true */
		_m = 3; goto P999;
#undef rand
	}

