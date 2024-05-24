.class public Lnet/bytebuddy/asm/Advice$Appender$EmulatingMethodVisitor;
.super Lnet/bytebuddy/jar/asm/MethodVisitor;
.source "Advice.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/asm/Advice$Appender;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "EmulatingMethodVisitor"
.end annotation


# instance fields
.field private final delegate:Lnet/bytebuddy/implementation/bytecode/ByteCodeAppender;

.field private localVariableLength:I

.field private stackSize:I


# direct methods
.method protected constructor <init>(Lnet/bytebuddy/jar/asm/MethodVisitor;Lnet/bytebuddy/implementation/bytecode/ByteCodeAppender;)V
    .locals 1
    .param p1, "methodVisitor"    # Lnet/bytebuddy/jar/asm/MethodVisitor;
    .param p2, "delegate"    # Lnet/bytebuddy/implementation/bytecode/ByteCodeAppender;

    .line 10632
    sget v0, Lnet/bytebuddy/utility/OpenedClassReader;->ASM_API:I

    invoke-direct {p0, v0, p1}, Lnet/bytebuddy/jar/asm/MethodVisitor;-><init>(ILnet/bytebuddy/jar/asm/MethodVisitor;)V

    .line 10633
    iput-object p2, p0, Lnet/bytebuddy/asm/Advice$Appender$EmulatingMethodVisitor;->delegate:Lnet/bytebuddy/implementation/bytecode/ByteCodeAppender;

    .line 10634
    return-void
.end method


# virtual methods
.method protected resolve(Lnet/bytebuddy/jar/asm/MethodVisitor;Lnet/bytebuddy/implementation/Implementation$Context;Lnet/bytebuddy/description/method/MethodDescription;)Lnet/bytebuddy/implementation/bytecode/ByteCodeAppender$Size;
    .locals 4
    .param p1, "methodVisitor"    # Lnet/bytebuddy/jar/asm/MethodVisitor;
    .param p2, "implementationContext"    # Lnet/bytebuddy/implementation/Implementation$Context;
    .param p3, "instrumentedMethod"    # Lnet/bytebuddy/description/method/MethodDescription;

    .line 10647
    invoke-virtual {p1}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitCode()V

    .line 10648
    iget-object v0, p0, Lnet/bytebuddy/asm/Advice$Appender$EmulatingMethodVisitor;->delegate:Lnet/bytebuddy/implementation/bytecode/ByteCodeAppender;

    invoke-interface {v0, p1, p2, p3}, Lnet/bytebuddy/implementation/bytecode/ByteCodeAppender;->apply(Lnet/bytebuddy/jar/asm/MethodVisitor;Lnet/bytebuddy/implementation/Implementation$Context;Lnet/bytebuddy/description/method/MethodDescription;)Lnet/bytebuddy/implementation/bytecode/ByteCodeAppender$Size;

    move-result-object v0

    .line 10649
    .local v0, "size":Lnet/bytebuddy/implementation/bytecode/ByteCodeAppender$Size;
    invoke-virtual {v0}, Lnet/bytebuddy/implementation/bytecode/ByteCodeAppender$Size;->getOperandStackSize()I

    move-result v1

    invoke-virtual {v0}, Lnet/bytebuddy/implementation/bytecode/ByteCodeAppender$Size;->getLocalVariableSize()I

    move-result v2

    invoke-virtual {p1, v1, v2}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitMaxs(II)V

    .line 10650
    invoke-virtual {p1}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitEnd()V

    .line 10651
    new-instance v1, Lnet/bytebuddy/implementation/bytecode/ByteCodeAppender$Size;

    iget v2, p0, Lnet/bytebuddy/asm/Advice$Appender$EmulatingMethodVisitor;->stackSize:I

    iget v3, p0, Lnet/bytebuddy/asm/Advice$Appender$EmulatingMethodVisitor;->localVariableLength:I

    invoke-direct {v1, v2, v3}, Lnet/bytebuddy/implementation/bytecode/ByteCodeAppender$Size;-><init>(II)V

    return-object v1
.end method

.method public visitCode()V
    .locals 0

    .line 10657
    return-void
.end method

.method public visitEnd()V
    .locals 0

    .line 10668
    return-void
.end method

.method public visitMaxs(II)V
    .locals 0
    .param p1, "stackSize"    # I
    .param p2, "localVariableLength"    # I

    .line 10661
    iput p1, p0, Lnet/bytebuddy/asm/Advice$Appender$EmulatingMethodVisitor;->stackSize:I

    .line 10662
    iput p2, p0, Lnet/bytebuddy/asm/Advice$Appender$EmulatingMethodVisitor;->localVariableLength:I

    .line 10663
    return-void
.end method
