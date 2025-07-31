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
	case 6: // STATE 1 - lock_step.pml:137 - [(startUser)] (0:0:0 - 1)
		IfNotBlocked
		reached[4][1] = 1;
		if (!(((int)now.startUser)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 7: // STATE 2 - lock_step.pml:139 - [currentEV = on] (0:0:1 - 1)
		IfNotBlocked
		reached[4][2] = 1;
		(trpt+1)->bup.oval = now.currentEV;
		now.currentEV = 7;
#ifdef VAR_RANGES
		logval("currentEV", now.currentEV);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 8: // STATE 3 - lock_step.pml:140 - [currentEV = off] (0:0:1 - 1)
		IfNotBlocked
		reached[4][3] = 1;
		(trpt+1)->bup.oval = now.currentEV;
		now.currentEV = 6;
#ifdef VAR_RANGES
		logval("currentEV", now.currentEV);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 9: // STATE 4 - lock_step.pml:141 - [((statePlayer==on))] (0:0:0 - 1)
		IfNotBlocked
		reached[4][4] = 1;
		if (!((now.statePlayer==7)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 10: // STATE 5 - lock_step.pml:141 - [currentEV = up] (0:0:1 - 1)
		IfNotBlocked
		reached[4][5] = 1;
		(trpt+1)->bup.oval = now.currentEV;
		now.currentEV = 5;
#ifdef VAR_RANGES
		logval("currentEV", now.currentEV);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 11: // STATE 6 - lock_step.pml:142 - [(((statePlayer==on)&&(upIssued==0)))] (0:0:0 - 1)
		IfNotBlocked
		reached[4][6] = 1;
		if (!(((now.statePlayer==7)&&(((int)now.upIssued)==0))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 12: // STATE 7 - lock_step.pml:142 - [currentEV = upM] (0:0:1 - 1)
		IfNotBlocked
		reached[4][7] = 1;
		(trpt+1)->bup.oval = now.currentEV;
		now.currentEV = 4;
#ifdef VAR_RANGES
		logval("currentEV", now.currentEV);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 13: // STATE 8 - lock_step.pml:142 - [upIssued = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[4][8] = 1;
		(trpt+1)->bup.oval = ((int)now.upIssued);
		now.upIssued = 1;
#ifdef VAR_RANGES
		logval("upIssued", ((int)now.upIssued));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 14: // STATE 9 - lock_step.pml:143 - [currentEV = down] (0:0:1 - 1)
		IfNotBlocked
		reached[4][9] = 1;
		(trpt+1)->bup.oval = now.currentEV;
		now.currentEV = 3;
#ifdef VAR_RANGES
		logval("currentEV", now.currentEV);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 15: // STATE 10 - lock_step.pml:144 - [currentEV = selct] (0:0:1 - 1)
		IfNotBlocked
		reached[4][10] = 1;
		(trpt+1)->bup.oval = now.currentEV;
		now.currentEV = 2;
#ifdef VAR_RANGES
		logval("currentEV", now.currentEV);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 16: // STATE 13 - lock_step.pml:146 - [endUser = 1] (0:0:1 - 7)
		IfNotBlocked
		reached[4][13] = 1;
		(trpt+1)->bup.oval = ((int)now.endUser);
		now.endUser = 1;
#ifdef VAR_RANGES
		logval("endUser", ((int)now.endUser));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 17: // STATE 14 - lock_step.pml:147 - [startUser = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[4][14] = 1;
		(trpt+1)->bup.oval = ((int)now.startUser);
		now.startUser = 0;
#ifdef VAR_RANGES
		logval("startUser", ((int)now.startUser));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 18: // STATE 18 - lock_step.pml:149 - [-end-] (0:0:0 - 1)
		IfNotBlocked
		reached[4][18] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* PROC Loader */
	case 19: // STATE 1 - lock_step.pml:112 - [(startLoader)] (20:0:1 - 1)
		IfNotBlocked
		reached[3][1] = 1;
		if (!(((int)now.startLoader)))
			continue;
		/* merge: startLoader = 0(0, 2, 20) */
		reached[3][2] = 1;
		(trpt+1)->bup.oval = ((int)now.startLoader);
		now.startLoader = 0;
#ifdef VAR_RANGES
		logval("startLoader", ((int)now.startLoader));
#endif
		;
		_m = 3; goto P999; /* 1 */
	case 20: // STATE 3 - lock_step.pml:114 - [((stateLoader==S0))] (0:0:0 - 1)
		IfNotBlocked
		reached[3][3] = 1;
		if (!((now.stateLoader==10)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 21: // STATE 4 - lock_step.pml:116 - [((currentEV==on))] (25:0:3 - 1)
		IfNotBlocked
		reached[3][4] = 1;
		if (!((now.currentEV==7)))
			continue;
		/* merge: pstateLoader = S1(25, 5, 25) */
		reached[3][5] = 1;
		(trpt+1)->bup.ovals = grab_ints(3);
		(trpt+1)->bup.ovals[0] = now.pstateLoader;
		now.pstateLoader = 9;
#ifdef VAR_RANGES
		logval("pstateLoader", now.pstateLoader);
#endif
		;
		/* merge: .(goto)(25, 8, 25) */
		reached[3][8] = 1;
		;
		/* merge: .(goto)(25, 21, 25) */
		reached[3][21] = 1;
		;
		/* merge: stateLoader = pstateLoader(25, 22, 25) */
		reached[3][22] = 1;
		(trpt+1)->bup.ovals[1] = now.stateLoader;
		now.stateLoader = now.pstateLoader;
#ifdef VAR_RANGES
		logval("stateLoader", now.stateLoader);
#endif
		;
		/* merge: count = (count+1)(25, 23, 25) */
		reached[3][23] = 1;
		(trpt+1)->bup.ovals[2] = now.count;
		now.count = (now.count+1);
#ifdef VAR_RANGES
		logval("count", now.count);
#endif
		;
		/* merge: .(goto)(0, 26, 25) */
		reached[3][26] = 1;
		;
		_m = 3; goto P999; /* 6 */
	case 22: // STATE 9 - lock_step.pml:119 - [((stateLoader==S1))] (0:0:0 - 1)
		IfNotBlocked
		reached[3][9] = 1;
		if (!((now.stateLoader==9)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 23: // STATE 10 - lock_step.pml:121 - [((currentEV==off))] (25:0:3 - 1)
		IfNotBlocked
		reached[3][10] = 1;
		if (!((now.currentEV==6)))
			continue;
		/* merge: pstateLoader = S0(25, 11, 25) */
		reached[3][11] = 1;
		(trpt+1)->bup.ovals = grab_ints(3);
		(trpt+1)->bup.ovals[0] = now.pstateLoader;
		now.pstateLoader = 10;
#ifdef VAR_RANGES
		logval("pstateLoader", now.pstateLoader);
#endif
		;
		/* merge: .(goto)(25, 19, 25) */
		reached[3][19] = 1;
		;
		/* merge: .(goto)(25, 21, 25) */
		reached[3][21] = 1;
		;
		/* merge: stateLoader = pstateLoader(25, 22, 25) */
		reached[3][22] = 1;
		(trpt+1)->bup.ovals[1] = now.stateLoader;
		now.stateLoader = now.pstateLoader;
#ifdef VAR_RANGES
		logval("stateLoader", now.stateLoader);
#endif
		;
		/* merge: count = (count+1)(25, 23, 25) */
		reached[3][23] = 1;
		(trpt+1)->bup.ovals[2] = now.count;
		now.count = (now.count+1);
#ifdef VAR_RANGES
		logval("count", now.count);
#endif
		;
		/* merge: .(goto)(0, 26, 25) */
		reached[3][26] = 1;
		;
		_m = 3; goto P999; /* 6 */
	case 24: // STATE 12 - lock_step.pml:122 - [((currentEV==up))] (25:0:3 - 1)
		IfNotBlocked
		reached[3][12] = 1;
		if (!((now.currentEV==5)))
			continue;
		/* merge: pstateLoader = S1(25, 13, 25) */
		reached[3][13] = 1;
		(trpt+1)->bup.ovals = grab_ints(3);
		(trpt+1)->bup.ovals[0] = now.pstateLoader;
		now.pstateLoader = 9;
#ifdef VAR_RANGES
		logval("pstateLoader", now.pstateLoader);
#endif
		;
		/* merge: .(goto)(25, 19, 25) */
		reached[3][19] = 1;
		;
		/* merge: .(goto)(25, 21, 25) */
		reached[3][21] = 1;
		;
		/* merge: stateLoader = pstateLoader(25, 22, 25) */
		reached[3][22] = 1;
		(trpt+1)->bup.ovals[1] = now.stateLoader;
		now.stateLoader = now.pstateLoader;
#ifdef VAR_RANGES
		logval("stateLoader", now.stateLoader);
#endif
		;
		/* merge: count = (count+1)(25, 23, 25) */
		reached[3][23] = 1;
		(trpt+1)->bup.ovals[2] = now.count;
		now.count = (now.count+1);
#ifdef VAR_RANGES
		logval("count", now.count);
#endif
		;
		/* merge: .(goto)(0, 26, 25) */
		reached[3][26] = 1;
		;
		_m = 3; goto P999; /* 6 */
	case 25: // STATE 14 - lock_step.pml:123 - [((currentEV==selct))] (25:0:4 - 1)
		IfNotBlocked
		reached[3][14] = 1;
		if (!((now.currentEV==2)))
			continue;
		/* merge: pstateLoader = S2(25, 15, 25) */
		reached[3][15] = 1;
		(trpt+1)->bup.ovals = grab_ints(4);
		(trpt+1)->bup.ovals[0] = now.pstateLoader;
		now.pstateLoader = 8;
#ifdef VAR_RANGES
		logval("pstateLoader", now.pstateLoader);
#endif
		;
		/* merge: currentEV = complete(25, 16, 25) */
		reached[3][16] = 1;
		(trpt+1)->bup.ovals[1] = now.currentEV;
		now.currentEV = 1;
#ifdef VAR_RANGES
		logval("currentEV", now.currentEV);
#endif
		;
		/* merge: .(goto)(25, 19, 25) */
		reached[3][19] = 1;
		;
		/* merge: .(goto)(25, 21, 25) */
		reached[3][21] = 1;
		;
		/* merge: stateLoader = pstateLoader(25, 22, 25) */
		reached[3][22] = 1;
		(trpt+1)->bup.ovals[2] = now.stateLoader;
		now.stateLoader = now.pstateLoader;
#ifdef VAR_RANGES
		logval("stateLoader", now.stateLoader);
#endif
		;
		/* merge: count = (count+1)(25, 23, 25) */
		reached[3][23] = 1;
		(trpt+1)->bup.ovals[3] = now.count;
		now.count = (now.count+1);
#ifdef VAR_RANGES
		logval("count", now.count);
#endif
		;
		/* merge: .(goto)(0, 26, 25) */
		reached[3][26] = 1;
		;
		_m = 3; goto P999; /* 7 */
	case 26: // STATE 22 - lock_step.pml:127 - [stateLoader = pstateLoader] (0:25:2 - 9)
		IfNotBlocked
		reached[3][22] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = now.stateLoader;
		now.stateLoader = now.pstateLoader;
#ifdef VAR_RANGES
		logval("stateLoader", now.stateLoader);
#endif
		;
		/* merge: count = (count+1)(25, 23, 25) */
		reached[3][23] = 1;
		(trpt+1)->bup.ovals[1] = now.count;
		now.count = (now.count+1);
#ifdef VAR_RANGES
		logval("count", now.count);
#endif
		;
		/* merge: .(goto)(0, 26, 25) */
		reached[3][26] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 27: // STATE 28 - lock_step.pml:131 - [-end-] (0:0:0 - 1)
		IfNotBlocked
		reached[3][28] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* PROC Player */
	case 28: // STATE 1 - lock_step.pml:80 - [(startPlayer)] (34:0:1 - 1)
		IfNotBlocked
		reached[2][1] = 1;
		if (!(((int)now.startPlayer)))
			continue;
		/* merge: startPlayer = 0(0, 2, 34) */
		reached[2][2] = 1;
		(trpt+1)->bup.oval = ((int)now.startPlayer);
		now.startPlayer = 0;
#ifdef VAR_RANGES
		logval("startPlayer", ((int)now.startPlayer));
#endif
		;
		_m = 3; goto P999; /* 1 */
	case 29: // STATE 3 - lock_step.pml:82 - [((statePlayer==S0))] (0:0:0 - 1)
		IfNotBlocked
		reached[2][3] = 1;
		if (!((now.statePlayer==10)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 30: // STATE 4 - lock_step.pml:84 - [((currentEV==on))] (39:0:3 - 1)
		IfNotBlocked
		reached[2][4] = 1;
		if (!((now.currentEV==7)))
			continue;
		/* merge: pstatePlayer = S1(39, 5, 39) */
		reached[2][5] = 1;
		(trpt+1)->bup.ovals = grab_ints(3);
		(trpt+1)->bup.ovals[0] = now.pstatePlayer;
		now.pstatePlayer = 9;
#ifdef VAR_RANGES
		logval("pstatePlayer", now.pstatePlayer);
#endif
		;
		/* merge: .(goto)(39, 8, 39) */
		reached[2][8] = 1;
		;
		/* merge: .(goto)(39, 35, 39) */
		reached[2][35] = 1;
		;
		/* merge: statePlayer = pstatePlayer(39, 36, 39) */
		reached[2][36] = 1;
		(trpt+1)->bup.ovals[1] = now.statePlayer;
		now.statePlayer = now.pstatePlayer;
#ifdef VAR_RANGES
		logval("statePlayer", now.statePlayer);
#endif
		;
		/* merge: count = (count+1)(39, 37, 39) */
		reached[2][37] = 1;
		(trpt+1)->bup.ovals[2] = now.count;
		now.count = (now.count+1);
#ifdef VAR_RANGES
		logval("count", now.count);
#endif
		;
		/* merge: .(goto)(0, 40, 39) */
		reached[2][40] = 1;
		;
		_m = 3; goto P999; /* 6 */
	case 31: // STATE 9 - lock_step.pml:87 - [((statePlayer==S1))] (0:0:0 - 1)
		IfNotBlocked
		reached[2][9] = 1;
		if (!((now.statePlayer==9)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 32: // STATE 10 - lock_step.pml:89 - [((currentEV==off))] (39:0:3 - 1)
		IfNotBlocked
		reached[2][10] = 1;
		if (!((now.currentEV==6)))
			continue;
		/* merge: pstatePlayer = S0(39, 11, 39) */
		reached[2][11] = 1;
		(trpt+1)->bup.ovals = grab_ints(3);
		(trpt+1)->bup.ovals[0] = now.pstatePlayer;
		now.pstatePlayer = 10;
#ifdef VAR_RANGES
		logval("pstatePlayer", now.pstatePlayer);
#endif
		;
		/* merge: .(goto)(39, 22, 39) */
		reached[2][22] = 1;
		;
		/* merge: .(goto)(39, 35, 39) */
		reached[2][35] = 1;
		;
		/* merge: statePlayer = pstatePlayer(39, 36, 39) */
		reached[2][36] = 1;
		(trpt+1)->bup.ovals[1] = now.statePlayer;
		now.statePlayer = now.pstatePlayer;
#ifdef VAR_RANGES
		logval("statePlayer", now.statePlayer);
#endif
		;
		/* merge: count = (count+1)(39, 37, 39) */
		reached[2][37] = 1;
		(trpt+1)->bup.ovals[2] = now.count;
		now.count = (now.count+1);
#ifdef VAR_RANGES
		logval("count", now.count);
#endif
		;
		/* merge: .(goto)(0, 40, 39) */
		reached[2][40] = 1;
		;
		_m = 3; goto P999; /* 6 */
	case 33: // STATE 12 - lock_step.pml:90 - [((currentEV==up))] (39:0:3 - 1)
		IfNotBlocked
		reached[2][12] = 1;
		if (!((now.currentEV==5)))
			continue;
		/* merge: pstatePlayer = S1(39, 13, 39) */
		reached[2][13] = 1;
		(trpt+1)->bup.ovals = grab_ints(3);
		(trpt+1)->bup.ovals[0] = now.pstatePlayer;
		now.pstatePlayer = 9;
#ifdef VAR_RANGES
		logval("pstatePlayer", now.pstatePlayer);
#endif
		;
		/* merge: .(goto)(39, 22, 39) */
		reached[2][22] = 1;
		;
		/* merge: .(goto)(39, 35, 39) */
		reached[2][35] = 1;
		;
		/* merge: statePlayer = pstatePlayer(39, 36, 39) */
		reached[2][36] = 1;
		(trpt+1)->bup.ovals[1] = now.statePlayer;
		now.statePlayer = now.pstatePlayer;
#ifdef VAR_RANGES
		logval("statePlayer", now.statePlayer);
#endif
		;
		/* merge: count = (count+1)(39, 37, 39) */
		reached[2][37] = 1;
		(trpt+1)->bup.ovals[2] = now.count;
		now.count = (now.count+1);
#ifdef VAR_RANGES
		logval("count", now.count);
#endif
		;
		/* merge: .(goto)(0, 40, 39) */
		reached[2][40] = 1;
		;
		_m = 3; goto P999; /* 6 */
	case 34: // STATE 14 - lock_step.pml:91 - [((currentEV==upM))] (39:0:4 - 1)
		IfNotBlocked
		reached[2][14] = 1;
		if (!((now.currentEV==4)))
			continue;
		/* merge: pstatePlayer = S1(39, 15, 39) */
		reached[2][15] = 1;
		(trpt+1)->bup.ovals = grab_ints(4);
		(trpt+1)->bup.ovals[0] = now.pstatePlayer;
		now.pstatePlayer = 9;
#ifdef VAR_RANGES
		logval("pstatePlayer", now.pstatePlayer);
#endif
		;
		/* merge: upPerformed = 1(39, 16, 39) */
		reached[2][16] = 1;
		(trpt+1)->bup.ovals[1] = ((int)now.upPerformed);
		now.upPerformed = 1;
#ifdef VAR_RANGES
		logval("upPerformed", ((int)now.upPerformed));
#endif
		;
		/* merge: .(goto)(39, 22, 39) */
		reached[2][22] = 1;
		;
		/* merge: .(goto)(39, 35, 39) */
		reached[2][35] = 1;
		;
		/* merge: statePlayer = pstatePlayer(39, 36, 39) */
		reached[2][36] = 1;
		(trpt+1)->bup.ovals[2] = now.statePlayer;
		now.statePlayer = now.pstatePlayer;
#ifdef VAR_RANGES
		logval("statePlayer", now.statePlayer);
#endif
		;
		/* merge: count = (count+1)(39, 37, 39) */
		reached[2][37] = 1;
		(trpt+1)->bup.ovals[3] = now.count;
		now.count = (now.count+1);
#ifdef VAR_RANGES
		logval("count", now.count);
#endif
		;
		/* merge: .(goto)(0, 40, 39) */
		reached[2][40] = 1;
		;
		_m = 3; goto P999; /* 7 */
	case 35: // STATE 17 - lock_step.pml:92 - [((currentEV==selct))] (0:0:0 - 1)
		IfNotBlocked
		reached[2][17] = 1;
		if (!((now.currentEV==2)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 36: // STATE 18 - lock_step.pml:92 - [((currentEV==complete))] (39:0:3 - 1)
		IfNotBlocked
		reached[2][18] = 1;
		if (!((now.currentEV==1)))
			continue;
		/* merge: pstatePlayer = S2(39, 19, 39) */
		reached[2][19] = 1;
		(trpt+1)->bup.ovals = grab_ints(3);
		(trpt+1)->bup.ovals[0] = now.pstatePlayer;
		now.pstatePlayer = 8;
#ifdef VAR_RANGES
		logval("pstatePlayer", now.pstatePlayer);
#endif
		;
		/* merge: .(goto)(39, 22, 39) */
		reached[2][22] = 1;
		;
		/* merge: .(goto)(39, 35, 39) */
		reached[2][35] = 1;
		;
		/* merge: statePlayer = pstatePlayer(39, 36, 39) */
		reached[2][36] = 1;
		(trpt+1)->bup.ovals[1] = now.statePlayer;
		now.statePlayer = now.pstatePlayer;
#ifdef VAR_RANGES
		logval("statePlayer", now.statePlayer);
#endif
		;
		/* merge: count = (count+1)(39, 37, 39) */
		reached[2][37] = 1;
		(trpt+1)->bup.ovals[2] = now.count;
		now.count = (now.count+1);
#ifdef VAR_RANGES
		logval("count", now.count);
#endif
		;
		/* merge: .(goto)(0, 40, 39) */
		reached[2][40] = 1;
		;
		_m = 3; goto P999; /* 6 */
	case 37: // STATE 23 - lock_step.pml:95 - [((statePlayer==S2))] (39:0:2 - 1)
		IfNotBlocked
		reached[2][23] = 1;
		if (!((now.statePlayer==8)))
			continue;
		/* merge: .(goto)(39, 35, 39) */
		reached[2][35] = 1;
		;
		/* merge: statePlayer = pstatePlayer(39, 36, 39) */
		reached[2][36] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = now.statePlayer;
		now.statePlayer = now.pstatePlayer;
#ifdef VAR_RANGES
		logval("statePlayer", now.statePlayer);
#endif
		;
		/* merge: count = (count+1)(39, 37, 39) */
		reached[2][37] = 1;
		(trpt+1)->bup.ovals[1] = now.count;
		now.count = (now.count+1);
#ifdef VAR_RANGES
		logval("count", now.count);
#endif
		;
		/* merge: .(goto)(0, 40, 39) */
		reached[2][40] = 1;
		;
		_m = 3; goto P999; /* 4 */
	case 38: // STATE 24 - lock_step.pml:96 - [((currentEV==off))] (39:0:3 - 1)
		IfNotBlocked
		reached[2][24] = 1;
		if (!((now.currentEV==6)))
			continue;
		/* merge: pstatePlayer = S0(39, 25, 39) */
		reached[2][25] = 1;
		(trpt+1)->bup.ovals = grab_ints(3);
		(trpt+1)->bup.ovals[0] = now.pstatePlayer;
		now.pstatePlayer = 10;
#ifdef VAR_RANGES
		logval("pstatePlayer", now.pstatePlayer);
#endif
		;
		/* merge: .(goto)(39, 35, 39) */
		reached[2][35] = 1;
		;
		/* merge: statePlayer = pstatePlayer(39, 36, 39) */
		reached[2][36] = 1;
		(trpt+1)->bup.ovals[1] = now.statePlayer;
		now.statePlayer = now.pstatePlayer;
#ifdef VAR_RANGES
		logval("statePlayer", now.statePlayer);
#endif
		;
		/* merge: count = (count+1)(39, 37, 39) */
		reached[2][37] = 1;
		(trpt+1)->bup.ovals[2] = now.count;
		now.count = (now.count+1);
#ifdef VAR_RANGES
		logval("count", now.count);
#endif
		;
		/* merge: .(goto)(0, 40, 39) */
		reached[2][40] = 1;
		;
		_m = 3; goto P999; /* 5 */
	case 39: // STATE 26 - lock_step.pml:97 - [((currentEV==up))] (39:0:3 - 1)
		IfNotBlocked
		reached[2][26] = 1;
		if (!((now.currentEV==5)))
			continue;
		/* merge: pstatePlayer = S1(39, 27, 39) */
		reached[2][27] = 1;
		(trpt+1)->bup.ovals = grab_ints(3);
		(trpt+1)->bup.ovals[0] = now.pstatePlayer;
		now.pstatePlayer = 9;
#ifdef VAR_RANGES
		logval("pstatePlayer", now.pstatePlayer);
#endif
		;
		/* merge: .(goto)(39, 35, 39) */
		reached[2][35] = 1;
		;
		/* merge: statePlayer = pstatePlayer(39, 36, 39) */
		reached[2][36] = 1;
		(trpt+1)->bup.ovals[1] = now.statePlayer;
		now.statePlayer = now.pstatePlayer;
#ifdef VAR_RANGES
		logval("statePlayer", now.statePlayer);
#endif
		;
		/* merge: count = (count+1)(39, 37, 39) */
		reached[2][37] = 1;
		(trpt+1)->bup.ovals[2] = now.count;
		now.count = (now.count+1);
#ifdef VAR_RANGES
		logval("count", now.count);
#endif
		;
		/* merge: .(goto)(0, 40, 39) */
		reached[2][40] = 1;
		;
		_m = 3; goto P999; /* 5 */
	case 40: // STATE 28 - lock_step.pml:98 - [((currentEV==upM))] (39:0:4 - 1)
		IfNotBlocked
		reached[2][28] = 1;
		if (!((now.currentEV==4)))
			continue;
		/* merge: pstatePlayer = S1(39, 29, 39) */
		reached[2][29] = 1;
		(trpt+1)->bup.ovals = grab_ints(4);
		(trpt+1)->bup.ovals[0] = now.pstatePlayer;
		now.pstatePlayer = 9;
#ifdef VAR_RANGES
		logval("pstatePlayer", now.pstatePlayer);
#endif
		;
		/* merge: upPerformed = 1(39, 30, 39) */
		reached[2][30] = 1;
		(trpt+1)->bup.ovals[1] = ((int)now.upPerformed);
		now.upPerformed = 1;
#ifdef VAR_RANGES
		logval("upPerformed", ((int)now.upPerformed));
#endif
		;
		/* merge: .(goto)(39, 35, 39) */
		reached[2][35] = 1;
		;
		/* merge: statePlayer = pstatePlayer(39, 36, 39) */
		reached[2][36] = 1;
		(trpt+1)->bup.ovals[2] = now.statePlayer;
		now.statePlayer = now.pstatePlayer;
#ifdef VAR_RANGES
		logval("statePlayer", now.statePlayer);
#endif
		;
		/* merge: count = (count+1)(39, 37, 39) */
		reached[2][37] = 1;
		(trpt+1)->bup.ovals[3] = now.count;
		now.count = (now.count+1);
#ifdef VAR_RANGES
		logval("count", now.count);
#endif
		;
		/* merge: .(goto)(0, 40, 39) */
		reached[2][40] = 1;
		;
		_m = 3; goto P999; /* 6 */
	case 41: // STATE 31 - lock_step.pml:99 - [((currentEV==complete))] (39:0:3 - 1)
		IfNotBlocked
		reached[2][31] = 1;
		if (!((now.currentEV==1)))
			continue;
		/* merge: pstatePlayer = S2(39, 32, 39) */
		reached[2][32] = 1;
		(trpt+1)->bup.ovals = grab_ints(3);
		(trpt+1)->bup.ovals[0] = now.pstatePlayer;
		now.pstatePlayer = 8;
#ifdef VAR_RANGES
		logval("pstatePlayer", now.pstatePlayer);
#endif
		;
		/* merge: .(goto)(39, 35, 39) */
		reached[2][35] = 1;
		;
		/* merge: statePlayer = pstatePlayer(39, 36, 39) */
		reached[2][36] = 1;
		(trpt+1)->bup.ovals[1] = now.statePlayer;
		now.statePlayer = now.pstatePlayer;
#ifdef VAR_RANGES
		logval("statePlayer", now.statePlayer);
#endif
		;
		/* merge: count = (count+1)(39, 37, 39) */
		reached[2][37] = 1;
		(trpt+1)->bup.ovals[2] = now.count;
		now.count = (now.count+1);
#ifdef VAR_RANGES
		logval("count", now.count);
#endif
		;
		/* merge: .(goto)(0, 40, 39) */
		reached[2][40] = 1;
		;
		_m = 3; goto P999; /* 5 */
	case 42: // STATE 36 - lock_step.pml:102 - [statePlayer = pstatePlayer] (0:39:2 - 16)
		IfNotBlocked
		reached[2][36] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = now.statePlayer;
		now.statePlayer = now.pstatePlayer;
#ifdef VAR_RANGES
		logval("statePlayer", now.statePlayer);
#endif
		;
		/* merge: count = (count+1)(39, 37, 39) */
		reached[2][37] = 1;
		(trpt+1)->bup.ovals[1] = now.count;
		now.count = (now.count+1);
#ifdef VAR_RANGES
		logval("count", now.count);
#endif
		;
		/* merge: .(goto)(0, 40, 39) */
		reached[2][40] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 43: // STATE 42 - lock_step.pml:106 - [-end-] (0:0:0 - 1)
		IfNotBlocked
		reached[2][42] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* PROC Lamp */
	case 44: // STATE 1 - lock_step.pml:57 - [(startLamp)] (15:0:1 - 1)
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
	case 45: // STATE 3 - lock_step.pml:59 - [((stateLamp==S0))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][3] = 1;
		if (!((now.stateLamp==10)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 46: // STATE 4 - lock_step.pml:61 - [((currentEV==on))] (20:0:3 - 1)
		IfNotBlocked
		reached[1][4] = 1;
		if (!((now.currentEV==7)))
			continue;
		/* merge: pstateLamp = S1(20, 5, 20) */
		reached[1][5] = 1;
		(trpt+1)->bup.ovals = grab_ints(3);
		(trpt+1)->bup.ovals[0] = now.pstateLamp;
		now.pstateLamp = 9;
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
	case 47: // STATE 9 - lock_step.pml:64 - [((stateLamp==S1))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][9] = 1;
		if (!((now.stateLamp==9)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 48: // STATE 10 - lock_step.pml:66 - [((currentEV==off))] (20:0:3 - 1)
		IfNotBlocked
		reached[1][10] = 1;
		if (!((now.currentEV==6)))
			continue;
		/* merge: pstateLamp = S0(20, 11, 20) */
		reached[1][11] = 1;
		(trpt+1)->bup.ovals = grab_ints(3);
		(trpt+1)->bup.ovals[0] = now.pstateLamp;
		now.pstateLamp = 10;
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
	case 49: // STATE 17 - lock_step.pml:70 - [stateLamp = pstateLamp] (0:20:2 - 7)
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
	case 50: // STATE 23 - lock_step.pml:74 - [-end-] (0:0:0 - 1)
		IfNotBlocked
		reached[1][23] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* PROC Go */
	case 51: // STATE 1 - lock_step.pml:37 - [startLamp = 0] (0:25:3 - 1)
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
	case 52: // STATE 6 - lock_step.pml:46 - [endUser = 0] (0:18:2 - 1)
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
	case 53: // STATE 9 - lock_step.pml:47 - [(endUser)] (17:0:1 - 1)
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
	case 54: // STATE 11 - lock_step.pml:28 - [startLamp = 1] (0:24:6 - 1)
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
		now.stateLamp = 10;
#ifdef VAR_RANGES
		logval("stateLamp", now.stateLamp);
#endif
		;
		/* merge: statePlayer = S0(24, 15, 24) */
		reached[0][15] = 1;
		(trpt+1)->bup.ovals[4] = now.statePlayer;
		now.statePlayer = 10;
#ifdef VAR_RANGES
		logval("statePlayer", now.statePlayer);
#endif
		;
		/* merge: stateLoader = S0(24, 16, 24) */
		reached[0][16] = 1;
		(trpt+1)->bup.ovals[5] = now.stateLoader;
		now.stateLoader = 10;
#ifdef VAR_RANGES
		logval("stateLoader", now.stateLoader);
#endif
		;
		_m = 3; goto P999; /* 5 */
	case 55: // STATE 19 - lock_step.pml:48 - [((count==3))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][19] = 1;
		if (!((now.count==3)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 56: // STATE 20 - lock_step.pml:37 - [startLamp = 0] (0:25:3 - 1)
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
	case 57: // STATE 28 - lock_step.pml:50 - [-end-] (0:0:0 - 1)
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

