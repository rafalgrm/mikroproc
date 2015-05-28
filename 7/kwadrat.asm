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
