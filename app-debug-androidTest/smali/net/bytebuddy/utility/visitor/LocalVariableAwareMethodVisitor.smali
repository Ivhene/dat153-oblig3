.class public Lnet/bytebuddy/utility/visitor/LocalVariableAwareMethodVisitor;
.super Lnet/bytebuddy/jar/asm/MethodVisitor;
.source "LocalVariableAwareMethodVisitor.java"


# instance fields
.field private freeOffset:I


# direct methods
.method public constructor <init>(Lnet/bytebuddy/jar/asm/MethodVisitor;Lnet/bytebuddy/description/method/MethodDescription;)V
    .locals 1
    .param p1, "methodVisitor"    # Lnet/bytebuddy/jar/asm/MethodVisitor;
    .param p2, "methodDescription"    # Lnet/bytebuddy/description/method/MethodDescription;

    .line 41
    sget v0, Lnet/bytebuddy/utility/OpenedClassReader;->ASM_API:I

    invoke-direct {p0, v0, p1}, Lnet/bytebuddy/jar/asm/MethodVisitor;-><init>(ILnet/bytebuddy/jar/asm/MethodVisitor;)V

    .line 42
    invoke-interface {p2}, Lnet/bytebuddy/description/method/MethodDescription;->getStackSize()I

    move-result v0

    iput v0, p0, Lnet/bytebuddy/utility/visitor/LocalVariableAwareMethodVisitor;->freeOffset:I

    .line 43
    return-void
.end method


# virtual methods
.method public getFreeOffset()I
    .locals 1

    .line 68
    iget v0, p0, Lnet/bytebuddy/utility/visitor/LocalVariableAwareMethodVisitor;->freeOffset:I

    return v0
.end method

.method public visitVarInsn(II)V
    .locals 2
    .param p1, "opcode"    # I
    .param p2, "offset"    # I

    .line 48
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 56
    :pswitch_0
    iget v0, p0, Lnet/bytebuddy/utility/visitor/LocalVariableAwareMethodVisitor;->freeOffset:I

    add-int/lit8 v1, p2, 0x2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lnet/bytebuddy/utility/visitor/LocalVariableAwareMethodVisitor;->freeOffset:I

    goto :goto_0

    .line 52
    :pswitch_1
    iget v0, p0, Lnet/bytebuddy/utility/visitor/LocalVariableAwareMethodVisitor;->freeOffset:I

    add-int/lit8 v1, p2, 0x1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lnet/bytebuddy/utility/visitor/LocalVariableAwareMethodVisitor;->freeOffset:I

    .line 53
    nop

    .line 59
    :goto_0
    invoke-super {p0, p1, p2}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitVarInsn(II)V

    .line 60
    return-void

    :pswitch_data_0
    .packed-switch 0x36
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
