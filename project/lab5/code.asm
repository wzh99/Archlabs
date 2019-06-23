START:
lw	$1, 0($0)
lw 	$2, 4($0)
lw	$3, 8($0)
OP:
add	$1, $1, $2
or	$4, $1, $2
slt	$5, $3, $4
sw	$4, 12($0)
beq	$2, $3, OP
j	START
