#define N 3
bool startUser = false;
bool endUser = false;
int count = 0;
int currentEV = 0;

// 各プロセスの同期用フラグ
bool sync[N];

// イベント処理用関数（インライン関数で代替）
inline get(ev) {
    ev = (ev + 1) % 10;  // 例：0-9のイベントをサイクル
}

inline startAll() {
    int i = 0;
    do
    :: (i < N) -> sync[i] = true; i++
    :: (i >= N) -> break
    od
}

inline flushStates() {
    // 状態をリセット
    int i = 0;
    do
    :: (i < N) -> sync[i] = false; i++
    :: (i >= N) -> break
    od;
    count = 0;
}

// メインのロックステップ制御プロセス
active proctype Go()
{
    atomic{ flushStates() };
    do
    :: atomic{ endUser = false; startUser = true };
       atomic{ endUser -> count = 0; get(currentEV); startAll() };
       atomic{ (count == N) -> flushStates() }
    od
}

bool startLamp = false;
mtype stateLamp;
mtype pstateLamp = S0;
mtype = { SO, S1, on, off, up };


active proctype Lamp ()
{
    do
    :: atomic[ startlamp -> startLamp = false;
        if
        :: (stateLamp == SO) ->
            if
            :: (currentEV == on) -> pstateLamp = S1
            :: else
            fi
        :: (stateLamp == S1) ->
            if
            :: (currentEV == off) > pstateLamp = S0
            :: else
            fi
        fi;
    fi;
    count++ ]
    od
}

bool startPlayer = false;
mtype statePlayer;
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
            :: (currentEV == up) -> pstatePlayer = S1
            :: else
            fi
        fi;
        statePlayer = pstatePlayer;
        count++
    }
    od
}

// ユーザープロセス例
active proctype User()
{
    do
    :: startUser ->
       // ユーザー処理
       printf("User process step\n");
       endUser = true;
       startUser = false
    od
}