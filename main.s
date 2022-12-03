// THIS PROGRAM CONVERTS FROM FARENHEIT TO CELSIUS IN ARM PROCESSOR 
.data
	F: .int 72
	m: .int 3728271
.text
.global _start
_start:
	// algorithm that divides a number by a constant 
	ldr r1, =F
	ldr r1, [r1]
	// getting value of m
	ldr r2, =m
	ldr r2, [r2]
	// C = (F - 32) * 5/9
	// multiply by m and shift right to get answer
	sub r3, r1, #32
	mov r0, #5
	mul r3, r3, r0 
	mul r3, r3, r2
	lsr r3, #25
	// complete! 
.end
	
	