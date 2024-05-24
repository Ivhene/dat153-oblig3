.class public Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$ParameterBinding$Unique;
.super Ljava/lang/Object;
.source "MethodDelegationBinder.java"

# interfaces
.implements Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$ParameterBinding;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$ParameterBinding;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Unique"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$ParameterBinding<",
        "TT;>;"
    }
.end annotation

.annotation runtime Lnet/bytebuddy/build/HashCodeAndEqualsPlugin$Enhance;
.end annotation


# instance fields
.field private final delegate:Lnet/bytebuddy/implementation/bytecode/StackManipulation;

.field private final identificationToken:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lnet/bytebuddy/implementation/bytecode/StackManipulation;Ljava/lang/Object;)V
    .locals 0
    .param p1, "delegate"    # Lnet/bytebuddy/implementation/bytecode/StackManipulation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/bytebuddy/implementation/bytecode/StackManipulation;",
            "TT;)V"
        }
    .end annotation

    .line 288
    .local p0, "this":Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$ParameterBinding$Unique;, "Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$ParameterBinding$Unique<TT;>;"
    .local p2, "identificationToken":Ljava/lang/Object;, "TT;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 289
    iput-object p1, p0, Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$ParameterBinding$Unique;->delegate:Lnet/bytebuddy/implementation/bytecode/StackManipulation;

    .line 290
    iput-object p2, p0, Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$ParameterBinding$Unique;->identificationToken:Ljava/lang/Object;

    .line 291
    return-void
.end method

.method public static of(Lnet/bytebuddy/implementation/bytecode/StackManipulation;Ljava/lang/Object;)Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$ParameterBinding$Unique;
    .locals 1
    .param p0, "delegate"    # Lnet/bytebuddy/implementation/bytecode/StackManipulation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Ljava/lang/Object;",
            ">(",
            "Lnet/bytebuddy/implementation/bytecode/StackManipulation;",
            "TS;)",
            "Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$ParameterBinding$Unique<",
            "TS;>;"
        }
    .end annotation

    .line 302
    .local p1, "identificationToken":Ljava/lang/Object;, "TS;"
    new-instance v0, Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$ParameterBinding$Unique;

    invoke-direct {v0, p0, p1}, Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$ParameterBinding$Unique;-><init>(Lnet/bytebuddy/implementation/bytecode/StackManipulation;Ljava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public apply(Lnet/bytebuddy/jar/asm/MethodVisitor;Lnet/bytebuddy/implementation/Implementation$Context;)Lnet/bytebuddy/implementation/bytecode/StackManipulation$Size;
    .locals 1
    .param p1, "methodVisitor"    # Lnet/bytebuddy/jar/asm/MethodVisitor;
    .param p2, "implementationContext"    # Lnet/bytebuddy/implementation/Implementation$Context;

    .line 323
    .local p0, "this":Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$ParameterBinding$Unique;, "Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$ParameterBinding$Unique<TT;>;"
    iget-object v0, p0, Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$ParameterBinding$Unique;->delegate:Lnet/bytebuddy/implementation/bytecode/StackManipulation;

    invoke-interface {v0, p1, p2}, Lnet/bytebuddy/implementation/bytecode/StackManipulation;->apply(Lnet/bytebuddy/jar/asm/MethodVisitor;Lnet/bytebuddy/implementation/Implementation$Context;)Lnet/bytebuddy/implementation/bytecode/StackManipulation$Size;

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
    iget-object v2, p0, Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$ParameterBinding$Unique;->identificationToken:Ljava/lang/Object;

    check-cast p1, Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$ParameterBinding$Unique;

    iget-object v3, p1, Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$ParameterBinding$Unique;->identificationToken:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    return v1

    :cond_3
    iget-object v2, p0, Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$ParameterBinding$Unique;->delegate:Lnet/bytebuddy/implementation/bytecode/StackManipulation;

    iget-object p1, p1, Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$ParameterBinding$Unique;->delegate:Lnet/bytebuddy/implementation/bytecode/StackManipulation;

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    return v1

    :cond_4
    return v0
.end method

.method public getIdentificationToken()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 309
    .local p0, "this":Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$ParameterBinding$Unique;, "Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$ParameterBinding$Unique<TT;>;"
    iget-object v0, p0, Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$ParameterBinding$Unique;->identificationToken:Ljava/lang/Object;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    invoke-virtual {p0}, Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$ParameterBinding$Unique;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$ParameterBinding$Unique;->identificationToken:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$ParameterBinding$Unique;->delegate:Lnet/bytebuddy/implementation/bytecode/StackManipulation;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public isValid()Z
    .locals 1

    .line 316
    .local p0, "this":Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$ParameterBinding$Unique;, "Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$ParameterBinding$Unique<TT;>;"
    iget-object v0, p0, Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$ParameterBinding$Unique;->delegate:Lnet/bytebuddy/implementation/bytecode/StackManipulation;

    invoke-interface {v0}, Lnet/bytebuddy/implementation/bytecode/StackManipulation;->isValid()Z

    move-result v0

    return v0
.end method
