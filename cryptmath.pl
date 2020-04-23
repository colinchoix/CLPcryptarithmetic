:- use_module(library(clpfd)).

solve([D,O,N,A,L,D] + [G,E,R,A,L,D] = [R,O,B,E,R,T]) :-

    Letters = [D,O,N,A,L,G,E,R,B,T],
    Letters ins 0..9,

    all_different(Letters),

    D * 100000 + O * 10000 + N * 1000 + A * 100 + L * 10 + D +
    G * 100000 + E * 10000 + R * 1000 + A * 100 + L * 10 + D 
    #=
    R * 100000 + O * 10000 + B * 1000 + E * 100 + R * 10 + T,

    % This part isn't nessecary for solution
    D #= 5,

    label(Letters).