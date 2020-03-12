

%% Include the BASIC EVENT CALCULUS THEORY
#include '../bec_theory'.

%% Inspired by example from Shanahan (1999)

% One world - vessel size = 10
max_level(10) :- not max_level(16).
max_level(16) :- not max_level(10).

initiates(tapOn,filling,T).
terminates(tapOff,filling,T).

initiates(overflow,spilling,T) :-
    max_level(Max),
    holdsAt(level(Max), T).

% Note that (S1.3) has to be a Releases formula instead of a
% Terminates formula, so that the Level fluent is immune from the
% common sense law of inertia after the tap is turned on.
releases(tapOn,level(0),T) :- happens(tapOn, T).

% Now we have the Trajectory formula, which describes the continuous
% variation in the Level fluent while the Filling fluent holds.
trajectory(filling,T1,level(X2),T2) :-
    T1 .<. T2,
    X2 .=. X + 4/3 * (T2 - T1),
    max_level(Max),
    X2 .=<. Max,
    holdsAt(level(X),T1).
trajectory(filling,T1,overlimit,T2) :-
    T1 .<. T2,
    X2 .=. X + 4/3 * (T2 - T1),
    max_level(Max),
    X2 .>. Max,
    holdsAt(level(X),T1).

% Now we have the Trajectory formula, which describes the continuous
% variation in the Leaf fluent while the Spilling fluent holds. 
trajectory(spilling,T1,leak(X),T2) :-
    holdsAt(filling, T2),
    T1.<.T2,
    X .=. 4/3 * (T2 - T1).

initiallyP(level(0)).

%% Actions
% The next formulae ensures the Overflow event is triggered when it
% should be.
happens(overflow,T).                            

% Here’s a simple narrative. The level is initially 0, and the tap is
% turned on at time 5.
happens(tapOn,5).
