CX ZAWIERA LICZBE KROKOW !!!!!!!!!!!!!!!!!!!!!!!!!!!!!1

0130:	out dx, al ; DX zawiera adres portu IO do wysterowania przetwornika
	add al, bl ; al zawiera wartosc poczatkowa, bl zawiera INKREMENT
	call 0100 ; krotkie opoznienie
	loop 0130 ; petla
	call 0140 ; dlugie opoznienie
	ret
