.class public Lnet/bytebuddy/pool/TypePool$Default$GenericTypeRegistrant$RejectingSignatureVisitor;
.super Lnet/bytebuddy/jar/asm/signature/SignatureVisitor;
.source "TypePool.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/pool/TypePool$Default$GenericTypeRegistrant;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RejectingSignatureVisitor"
.end annotation


# static fields
.field private static final MESSAGE:Ljava/lang/String; = "Unexpected token in generic signature"


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1563
    sget v0, Lnet/bytebuddy/utility/OpenedClassReader;->ASM_API:I

    invoke-direct {p0, v0}, Lnet/bytebuddy/jar/asm/signature/SignatureVisitor;-><init>(I)V

    .line 1564
    return-void
.end method


# virtual methods
.method public visitArrayType()Lnet/bytebuddy/jar/asm/signature/SignatureVisitor;
    .locals 2

    .line 1640
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unexpected token in generic signature"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public visitBaseType(C)V
    .locals 2
    .param p1, "descriptor"    # C

    .line 1626
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unexpected token in generic signature"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public visitClassBound()Lnet/bytebuddy/jar/asm/signature/SignatureVisitor;
    .locals 2

    .line 1577
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unexpected token in generic signature"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public visitClassType(Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .line 1647
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unexpected token in generic signature"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public visitEnd()V
    .locals 2

    .line 1675
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unexpected token in generic signature"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public visitExceptionType()Lnet/bytebuddy/jar/asm/signature/SignatureVisitor;
    .locals 2

    .line 1619
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unexpected token in generic signature"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public visitFormalTypeParameter(Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .line 1570
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unexpected token in generic signature"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public visitInnerClassType(Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .line 1654
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unexpected token in generic signature"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public visitInterface()Lnet/bytebuddy/jar/asm/signature/SignatureVisitor;
    .locals 2

    .line 1598
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unexpected token in generic signature"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public visitInterfaceBound()Lnet/bytebuddy/jar/asm/signature/SignatureVisitor;
    .locals 2

    .line 1584
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unexpected token in generic signature"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public visitParameterType()Lnet/bytebuddy/jar/asm/signature/SignatureVisitor;
    .locals 2

    .line 1605
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unexpected token in generic signature"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public visitReturnType()Lnet/bytebuddy/jar/asm/signature/SignatureVisitor;
    .locals 2

    .line 1612
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unexpected token in generic signature"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public visitSuperclass()Lnet/bytebuddy/jar/asm/signature/SignatureVisitor;
    .locals 2

    .line 1591
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unexpected token in generic signature"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public visitTypeArgument(C)Lnet/bytebuddy/jar/asm/signature/SignatureVisitor;
    .locals 2
    .param p1, "wildcard"    # C

    .line 1668
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unexpected token in generic signature"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public visitTypeArgument()V
    .locals 2

    .line 1661
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unexpected token in generic signature"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public visitTypeVariable(Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .line 1633
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unexpected token in generic signature"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
