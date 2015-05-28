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
