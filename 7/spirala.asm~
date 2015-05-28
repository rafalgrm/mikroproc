0150:	push ax
	push bx
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
