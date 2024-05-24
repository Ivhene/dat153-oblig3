.class public Lnet/bytebuddy/implementation/bytecode/StackManipulation$Simple;
.super Ljava/lang/Object;
.source "StackManipulation.java"

# interfaces
.implements Lnet/bytebuddy/implementation/bytecode/StackManipulation;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/implementation/bytecode/StackManipulation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Simple"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/bytebuddy/implementation/bytecode/StackManipulation$Simple$Dispatcher;
    }
.end annotation

.annotation runtime Lnet/bytebuddy/build/HashCodeAndEqualsPlugin$Enhance;
.end annotation


# instance fields
.field private final dispatcher:Lnet/bytebuddy/implementation/bytecode/StackManipulation$Simple$Dispatcher;


# direct methods
.method public constructor <init>(Lnet/bytebuddy/implementation/bytecode/StackManipulation$Simple$Dispatcher;)V
    .locals 0
    .param p1, "dispatcher"    # Lnet/bytebuddy/implementation/bytecode/StackManipulation$Simple$Dispatcher;

    .line 252
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 253
    iput-object p1, p0, Lnet/bytebuddy/implementation/bytecode/StackManipulation$Simple;->dispatcher:Lnet/bytebuddy/implementation/bytecode/StackManipulation$Simple$Dispatcher;

    .line 254
    return-void
.end method


# virtual methods
.method public apply(Lnet/bytebuddy/jar/asm/MethodVisitor;Lnet/bytebuddy/implementation/Implementation$Context;)Lnet/bytebuddy/implementation/bytecode/StackManipulation$Size;
    .locals 1
    .param p1, "methodVisitor"    # Lnet/bytebuddy/jar/asm/MethodVisitor;
    .param p2, "implementationContext"    # Lnet/bytebuddy/implementation/Implementation$Context;

    .line 267
    iget-object v0, p0, Lnet/bytebuddy/implementation/bytecode/StackManipulation$Simple;->dispatcher:Lnet/bytebuddy/implementation/bytecode/StackManipulation$Simple$Dispatcher;

    invoke-interface {v0, p1, p2}, Lnet/bytebuddy/implementation/bytecode/StackManipulation$Simple$Dispatcher;->apply(Lnet/bytebuddy/jar/asm/MethodVisitor;Lnet/bytebuddy/implementation/Implementation$Context;)Lnet/bytebuddy/implementation/bytecode/StackManipulation$Size;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    return v1

    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_2

    return v1

    :cond_2
    iget-object v2, p0, Lnet/bytebuddy/implementation/bytecode/StackManipulation$Simple;->dispatcher:Lnet/bytebuddy/implementation/bytecode/StackManipulation$Simple$Dispatcher;

    check-cast p1, Lnet/bytebuddy/implementation/bytecode/StackManipulation$Simple;

    iget-object p1, p1, Lnet/bytebuddy/implementation/bytecode/StackManipulation$Simple;->dispatcher:Lnet/bytebuddy/implementation/bytecode/StackManipulation$Simple$Dispatcher;

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    return v1

    :cond_3
    return v0
.end method

.method public hashCode()I
    .locals 2

    invoke-virtual {p0}, Lnet/bytebuddy/implementation/bytecode/StackManipulation$Simple;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lnet/bytebuddy/implementation/bytecode/StackManipulation$Simple;->dispatcher:Lnet/bytebuddy/implementation/bytecode/StackManipulation$Simple$Dispatcher;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public isValid()Z
    .locals 1

    .line 260
    const/4 v0, 0x1

    return v0
.end method
