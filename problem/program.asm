// NOMBRE: Santiago Londoño Gil
// ID: 000422233
// CORREO: santiago.londonogi@upb.edu.co


(INICIO)
		@KBD
		D=M
		@84
		D=D-A
		@VERTICAL
		D;JEQ
		@KBD
		D=M
		@67
		D=D-A
		@ERASE
		D;JEQ
		@INICIO
		0;JMP

(ERASE)
        @16384
        D=A
        @coord
        M=D 
        @8192
        D=A
        @cont 
        M=D
        @1
        D=A 
        @ncont
        M=D
        @Color
        M=0
        @Temp
        0;JMP

(VERTICAL)
		@16400 
		D=A 
		@coord
		M=D
		@256 
		D=A
		@cont
		M=D
		@32
		D=A
		@ncont
		M=D
		@256
		D=A
		@Color
		M=D
		@if
		M=0
		@Temp
		0;JMP

(HORIZONTAL)
		@20480
		D=A
		@coord
		M=D
		@32
		D=A
		@cont
		M=D
		@1
		D=A
		@ncont
		M=D
		@Color
		M=-1
		@if
		M=1
		@Temp
		0;JMP

(Temp)
        @coord
        D=M
        @Fcoord
        M=D

(PAINT)
        @cont
        D=M 
        @END
        D;JEQ
        @Color
        D=M 
        @Fcoord
        A=M 
        M=D
        @cont
        M=M-1
        @ncont
        D=M
        @Fcoord
        M=M+D
        @PAINT
        0;JMP

(END)
        @if
        D=M 
        @HORIZONTAL
        D;JEQ    
        @INICIO
        0;JMP