org 100h       ; to provide information for evaluating addresss


include emu8086.inc          ; calling emu8086 library


.data           ; data segment of program
x dw ?          ; variable to get the  option input
var1 dw ?       ; variable to get 1st input
var2 dw ?       ; variable to get 2ns input
ans  dw ?       ; variable to store the answer


.code         ; code segment of program
START:        ; Main tag
PRINTN        ; instruction to print new line
PRINTN


print '                                 **********WELCOME*********     '

printn
printn
printn
print '                   Choose any number for the operation that you want to perform               '
printn
printn
printn
print '   1=FOR ADDITION OPERATION'
printn
print '   2=FOR SUBTRACTION OPERATION'
printn
print '   3=FOR MULTIPLICATION OPERATION'
printn
print '   4=FOR DIVISION OPERATION'
printn
print '   5=FOR AND OPERATION' 
printn
print '   6=FOR NOT OPERATION'
printn
print '   7=FOR OR OPERATION'
printn
print '   8=FOR SQUARE OPERATION'
printn
print '   9=FOR CUBE OPERATION'
printn
print '   10=FOR EXIT'



printn
printn
printn
print 'ENTER NUMBER:'
call scan_num    ; instruction to get input from the user
mov x,cx         ; storing the input to variable x
mov ax,x         ; moving the variable to accumulator register
printn                              
 
; program control part 
cmp ax,1        ; comparing input with 1
je addition

cmp ax,2        ; comparing input with 2
je substrct

cmp ax,3        ; comparing input with 3
je multiply

cmp ax,4        ; comparing input with 4
je divide

cmp ax,5        ; comparing input with 5
je andoprt
  
cmp ax,6        ; comparing input with 6
je oroprt

cmp ax,7        ; comparing input with 7
je oroprt  

cmp ax,8        ; comparing input with 8
je square

cmp ax,9        ; comparing input with 9
je cube

cmp ax,10       ; comparing input with 10
je exit



; instructiona segment

addition:
print '                         ********ADDITION********* '
printn
print 'ENTER FIRST OPERAND:'
printn
call scan_num   ; taking 1st input operand
mov var1,cx     ; storing 1st input into variable var1
mov ax,var1     ; moving var1 into ax register
printn
print 'ENTER SECOND OPERAND:'
printn
call scan_num   ; taking 2nd input operand
mov var2,cx     ; storing 2nd input into variable var2
mov bx,var2     ; moving var2 into bx register
printn
add ax,bx       ; adding values stored into ax and bx

PRINT 'RESULT:'
call print_num   ; printing the value
jmp START:       ; loop that takes back to the main menu via main tag: START
           

substrct:
print '                         ********SUBTRACTION********* '
printn
print 'ENTER FIRST OPERAND:'
printn
call scan_num   ; taking 1st input operand
mov var1,cx     ; storing 1st input into variable var1
mov ax,var1     ; moving var1 into ax register
printn
print 'ENTER SECOND OPERAND:'
printn
call scan_num   ; taking 2nd input operand
mov var2,cx     ; storing 2nd input into variable var2
mov bx,var2     ; moving var2 into bx register
printn
sub ax,bx       ; subracting values stored into ax and bx
PRINT 'RESULT:'
call print_num  ; printing the value

jmp START:      ; loop that takes back to the main menu via main tag: START


multiply:
print '                         ********MULTIPLICATION********* '
printn
print 'ENTER FIRST OPERAND:'
printn
call scan_num    ; taking 1st input operand
mov var1,cx      ; storing 1st input into variable var1
mov ax,var1      ; moving var1 into ax register
printn
print 'ENTER SECOND OPERAND:'
printn
call scan_num    ; taking 2nd input operand
mov var2,cx      ; storing 2nd input into variable var2
mov bx,var2      ; moving var2 into bx register
printn

mul bx           ; multiply data in bx with ax
PRINT 'RESULT:'
call print_num   ; printing the value

jmp START:       ; loop that takes back to the main menu via main tag: START


divide:
print '                         ********DIVISION********* '
printn
print 'ENTER FIRST OPERAND:'
printn
call scan_num    ; taking 1st input operand
mov var1,cx      ; storing 1st input into variable var1
mov ax,var1      ; moving var1 into ax register
printn
print 'ENTER SECOND OPERAND:'
printn
call scan_num    ; taking 2nd input operand
mov var2,cx      ; storing 2nd input into variable var2
mov bx,var2      ; moving var2 into bx register
cmp bx,0
je result:      
printn
div bx           ; multiply data in bx with ax
PRINT 'RESULT:'
call print_num   ; printing the value

jmp START:       ; loop that takes back to the main menu via main tag: START
           


square:
print '                         ********SQUARE********* '
printn
print 'ENTER FIRST OPERAND:'
printn
call scan_num    ; taking 1st input operand
mov var1,cx      ; storing 1st input into variable var1
mov ax,var1      ; moving var1 into ax register
printn
mul ax           ; multiply data in ax with ax
PRINT 'RESULT:'
call print_num   ; printing the value

jmp START:       ; loop that takes back to the main menu via main tag: START

cube:
print '                         ********CUBE********* '
printn
print 'ENTER FIRST OPERAND:'
printn
call scan_num    ; taking 1st input operand
mov var1,cx      ; storing 1st input into variable var1
mov ax,var1      ; moving var1 into ax register
printn
mul var1         ; multiply var1 with data in ax
mov ans,ax       ; storing output in variable answer
mul var1         ; multiply var1 with data in ax 
PRINT 'RESULT:'
call print_num   ; printing the value

jmp START:       ; loop that takes back to the main menu via main tag: START



notoprt:
print '                         ********NOT********* '
printn
print 'ENTER FIRST OPERAND:'
printn
call scan_num    ; taking 1st input operand
mov var1,cx      ; storing 1st input into variable var1
mov ax,var1      ; moving var1 into ax register
printn
not ax           ; performing NOT operation on ax register
PRINT 'RESULT IN DECIMAL:'
call print_num   ; printing the value

jmp START:       ; loop that takes back to the main menu via main tag: START




andoprt:
print '                         ********AND********* '
printn
print 'ENTER FIRST OPERAND:'
printn
call scan_num   ; taking 1st input operand
mov var1,cx     ; storing 1st input into variable var1
mov ax,var1     ; moving var1 into ax register
printn
print 'ENTER SECOND OPERAND:'
printn
call scan_num   ; taking 2nd input operand 
mov var2,cx     ; storing 2nd input into variable var2
mov bx,var2     ; moving var2 into bx register
printn
and ax,bx       ; performing AND operatiion between data in ax register and data in bx register
PRINT 'RESULT IN DECIMAL:'
call print_num  ; printing the value

jmp START:      ; loop that takes back to the main menu via main tag: START




oroprt: 
print '                         ********OR********* '
printn
print 'ENTER FIRST OPERAND:'
printn
call scan_num   ; taking 1st input operand
mov var1,cx     ; storing 1st input into variable var1
mov ax,var1     ; moving var1 into ax register
printn
print 'ENTER SECOND OPERAND:'
printn
call scan_num   ; taking 2nd input operand
mov var2,cx     ; storing 2nd input into variable var2
mov bx,var2     ; moving var2 into bx register
printn
OR ax,bx        ; performing OR operatiion between data in ax register and data in bx register
PRINT 'RESULT IN DECIMAL:'
call print_num  ; printing the value

jmp START:      ; loop that takes back to the main menu via main tag: START


 
result: 
printn
print 'Result: O'
jmp START:

exit:
print '                                                    ********THANK YOU!********* '
 
 
 
 

DEFINE_SCAN_NUM
DEFINE_PRINT_NUM
DEFINE_PRINT_NUM_UNS 



ret




