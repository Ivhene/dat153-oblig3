.class final enum Lnet/bytebuddy/asm/Advice$Dispatcher$RelocationHandler$ForValue$1;
.super Lnet/bytebuddy/asm/Advice$Dispatcher$RelocationHandler$ForValue;
.source "Advice.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/asm/Advice$Dispatcher$RelocationHandler$ForValue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4008
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;IIIII)V
    .locals 8
    .param p3, "load"    # I
    .param p4, "defaultJump"    # I
    .param p5, "nonDefaultJump"    # I
    .param p6, "requiredSize"    # I

    .line 7007
    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-direct/range {v0 .. v7}, Lnet/bytebuddy/asm/Advice$Dispatcher$RelocationHandler$ForValue;-><init>(Ljava/lang/String;IIIIILnet/bytebuddy/asm/Advice$1;)V

    return-void
.end method


# virtual methods
.method protected convertValue(Lnet/bytebuddy/jar/asm/MethodVisitor;)V
    .locals 0
    .param p1, "methodVisitor"    # Lnet/bytebuddy/jar/asm/MethodVisitor;

    .line 7011
    return-void
.end method
