; Elementos de Sistemas : 2018a
; Rafael Corsi
; Hardware : Z0.1
;
; Data :
;    - Dez 2018
; Descrição :
;    - Movimentação de dados da memoria RAM
;
; RAM[0] = RAM[1]
; RAM[1] = RAM[0]
; RAM[3] = 1

leaw $R0, %A
movw (%A), %D   ;%D = RAM[0]
leaw $R2, %A
movw %D, (%A)   ;RAM[2] = RAM[0]

leaw $R1, %A    
movw (%A), %D   ;%D = RAM[1]
leaw $R0, %A
movw %D, (%A)   ;RAM[0] = RAM[1]

leaw $R2, %A    
movw (%A), %D   ;%D = RAM[2]
leaw $R1, %A
movw %D, (%A)   ;RAM[1] = RAM[2]

leaw $1, %      
movw %A, %D     
leaw $R3, %A
movw %D, (%A)   ;RAM[3] = 1
