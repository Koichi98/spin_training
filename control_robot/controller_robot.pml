chan toControl = [1] of { mtype };
chan toRobot = [1] of { mtype };
mtype = { StartButton, StopButton, Terminate, ErrorNotify, Start, Stop };

active proctype User ()
{
end:
    do
    :: nfull(toControl) -> progress_user1: toControl ! StartButton
    :: nfull(toControl) -> progress_user2: toControl ! StartButton -> 
       if
       :: nfull(toControl) -> toControl ! StopButton
       :: full(toControl)
       fi
    :: full(toControl)
    od
}

active proctype Controller()
{
    mtype msg;
    Inactive: end:
    do
    :: atomic{ toControl ? msg ->
    if
        :: (msg == StartButton) -> toRobot ! Start; goto Active
        :: (msg == StopButton)
    fi }
    od;

    Active:
    do
    :: atomic{ toControl ? msg ->
    if
    :: (msg == StopButton) -> toRobot ! Stop
    :: (msg == Terminate) -> printf("Display (end)(n");
                            goto Inactive
    :: (msg == ErrorNotify) -> printf("Display (error)(n");
                                goto Inactive
    :: (msg == StartButton)
    fi }
    od;
}

active proctype Robot()
{
Inactive: end:
    do
    :: atomic{ toRobot ? Start -> goto Action }
    :: toRobot ? Stop
    od;

Action:
    do
    :: atomic{ toRobot ? Stop -> toControl ! Terminate; goto Inactive }
    :: atomic{ toControl ! Terminate; goto Inactive }
    :: atomic{ toControl ! ErrorNotify; goto Inactive }
    od
}
