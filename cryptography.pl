alpha2number(a,1).
alpha2number(b,2).
alpha2number(c,3).
alpha2number(d,4).
alpha2number(e,5).
alpha2number(f,6).
alpha2number(g,7).
alpha2number(h,8).
alpha2number(i,9).
alpha2number(j,10).
alpha2number(k,11).
alpha2number(l,12).
alpha2number(m,13).
alpha2number(n,14).
alpha2number(o,15).
alpha2number(p,16).
alpha2number(q,17).
alpha2number(r,18).
alpha2number(s,19).
alpha2number(t,20).
alpha2number(u,21).
alpha2number(v,22).
alpha2number(w,23).
alpha2number(x,24).
alpha2number(y,25).
alpha2number(z,26).

crypt(A,B) :- X < 24,!, alpha2number(A,N), C is N + 3,
	      alpha2number(B,C).

crypt(A,B) :- alpha2number(A,N), C is N - 23,
	      alpha2number(B,C).

cryptsent([],[]).
cryptsent([H1|T1],[H2|T2]) :- alpha2number(H1,H2), cryptsent(T1|T2).

twowaycrypt(A,B) :- crypt(A,B), crypt(B,C).

encrypts(A,B) :- cryptsent(A,B).
decrypt(B,A) :- cryptsent(A,B).