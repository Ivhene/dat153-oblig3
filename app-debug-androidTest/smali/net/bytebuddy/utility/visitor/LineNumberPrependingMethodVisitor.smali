.class public Lnet/bytebuddy/utility/visitor/LineNumberPrependingMethodVisitor;
.super Lnet/bytebuddy/utility/visitor/ExceptionTableSensitiveMethodVisitor;
.source "LineNumberPrependingMethodVisitor.java"


# instance fields
.field private prependLineNumber:Z

.field private final startOfMethod:Lnet/bytebuddy/jar/asm/Label;


# direct methods
.method public constructor <init>(Lnet/bytebuddy/jar/asm/MethodVisitor;)V
    .locals 1
    .param p1, "methodVisitor"    # Lnet/bytebuddy/jar/asm/MethodVisitor;

    .line 43
    sget v0, Lnet/bytebuddy/utility/OpenedClassReader;->ASM_API:I

    invoke-direct {p0, v0, p1}, Lnet/bytebuddy/utility/visitor/ExceptionTableSensitiveMethodVisitor;-><init>(ILnet/bytebuddy/jar/asm/MethodVisitor;)V

    .line 44
    new-instance v0, Lnet/bytebuddy/jar/asm/Label;

    invoke-direct {v0}, Lnet/bytebuddy/jar/asm/Label;-><init>()V

    iput-object v0, p0, Lnet/bytebuddy/utility/visitor/LineNumberPrependingMethodVisitor;->startOfMethod:Lnet/bytebuddy/jar/asm/Label;

    .line 45
    const/4 v0, 0x1

    iput-boolean v0, p0, Lnet/bytebuddy/utility/visitor/LineNumberPrependingMethodVisitor;->prependLineNumber:Z

    .line 46
    return-void
.end method


# virtual methods
.method protected onAfterExceptionTable()V
    .locals 1

    .line 50
    iget-object v0, p0, Lnet/bytebuddy/utility/visitor/LineNumberPrependingMethodVisitor;->startOfMethod:Lnet/bytebuddy/jar/asm/Label;

    invoke-super {p0, v0}, Lnet/bytebuddy/utility/visitor/ExceptionTableSensitiveMethodVisitor;->visitLabel(Lnet/bytebuddy/jar/asm/Label;)V

    .line 51
    return-void
.end method

.method public visitLineNumber(ILnet/bytebuddy/jar/asm/Label;)V
    .locals 1
    .param p1, "line"    # I
    .param p2, "start"    # Lnet/bytebuddy/jar/asm/Label;

    .line 55
    iget-boolean v0, p0, Lnet/bytebuddy/utility/visitor/LineNumberPrependingMethodVisitor;->prependLineNumber:Z

    if-eqz v0, :cond_0

    .line 56
    iget-object p2, p0, Lnet/bytebuddy/utility/visitor/LineNumberPrependingMethodVisitor;->startOfMethod:Lnet/bytebuddy/jar/asm/Label;

    .line 57
    const/4 v0, 0x0

    iput-boolean v0, p0, Lnet/bytebuddy/utility/visitor/LineNumberPrependingMethodVisitor;->prependLineNumber:Z

    .line 59
    :cond_0
    invoke-super {p0, p1, p2}, Lnet/bytebuddy/utility/visitor/ExceptionTableSensitiveMethodVisitor;->visitLineNumber(ILnet/bytebuddy/jar/asm/Label;)V

    .line 60
    return-void
.end method
