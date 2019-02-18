        .data
arr:    .space 5            
arrsz:  .byte  5             
brr:    .space 5
brrsz:  .byte  5
   
        .text
main:   lb   $s0,arrsz       
        lb   $s1,brrsz       
        la   $s2,arr         
        la   $s3,brr 
        move $s4,$s2
        move $s5,$s3        
        li   $t0,0            
        li   $t2,'a'           
        li   $t3,'A'           
        li   $t1,0

iniarr: beq  $t0,$s0,loop
        sb   $s2,($s2)
        sb   $t2,0($s2)
        sb   $s3,($s3)
        sb   $t3,0($s3)       
        addi $t2,$t2,3
        addi $t3,$t3,4     
        addi $s2,$s2,1 
        addi $s3,$s3,1         
        addi $t0,$t0,1       
        b    iniarr

loop:   beq  $t1,$s0,END
        lb $t4,0($s4)
        sb $s5,0($s4)
        lb $t5,0($s5)
        sb $t4,0($s5)
        addi $s4,$s4,1 
        addi $s5,$s5,1 
        addi $t1,$t1,1
        b    loop
         


END:
        jr $ra
