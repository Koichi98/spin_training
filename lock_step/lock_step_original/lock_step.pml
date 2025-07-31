#define N 3
bool startUser = false;
bool endUser = false;
int count = 0;

bool upIssued = false;
bool upPerformed = false;

bool startLamp = false;
bool startPlayer = false;
bool startLoader = false;

mtype = { S0, S1, on, off, up ,down, selct};
mtype currentEV;
mtype stateLamp;
mtype statePlayer;
mtype stateLoader;

//inline get() {
    //if
    //:: currentEV = on
    //:: currentEV = off
    //:: currentEV = up
    //fi;
//}

inline startAll() {
    startLamp = true;
    startPlayer = true;
    startLoader = true;
    stateLamp = S0;
    statePlayer = S0;
    stateLoader = S0;
}

inline flushStates() {
    startLamp = false;
    startPlayer = false;
    startLoader = false;
}

active proctype Go()
{
    atomic{ flushStates() };
    do
    :: atomic{ endUser = false; startUser = true };
       atomic{ endUser -> count = 0; startAll() };
       atomic{ (count == N) -> flushStates() }
    od
}

mtype pstateLamp = S0;
active proctype Lamp ()
{
    do
    :: atomic{ startLamp -> startLamp = false;
        if
        :: (stateLamp == S0) ->
            if
            :: (currentEV == on) -> pstateLamp = S1
            :: else
            fi
        :: (stateLamp == S1) ->
            if
            :: (currentEV == off) -> pstateLamp = S0
            :: else
            fi
        fi;
        stateLamp = pstateLamp;
        count++
    }
    od
}

mtype pstatePlayer = S0;
active proctype Player ()
{
    do
    :: atomic{ startPlayer -> startPlayer = false;
        if
        :: (statePlayer == S0) ->
            if
            :: (currentEV == on) -> pstatePlayer = S1
            :: else
            fi
        :: (statePlayer == S1) ->
            if
            :: (currentEV == off) -> pstatePlayer = S0
            :: (currentEV == up) -> pstatePlayer = S1; upPerformed = true
            :: else
            fi
        fi;
        statePlayer = pstatePlayer;
        count++
    }
    od
}

mtype pstateLoader = S0;
active proctype Loader ()
{
    do
    :: atomic{ startLoader-> startLoader = false;
        if
        :: (stateLoader == S0) ->
            if
            :: (currentEV == on) -> pstateLoader = S1
            :: else
            fi
        :: (stateLoader == S1) ->
            if
            :: (currentEV == off) -> pstateLoader = S0
            :: (currentEV == up) -> pstateLoader = S1
            :: else
            fi
        fi;
        stateLoader = pstateLoader;
        count++
    }
    od
}

active proctype User()
{
    do
    :: startUser ->
       if
       :: currentEV = on
       :: currentEV = off
       :: (statePlayer == on) -> currentEV = up; upIssued = true
       :: currentEV = down
       :: currentEV = selct
       fi
       endUser = true;
       startUser = false
    od
}

ltl upEventually { []((upIssued) -> <>(upPerformed)) }