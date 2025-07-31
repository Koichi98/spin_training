chan toControlU = [1] of { mtype };
chan toControlR = [1] of { mtype };
chan toRobot = [1] of { mtype };
mtype = { StartButton, StopButton, Terminate, ErrorNotify, Start, Stop };

active proctype User ()
{
end:
    do

    // With guard
    //:: nfull(toControl) -> progress_user1: toControl ! StartButton
    //:: nfull(toControl) -> progress_user2: toControl ! StartButton -> 
       //if
       //:: nfull(toControl) -> toControl ! StopButton
       //:: full(toControl)
       //fi
    //:: full(toControl)


    //// Without guard
    :: toControlU ! StartButton
    :: toControlU ! StartButton -> toControlU ! StopButton

    od
}

active proctype Controller()
{
    mtype msg;
    Inactive: end:
    do
    :: atomic{ toControlU ? msg ->
    if
        :: (msg == StartButton) -> toRobot ! Start; goto Active
        :: (msg == StopButton)
    fi }
    od;

    Active:
    do
    :: atomic{(toControlU ? [StopButton] && nfull(toRobot))-> toControlU ? StopButton; toRobot ! Stop}
    :: atomic{(toControlR ? [Terminate]); toControlR ? Terminate; -> printf("Display (end)\n");
                            goto Inactive}
     ::atomic{(toControlR ? [ErrorNotify]); toControlR ? ErrorNotify -> printf("Display (error)\n");
                                goto Inactive}
    :: atomic{(toControlU ? [StartButton]); toControlU ? StartButton}
    od;
}

active proctype Robot()
{
Inactive: end:
    do
    :: toRobot ? Start -> goto Action
    :: toRobot ? Stop
    od;

Action:
    do
    ::atomic {
        (toRobot ? [Stop] && nfull(toControlR)); toRobot ? Stop; printf("hoge"); toControlR ! Terminate;printf("fuga"); goto Inactive
    }
    ::  toControlR ! Terminate; goto Inactive 
    ::  toControlR ! ErrorNotify; goto Inactive
    od
}
