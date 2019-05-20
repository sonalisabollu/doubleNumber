       .data				

msg1:      .asciiz   "Enter your Value:"
msg2:      .asciiz    "\n"
msg3:      .asciiz   "Double your value:"

	.code	
			
        la      $a0,msg1
                                  #show message for value
        syscall $print_string

        la      $a0,msg2
                                      
        syscall $print_string

        li      $v0,5     
        syscall $read_int            #get number from user
        move    $a0,$v0               #store that value in $a0

        jal     GetDouble          #jump to function

        la      $a0,msg3
                                    #after double message
        syscall $print_string
        
        la      $a0,msg2
                                    #change line
        syscall $print_string

        move    $a0,$v0           #again move $v0 t0 $a0

       
        li      $v0,1
        add     $t3,$0,$a0           #print value
        syscall $print_int

        li      $v0,10
        syscall $exit               #terminate
       
 
GetDouble:  
     
        add    $a0,$a0,$a0    #value double 
        add    $v0,$0,$a0     #move that value in $v0
        jr     $ra            
       
       
        
      
