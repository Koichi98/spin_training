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
	case 3: // STATE 1 - controller_robot.pml:55 - [toRobot?Start] (0:0:0 - 1)
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
		_m = 4; goto P999; /* 0 */
	case 4: // STATE 3 - controller_robot.pml:56 - [toRobot?Stop] (0:0:0 - 1)
		reached[2][3] = 1;
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
	case 5: // STATE 7 - controller_robot.pml:62 - [((toRobot?[Stop]&&nfull(toControl)))] (0:0:0 - 1)
		IfNotBlocked
		reached[2][7] = 1;
		if (!(((q_len(now.toRobot) > 0 \
		&& qrecv(now.toRobot, 0, 0, 0) == 1)&&(!q_full(now.toControl)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 6: // STATE 8 - controller_robot.pml:62 - [toRobot?Stop] (10:0:0 - 1)
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
		/* merge: printf('hoge')(0, 9, 10) */
		reached[2][9] = 1;
		Printf("hoge");
		_m = 4; goto P999; /* 1 */
	case 7: // STATE 10 - controller_robot.pml:62 - [toControl!Terminate] (4:0:0 - 1)
		IfNotBlocked
		reached[2][10] = 1;
		if (q_full(now.toControl))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.toControl);
		sprintf(simtmp, "%d", 4); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.toControl, 0, 4, 1);
		/* merge: printf('fuga')(4, 11, 4) */
		reached[2][11] = 1;
		Printf("fuga");
		/* merge: goto Inactive(4, 12, 4) */
		reached[2][12] = 1;
		;
		_m = 2; goto P999; /* 2 */
	case 8: // STATE 14 - controller_robot.pml:64 - [toControl!Terminate] (0:0:0 - 1)
		IfNotBlocked
		reached[2][14] = 1;
		if (q_full(now.toControl))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.toControl);
		sprintf(simtmp, "%d", 4); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.toControl, 0, 4, 1);
		_m = 2; goto P999; /* 0 */
	case 9: // STATE 16 - controller_robot.pml:65 - [toControl!ErrorNotify] (0:0:0 - 1)
		IfNotBlocked
		reached[2][16] = 1;
		if (q_full(now.toControl))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.toControl);
		sprintf(simtmp, "%d", 3); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.toControl, 0, 3, 1);
		_m = 2; goto P999; /* 0 */
	case 10: // STATE 21 - controller_robot.pml:67 - [-end-] (0:0:0 - 1)
		IfNotBlocked
		reached[2][21] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* PROC Controller */
	case 11: // STATE 1 - controller_robot.pml:32 - [toControl?msg] (0:0:1 - 1)
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
	case 12: // STATE 2 - controller_robot.pml:34 - [((msg==StartButton))] (0:0:1 - 1)
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
	case 13: // STATE 3 - controller_robot.pml:34 - [toRobot!Start] (29:0:0 - 1)
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
		/* merge: goto Active(0, 4, 29) */
		reached[1][4] = 1;
		;
		_m = 2; goto P999; /* 1 */
	case 14: // STATE 5 - controller_robot.pml:35 - [((msg==StopButton))] (9:0:1 - 1)
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
	case 15: // STATE 12 - controller_robot.pml:41 - [((toControl?[StopButton]&&nfull(toRobot)))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][12] = 1;
		if (!(((q_len(now.toControl) > 0 \
		&& qrecv(now.toControl, 0, 0, 0) == 5)&&(!q_full(now.toRobot)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 16: // STATE 13 - controller_robot.pml:41 - [toControl?StopButton] (0:0:0 - 1)
		reached[1][13] = 1;
		if (q_len(now.toControl) == 0) continue;

		XX=1;
		if (5 != qrecv(now.toControl, 0, 0, 0)) continue;
		
#ifndef BFS_PAR
		if (q_flds[((Q0 *)qptr(now.toControl-1))->_t] != 1)
			Uerror("wrong nr of msg fields in rcv");
#endif
		;
		qrecv(now.toControl, XX-1, 0, 1);
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.toControl);
		sprintf(simtmp, "%d", 5); strcat(simvals, simtmp);		}
#endif
		;
		_m = 4; goto P999; /* 0 */
	case 17: // STATE 14 - controller_robot.pml:41 - [toRobot!Stop] (0:0:0 - 1)
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
		_m = 2; goto P999; /* 0 */
	case 18: // STATE 16 - controller_robot.pml:43 - [(toControl?[Terminate])] (0:0:0 - 1)
		IfNotBlocked
		reached[1][16] = 1;
		if (!((q_len(now.toControl) > 0 \
		&& qrecv(now.toControl, 0, 0, 0) == 4)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 19: // STATE 17 - controller_robot.pml:43 - [toControl?Terminate] (9:0:0 - 1)
		reached[1][17] = 1;
		if (q_len(now.toControl) == 0) continue;

		XX=1;
		if (4 != qrecv(now.toControl, 0, 0, 0)) continue;
		
#ifndef BFS_PAR
		if (q_flds[((Q0 *)qptr(now.toControl-1))->_t] != 1)
			Uerror("wrong nr of msg fields in rcv");
#endif
		;
		qrecv(now.toControl, XX-1, 0, 1);
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.toControl);
		sprintf(simtmp, "%d", 4); strcat(simvals, simtmp);		}
#endif
		;
		/* merge: printf('Display (end)\\n')(9, 18, 9) */
		reached[1][18] = 1;
		Printf("Display (end)\n");
		/* merge: goto Inactive(9, 19, 9) */
		reached[1][19] = 1;
		;
		_m = 4; goto P999; /* 2 */
	case 20: // STATE 21 - controller_robot.pml:45 - [(toControl?[ErrorNotify])] (0:0:0 - 1)
		IfNotBlocked
		reached[1][21] = 1;
		if (!((q_len(now.toControl) > 0 \
		&& qrecv(now.toControl, 0, 0, 0) == 3)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 21: // STATE 22 - controller_robot.pml:45 - [toControl?ErrorNotify] (9:0:0 - 1)
		reached[1][22] = 1;
		if (q_len(now.toControl) == 0) continue;

		XX=1;
		if (3 != qrecv(now.toControl, 0, 0, 0)) continue;
		
#ifndef BFS_PAR
		if (q_flds[((Q0 *)qptr(now.toControl-1))->_t] != 1)
			Uerror("wrong nr of msg fields in rcv");
#endif
		;
		qrecv(now.toControl, XX-1, 0, 1);
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.toControl);
		sprintf(simtmp, "%d", 3); strcat(simvals, simtmp);		}
#endif
		;
		/* merge: printf('Display (error)\\n')(9, 23, 9) */
		reached[1][23] = 1;
		Printf("Display (error)\n");
		/* merge: goto Inactive(9, 24, 9) */
		reached[1][24] = 1;
		;
		_m = 4; goto P999; /* 2 */
	case 22: // STATE 26 - controller_robot.pml:47 - [(toControl?[StartButton])] (0:0:0 - 1)
		IfNotBlocked
		reached[1][26] = 1;
		if (!((q_len(now.toControl) > 0 \
		&& qrecv(now.toControl, 0, 0, 0) == 6)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 23: // STATE 27 - controller_robot.pml:47 - [toControl?StartButton] (0:0:0 - 1)
		reached[1][27] = 1;
		if (q_len(now.toControl) == 0) continue;

		XX=1;
		if (6 != qrecv(now.toControl, 0, 0, 0)) continue;
		
#ifndef BFS_PAR
		if (q_flds[((Q0 *)qptr(now.toControl-1))->_t] != 1)
			Uerror("wrong nr of msg fields in rcv");
#endif
		;
		qrecv(now.toControl, XX-1, 0, 1);
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.toControl);
		sprintf(simtmp, "%d", 6); strcat(simvals, simtmp);		}
#endif
		;
		_m = 4; goto P999; /* 0 */
	case 24: // STATE 32 - controller_robot.pml:49 - [-end-] (0:0:0 - 1)
		IfNotBlocked
		reached[1][32] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* PROC User */
	case 25: // STATE 1 - controller_robot.pml:21 - [toControl!StartButton] (0:0:0 - 1)
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
	case 26: // STATE 2 - controller_robot.pml:22 - [toControl!StartButton] (0:0:0 - 1)
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
	case 27: // STATE 3 - controller_robot.pml:22 - [toControl!StopButton] (0:0:0 - 1)
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
	case 28: // STATE 7 - controller_robot.pml:25 - [-end-] (0:0:0 - 1)
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

