// RUN: llvm-mc -triple x86_64-unknown-unknown -x86-asm-syntax=intel -output-asm-variant=1 --show-encoding %s | FileCheck %s

// CHECK:      aesdec128kl xmm6, [rbp + 8*r14 + 268435456]
// CHECK: encoding: [0xf3,0x42,0x0f,0x38,0xdd,0xb4,0xf5,0x00,0x00,0x00,0x10]
               aesdec128kl xmm6, [rbp + 8*r14 + 268435456]

// CHECK:      aesdec128kl xmm6, [r8 + 4*rax + 291]
// CHECK: encoding: [0xf3,0x41,0x0f,0x38,0xdd,0xb4,0x80,0x23,0x01,0x00,0x00]
               aesdec128kl xmm6, [r8 + 4*rax + 291]

// CHECK:      aesdec128kl xmm6, [rip]
// CHECK: encoding: [0xf3,0x0f,0x38,0xdd,0x35,0x00,0x00,0x00,0x00]
               aesdec128kl xmm6, [rip]

// CHECK:      aesdec128kl xmm6, [2*rbp - 1536]
// CHECK: encoding: [0xf3,0x0f,0x38,0xdd,0x34,0x6d,0x00,0xfa,0xff,0xff]
               aesdec128kl xmm6, [2*rbp - 1536]

// CHECK:      aesdec128kl xmm6, [rcx + 6096]
// CHECK: encoding: [0xf3,0x0f,0x38,0xdd,0xb1,0xd0,0x17,0x00,0x00]
               aesdec128kl xmm6, [rcx + 6096]

// CHECK:      aesdec128kl xmm6, [rdx - 6144]
// CHECK: encoding: [0xf3,0x0f,0x38,0xdd,0xb2,0x00,0xe8,0xff,0xff]
               aesdec128kl xmm6, [rdx - 6144]

// CHECK:      aesdec256kl xmm6, [rbp + 8*r14 + 268435456]
// CHECK: encoding: [0xf3,0x42,0x0f,0x38,0xdf,0xb4,0xf5,0x00,0x00,0x00,0x10]
               aesdec256kl xmm6, [rbp + 8*r14 + 268435456]

// CHECK:      aesdec256kl xmm6, [r8 + 4*rax + 291]
// CHECK: encoding: [0xf3,0x41,0x0f,0x38,0xdf,0xb4,0x80,0x23,0x01,0x00,0x00]
               aesdec256kl xmm6, [r8 + 4*rax + 291]

// CHECK:      aesdec256kl xmm6, [rip]
// CHECK: encoding: [0xf3,0x0f,0x38,0xdf,0x35,0x00,0x00,0x00,0x00]
               aesdec256kl xmm6, [rip]

// CHECK:      aesdec256kl xmm6, [2*rbp - 2048]
// CHECK: encoding: [0xf3,0x0f,0x38,0xdf,0x34,0x6d,0x00,0xf8,0xff,0xff]
               aesdec256kl xmm6, [2*rbp - 2048]

// CHECK:      aesdec256kl xmm6, [rcx + 8128]
// CHECK: encoding: [0xf3,0x0f,0x38,0xdf,0xb1,0xc0,0x1f,0x00,0x00]
               aesdec256kl xmm6, [rcx + 8128]

// CHECK:      aesdec256kl xmm6, [rdx - 8192]
// CHECK: encoding: [0xf3,0x0f,0x38,0xdf,0xb2,0x00,0xe0,0xff,0xff]
               aesdec256kl xmm6, [rdx - 8192]

// CHECK:      aesenc128kl xmm6, [rbp + 8*r14 + 268435456]
// CHECK: encoding: [0xf3,0x42,0x0f,0x38,0xdc,0xb4,0xf5,0x00,0x00,0x00,0x10]
               aesenc128kl xmm6, [rbp + 8*r14 + 268435456]

// CHECK:      aesenc128kl xmm6, [r8 + 4*rax + 291]
// CHECK: encoding: [0xf3,0x41,0x0f,0x38,0xdc,0xb4,0x80,0x23,0x01,0x00,0x00]
               aesenc128kl xmm6, [r8 + 4*rax + 291]

// CHECK:      aesenc128kl xmm6, [rip]
// CHECK: encoding: [0xf3,0x0f,0x38,0xdc,0x35,0x00,0x00,0x00,0x00]
               aesenc128kl xmm6, [rip]

// CHECK:      aesenc128kl xmm6, [2*rbp - 1536]
// CHECK: encoding: [0xf3,0x0f,0x38,0xdc,0x34,0x6d,0x00,0xfa,0xff,0xff]
               aesenc128kl xmm6, [2*rbp - 1536]

// CHECK:      aesenc128kl xmm6, [rcx + 6096]
// CHECK: encoding: [0xf3,0x0f,0x38,0xdc,0xb1,0xd0,0x17,0x00,0x00]
               aesenc128kl xmm6, [rcx + 6096]

// CHECK:      aesenc128kl xmm6, [rdx - 6144]
// CHECK: encoding: [0xf3,0x0f,0x38,0xdc,0xb2,0x00,0xe8,0xff,0xff]
               aesenc128kl xmm6, [rdx - 6144]

// CHECK:      aesenc256kl xmm6, [rbp + 8*r14 + 268435456]
// CHECK: encoding: [0xf3,0x42,0x0f,0x38,0xde,0xb4,0xf5,0x00,0x00,0x00,0x10]
               aesenc256kl xmm6, [rbp + 8*r14 + 268435456]

// CHECK:      aesenc256kl xmm6, [r8 + 4*rax + 291]
// CHECK: encoding: [0xf3,0x41,0x0f,0x38,0xde,0xb4,0x80,0x23,0x01,0x00,0x00]
               aesenc256kl xmm6, [r8 + 4*rax + 291]

// CHECK:      aesenc256kl xmm6, [rip]
// CHECK: encoding: [0xf3,0x0f,0x38,0xde,0x35,0x00,0x00,0x00,0x00]
               aesenc256kl xmm6, [rip]

// CHECK:      aesenc256kl xmm6, [2*rbp - 2048]
// CHECK: encoding: [0xf3,0x0f,0x38,0xde,0x34,0x6d,0x00,0xf8,0xff,0xff]
               aesenc256kl xmm6, [2*rbp - 2048]

// CHECK:      aesenc256kl xmm6, [rcx + 8128]
// CHECK: encoding: [0xf3,0x0f,0x38,0xde,0xb1,0xc0,0x1f,0x00,0x00]
               aesenc256kl xmm6, [rcx + 8128]

// CHECK:      aesenc256kl xmm6, [rdx - 8192]
// CHECK: encoding: [0xf3,0x0f,0x38,0xde,0xb2,0x00,0xe0,0xff,0xff]
               aesenc256kl xmm6, [rdx - 8192]

// CHECK:      encodekey128 ecx, ecx
// CHECK: encoding: [0xf3,0x0f,0x38,0xfa,0xc9]
               encodekey128 ecx, ecx

// CHECK:      encodekey256 ecx, ecx
// CHECK: encoding: [0xf3,0x0f,0x38,0xfb,0xc9]
               encodekey256 ecx, ecx

// CHECK:      loadiwkey xmm6, xmm7
// CHECK: encoding: [0xf3,0x0f,0x38,0xdc,0xf7]
               loadiwkey xmm6, xmm7

// CHECK:      aesdecwide128kl [rbp + 8*r14 + 268435456]
// CHECK: encoding: [0xf3,0x42,0x0f,0x38,0xd8,0x8c,0xf5,0x00,0x00,0x00,0x10]
               aesdecwide128kl [rbp + 8*r14 + 268435456]

// CHECK:      aesdecwide128kl [r8 + 4*rax + 291]
// CHECK: encoding: [0xf3,0x41,0x0f,0x38,0xd8,0x8c,0x80,0x23,0x01,0x00,0x00]
               aesdecwide128kl [r8 + 4*rax + 291]

// CHECK:      aesdecwide128kl [rip]
// CHECK: encoding: [0xf3,0x0f,0x38,0xd8,0x0d,0x00,0x00,0x00,0x00]
               aesdecwide128kl [rip]

// CHECK:      aesdecwide128kl [2*rbp - 1536]
// CHECK: encoding: [0xf3,0x0f,0x38,0xd8,0x0c,0x6d,0x00,0xfa,0xff,0xff]
               aesdecwide128kl [2*rbp - 1536]

// CHECK:      aesdecwide128kl [rcx + 6096]
// CHECK: encoding: [0xf3,0x0f,0x38,0xd8,0x89,0xd0,0x17,0x00,0x00]
               aesdecwide128kl [rcx + 6096]

// CHECK:      aesdecwide128kl [rdx - 6144]
// CHECK: encoding: [0xf3,0x0f,0x38,0xd8,0x8a,0x00,0xe8,0xff,0xff]
               aesdecwide128kl [rdx - 6144]

// CHECK:      aesdecwide256kl [rbp + 8*r14 + 268435456]
// CHECK: encoding: [0xf3,0x42,0x0f,0x38,0xd8,0x9c,0xf5,0x00,0x00,0x00,0x10]
               aesdecwide256kl [rbp + 8*r14 + 268435456]

// CHECK:      aesdecwide256kl [r8 + 4*rax + 291]
// CHECK: encoding: [0xf3,0x41,0x0f,0x38,0xd8,0x9c,0x80,0x23,0x01,0x00,0x00]
               aesdecwide256kl [r8 + 4*rax + 291]

// CHECK:      aesdecwide256kl [rip]
// CHECK: encoding: [0xf3,0x0f,0x38,0xd8,0x1d,0x00,0x00,0x00,0x00]
               aesdecwide256kl [rip]

// CHECK:      aesdecwide256kl [2*rbp - 2048]
// CHECK: encoding: [0xf3,0x0f,0x38,0xd8,0x1c,0x6d,0x00,0xf8,0xff,0xff]
               aesdecwide256kl [2*rbp - 2048]

// CHECK:      aesdecwide256kl [rcx + 8128]
// CHECK: encoding: [0xf3,0x0f,0x38,0xd8,0x99,0xc0,0x1f,0x00,0x00]
               aesdecwide256kl [rcx + 8128]

// CHECK:      aesdecwide256kl [rdx - 8192]
// CHECK: encoding: [0xf3,0x0f,0x38,0xd8,0x9a,0x00,0xe0,0xff,0xff]
               aesdecwide256kl [rdx - 8192]

// CHECK:      aesencwide128kl [rbp + 8*r14 + 268435456]
// CHECK: encoding: [0xf3,0x42,0x0f,0x38,0xd8,0x84,0xf5,0x00,0x00,0x00,0x10]
               aesencwide128kl [rbp + 8*r14 + 268435456]

// CHECK:      aesencwide128kl [r8 + 4*rax + 291]
// CHECK: encoding: [0xf3,0x41,0x0f,0x38,0xd8,0x84,0x80,0x23,0x01,0x00,0x00]
               aesencwide128kl [r8 + 4*rax + 291]

// CHECK:      aesencwide128kl [rip]
// CHECK: encoding: [0xf3,0x0f,0x38,0xd8,0x05,0x00,0x00,0x00,0x00]
               aesencwide128kl [rip]

// CHECK:      aesencwide128kl [2*rbp - 1536]
// CHECK: encoding: [0xf3,0x0f,0x38,0xd8,0x04,0x6d,0x00,0xfa,0xff,0xff]
               aesencwide128kl [2*rbp - 1536]

// CHECK:      aesencwide128kl [rcx + 6096]
// CHECK: encoding: [0xf3,0x0f,0x38,0xd8,0x81,0xd0,0x17,0x00,0x00]
               aesencwide128kl [rcx + 6096]

// CHECK:      aesencwide128kl [rdx - 6144]
// CHECK: encoding: [0xf3,0x0f,0x38,0xd8,0x82,0x00,0xe8,0xff,0xff]
               aesencwide128kl [rdx - 6144]

// CHECK:      aesencwide256kl [rbp + 8*r14 + 268435456]
// CHECK: encoding: [0xf3,0x42,0x0f,0x38,0xd8,0x94,0xf5,0x00,0x00,0x00,0x10]
               aesencwide256kl [rbp + 8*r14 + 268435456]

// CHECK:      aesencwide256kl [r8 + 4*rax + 291]
// CHECK: encoding: [0xf3,0x41,0x0f,0x38,0xd8,0x94,0x80,0x23,0x01,0x00,0x00]
               aesencwide256kl [r8 + 4*rax + 291]

// CHECK:      aesencwide256kl [rip]
// CHECK: encoding: [0xf3,0x0f,0x38,0xd8,0x15,0x00,0x00,0x00,0x00]
               aesencwide256kl [rip]

// CHECK:      aesencwide256kl [2*rbp - 2048]
// CHECK: encoding: [0xf3,0x0f,0x38,0xd8,0x14,0x6d,0x00,0xf8,0xff,0xff]
               aesencwide256kl [2*rbp - 2048]

// CHECK:      aesencwide256kl [rcx + 8128]
// CHECK: encoding: [0xf3,0x0f,0x38,0xd8,0x91,0xc0,0x1f,0x00,0x00]
               aesencwide256kl [rcx + 8128]

// CHECK:      aesencwide256kl [rdx - 8192]
// CHECK: encoding: [0xf3,0x0f,0x38,0xd8,0x92,0x00,0xe0,0xff,0xff]
               aesencwide256kl [rdx - 8192]
