chan toControl = [5] of { mtype };
chan toRobot = [5] of { mtype };
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
    :: toControl ! StartButton
    :: toControl ! StartButton -> toControl ! StopButton

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
    :: atomic{toControl ? [StopButton]
        if
        :: nfull(toRobot)-> toControl ? StopButton; toRobot ! Stop
        :: toRobot ? [Stop]; toControl? StopButton // toRobotに自分が送ったStopが入っているならtoRobotにStopを送らずにStopButtonをtoControlから取り出す。 チャネルの深さが2以上のときにも正しいのか。(Stop->Start->Stopが追えなくなる可能性)。toRobotにStartが入っている場合。
        fi
        }
    :: atomic{(toControl ? [Terminate]); toControl ? Terminate; -> printf("Display (end)\n");
                            goto Inactive}
     ::atomic{(toControl ? [ErrorNotify]); toControl ? ErrorNotify -> printf("Display (error)\n");
                                goto Inactive}
    :: atomic{(toControl? [StartButton]); toControl ? StartButton}
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
        (toRobot ? [Stop] && nfull(toControl)); toRobot ? Stop; printf("hoge"); toControl ! Terminate;printf("fuga"); goto Inactive
    }
    ::  toControl ! Terminate; goto Inactive 
    ::  toControl ! ErrorNotify; goto Inactive
    od
}
