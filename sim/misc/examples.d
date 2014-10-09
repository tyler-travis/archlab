
examples.o:     file format elf64-x86-64


Disassembly of section .text:

0000000000000000 <sum_list>:
   0:	55                   	push   %rbp
   1:	48 89 e5             	mov    %rsp,%rbp
   4:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
   8:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%rbp)
   f:	eb 15                	jmp    26 <sum_list+0x26>
  11:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  15:	8b 00                	mov    (%rax),%eax
  17:	01 45 fc             	add    %eax,-0x4(%rbp)
  1a:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  1e:	48 8b 40 08          	mov    0x8(%rax),%rax
  22:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
  26:	48 83 7d e8 00       	cmpq   $0x0,-0x18(%rbp)
  2b:	75 e4                	jne    11 <sum_list+0x11>
  2d:	8b 45 fc             	mov    -0x4(%rbp),%eax
  30:	c9                   	leaveq 
  31:	c3                   	retq   

0000000000000032 <rsum_list>:
  32:	55                   	push   %rbp
  33:	48 89 e5             	mov    %rsp,%rbp
  36:	48 83 ec 20          	sub    $0x20,%rsp
  3a:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
  3e:	48 83 7d e8 00       	cmpq   $0x0,-0x18(%rbp)
  43:	75 07                	jne    4c <rsum_list+0x1a>
  45:	b8 00 00 00 00       	mov    $0x0,%eax
  4a:	eb 25                	jmp    71 <rsum_list+0x3f>
  4c:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  50:	8b 00                	mov    (%rax),%eax
  52:	89 45 f8             	mov    %eax,-0x8(%rbp)
  55:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  59:	48 8b 40 08          	mov    0x8(%rax),%rax
  5d:	48 89 c7             	mov    %rax,%rdi
  60:	e8 00 00 00 00       	callq  65 <rsum_list+0x33>
  65:	89 45 fc             	mov    %eax,-0x4(%rbp)
  68:	8b 45 fc             	mov    -0x4(%rbp),%eax
  6b:	8b 55 f8             	mov    -0x8(%rbp),%edx
  6e:	8d 04 02             	lea    (%rdx,%rax,1),%eax
  71:	c9                   	leaveq 
  72:	c3                   	retq   

0000000000000073 <copy_block>:
  73:	55                   	push   %rbp
  74:	48 89 e5             	mov    %rsp,%rbp
  77:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
  7b:	48 89 75 e0          	mov    %rsi,-0x20(%rbp)
  7f:	89 55 dc             	mov    %edx,-0x24(%rbp)
  82:	c7 45 f8 00 00 00 00 	movl   $0x0,-0x8(%rbp)
  89:	eb 26                	jmp    b1 <copy_block+0x3e>
  8b:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  8f:	8b 00                	mov    (%rax),%eax
  91:	89 45 fc             	mov    %eax,-0x4(%rbp)
  94:	48 83 45 e8 04       	addq   $0x4,-0x18(%rbp)
  99:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
  9d:	8b 55 fc             	mov    -0x4(%rbp),%edx
  a0:	89 10                	mov    %edx,(%rax)
  a2:	48 83 45 e0 04       	addq   $0x4,-0x20(%rbp)
  a7:	8b 45 fc             	mov    -0x4(%rbp),%eax
  aa:	31 45 f8             	xor    %eax,-0x8(%rbp)
  ad:	83 6d dc 01          	subl   $0x1,-0x24(%rbp)
  b1:	83 7d dc 00          	cmpl   $0x0,-0x24(%rbp)
  b5:	7f d4                	jg     8b <copy_block+0x18>
  b7:	8b 45 f8             	mov    -0x8(%rbp),%eax
  ba:	c9                   	leaveq 
  bb:	c3                   	retq   
