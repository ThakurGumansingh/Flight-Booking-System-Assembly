space macro m
      mov dl,10
      mov ah,2
      int 21h  
      
      mov dl,13
      mov ah,2
      int 21h
endm
.model small
.stack 100h
.data             
head0 db 10,13,'******************************************$'
head01 db 10,13,'*   Welcome to Karachi Airline Service   *$' 
head02 db 10,13,'******************************************$'  
head1 db 10,13,'* * * * * * * * * * MENU * * * * * * * * *$'
menu1 db 10,13,'*     Press 1 for Flight Booking         *$'
menu2 db 10,13,'*     Press 2 for Ticket Prices          *$'
menu3 db 10,13,'*     Press 3 for Promo Code             *$'
menu4 db 10,13,'*     Press 4 for Passengers Record      *$'
menu5 db 10,13,'*     Press 5 for Available Flights      *$'  
menu6 db 10,13,'*     Press 6 for Flight Status          *$'
menu7 db 10,13,'*     Press 7 for About                  *$'
menu8 db 10,13,'*     Press 8 for Exit                   *$'
head2 db 10,13,'* * * * * * * * * * ** * * * * * * * * * *$' 

menu9 db 10,13,'*     Press 1 for Arrival                *$'
menu10 db 10,13,'*     Press 2 for Departure              *$'

menu11 db 10,13,'* * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *$'
menu12 db 10,13,'* SNo.   TIME        FLIGHT     TO            GATE NO:   REMARKS  *$'
menu13 db 10,13,'* 1.     12:00 pm    PK-259     Islamabad     12         On Time  *$'
menu14 db 10,13,'* 2.     12:15 pm    FA-697     Paris         09         Delayed  *$'
menu15 db 10,13,'* 3.     12:30 pm    IT-290     Rome          10         On Time  *$'
menu16 db 10,13,'* 4.     12:45 pm    IN-723     Delhi         07         On Time  *$'
menu17 db 10,13,'* 5.     12:50 pm    AU-237     Canberra      03         Canceled *$'
menu18 db 10,13,'* * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *$'

menu19 db 10,13,'* * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *$'
menu20 db 10,13,'* SNo.   TIME        FLIGHT     FROM            GATE NO:   REMARKS  *$'
menu21 db 10,13,'* 1.     13:05 pm    IN-456     Kolkata         05         On Time  *$'
menu22 db 10,13,'* 2.     13:20 pm    BD-698     Dhaka           11         Canceled *$'
menu23 db 10,13,'* 3.     13:25 pm    IT-854     Venice          08         On Timee *$'
menu24 db 10,13,'* 4.     13:35 pm    PK-453     Lahore          15         Delayed  *$'
menu25 db 10,13,'* 5.     13:40 pm    US-235     New York        01         Canceled *$'
menu26 db 10,13,'* * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *$' 


menu27 db 10,13,'* * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *$'
menu28 db 10,13,'* SNo.   FLIGHT      FROM         TO          ECONOMIC FAIR  EXECUTIVE FAIR *$'
menu29 db 10,13,'* 1.     PK-247      Karachi      Paris       50000           60000         *$'
menu30 db 10,13,'* 2.     IT-686      Karachi      Venice      60000           70000         *$'
menu31 db 10,13,'* 3.     IN-253      Karachi      Delhi       30000           40000         *$'
menu32 db 10,13,'* 4.     US-357      Karachi      New York    80000           90000         *$'
menu33 db 10,13,'* 5.     AU-582      Karachi      Canberra    40000           50000         *$'
menu34 db 10,13,'* * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *$' 

menu35 db 10,13,'* * * * * * * * * * * * * * * * * * * * * * * * * * *$'
menu36 db 10,13,'* SNO:    COUNTRY    CAPITAL         TICKET PRICE   *$'
menu37 db 10,13,'* 1.      USA        Washington DC   50000          *$'
menu38 db 10,13,'* 2.      India      New Delhi       30000          *$'
menu39 db 10,13,'* 3.      France     Paris           80000          *$'
menu40 db 10,13,'* 4.      UAE        Dubai           20000          *$'
menu41 db 10,13,'* 5.      Italy      Rome            60000          *$'
menu42 db 10,13,'* * * * * * * * * * * * * * * * * * * * * * * * * * *$' 

choice db 10,13, 'Enter your choice: $'   
retry  db 10,13, 'Retry [y/n]: $'
msg db 10,13,'This Program is created by Gumansingh Rajput, Ambreen Malik, Kashif Tariq & Hassan Jamil.$'

arr1 db 20 dup ('$')
msg1 db 10,13,'Name: $'  
nam db 10,13,'Name = $' 

arr2 db 20 dup ('$') 
msg2 db 10,13,'Surname: $'  
surnam db 10,13,'Surname = $' 

arr3 db 20 dup ('$') 
msg3 db 10,13,'Gender: $'  
gender db 10,13,'Gender = $'

arr4 db 20 dup ('$') 
msg4 db 10,13,'Date of Birth: $'  
dob db 10,13,'Date of Birth = $'

arr5 db 20 dup ('$') 
msg5 db 10,13,'From: $'  
from db 10,13,'From = $'

arr6 db 20 dup ('$') 
msg6 db 10,13,'To: $'  
to db 10,13,'To = $'

arr7 db 20 dup ('$') 
msg7 db 10,13,'Passport No#: $'  
pasp db 10,13,'Passport No# = $'

arr8 db 20 dup ('$') 
msg8 db 10,13,'Nationality: $'  
national db 10,13,'Nationality = $' 

msg9 db 10,13,'Enter promo: $'
valid db 10,13,'Valid Promo!$' 
invalid db 10,13,'Invalid Promo!$'
promo1 db 'guman',10,13,'$'    

input db 10,13,'Press 1 for First Class',10,13,'Press 2 for Business Class',10,13,'Press 3 for Premium',10,13,'Press 4 for Economy Class',10,13,'Choose Class for ticket :', '$'
first db 10,13,'First Class price = 5000$'
business db 10,13,'Business Class price = 4000$'
premium db 10,13,'Premiumt Class price = 3000$'
economy db 10,13,'Economy Class price = 2000$'

msgp db 10,13, 'The new Discounted prices are $'
first1 db 10,13,'First Class price = 3000$'
business1 db 10,13,'Business Class price = 2000$'
premium1 db 10,13,'Premiumt Class price = 1500$'
economy1 db 10,13,'Economy Class price = 1000$'
new1 db 10,13,'Would like to book the flight now $'
new2 db 10,13,'press n for new upgraded flight or e to exit  $'
booknew db 10,13,'Which class would you like to book $' 
total db 10,13,'Your new total is $'


.code
main proc 
      mov ax,@data
      mov ds,ax
  menu:  
      
      lea dx,head0
      mov ah,9
      int 21h
      
      lea dx,head01
      mov ah,9
      int 21h
      
      lea dx,head02
      mov ah,9
      int 21h
      
      lea dx,head1
      mov ah,9
      int 21h
      
      lea dx,menu1
      mov ah,9
      int 21h
      
      lea dx,menu2
      mov ah,9
      int 21h
      
      lea dx,menu3
      mov ah,9
      int 21h
      
      lea dx,menu4
      mov ah,9
      int 21h
      
      lea dx,menu5
      mov ah,9
      int 21h
      
      lea dx,menu6
      mov ah,9
      int 21h
      
      lea dx,menu7
      mov ah,9
      int 21h 
      
      lea dx,menu8
      mov ah,9
      int 21h 
      
      lea dx,head2
      mov ah,9
      int 21h 
      
  _cmp:
      space
      
      lea dx,choice
      mov ah,9
      int 21h
      
      mov ah,1
      int 21h  
      
      cmp al,'1'
      je _booking
      jb menu 
      
      cmp al,'2'
      je prices 
      
      cmp al,'3'
      je _promo
      
      cmp al,'5'
      je available_flights 
      
      cmp al,'6'
      je flight_status
      
      cmp al,'7'
      je about
      
      cmp al,'8'
      je _exit
      ja menu 
  _booking:
      call booking 
      ;congratulate msg
      
  prices:
      lea dx,menu35
      mov ah,9
      int 21h
      
      lea dx,menu36
      mov ah,9
      int 21h
      
      lea dx,menu37
      mov ah,9
      int 21h
      
      lea dx,menu38
      mov ah,9
      int 21h
      
      lea dx,menu39
      mov ah,9
      int 21h
      
      lea dx,menu40
      mov ah,9
      int 21h
      
      lea dx,menu41
      mov ah,9
      int 21h
      
      lea dx,menu42
      mov ah,9
      int 21h
      
      jmp _retry   
        
  _promo:
    mov bx,offset promo1  
    
    lea dx,msg9
    mov ah,9
    int 21h
    
    mov cx,5
   Pcode:  
    mov ah,1
    int 21h
    
    cmp al,[bx] 
    jne _invalid
    
    inc bx 
    loop Pcode
    
    lea dx,valid
    mov ah,9
    int 21h  
    
    jmp validcode 
    
    jmp _retry
  _invalid:
    lea dx,invalid
    mov ah,9
    int 21h 
    
    jmp _retry     
  available_flights:
      lea dx,menu27
      mov ah,9
      int 21h 
      
      lea dx,menu28
      mov ah,9
      int 21h 
      
      lea dx,menu29
      mov ah,9
      int 21h 
      
      lea dx,menu30
      mov ah,9
      int 21h 
      
      lea dx,menu31
      mov ah,9
      int 21h 
      
      lea dx,menu32
      mov ah,9
      int 21h 
      
      lea dx,menu33
      mov ah,9
      int 21h 
      
      lea dx,menu34
      mov ah,9
      int 21h  
      
      jmp _retry 
    
  flight_status:
      lea dx,head1
      mov ah,9
      int 21h
      
      lea dx,menu9
      mov ah,9
      int 21h
      
      lea dx,menu10
      mov ah,9
      int 21h 
      
      lea dx,head2
      mov ah,9
      int 21h 
      
      space
      
      lea dx,choice
      mov ah,9
      int 21h
      
      mov ah,1
      int 21h 
      
      cmp al,'1'
      je arrival
      jb menu
      
      cmp al,'2'
      je departure 
      ja menu
      
   arrival:
      lea dx,menu11
      mov ah,9
      int 21h 
      
      lea dx,menu12
      mov ah,9
      int 21h 
      
      lea dx,menu13
      mov ah,9
      int 21h 
      
      lea dx,menu14
      mov ah,9
      int 21h 
      
      lea dx,menu15
      mov ah,9
      int 21h 
      
      lea dx,menu16
      mov ah,9
      int 21h   
      
      lea dx,menu17
      mov ah,9
      int 21h 
      
      lea dx,menu18
      mov ah,9
      int 21h     
      
      jmp _retry
           
   departure:
      lea dx,menu19
      mov ah,9
      int 21h      
      
      lea dx,menu20
      mov ah,9
      int 21h 
      
      lea dx,menu21
      mov ah,9
      int 21h 
      
      lea dx,menu22
      mov ah,9
      int 21h 
      
      lea dx,menu23
      mov ah,9
      int 21h 
      
      lea dx,menu24
      mov ah,9
      int 21h 
      
      lea dx,menu25
      mov ah,9
      int 21h      
      
      lea dx,menu26
      mov ah,9
      int 21h  
      jmp _retry
      
  about:   
      lea dx,msg
      mov ah,9
      int 21h  
      
      jmp _retry  
      
 _retry:
     lea dx,retry
     mov ah,9
     int 21h
     
     mov ah,1
     int 21h
     
     cmp al,'y'
     je menu
     jb _retry
     
     cmp al,'n'
     je _exit
     ja _retry
        
  _exit:
      mov ah,4ch
      int 21h     
    main endp

booking proc
   class:  
    lea dx,input
    mov ah,9
    int 21h
    
    mov ah,1
    int 21h
    
    cmp al,'1'
    je _first
    jb _retry
    
    cmp al,'2'
    je _business
    
    cmp al,'3'
    je _premium
    
    cmp al,'4'
    je _economy
    ja _retry 
   
  _first:
    lea dx,first
    mov ah,9
    int 21h 
    
    jmp book  
  _business:
    lea dx,business
    mov ah,9
    int 21h 
    
    jmp book 
  _premium: 
    lea dx,premium
    mov ah,9
    int 21h 
    
    jmp book  
  _economy:
    lea dx,economy
    mov ah,9
    int 21h
    
    jmp book 
  book:  
    mov di,offset arr1
    
    lea dx,msg1  
    mov ah,9
    int 21h
     
   start: 
    mov ah,1 
    int 21h
    
    cmp al,13
    je next1
    
    mov [di],al
    inc di
    jmp start
    
   next1: 
    mov si,offset arr2
    
    lea dx,msg2  
    mov ah,9
    int 21h
   next2:     
    mov ah,1
    int 21h  
    
    cmp al,13 
    je next3
     
    mov [si],al
    inc si
    jmp next2
   next3:
    mov di,offset arr3
    
    lea dx,msg3
    mov ah,9
    int 21h
   next4:
    mov ah,1
    int 21h  
    
    cmp al,13 
    je next5
     
    mov [di],al
    inc di
    jmp next4   
   next5:
    mov di,offset arr4
    
    lea dx,msg4
    mov ah,9
    int 21h
   next6:
    mov ah,1
    int 21h  
    
    cmp al,13 
    je next7
     
    mov [di],al
    inc di
    jmp next6 
    
   next7:
    mov di,offset arr5
    
    lea dx,msg5
    mov ah,9
    int 21h
   next8:
    mov ah,1
    int 21h  
    
    cmp al,13 
    je next9
     
    mov [di],al
    inc di
    jmp next8 
    
   next9:
    mov di,offset arr6
    
    lea dx,msg6
    mov ah,9
    int 21h
   next10:
    mov ah,1
    int 21h  
    
    cmp al,13 
    je next11
     
    mov [di],al
    inc di
    jmp next10 
    
   next11:
    mov di,offset arr7
    
    lea dx,msg7
    mov ah,9
    int 21h
   next12:
    mov ah,1
    int 21h  
    
    cmp al,13 
    je next13
     
    mov [di],al
    inc di
    jmp next12 
    
   next13:
    mov di,offset arr8
    
    lea dx,msg8
    mov ah,9
    int 21h
   next14:
    mov ah,1
    int 21h  
    
    cmp al,13 
    je print
     
    mov [di],al
    inc di
    jmp next14   
                 
  print:
    space
    
    lea dx,nam
    mov ah,9
    int 21h  
    
    lea dx,arr1
    mov ah,9
    int 21h  
    
    lea dx,surnam
    mov ah,9
    int 21h
    
    lea dx,arr2
    mov ah,9
    int 21h 
    
    lea dx,gender
    mov ah,9
    int 21h
    
    lea dx,arr3
    mov ah,9
    int 21h  
    
    lea dx,dob
    mov ah,9
    int 21h
    
    lea dx,arr4
    mov ah,9
    int 21h 
    
    lea dx,from
    mov ah,9
    int 21h
    
    lea dx,arr5
    mov ah,9
    int 21h 
    
    lea dx,to
    mov ah,9
    int 21h
    
    lea dx,arr6
    mov ah,9
    int 21h 
    
    lea dx,pasp
    mov ah,9
    int 21h
    
    lea dx,arr7
    mov ah,9
    int 21h 
    
    lea dx,national
    mov ah,9
    int 21h
    
    lea dx,arr8
    mov ah,9
    int 21h   
    
    jmp _retry 
    
validcode:
    lea dx,first1
    mov ah,9
    int 21h 

    lea dx,business1
    mov ah,9
    int 21h 

    lea dx,premium1
    mov ah,9
    int 21h 

    lea dx,economy1
    mov ah,9
    int 21h    

    lea dx,new1
    mov ah,9
    int 21h

    lea dx,new2
    mov ah,9
    int 21h  

    mov ah,1
    int 21h

    cmp al,'n'
    jmp newbook

    cmp al,'e'
    je _exit

newbook:
    lea dx,booknew
    mov ah,9
    int 21h

    lea dx,input
    mov ah,9
    int 21h 

    mov ah,1
    int 21h

    cmp al,'1'
    je book1
    jb _retry

    cmp al,'2'
    je book2

    cmp al,'3'
    je book3

    cmp al,'4'
    je book4

book1: 
    lea dx,total
    mov ah,9
    int 21h   

    lea dx,first1
    mov ah,9
    int 21h  
    jmp book 
       
book2: 
    lea dx,total
    mov ah,9
    int 21h 
    
    lea dx,business1
    mov ah,9
    int 21h 
    jmp book 

book3:     

    lea dx,total
    mov ah,9
    int 21h 

    lea dx,premium1
    mov ah,9
    int 21h 
    jmp book 

book4:

    lea dx,total
    mov ah,9
    int 21h 
    lea dx,economy1
    
    mov ah,9
    int 21h
    jmp book 
    
    booking endp
ret
end main 