0110:	xor ax, ax
	mov dx, 70
	out dx, ax
	call 0140 ; To adres opoznienia na koncu malowania linii
	xor ax, ax
	mov dx, 71
	out dx, ax
	call 0140 ; To adres opoznienia na koncu malowania linii
	ret
