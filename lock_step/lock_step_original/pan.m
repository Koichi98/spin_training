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

		 /* CLAIM upEventually */
	case 3: // STATE 1 - _spin_nvr.tmp:3 - [((!(!(upIssued))&&!(upPerformed)))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported1 = 0;
			if (verbose && !reported1)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported1 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported1 = 0;
			if (verbose && !reported1)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported1 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[5][1] = 1;
		if (!(( !( !(((int)now.upIssued)))&& !(((int)now.upPerformed)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 4: // STATE 8 - _spin_nvr.tmp:8 - [(!(upPerformed))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported8 = 0;
			if (verbose && !reported8)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported8 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported8 = 0;
			if (verbose && !reported8)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported8 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[5][8] = 1;
		if (!( !(((int)now.upPerformed))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 5: // STATE 13 - _spin_nvr.tmp:10 - [-end-] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported13 = 0;
			if (verbose && !reported13)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported13 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported13 = 0;
			if (verbose && !reported13)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported13 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[5][13] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* PROC User */
	case 6: // STATE 1 - lock_step.pml:134 - [(startUser)] (0:0:0 - 1)
		IfNotBlocked
		reached[4][1] = 1;
		if (!(((int)now.startUser)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 7: // STATE 2 - lock_step.pml:136 - [currentEV = on] (0:0:1 - 1)
		IfNotBlocked
		reached[4][2] = 1;
		(trpt+1)->bup.oval = now.currentEV;
		now.currentEV = 5;
#ifdef VAR_RANGES
		logval("currentEV", now.currentEV);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 8: // STATE 3 - lock_step.pml:137 - [currentEV = off] (0:0:1 - 1)
		IfNotBlocked
		reached[4][3] = 1;
		(trpt+1)->bup.oval = now.currentEV;
		now.currentEV = 4;
#ifdef VAR_RANGES
		logval("currentEV", now.currentEV);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 9: // STATE 4 - lock_step.pml:138 - [((statePlayer==on))] (0:0:0 - 1)
		IfNotBlocked
		reached[4][4] = 1;
		if (!((now.statePlayer==5)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 10: // STATE 5 - lock_step.pml:138 - [currentEV = up] (0:0:1 - 1)
		IfNotBlocked
		reached[4][5] = 1;
		(trpt+1)->bup.oval = now.currentEV;
		now.currentEV = 3;
#ifdef VAR_RANGES
		logval("currentEV", now.currentEV);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 11: // STATE 6 - lock_step.pml:138 - [upIssued = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[4][6] = 1;
		(trpt+1)->bup.oval = ((int)now.upIssued);
		now.upIssued = 1;
#ifdef VAR_RANGES
		logval("upIssued", ((int)now.upIssued));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 12: // STATE 7 - lock_step.pml:139 - [currentEV = down] (0:0:1 - 1)
		IfNotBlocked
		reached[4][7] = 1;
		(trpt+1)->bup.oval = now.currentEV;
		now.currentEV = 2;
#ifdef VAR_RANGES
		logval("currentEV", now.currentEV);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 13: // STATE 8 - lock_step.pml:140 - [currentEV = selct] (0:0:1 - 1)
		IfNotBlocked
		reached[4][8] = 1;
		(trpt+1)->bup.oval = now.currentEV;
		now.currentEV = 1;
#ifdef VAR_RANGES
		logval("currentEV", now.currentEV);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 14: // STATE 11 - lock_step.pml:142 - [endUser = 1] (0:0:1 - 6)
		IfNotBlocked
		reached[4][11] = 1;
		(trpt+1)->bup.oval = ((int)now.endUser);
		now.endUser = 1;
#ifdef VAR_RANGES
		logval("endUser", ((int)now.endUser));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 15: // STATE 12 - lock_step.pml:143 - [startUser = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[4][12] = 1;
		(trpt+1)->bup.oval = ((int)now.startUser);
		now.startUser = 0;
#ifdef VAR_RANGES
		logval("startUser", ((int)now.startUser));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 16: // STATE 16 - lock_step.pml:145 - [-end-] (0:0:0 - 1)
		IfNotBlocked
		reached[4][16] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* PROC Loader */
	case 17: // STATE 1 - lock_step.pml:110 - [(startLoader)] (17:0:1 - 1)
		IfNotBlocked
		reached[3][1] = 1;
		if (!(((int)now.startLoader)))
			continue;
		/* merge: startLoader = 0(0, 2, 17) */
		reached[3][2] = 1;
		(trpt+1)->bup.oval = ((int)now.startLoader);
		now.startLoader = 0;
#ifdef VAR_RANGES
		logval("startLoader", ((int)now.startLoader));
#endif
		;
		_m = 3; goto P999; /* 1 */
	case 18: // STATE 3 - lock_step.pml:112 - [((stateLoader==S0))] (0:0:0 - 1)
		IfNotBlocked
		reached[3][3] = 1;
		if (!((now.stateLoader==7)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 19: // STATE 4 - lock_step.pml:114 - [((currentEV==on))] (22:0:3 - 1)
		IfNotBlocked
		reached[3][4] = 1;
		if (!((now.currentEV==5)))
			continue;
		/* merge: pstateLoader = S1(22, 5, 22) */
		reached[3][5] = 1;
		(trpt+1)->bup.ovals = grab_ints(3);
		(trpt+1)->bup.ovals[0] = now.pstateLoader;
		now.pstateLoader = 6;
#ifdef VAR_RANGES
		logval("pstateLoader", now.pstateLoader);
#endif
		;
		/* merge: .(goto)(22, 8, 22) */
		reached[3][8] = 1;
		;
		/* merge: .(goto)(22, 18, 22) */
		reached[3][18] = 1;
		;
		/* merge: stateLoader = pstateLoader(22, 19, 22) */
		reached[3][19] = 1;
		(trpt+1)->bup.ovals[1] = now.stateLoader;
		now.stateLoader = now.pstateLoader;
#ifdef VAR_RANGES
		logval("stateLoader", now.stateLoader);
#endif
		;
		/* merge: count = (count+1)(22, 20, 22) */
		reached[3][20] = 1;
		(trpt+1)->bup.ovals[2] = now.count;
		now.count = (now.count+1);
#ifdef VAR_RANGES
		logval("count", now.count);
#endif
		;
		/* merge: .(goto)(0, 23, 22) */
		reached[3][23] = 1;
		;
		_m = 3; goto P999; /* 6 */
	case 20: // STATE 9 - lock_step.pml:117 - [((stateLoader==S1))] (0:0:0 - 1)
		IfNotBlocked
		reached[3][9] = 1;
		if (!((now.stateLoader==6)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 21: // STATE 10 - lock_step.pml:119 - [((currentEV==off))] (22:0:3 - 1)
		IfNotBlocked
		reached[3][10] = 1;
		if (!((now.currentEV==4)))
			continue;
		/* merge: pstateLoader = S0(22, 11, 22) */
		reached[3][11] = 1;
		(trpt+1)->bup.ovals = grab_ints(3);
		(trpt+1)->bup.ovals[0] = now.pstateLoader;
		now.pstateLoader = 7;
#ifdef VAR_RANGES
		logval("pstateLoader", now.pstateLoader);
#endif
		;
		/* merge: .(goto)(22, 16, 22) */
		reached[3][16] = 1;
		;
		/* merge: .(goto)(22, 18, 22) */
		reached[3][18] = 1;
		;
		/* merge: stateLoader = pstateLoader(22, 19, 22) */
		reached[3][19] = 1;
		(trpt+1)->bup.ovals[1] = now.stateLoader;
		now.stateLoader = now.pstateLoader;
#ifdef VAR_RANGES
		logval("stateLoader", now.stateLoader);
#endif
		;
		/* merge: count = (count+1)(22, 20, 22) */
		reached[3][20] = 1;
		(trpt+1)->bup.ovals[2] = now.count;
		now.count = (now.count+1);
#ifdef VAR_RANGES
		logval("count", now.count);
#endif
		;
		/* merge: .(goto)(0, 23, 22) */
		reached[3][23] = 1;
		;
		_m = 3; goto P999; /* 6 */
	case 22: // STATE 12 - lock_step.pml:120 - [((currentEV==up))] (22:0:3 - 1)
		IfNotBlocked
		reached[3][12] = 1;
		if (!((now.currentEV==3)))
			continue;
		/* merge: pstateLoader = S1(22, 13, 22) */
		reached[3][13] = 1;
		(trpt+1)->bup.ovals = grab_ints(3);
		(trpt+1)->bup.ovals[0] = now.pstateLoader;
		now.pstateLoader = 6;
#ifdef VAR_RANGES
		logval("pstateLoader", now.pstateLoader);
#endif
		;
		/* merge: .(goto)(22, 16, 22) */
		reached[3][16] = 1;
		;
		/* merge: .(goto)(22, 18, 22) */
		reached[3][18] = 1;
		;
		/* merge: stateLoader = pstateLoader(22, 19, 22) */
		reached[3][19] = 1;
		(trpt+1)->bup.ovals[1] = now.stateLoader;
		now.stateLoader = now.pstateLoader;
#ifdef VAR_RANGES
		logval("stateLoader", now.stateLoader);
#endif
		;
		/* merge: count = (count+1)(22, 20, 22) */
		reached[3][20] = 1;
		(trpt+1)->bup.ovals[2] = now.count;
		now.count = (now.count+1);
#ifdef VAR_RANGES
		logval("count", now.count);
#endif
		;
		/* merge: .(goto)(0, 23, 22) */
		reached[3][23] = 1;
		;
		_m = 3; goto P999; /* 6 */
	case 23: // STATE 19 - lock_step.pml:124 - [stateLoader = pstateLoader] (0:22:2 - 8)
		IfNotBlocked
		reached[3][19] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = now.stateLoader;
		now.stateLoader = now.pstateLoader;
#ifdef VAR_RANGES
		logval("stateLoader", now.stateLoader);
#endif
		;
		/* merge: count = (count+1)(22, 20, 22) */
		reached[3][20] = 1;
		(trpt+1)->bup.ovals[1] = now.count;
		now.count = (now.count+1);
#ifdef VAR_RANGES
		logval("count", now.count);
#endif
		;
		/* merge: .(goto)(0, 23, 22) */
		reached[3][23] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 24: // STATE 25 - lock_step.pml:128 - [-end-] (0:0:0 - 1)
		IfNotBlocked
		reached[3][25] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* PROC Player */
	case 25: // STATE 1 - lock_step.pml:86 - [(startPlayer)] (18:0:1 - 1)
		IfNotBlocked
		reached[2][1] = 1;
		if (!(((int)now.startPlayer)))
			continue;
		/* merge: startPlayer = 0(0, 2, 18) */
		reached[2][2] = 1;
		(trpt+1)->bup.oval = ((int)now.startPlayer);
		now.startPlayer = 0;
#ifdef VAR_RANGES
		logval("startPlayer", ((int)now.startPlayer));
#endif
		;
		_m = 3; goto P999; /* 1 */
	case 26: // STATE 3 - lock_step.pml:88 - [((statePlayer==S0))] (0:0:0 - 1)
		IfNotBlocked
		reached[2][3] = 1;
		if (!((now.statePlayer==7)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 27: // STATE 4 - lock_step.pml:90 - [((currentEV==on))] (23:0:3 - 1)
		IfNotBlocked
		reached[2][4] = 1;
		if (!((now.currentEV==5)))
			continue;
		/* merge: pstatePlayer = S1(23, 5, 23) */
		reached[2][5] = 1;
		(trpt+1)->bup.ovals = grab_ints(3);
		(trpt+1)->bup.ovals[0] = now.pstatePlayer;
		now.pstatePlayer = 6;
#ifdef VAR_RANGES
		logval("pstatePlayer", now.pstatePlayer);
#endif
		;
		/* merge: .(goto)(23, 8, 23) */
		reached[2][8] = 1;
		;
		/* merge: .(goto)(23, 19, 23) */
		reached[2][19] = 1;
		;
		/* merge: statePlayer = pstatePlayer(23, 20, 23) */
		reached[2][20] = 1;
		(trpt+1)->bup.ovals[1] = now.statePlayer;
		now.statePlayer = now.pstatePlayer;
#ifdef VAR_RANGES
		logval("statePlayer", now.statePlayer);
#endif
		;
		/* merge: count = (count+1)(23, 21, 23) */
		reached[2][21] = 1;
		(trpt+1)->bup.ovals[2] = now.count;
		now.count = (now.count+1);
#ifdef VAR_RANGES
		logval("count", now.count);
#endif
		;
		/* merge: .(goto)(0, 24, 23) */
		reached[2][24] = 1;
		;
		_m = 3; goto P999; /* 6 */
	case 28: // STATE 9 - lock_step.pml:93 - [((statePlayer==S1))] (0:0:0 - 1)
		IfNotBlocked
		reached[2][9] = 1;
		if (!((now.statePlayer==6)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 29: // STATE 10 - lock_step.pml:95 - [((currentEV==off))] (23:0:3 - 1)
		IfNotBlocked
		reached[2][10] = 1;
		if (!((now.currentEV==4)))
			continue;
		/* merge: pstatePlayer = S0(23, 11, 23) */
		reached[2][11] = 1;
		(trpt+1)->bup.ovals = grab_ints(3);
		(trpt+1)->bup.ovals[0] = now.pstatePlayer;
		now.pstatePlayer = 7;
#ifdef VAR_RANGES
		logval("pstatePlayer", now.pstatePlayer);
#endif
		;
		/* merge: .(goto)(23, 17, 23) */
		reached[2][17] = 1;
		;
		/* merge: .(goto)(23, 19, 23) */
		reached[2][19] = 1;
		;
		/* merge: statePlayer = pstatePlayer(23, 20, 23) */
		reached[2][20] = 1;
		(trpt+1)->bup.ovals[1] = now.statePlayer;
		now.statePlayer = now.pstatePlayer;
#ifdef VAR_RANGES
		logval("statePlayer", now.statePlayer);
#endif
		;
		/* merge: count = (count+1)(23, 21, 23) */
		reached[2][21] = 1;
		(trpt+1)->bup.ovals[2] = now.count;
		now.count = (now.count+1);
#ifdef VAR_RANGES
		logval("count", now.count);
#endif
		;
		/* merge: .(goto)(0, 24, 23) */
		reached[2][24] = 1;
		;
		_m = 3; goto P999; /* 6 */
	case 30: // STATE 12 - lock_step.pml:96 - [((currentEV==up))] (23:0:4 - 1)
		IfNotBlocked
		reached[2][12] = 1;
		if (!((now.currentEV==3)))
			continue;
		/* merge: pstatePlayer = S1(23, 13, 23) */
		reached[2][13] = 1;
		(trpt+1)->bup.ovals = grab_ints(4);
		(trpt+1)->bup.ovals[0] = now.pstatePlayer;
		now.pstatePlayer = 6;
#ifdef VAR_RANGES
		logval("pstatePlayer", now.pstatePlayer);
#endif
		;
		/* merge: upPerformed = 1(23, 14, 23) */
		reached[2][14] = 1;
		(trpt+1)->bup.ovals[1] = ((int)now.upPerformed);
		now.upPerformed = 1;
#ifdef VAR_RANGES
		logval("upPerformed", ((int)now.upPerformed));
#endif
		;
		/* merge: .(goto)(23, 17, 23) */
		reached[2][17] = 1;
		;
		/* merge: .(goto)(23, 19, 23) */
		reached[2][19] = 1;
		;
		/* merge: statePlayer = pstatePlayer(23, 20, 23) */
		reached[2][20] = 1;
		(trpt+1)->bup.ovals[2] = now.statePlayer;
		now.statePlayer = now.pstatePlayer;
#ifdef VAR_RANGES
		logval("statePlayer", now.statePlayer);
#endif
		;
		/* merge: count = (count+1)(23, 21, 23) */
		reached[2][21] = 1;
		(trpt+1)->bup.ovals[3] = now.count;
		now.count = (now.count+1);
#ifdef VAR_RANGES
		logval("count", now.count);
#endif
		;
		/* merge: .(goto)(0, 24, 23) */
		reached[2][24] = 1;
		;
		_m = 3; goto P999; /* 7 */
	case 31: // STATE 20 - lock_step.pml:100 - [statePlayer = pstatePlayer] (0:23:2 - 8)
		IfNotBlocked
		reached[2][20] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = now.statePlayer;
		now.statePlayer = now.pstatePlayer;
#ifdef VAR_RANGES
		logval("statePlayer", now.statePlayer);
#endif
		;
		/* merge: count = (count+1)(23, 21, 23) */
		reached[2][21] = 1;
		(trpt+1)->bup.ovals[1] = now.count;
		now.count = (now.count+1);
#ifdef VAR_RANGES
		logval("count", now.count);
#endif
		;
		/* merge: .(goto)(0, 24, 23) */
		reached[2][24] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 32: // STATE 26 - lock_step.pml:104 - [-end-] (0:0:0 - 1)
		IfNotBlocked
		reached[2][26] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* PROC Lamp */
	case 33: // STATE 1 - lock_step.pml:63 - [(startLamp)] (15:0:1 - 1)
		IfNotBlocked
		reached[1][1] = 1;
		if (!(((int)now.startLamp)))
			continue;
		/* merge: startLamp = 0(0, 2, 15) */
		reached[1][2] = 1;
		(trpt+1)->bup.oval = ((int)now.startLamp);
		now.startLamp = 0;
#ifdef VAR_RANGES
		logval("startLamp", ((int)now.startLamp));
#endif
		;
		_m = 3; goto P999; /* 1 */
	case 34: // STATE 3 - lock_step.pml:65 - [((stateLamp==S0))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][3] = 1;
		if (!((now.stateLamp==7)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 35: // STATE 4 - lock_step.pml:67 - [((currentEV==on))] (20:0:3 - 1)
		IfNotBlocked
		reached[1][4] = 1;
		if (!((now.currentEV==5)))
			continue;
		/* merge: pstateLamp = S1(20, 5, 20) */
		reached[1][5] = 1;
		(trpt+1)->bup.ovals = grab_ints(3);
		(trpt+1)->bup.ovals[0] = now.pstateLamp;
		now.pstateLamp = 6;
#ifdef VAR_RANGES
		logval("pstateLamp", now.pstateLamp);
#endif
		;
		/* merge: .(goto)(20, 8, 20) */
		reached[1][8] = 1;
		;
		/* merge: .(goto)(20, 16, 20) */
		reached[1][16] = 1;
		;
		/* merge: stateLamp = pstateLamp(20, 17, 20) */
		reached[1][17] = 1;
		(trpt+1)->bup.ovals[1] = now.stateLamp;
		now.stateLamp = now.pstateLamp;
#ifdef VAR_RANGES
		logval("stateLamp", now.stateLamp);
#endif
		;
		/* merge: count = (count+1)(20, 18, 20) */
		reached[1][18] = 1;
		(trpt+1)->bup.ovals[2] = now.count;
		now.count = (now.count+1);
#ifdef VAR_RANGES
		logval("count", now.count);
#endif
		;
		/* merge: .(goto)(0, 21, 20) */
		reached[1][21] = 1;
		;
		_m = 3; goto P999; /* 6 */
	case 36: // STATE 9 - lock_step.pml:70 - [((stateLamp==S1))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][9] = 1;
		if (!((now.stateLamp==6)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 37: // STATE 10 - lock_step.pml:72 - [((currentEV==off))] (20:0:3 - 1)
		IfNotBlocked
		reached[1][10] = 1;
		if (!((now.currentEV==4)))
			continue;
		/* merge: pstateLamp = S0(20, 11, 20) */
		reached[1][11] = 1;
		(trpt+1)->bup.ovals = grab_ints(3);
		(trpt+1)->bup.ovals[0] = now.pstateLamp;
		now.pstateLamp = 7;
#ifdef VAR_RANGES
		logval("pstateLamp", now.pstateLamp);
#endif
		;
		/* merge: .(goto)(20, 14, 20) */
		reached[1][14] = 1;
		;
		/* merge: .(goto)(20, 16, 20) */
		reached[1][16] = 1;
		;
		/* merge: stateLamp = pstateLamp(20, 17, 20) */
		reached[1][17] = 1;
		(trpt+1)->bup.ovals[1] = now.stateLamp;
		now.stateLamp = now.pstateLamp;
#ifdef VAR_RANGES
		logval("stateLamp", now.stateLamp);
#endif
		;
		/* merge: count = (count+1)(20, 18, 20) */
		reached[1][18] = 1;
		(trpt+1)->bup.ovals[2] = now.count;
		now.count = (now.count+1);
#ifdef VAR_RANGES
		logval("count", now.count);
#endif
		;
		/* merge: .(goto)(0, 21, 20) */
		reached[1][21] = 1;
		;
		_m = 3; goto P999; /* 6 */
	case 38: // STATE 17 - lock_step.pml:76 - [stateLamp = pstateLamp] (0:20:2 - 7)
		IfNotBlocked
		reached[1][17] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = now.stateLamp;
		now.stateLamp = now.pstateLamp;
#ifdef VAR_RANGES
		logval("stateLamp", now.stateLamp);
#endif
		;
		/* merge: count = (count+1)(20, 18, 20) */
		reached[1][18] = 1;
		(trpt+1)->bup.ovals[1] = now.count;
		now.count = (now.count+1);
#ifdef VAR_RANGES
		logval("count", now.count);
#endif
		;
		/* merge: .(goto)(0, 21, 20) */
		reached[1][21] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 39: // STATE 23 - lock_step.pml:80 - [-end-] (0:0:0 - 1)
		IfNotBlocked
		reached[1][23] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* PROC Go */
	case 40: // STATE 1 - lock_step.pml:42 - [startLamp = 0] (0:25:3 - 1)
		IfNotBlocked
		reached[0][1] = 1;
		(trpt+1)->bup.ovals = grab_ints(3);
		(trpt+1)->bup.ovals[0] = ((int)now.startLamp);
		now.startLamp = 0;
#ifdef VAR_RANGES
		logval("startLamp", ((int)now.startLamp));
#endif
		;
		/* merge: startPlayer = 0(25, 2, 25) */
		reached[0][2] = 1;
		(trpt+1)->bup.ovals[1] = ((int)now.startPlayer);
		now.startPlayer = 0;
#ifdef VAR_RANGES
		logval("startPlayer", ((int)now.startPlayer));
#endif
		;
		/* merge: startLoader = 0(25, 3, 25) */
		reached[0][3] = 1;
		(trpt+1)->bup.ovals[2] = ((int)now.startLoader);
		now.startLoader = 0;
#ifdef VAR_RANGES
		logval("startLoader", ((int)now.startLoader));
#endif
		;
		/* merge: .(goto)(0, 26, 25) */
		reached[0][26] = 1;
		;
		_m = 3; goto P999; /* 3 */
	case 41: // STATE 6 - lock_step.pml:52 - [endUser = 0] (0:18:2 - 1)
		IfNotBlocked
		reached[0][6] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((int)now.endUser);
		now.endUser = 0;
#ifdef VAR_RANGES
		logval("endUser", ((int)now.endUser));
#endif
		;
		/* merge: startUser = 1(18, 7, 18) */
		reached[0][7] = 1;
		(trpt+1)->bup.ovals[1] = ((int)now.startUser);
		now.startUser = 1;
#ifdef VAR_RANGES
		logval("startUser", ((int)now.startUser));
#endif
		;
		_m = 3; goto P999; /* 1 */
	case 42: // STATE 9 - lock_step.pml:53 - [(endUser)] (17:0:1 - 1)
		IfNotBlocked
		reached[0][9] = 1;
		if (!(((int)now.endUser)))
			continue;
		/* merge: count = 0(0, 10, 17) */
		reached[0][10] = 1;
		(trpt+1)->bup.oval = now.count;
		now.count = 0;
#ifdef VAR_RANGES
		logval("count", now.count);
#endif
		;
		_m = 3; goto P999; /* 1 */
	case 43: // STATE 11 - lock_step.pml:32 - [startLamp = 1] (0:24:6 - 1)
		IfNotBlocked
		reached[0][11] = 1;
		(trpt+1)->bup.ovals = grab_ints(6);
		(trpt+1)->bup.ovals[0] = ((int)now.startLamp);
		now.startLamp = 1;
#ifdef VAR_RANGES
		logval("startLamp", ((int)now.startLamp));
#endif
		;
		/* merge: startPlayer = 1(24, 12, 24) */
		reached[0][12] = 1;
		(trpt+1)->bup.ovals[1] = ((int)now.startPlayer);
		now.startPlayer = 1;
#ifdef VAR_RANGES
		logval("startPlayer", ((int)now.startPlayer));
#endif
		;
		/* merge: startLoader = 1(24, 13, 24) */
		reached[0][13] = 1;
		(trpt+1)->bup.ovals[2] = ((int)now.startLoader);
		now.startLoader = 1;
#ifdef VAR_RANGES
		logval("startLoader", ((int)now.startLoader));
#endif
		;
		/* merge: stateLamp = S0(24, 14, 24) */
		reached[0][14] = 1;
		(trpt+1)->bup.ovals[3] = now.stateLamp;
		now.stateLamp = 7;
#ifdef VAR_RANGES
		logval("stateLamp", now.stateLamp);
#endif
		;
		/* merge: statePlayer = S0(24, 15, 24) */
		reached[0][15] = 1;
		(trpt+1)->bup.ovals[4] = now.statePlayer;
		now.statePlayer = 7;
#ifdef VAR_RANGES
		logval("statePlayer", now.statePlayer);
#endif
		;
		/* merge: stateLoader = S0(24, 16, 24) */
		reached[0][16] = 1;
		(trpt+1)->bup.ovals[5] = now.stateLoader;
		now.stateLoader = 7;
#ifdef VAR_RANGES
		logval("stateLoader", now.stateLoader);
#endif
		;
		_m = 3; goto P999; /* 5 */
	case 44: // STATE 19 - lock_step.pml:54 - [((count==3))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][19] = 1;
		if (!((now.count==3)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 45: // STATE 20 - lock_step.pml:42 - [startLamp = 0] (0:25:3 - 1)
		IfNotBlocked
		reached[0][20] = 1;
		(trpt+1)->bup.ovals = grab_ints(3);
		(trpt+1)->bup.ovals[0] = ((int)now.startLamp);
		now.startLamp = 0;
#ifdef VAR_RANGES
		logval("startLamp", ((int)now.startLamp));
#endif
		;
		/* merge: startPlayer = 0(25, 21, 25) */
		reached[0][21] = 1;
		(trpt+1)->bup.ovals[1] = ((int)now.startPlayer);
		now.startPlayer = 0;
#ifdef VAR_RANGES
		logval("startPlayer", ((int)now.startPlayer));
#endif
		;
		/* merge: startLoader = 0(25, 22, 25) */
		reached[0][22] = 1;
		(trpt+1)->bup.ovals[2] = ((int)now.startLoader);
		now.startLoader = 0;
#ifdef VAR_RANGES
		logval("startLoader", ((int)now.startLoader));
#endif
		;
		/* merge: .(goto)(0, 26, 25) */
		reached[0][26] = 1;
		;
		_m = 3; goto P999; /* 3 */
	case 46: // STATE 28 - lock_step.pml:56 - [-end-] (0:0:0 - 1)
		IfNotBlocked
		reached[0][28] = 1;
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

