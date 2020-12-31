#   display width in pixels:  256
#   display height in pixels: 256
#   base address for display: 0x10010000 (static data)

	.data
frameBuffer:
        .space 0x80000
desloc: .word  0x00010
deslocCano1: .word 0x00000
deslocCano2: .word 0x00000
msg1:   .asciiz "Fim de jogo\nVoce perdeu!!\n"
msg2:	.asciiz "Pontos: "

flagSubindo: .word 0x00000
flagColisao: .byte 0x00000
canoTimer: .word 0x00010
tamanhoCano1: .word 0x00000
tamanhoCano2: .word 0x00000



pontuacao: .word -2
    # Main body
 
	.text
main:

init:
	li $s7, 0xffffff
	la $t1,frameBuffer
	add $t1, $t1, 136
	sw $s7, ($t1)
	add $t1, $t1, 4
	sw $s7, ($t1)
	add $t1, $t1, 4
	sw $s7, ($t1)
	add $t1, $t1, 12
	sw $s7, ($t1)
	add $t1, $t1, 4
	sw $s7, ($t1)
	add $t1, $t1, 4
	sw $s7, ($t1)
	add $t1, $t1, 4
	sw $s7, ($t1)
	add $t1, $t1, 12
	sw $s7, ($t1)
	add $t1, $t1, 8
	sw $s7, ($t1)
	add $t1, $t1, 76
	sw $s7, ($t1)
	add $t1, $t1, 12
	sw $s7, ($t1)
	add $t1, $t1, 8
	sw $s7, ($t1)
	add $t1, $t1, 20
	sw $s7, ($t1)
	add $t1, $t1, 8
	sw $s7, ($t1)
	add $t1, $t1, 8
	sw $s7, ($t1)
	add $t1, $t1, 72
	sw $s7, ($t1)
	add $t1, $t1, 12
	sw $s7, ($t1)
	add $t1, $t1, 8
	sw $s7, ($t1)
	add $t1, $t1, 20
	sw $s7, ($t1)
	add $t1, $t1, 8
	sw $s7, ($t1)
	add $t1, $t1, 8
	sw $s7, ($t1)
	add $t1, $t1, 72
	sw $s7, ($t1)
	add $t1, $t1, 12
	sw $s7, ($t1)
	add $t1, $t1, 8
	sw $s7, ($t1)
	add $t1, $t1, 20
	sw $s7, ($t1)
	add $t1, $t1, 8
	sw $s7, ($t1)
	add $t1, $t1, 8
	sw $s7, ($t1)
	add $t1, $t1, 72
	sw $s7, ($t1)
	add $t1, $t1, 4
	sw $s7, ($t1)
	add $t1, $t1, 4
	sw $s7, ($t1)
	add $t1, $t1, 12
	sw $s7, ($t1)
	add $t1, $t1, 4
	sw $s7, ($t1)
	add $t1, $t1, 4
	sw $s7, ($t1)
	add $t1, $t1, 12
	sw $s7, ($t1)
	add $t1, $t1, 8
	sw $s7, ($t1)
	add $t1, $t1, 8
	sw $s7, ($t1)
	add $t1, $t1, 72
	sw $s7, ($t1)
	add $t1, $t1, 12
	sw $s7, ($t1)
	add $t1, $t1, 8
	sw $s7, ($t1)
	add $t1, $t1, 20
	sw $s7, ($t1)
	add $t1, $t1, 8
	sw $s7, ($t1)
	add $t1, $t1, 8
	sw $s7, ($t1)
	add $t1, $t1, 72
	sw $s7, ($t1)
	add $t1, $t1, 12
	sw $s7, ($t1)
	add $t1, $t1, 8
	sw $s7, ($t1)
	add $t1, $t1, 20
	sw $s7, ($t1)
	add $t1, $t1, 8
	sw $s7, ($t1)
	add $t1, $t1, 8
	sw $s7, ($t1)
	add $t1, $t1, 72
	sw $s7, ($t1)
	add $t1, $t1, 12
	sw $s7, ($t1)
	add $t1, $t1, 8
	sw $s7, ($t1)
	add $t1, $t1, 20
	sw $s7, ($t1)
	add $t1, $t1, 8
	sw $s7, ($t1)
	add $t1, $t1, 8
	sw $s7, ($t1)
	add $t1, $t1, 72
	sw $s7, ($t1)
	add $t1, $t1, 4
	sw $s7, ($t1)
	add $t1, $t1, 4
	sw $s7, ($t1)
	add $t1, $t1, 12
	sw $s7, ($t1)
	add $t1, $t1, 4
	sw $s7, ($t1)
	add $t1, $t1, 4
	sw $s7, ($t1)
	add $t1, $t1, 4
	sw $s7, ($t1)
	add $t1, $t1, 8
	sw $s7, ($t1)
	add $t1, $t1, 8
	sw $s7, ($t1)
	add $t1, $t1, 8
	sw $s7, ($t1)
	add $t1, $t1, 200 # Bem underline
	sw $s7, ($t1)
	add $t1, $t1, 4
	sw $s7, ($t1)
	add $t1, $t1, 4
	sw $s7, ($t1)
	add $t1, $t1, 4
	sw $s7, ($t1)
	add $t1, $t1, 4
	sw $s7, ($t1)
	add $t1, $t1, 4
	sw $s7, ($t1)
	add $t1, $t1, 4
	sw $s7, ($t1)
	add $t1, $t1, 4
	sw $s7, ($t1)
	add $t1, $t1, 4
	sw $s7, ($t1)
	add $t1, $t1, 4
	sw $s7, ($t1)
	add $t1, $t1, 4
	sw $s7, ($t1)
	add $t1, $t1, 4
	sw $s7, ($t1)
	add $t1, $t1, 4
	sw $s7, ($t1)
	add $t1, $t1, 4
	sw $s7, ($t1)
	add $t1, $t1, 4
	sw $s7, ($t1)
	add $t1, $t1, 224
	sw $s7, ($t1)
	add $t1, $t1, 16
	sw $s7, ($t1)
	add $t1, $t1, 8
	sw $s7, ($t1)
	add $t1, $t1, 16
	sw $s7, ($t1)
	add $t1, $t1, 16
	sw $s7, ($t1)
	add $t1, $t1, 8
	sw $s7, ($t1)
	add $t1, $t1, 4
	sw $s7, ($t1)
	add $t1, $t1, 4
	sw $s7, ($t1)
	add $t1, $t1, 12
	sw $s7, ($t1)
	add $t1, $t1, 4
	sw $s7, ($t1)
	add $t1, $t1, 4
	sw $s7, ($t1)
	add $t1, $t1, 4
	sw $s7, ($t1)
	
	
		
	
	li   $v0, 12       
  	syscall            # Read Character
	
	
	
	

	
	# Wait for key to be pressed
key_wait:
    	li $s7, 0x000000 # color: black
    	li $s6, 0xfff446 # color: amarelo
    	li $s5, 0x00f51d # color: green 
    	
    	jal criaCano2 
    	jal verificaCriacaoCano
    	
    	jal verificaColisao
    	
    	lb $t1, flagColisao
	bnez $t1, fim
    	
    	jal verificaSubindo
    	  
     	#li $v0, 11       # syscall 4 (print_char)
     	#li $a0, '#'
     	#syscall          # print the string

    	li $v0, 50000	#Frame   
	li $a0, 1
wait:
	#li $v0, 32
	#li $a0, 300
	#syscall
	
	sub $v0,$v0,$a0
	bne $zero,$v0,wait	#loop do frame
	
	lw      $t0, 0xffff0000
	andi    $t0, $t0, 0x00000001  # Isolate ready bit
	beqz    $t0, key_wait
    
	lbu     $a0, 0xffff0004
	
	move    $s4, $a0  	# Save Key
	
    	jal movimento
	
	j	key_wait	
		
fim:	
	li $v0, 4
	la $a0, msg1
	syscall
	
	la $a0, msg2
	syscall
	
	lw $a0, pontuacao 
	li $v0, 1
	syscall
	
	
    	li	$v0, 10		# exits program
	syscall
	
verificaCriacaoCano:
	lw $t0, canoTimer
	
	beqz $t0, criaCano1
	
	sub $t0, $t0, 1
	sw $t0, canoTimer 
	j retornoMovimento
	
criaCano1:
	lw $t0, tamanhoCano1
	
	la $t1,frameBuffer          	# Image Base Address
	la $t3,deslocCano1
	lw $t2,($t3)                	# Offset from imagem base address
	
	beqz $t2 , resetaCano1
	
	add $t1, $t1, $t2
	li $t4, 0x0001a
	sub $t4, $t4, $t0
	
	li $t5, 0x000020
	
	apagaCano:
		sw $s7, ($t1)
		addu $t1, $t1, 128
		
		sub $t5, $t5, 1
		bnez $t5, apagaCano  
	
	la $t1, frameBuffer
	sub $t2, $t2, 4
	add $t1, $t1, $t2
	sw $t2,($t3)
	
	whileImprimeCano:
		sw $s5, ($t1) 
		
		add $t1, $t1, 128
		sub $t0, $t0, 1
		
		bnez $t0, whileImprimeCano
		
	blez $t4, retornoMovimento
	
	add $t1, $t1, 768
	
	move $t0, $t4
	move $t4, $zero
	
	j whileImprimeCano
	
criaCano2:
	lw $t0, tamanhoCano2
	
	la $t1,frameBuffer          	# Image Base Address
	la $t3,deslocCano2
	lw $t2,($t3)                	# Offset from imagem base address
	
	beqz $t2 , resetaCano2
	
	add $t1, $t1, $t2
	li $t4, 0x0001a
	sub $t4, $t4, $t0
	
	li $t5, 0x000020
	
	apagaCano2:
		sw $s7, ($t1)
		addu $t1, $t1, 128
		
		sub $t5, $t5, 1
		bnez $t5, apagaCano2  
	
	la $t1, frameBuffer
	sub $t2, $t2, 4
	add $t1, $t1, $t2
	sw $t2,($t3)
	
	whileImprimeCano2:
		sw $s5, ($t1) 
		
		add $t1, $t1, 128
		sub $t0, $t0, 1
		
		bnez $t0, whileImprimeCano2
		
	blez $t4, retornoMovimento
	
	add $t1, $t1, 768
	
	move $t0, $t4
	move $t4, $zero
	
	j whileImprimeCano2
	
resetaCano1:
	li $v0, 42
	li $a0, 0
	li $a1, 0x000016
	syscall
	
	lw $t6, pontuacao
	add $t6, $t6, 1
	sw $t6, pontuacao
	
	la $t1,frameBuffer
	sw $s7, ($t1)
	
	add $a0, $a0, 1
	li $t7, 0x00080
	
	sw $a0, tamanhoCano1	
	sw $t7, deslocCano1
	
	j criaCano1
	
resetaCano2:
	li $v0, 42
	li $a0, 0
	li $a1, 0x000018
	syscall
	
	lw $t6, pontuacao
	add $t6, $t6, 1
	sw $t6, pontuacao
	
	la $t1,frameBuffer
	sw $s7, ($t1)
	
	add $a0, $a0, 1
	li $t7, 0x00080
	
	sw $a0, tamanhoCano2	
	sw $t7, deslocCano2
	
	j criaCano2				 			
	
movimento:

	beq $s4, 'w', sobePassaro
	j descePassaro
	
verificaSubindo:
	lw $t0, flagSubindo
    	bne $zero, $t0, whileSubindo
    	
    	j descePassaro

descePassaro:
	
	la $t1,frameBuffer          	# Image Base Address
	la $t3,desloc
	lw $t2,($t3)                	# Offset from imagem base address
	
	bge $t2, 3968, retornoMovimento
	
	
	addu $t1,$t1,$t2
	sw $s7,($t1)                	# Save pixel at ImageBase+Offset
	
	addu $t2,$t2, 128              	# Offset + 4 bytes - linha da frente
	
	addu $t1,$t1, 128

	sw $s6,($t1)                	# Save pixel at ImageBase+Offset
	
	#addu $t2,$t2, 128             	# Offset + 4 bytes - linha da frente
					# Offset + 128 bytes - linha debaixo
	
	sw $t2,($t3)                	# Save offset
	
	j retornoMovimento
	
sobePassaro:
	
	li $v0, 31
	li $a0, 57
	li $a1, 500
	li $a2, 120
	li $a3, 127
	syscall
	
	li $s4, 3
	sb $s4, flagSubindo
	
whileSubindo:

	la $t1,frameBuffer          	# Image Base Address
	la $t3,desloc
	lw $t2,($t3)                	# Offset from imagem base address
	
	addu $t1,$t1,$t2
	
	ble $t2,128, retornoMovimentoSubindo
	
	sw $s7,($t1)                	# Save pixel at ImageBase+Offset
	
	addu $t2,$t2, -128              	# Offset + 4 bytes - linha da frente
	
	addu $t1,$t1, -128
	sw $s6,($t1)                	# Save pixel at ImageBase+Offset
	
	#addu $t2,$t2, 128             	# Offset + 4 bytes - linha da frente
					# Offset + 128 bytes - linha debaixo
	
	sw $t2,($t3)                	# Save offset
	
	sub $s4, $s4, 1
	sw $s4, flagSubindo 
	
	j retornoMovimento
	
retornoMovimentoSubindo:

	li $s4, 0
	sb $s4, flagSubindo
	jr $ra
	
retornoMovimento:
	
	jr $ra

verificaColisao:
	la $t1,frameBuffer          	# Image Base Address
	la $t3,desloc
	lw $t2,($t3)                	# Offset from imagem base address
	
	add $t1, $t1, $t2
	
	lw $t4, ($t1)
	
	beq  $t4, $s5, colisao
	
	jr $ra

colisao:
	li $t1, 0x00001
	sb $t1, flagColisao 
	
	jr $ra
