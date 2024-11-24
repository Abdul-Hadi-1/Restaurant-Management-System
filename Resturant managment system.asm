;Made By Abdul Hadi, Rahim Khan, Wajheeh Khan

INCLUDE Irvine32.inc
.data
	choice DWORD 0
	quantity DWORD 0
	walletAmount DWORD 0
	tempTopup DWORD 0
	stId DWORD 0
	cafeFlag DWORD 0
	pizzaFlag DWORD 0
	dhabaFlag DWORD 0
	shawarmaFlag DWORD 0
	total DWORD 0

	loading BYTE "				Loading Screen", 0
	gareeb BYTE "INSUFFICIENT AMOUNT IN WALLET!", 0dh, 0ah, 0
	waitt BYTE "PRESS ANY KEY TO GO BACK!", 0
	paid BYTE " HAS BEEN PAID FROM YOUR WALLET!", 0dh, 0ah
		 BYTE "you can takeaway your order after 20 mins!", 0
	paid2 BYTE "PLEASE MAKE YOUR PAYMENT ON TAKEAWAY!", 0dh, 0ah
		  BYTE "you can takeaway your order after 20 mins!", 0
	amountAdded BYTE " HAS BEEN ADDED TO YOUR WALLET!", 0dh, 0ah, 0

	screen  BYTE "********************************************************************", 0dh, 0ah, 0
	screen1 BYTE "                    FAST RESTAURANT MANAGEMENT                      ",0dh, 0ah, 0
	options BYTE "[1]   BROWSE RESTAURANTS", 0dh, 0ah
			BYTE "[2]   Check Wallet Amount", 0dh, 0ah
			BYTE "[3]   TOPUP WALLET", 0dh, 0ah
			BYTE "[4]   EXIT PROGRAM", 0dh, 0ah, 0dh, 0ah
			BYTE "      CHOOSE: ", 0

	reScreen   BYTE "                       BROWSE RESTAURANTS                         ",0dh, 0ah, 0
	resOptions BYTE "[1]   CAFETERIA", 0dh, 0ah
			   BYTE "[2]   PIZZA FAST", 0dh, 0ah
			   BYTE "[3]   DHABA FAST", 0dh, 0ah
			   BYTE "[4]   SHAWARMA FAST", 0dh, 0ah
			   BYTE "[5]   BACK TO HOME SCREEN", 0dh, 0ah, 0dh, 0ah
			   BYTE "      CHOOSE: ",0

	cafePrices DWORD 80, 150, 30, 40, 100
	cafeScreen   BYTE "                       CAFETERIA MENU                           ",0dh, 0ah, 0
	cafeOptions	 BYTE "[1]   PARATHA			80", 0dh, 0ah
				 BYTE "[2]   BIRYANI			150", 0dh, 0ah
			     BYTE "[3]   SAMOSA			30", 0dh, 0ah
			     BYTE "[4]   VEG ROLL			40", 0dh, 0ah
				 BYTE "[5]   MACARONI			100", 0dh, 0ah
			     BYTE "[6]   BACK TO OTHER OPTIONS", 0dh, 0ah, 0dh, 0ah
			     BYTE "      CHOOSE: ",0

	cafeDish1 BYTE "ITEM NAME: PARATHA", 0
	cafeDish2 BYTE "ITEM NAME: BIRYANI", 0
	cafeDish3 BYTE "ITEM NAME: SAMOSA", 0
	cafeDish4 BYTE "ITEM NAME: VEG ROLL", 0
	cafeDish5 BYTE "ITEM NAME: MACARONI", 0
	
	PizzafastPrices DWORD 100, 150, 100, 40, 200
	PizzafastScreen   BYTE "                       PIZZAFAST MENU                           ",0dh, 0ah, 0
	PizzafastOptions	 BYTE "[1]   PIZZA FRIES			100", 0dh, 0ah
				 BYTE "[2]   BIRYANI				150", 0dh, 0ah
			     BYTE "[3]   CHICKEN ROLL			100", 0dh, 0ah
			     BYTE "[4]   VEG ROLL				40", 0dh, 0ah
				 BYTE "[5]   BURGER				200", 0dh, 0ah
			     BYTE "[6]   BACK TO OTHER OPTIONS", 0dh, 0ah, 0dh, 0ah
			     BYTE "      CHOOSE: ",0

	PizzafastDish1 BYTE "ITEM NAME: PIZZA FRIES", 0
	PizzafastDish2 BYTE "ITEM NAME: BIRYANI", 0
	PizzafastDish3 BYTE "ITEM NAME: CHICKEN ROLL", 0
	PizzafastDish4 BYTE "ITEM NAME: VEG ROLL", 0
	PizzafastDish5 BYTE "ITEM NAME: BURGER", 0
	
	dhabaPrices DWORD 50, 150, 250, 60, 40
	dhabaScreen   BYTE "                       DHABA MENU                           ",0dh, 0ah, 0
	dhabaOptions	 BYTE "[1]   FRIES			50", 0dh, 0ah
				 BYTE "[2]   MALAIBOTI ROLL		150", 0dh, 0ah
			     BYTE "[3]   CHICKEN ROLL		100", 0dh, 0ah
			     BYTE "[4]   CHICKEN TIKKA		250", 0dh, 0ah
				 BYTE "[5]   CHAI			40", 0dh, 0ah
			     BYTE "[6]   BACK TO OTHER OPTIONS", 0dh, 0ah, 0dh, 0ah
			     BYTE "      CHOOSE: ",0

	dhabaDish1 BYTE "ITEM NAME: FRIES", 0 
	dhabaDish2 BYTE "ITEM NAME: MALAIBOTI ROLL", 0
	dhabaDish3 BYTE "ITEM NAME: CHICKEN ROLL", 0
	dhabaDish4 BYTE "ITEM NAME: VEG ROLL", 0
	dhabaDish5 BYTE "ITEM NAME: BURGER", 0

	shawarmaPrices DWORD 80, 150, 90, 80, 60
	shawarmaScreen   BYTE "                       SHAWARMA MENU                           ",0dh, 0ah, 0
	shawarmaOptions	 BYTE "[1]   ZINGER SHAWARMA				80", 0dh, 0ah
				 BYTE "[2]   CHICKEN CHEESE SHAWARMA			150", 0dh, 0ah
			     BYTE "[3]   CHICKEN MAYO SHAWARMA			90", 0dh, 0ah
			     BYTE "[4]   VEG SHAWARMA				80", 0dh, 0ah
				 BYTE "[5]   ICECREAM (per scoop)			60", 0dh, 0ah
			     BYTE "[6]   BACK TO OTHER OPTIONS", 0dh, 0ah, 0dh, 0ah
			     BYTE "      CHOOSE: ",0

	shawarmaDish1 BYTE "ITEM NAME: ZINGER SHAWARMA", 0
	shawarmaDish2 BYTE "ITEM NAME: CHICKEN CHEESE SHAWARMA", 0
	shawarmaDish3 BYTE "ITEM NAME: CHICKEN MAYO SHAWARMA", 0
	shawarmaDish4 BYTE "ITEM NAME: VEG SHAWARMA", 0
	shawarmaDish5 BYTE "ITEM NAME: ICECREAM", 0
	
	;PIZZAFAST MENU - DHABA MENU - SHAWARMA MENU
	;PRICE ARRAY OF EACH RESTAURANT

	billScreen   BYTE "                       BILL SCREEN                             ",0dh, 0ah, 0
	idPrompt	 BYTE "ENTER YOUR STUDENT ID: ", 0
	billPrompt2  BYTE "ENTER QUANTITY: ", 0
	billTotal	 BYTE "TOTAL BILL: ", 0
	paymentPrompt BYTE "Enter 1 to pay by wallet and 2 for Cash on takeaway: ", 0
	


	topupScreen BYTE "                       TOPUP WALLET                               ",0dh, 0ah, 0
	topupOptions BYTE"      ENTER AMOUNT: ", 0

	walletScreen BYTE "                       WALLET OPTIONS                               ",0dh, 0ah, 0
	walletOptions BYTE "      WALLET AMOUNT: ", 0
	walletOptions2 BYTE "[1]   TOPUP WALLET", 0dh, 0ah
				  BYTE "[2]   RETURN", 0dh, 0ah
				  BYTE "      CHOOSE: ",0


	thanks BYTE "thanks for using our service! come back soon :)", 0

.code
main PROC

	mov eax, blue + (white*16)
	call setTextColor
	call clrscr

	home:
		call homeScreen							;call to the homeScreen

	call clrscr

	cmp choice, 1	
	je browse

	cmp choice, 2
	je cW

	cmp choice, 3
	je topup

	cmp choice, 4
	je khtm

	browse:
		call loadScreen
		call browseRestaurants					;call to browse restaurants
		call clrscr
		jmp home

	cW:
		call loadScreen
		call checkWallet
		call clrscr
		jmp home

	topup:
		call loadScreen
		call topupWallet						;call to wallet topup
		call clrscr
		jmp home

	
	khtm:
		call crlf
		mov edx, offset thanks
		call writeString
		call crlf
		call crlf
exit
main ENDP

homeScreen PROC								;homescreen where 3 options are given
	
	;print home screen options 
	;ask for choice and return to main

	mov edx, offset screen
	call writeString
	mov edx, offset screen1
	call writeString

	call crlf
	mov edx, offset options
	call writeString
	call readDec
	mov choice, eax							;the chosen option is stored in choice variable

	call crlf
	mov edx, offset screen
	call writeString

ret
homeScreen ENDP

browseRestaurants PROC
	
	;print restaurants
	;ask for choice
	;compare choice and call the respective restaurant
	
	mov edx, offset screen
	call writeString
	mov edx, offset reScreen
	call writeString
	call crlf

	mov edx, offset resOptions
	call writeString
	call readDec
	mov choice, eax

	call crlf
	mov edx, offset screen
	call writeString

	call clrscr
	cmp choice, 1
	je cafeteria
	cmp choice, 2
	je Pizzafast
	cmp choice, 3
	je dhaba
	cmp choice, 4
	je shawarma

ret
browseRestaurants ENDP

checkWallet PROC
	mov edx, offset screen
	call writeString
	mov edx, offset walletScreen
	call writeString
	
	call crlf
	mov edx, offset walletOptions
	call writeString
	mov eax, walletAmount
	call writeDec
	call crlf
	mov edx, offset walletOptions2
	call writeString
	call readDec
	mov choice, eax

	cmp choice, 1
	je topupWallet
ret
checkWallet ENDP

topupWallet PROC
	call clrscr
	mov edx, offset screen
	call writeString
	mov edx, offset topupScreen
	call writeString
	call crlf

	mov eax, " "
	mov ecx, 6
	k:
		call writeChar
	loop k
	mov edx, offset idPrompt
	call writeString
	call readDec
	mov stId, eax

	mov edx, offset topupOptions
	call writeString
	call readDec
	mov tempTopup, eax
	add walletAmount, eax

	call crlf
	mov eax, " "
	mov ecx, 6
	i:
		call writeChar
	loop i
	mov eax, tempTopup
	call writeDec
	mov edx, offset amountAdded
	call writeString

	call crlf
	mov edx, offset screen
	call writeString
	call readChar
ret
topupWallet ENDP

cafeteria PROC
	
	;print cafeteria menu
	;ask for choice
	;compare choice and call BILL procedure
	
	mov edx, offset screen
	call writeString
	mov edx, offset cafeScreen
	call writeString

	call crlf
	mov edx, offset cafeOptions
	call writeString
	call readDec
	mov choice, eax

	call crlf
	mov edx, offset screen
	call writeString

	call clrscr
	
	
	mov cafeFlag, 1
	call Bill

ret
cafeteria ENDP

Pizzafast PROC
    
	
	;print Pizzafast menu
	;ask for choice
	;compare choice and call BILL procedure
	
	mov edx, offset screen
	call writeString
	mov edx, offset PizzafastScreen
	call writeString

	call crlf
	mov edx, offset PizzafastOptions
	call writeString
	call readDec
	mov choice, eax

	call crlf
	mov edx, offset screen
	call writeString

	call clrscr

	mov pizzaFlag, 1
	call Bill

ret
Pizzafast ENDP

dhaba PROC
	
	;print dhaba menu
	;ask for choice
	;compare choice and call BILL procedure
	
	mov edx, offset screen
	call writeString
	mov edx, offset dhabaScreen
	call writeString

	call crlf
	mov edx, offset dhabaOptions
	call writeString
	call readDec
	mov choice, eax

	call crlf
	mov edx, offset screen
	call writeString

	call clrscr

	mov dhabaFlag, 1
	call Bill

ret
dhaba ENDP

shawarma PROC
	
	;print shawarma menu
	;ask for choice
	;compare choice and call BILL procedure
	
	mov edx, offset screen
	call writeString
	mov edx, offset shawarmaScreen
	call writeString

	call crlf
	mov edx, offset shawarmaOptions
	call writeString
	call readDec
	mov choice, eax

	call crlf
	mov edx, offset screen
	call writeString

	call clrscr

	mov shawarmaFlag, 1
	call Bill

ret
shawarma ENDP

Bill PROC

	;print BILL SCREEN
	;ASK FOR STUDENT ID
	;PRINT THE SELECTED ITEM FROM THE PREVIOUS RES SCREEN
	;ASK FOR QUANTITY
	;CALCULATE BILL (VALUE FROM PRICES ARRAY * QUANTITY)
	;ASK FOR PAYMENT OPTIONS (COD OR WALLET)
	;IF WALLET IS CHOSEN, THEN COMPARE WALLET AMOUNT WITH ORDER TOTAL
	;IF FUNDS ARE SUFFICIENT DEDUCT MONEY FROM WALLET, OTHERWISE PRINT MSG AND RETURN BACK TO THE PAYMENT OPTIONS
	
	cmp choice, 6
	je backk

	mov edx, offset screen
	call writeString
	mov edx, offset billScreen
	call writeString

	call crlf
	mov edx, offset idPrompt	;id prompt
	call writeString
	call readDec
	mov stId, eax

	mov edx, offset billPrompt2	;quantity prompt
	call writeString
	call readDec
	mov quantity, eax

	cmp cafeFlag, 1
	je cafeBill

	cmp Pizzaflag,1
	je pizzaBill

	cmp dhabaflag,1
	je dhabaBill

	cmp shawarmaflag,1
	je shawarmaBill

	cafeBill:
		paratha:
			cmp choice, 1
			jne biryani
			mov edx, offset cafeDish1
			call writeString
			call crlf
			mov edx, offset billTotal
			call writeString
			mov eax, [cafePrices+0]
			imul quantity
			mov total, eax
			call writeDec
		biryani:
			cmp choice, 2
			jne samosa
			mov edx, offset cafeDish2
			call writeString
			call crlf
			mov edx, offset billTotal
			call writeString
			mov eax, [cafePrices+4]
			imul quantity
			mov total, eax
			call writeDec
		samosa:
			cmp choice, 3
			jne vegroll
			mov edx, offset cafeDish3
			call writeString
			call crlf
			mov edx, offset billTotal
			call writeString
			mov eax, [cafePrices+8]
			imul quantity
			mov total, eax
			call writeDec
		vegroll:
			cmp choice, 4
			jne macaroni
			mov edx, offset cafeDish4
			call writeString
			call crlf
			mov edx, offset billTotal
			call writeString
			mov eax, [cafePrices+12]
			imul quantity
			mov total, eax
			call writeDec
		macaroni:
			cmp choice, 5
			jne next2
			mov edx, offset cafeDish5
			call writeString
			call crlf
			mov edx, offset billTotal
			call writeString
			mov eax, [cafePrices+16]
			imul quantity
			mov total, eax
			call writeDec
			jmp next2

	
	PizzaBill:
	   pizzafries:
			cmp choice, 1
			jne biry
			mov edx, offset PizzafastDish1
			call writeString
			call crlf
			mov edx, offset billTotal
			call writeString
			mov eax, [PizzafastPrices+0]
			imul quantity
			mov total, eax
			call writeDec
		biry:
			cmp choice, 2
			jne chickenroll
			mov edx, offset PizzafastDish2
			call writeString
			call crlf
			mov edx, offset billTotal
			call writeString
			mov eax, [PizzafastPrices+4]
			imul quantity
			mov total, eax
			call writeDec
		chickenroll:
			cmp choice, 3
			jne veggieroll
			mov edx, offset PizzafastDish3
			call writeString
			call crlf
			mov edx, offset billTotal
			call writeString
			mov eax, [PizzafastPrices+8]
			imul quantity
			mov total, eax
			call writeDec
		veggieroll:
			cmp choice, 4
			jne burger
			mov edx, offset PizzafastDish4
			call writeString
			call crlf
			mov edx, offset billTotal
			call writeString
			mov eax, [PizzafastPrices+12]
			imul quantity
			mov total, eax
			call writeDec
		burger:
			cmp choice, 5
			jne next2
			mov edx, offset PizzafastDish5
			call writeString
			call crlf
			mov edx, offset billTotal
			call writeString
			mov eax, [PizzafastPrices+16]
			imul quantity
			mov total, eax
			call writeDec
			jmp next2

    dhabaBill: 
	  fries:
			cmp choice, 1
			jne malaibotiroll
			mov edx, offset dhabaDish1
			call writeString
			call crlf
			mov edx, offset billTotal
			call writeString
			mov eax, [dhabaPrices+0]
			imul quantity
			mov total, eax
			call writeDec
		malaibotiroll:
			cmp choice, 2
			jne chickroll
			mov edx, offset dhabaDish2
			call writeString
			call crlf
			mov edx, offset billTotal
			call writeString
			mov eax, [dhabaPrices+4]
			imul quantity
			mov total, eax
			call writeDec
		chickroll:
			cmp choice, 3
			jne vgroll
			mov edx, offset dhabaDish3
			call writeString
			call crlf
			mov edx, offset billTotal
			call writeString
			mov eax, [dhabaPrices+8]
			imul quantity
			mov total, eax
			call writeDec
		vgroll:
			cmp choice, 4
			jne burg
			mov edx, offset dhabaDish4
			call writeString
			call crlf
			mov edx, offset billTotal
			call writeString
			mov eax, [dhabaPrices+12]
			imul quantity
			mov total, eax
			call writeDec
		burg:
			cmp choice, 5
			jne next2
			mov edx, offset dhabaDish5
			call writeString
			call crlf
			mov edx, offset billTotal
			call writeString
			mov eax, [dhabaPrices+16]
			imul quantity
			mov total, eax
			call writeDec
			jmp next2

shawarmaBill:
		zingershawarma:
			cmp choice, 1
			jne chickencheeseshawarma
			mov edx, offset shawarmaDish1
			call writeString
			call crlf
			mov edx, offset billTotal
			call writeString
			mov eax, [shawarmaPrices+0]
			imul quantity
			mov total, eax
			call writeDec
		chickencheeseshawarma:
			cmp choice, 2
			jne chickenmayoshawarma
			mov edx, offset shawarmaDish2
			call writeString
			call crlf
			mov edx, offset billTotal
			call writeString
			mov eax, [shawarmaPrices+4]
			imul quantity
			mov total, eax
			call writeDec
		chickenmayoshawarma:
			cmp choice, 3
			jne vegshawarma
			mov edx, offset shawarmaDish3
			call writeString
			call crlf
			mov edx, offset billTotal
			call writeString
			mov eax, [shawarmaPrices+8]
			imul quantity
			mov total, eax
			call writeDec
		vegshawarma:
			cmp choice, 4
			jne icecream
			mov edx, offset shawarmaDish4
			call writeString
			call crlf
			mov edx, offset billTotal
			call writeString
			mov eax, [shawarmaPrices+12]
			imul quantity
			mov total, eax
			call writeDec
		icecream:
			cmp choice, 5
			jne next2
			mov edx, offset shawarmaDish5
			call writeString
			call crlf
			mov edx, offset billTotal
			call writeString
			mov eax, [shawarmaPrices+16]
			imul quantity
			mov total, eax
			call writeDec


		next2:
			call crlf
			mov edx, offset paymentPrompt
			call writeString
			call readDec
			mov choice, eax
			cmp choice, 1
			je deductFromWallet
			cmp choice, 2
			jne backk
			mov edx, offset paid2
			call writeString
			call crlf
			mov edx, offset waitt
			call writeString
			call readChar

	call crlf
	mov edx, offset screen
	call writeString
	
	backk:
ret
Bill ENDP

deductFromWallet PROC
	mov eax, total
	cmp walletAmount, eax
	ja cont
	jna els

	cont:
		sub walletAmount, eax
		call writeDec
		mov edx, offset paid
		call writeString
		mov edx, offset waitt
		call writeString
		call readChar
		jmp endd

	els:
		call crlf
		mov edx, offset gareeb
		call writeString
		call crlf
		mov edx, offset waitt
		call writeString
		call readChar
	endd:
ret
deductFromWallet ENDP

loadScreen PROC
	call clrscr
	call crlf
	call crlf
	call crlf
	mov edx, offset loading
	call writeString
	mov ecx, 40
	i:
		mov eax, "_"
		call writeChar
		mov eax, ecx
		call delay
	loop i
	call clrscr
ret
loadScreen ENDP
END main