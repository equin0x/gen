@ECHO OFF
SET Drive=%NUL%
FOR %%A in (A,B,C,D,E,F,G,H,I,J,K,L,M,N,O,P,Q,R,S,T,U,V,W,X,Y,Z) do (
	IF EXIST %%A:\ SET Drive="%%A"
)