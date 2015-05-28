; Ustawienie na (0,0)

0110:	xor ax, ax
	mov dx, 70
	out dx, ax
	call 0140 ; To adres opoznienia na koncu malowania linii
	xor ax, ax
	mov dx, 71
	out dx, ax
	call 0140 ; To adres opoznienia na koncu malowania linii
	ret

; Dlugie opoznienie

0140:	push cx
	mov cx, ffff
0144:	inc ax ; petelka
	dec ax
	loop 0144
	pop cx
	ret

; Malowanie linii

CX ZAWIERA LICZBE KROKOW !!!!!!!!!!!!!!!!!!!!!!!!!!!!!1

0130:	out dx, al ; DX zawiera adres portu IO do wysterowania przetwornika
	add al, bl ; al zawiera wartosc poczatkowa, bl zawiera INKREMENT
	call 0100 ; krotkie opoznienie
	loop 0130 ; petla
	call 0140 ; dlugie opoznienie
	ret

; Kwadrat

1119:	mov ax, 0 
	mov dx, 70 ; adres out przetwornika
	mov cx, 80 ; 80 krokow
	mov bl, 1 ; inkrement 1
	call 0130 ; Malowanie linii
	mov ax, 0
	mov dx, 71 ; adres do przetwornika
	mov cx, 80 ; 80 krokow
	mov bl, 1  ; inkrement 1
	call 0130 ; Malowanie linii
	mov ax, 80 ; 
	mov dx, 70 ;adres do przetwornika
	mov cx, 80 ; 80 krokow
	mov bl, 1 ; inkrement
	neg bl ; w druga strone
	call 0130 ; Malowanie linii
	mov ax, 80
	mov dx, 71 ; adres do przetwornika
	cx, 80 ; 80 krokow
	mov bl, 1 ; inkrement
	neg bl ; w druga strone
	call 0130 ; Malowanie linii

; Schodki

; Malowanie wszystkich schodkow
1140:	call 0110
	mov si, 0
	mov cx, 5 ; ilość schodków

;Malowanie jednego schodka
1149:	push cx
	mov dx, 71 ; adres do out
	mov ax, si ; poczatek
	mov cx, 10 ; dl. schodka
	mov bl, 1 ; inkrement
	call 0130 ; rysowanie linii
	mov dx, 70 ; adres do out
	mov ax, si ; poczatek
	mov cx, 10 ; wysokosc schodka
	mov bl, 1 ; inkrement
	call 0130 ; rysowanie linii
	add si, 10 ; ustawiamy poczatek dalej
	pop cx   
	loop 1149 ; petla
0150:	push ax
	push bx

;Spirala

;--------
	mov si, ax ; zapamietujemy
	mov al, ah ; dolna krawędź
	mov dx, 70 ; ustawiamy adres
	mov cx, di  ; ilosc krokow
	mov bl, 1 ; inkrement
	call 0130 ; malujemy
;--------
	mov ax, si ; prawa krawędź
	mov dx, 71 ; adres
	mov cx, di ; ilosc krokow
	mov bl, 1  ; inkrement
	call 0130 ; malujemy
	dec al ; 0130 wykonuje 1 add za dużo – korekta
;--------
	mov ah, al ; gorna krawedz
	mov si, ax ; 
	mov dx, 70 ; adres
	mov cx, di ; ilosc krokow
	mov bl, 1  ; inkrement
	neg bl	; w druga strone
	call 0130 ; rysujemyn
;--------
	mov ax, si ; lewa krawędź
	mov dx, 71 ; adres
	mov cx, di ; ilosc krokow
	pop bx	; cos fajnego
	sub cl, bl ; obcinamy krawedz
	push bx   ; z powrotem
	mov bl, 1 ; inkrement
	neg bl ; w druga strone
	call 0130 ; malujemy 
;--------
;	„ogonek” czyli takie male gowienko na koncu
	pop cx ; 
	pop ax ; wracamy do starej pozycji ax
	mov dx, 70 ; adres
	mov bl, 1 ; inkrement
	call 0130 ; malujemy ogonek
	ret

; To bedzie robic calosc

01A0:	mov cx, 2 ; ile zwojów wykonać
	mov ax, 0 ; poczatek
	mov bl, 10 ; o ile mniejszy kazdy nastepny zwoj
	mov di, 80 ; adres
01AB:	push ax ; pushujemy wszystko
	push bx
	push cx
	push di
;--------
	call 0150 ; malujemy jeden zwoj
	pop di
	pop cx
	pop bx ; zpopowalismy wszystko poza ax
;--------
	; Teraz zmniejszym di o dwa bl di -= 2*bl
	; chodzi o to zeby bylo mniej krokow pisaka
	mov ax, di ; 
	sub al, bl ; obcinamy
	sub al, bl ; dwa razy
	mov di, ax ; do di zapisujemy ax
	pop ax	; wracamy do starej wartosci ax
;--------
	add al, bl ; zmieniamy pozycje poczatkowa X
	add ah, bl ; Y tez
	loop 01AB
