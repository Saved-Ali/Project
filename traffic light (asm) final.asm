#start=Traffic_Lights.exe#


name "traffic"
mov ax, 249h  
out 4, ax    

mov     cx, 4Ch   
mov     dx, 4B40h
mov     ah, 86h        
int     15h        


lop:
mov ax, transition1  
out 4, ax


mov     cx, 020h    
mov     dx, 0E00h              
mov     ah, 86h
int     15h                 

mov     cx, 020h   
mov     dx, 8700h
mov     ah, 86h
int     15h

mov     cx, 020h   
mov     dx, 8700h
mov     ah, 86h
int     15h

mov ax,transition2   
out 4,ax

mov     cx, 020h   
mov     dx, 8700h
mov     ah, 86h
int     15h 


mov ax, transition3     
out 4, ax


mov     cx, 020h    
mov     dx, 8700h
mov     ah, 86h
int     15h

mov     cx, 020h   
mov     dx, 8700h
mov     ah, 86h
int     15h

mov ax,transition4     
out 4,ax


mov     cx, 020h    
mov     dx, 8700h
mov     ah, 86h
int     15h

mov ax, 249h 
out 4, ax   


mov     cx, 4Ch    
mov     dx, 4B40h
mov     ah, 86h       
int     15h         

jmp lop
                                
transition1               equ     0000_0011_0000_1100b 
transition2               equ     0000_0111_1001_1110b 
transition3               equ     0000_1000_0110_0001b
transition4               equ     0000_1100_1111_0011b 