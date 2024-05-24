.class public Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$MethodBinding$Builder$Build;
.super Ljava/lang/Object;
.source "MethodDelegationBinder.java"

# interfaces
.implements Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$MethodBinding;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$MethodBinding$Builder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "Build"
.end annotation

.annotation runtime Lnet/bytebuddy/build/HashCodeAndEqualsPlugin$Enhance;
.end annotation


# instance fields
.field private final methodInvocation:Lnet/bytebuddy/implementation/bytecode/StackManipulation;

.field private final parameterStackManipulations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lnet/bytebuddy/implementation/bytecode/StackManipulation;",
            ">;"
        }
    .end annotation
.end field

.field private final registeredTargetIndices:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "*",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final target:Lnet/bytebuddy/description/method/MethodDescription;

.field private final terminatingStackManipulation:Lnet/bytebuddy/implementation/bytecode/StackManipulation;


# direct methods
.method protected constructor <init>(Lnet/bytebuddy/description/method/MethodDescription;Ljava/util/Map;Lnet/bytebuddy/implementation/bytecode/StackManipulation;Ljava/util/List;Lnet/bytebuddy/implementation/bytecode/StackManipulation;)V
    .locals 1
    .param p1, "target"    # Lnet/bytebuddy/description/method/MethodDescription;
    .param p3, "methodInvocation"    # Lnet/bytebuddy/implementation/bytecode/StackManipulation;
    .param p5, "terminatingStackManipulation"    # Lnet/bytebuddy/implementation/bytecode/StackManipulation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/bytebuddy/description/method/MethodDescription;",
            "Ljava/util/Map<",
            "*",
            "Ljava/lang/Integer;",
            ">;",
            "Lnet/bytebuddy/implementation/bytecode/StackManipulation;",
            "Ljava/util/List<",
            "Lnet/bytebuddy/implementation/bytecode/StackManipulation;",
            ">;",
            "Lnet/bytebuddy/implementation/bytecode/StackManipulation;",
            ")V"
        }
    .end annotation

    .line 521
    .local p2, "registeredTargetIndices":Ljava/util/Map;, "Ljava/util/Map<*Ljava/lang/Integer;>;"
    .local p4, "parameterStackManipulations":Ljava/util/List;, "Ljava/util/List<Lnet/bytebuddy/implementation/bytecode/StackManipulation;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 522
    iput-object p1, p0, Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$MethodBinding$Builder$Build;->target:Lnet/bytebuddy/description/method/MethodDescription;

    .line 523
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, p2}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    iput-object v0, p0, Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$MethodBinding$Builder$Build;->registeredTargetIndices:Ljava/util/Map;

    .line 524
    iput-object p3, p0, Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$MethodBinding$Builder$Build;->methodInvocation:Lnet/bytebuddy/implementation/bytecode/StackManipulation;

    .line 525
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$MethodBinding$Builder$Build;->parameterStackManipulations:Ljava/util/List;

    .line 526
    iput-object p5, p0, Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$MethodBinding$Builder$Build;->terminatingStackManipulation:Lnet/bytebuddy/implementation/bytecode/StackManipulation;

    .line 527
    return-void
.end method


# virtual methods
.method public apply(Lnet/bytebuddy/jar/asm/MethodVisitor;Lnet/bytebuddy/implementation/Implementation$Context;)Lnet/bytebuddy/implementation/bytecode/StackManipulation$Size;
    .locals 5
    .param p1, "methodVisitor"    # Lnet/bytebuddy/jar/asm/MethodVisitor;
    .param p2, "implementationContext"    # Lnet/bytebuddy/implementation/Implementation$Context;

    .line 559
    new-instance v0, Lnet/bytebuddy/implementation/bytecode/StackManipulation$Compound;

    iget-object v1, p0, Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$MethodBinding$Builder$Build;->parameterStackManipulations:Ljava/util/List;

    const/4 v2, 0x2

    new-array v2, v2, [Lnet/bytebuddy/implementation/bytecode/StackManipulation;

    const/4 v3, 0x0

    iget-object v4, p0, Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$MethodBinding$Builder$Build;->methodInvocation:Lnet/bytebuddy/implementation/bytecode/StackManipulation;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$MethodBinding$Builder$Build;->terminatingStackManipulation:Lnet/bytebuddy/implementation/bytecode/StackManipulation;

    aput-object v4, v2, v3

    .line 560
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-static {v1, v2}, Lnet/bytebuddy/utility/CompoundList;->of(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Lnet/bytebuddy/implementation/bytecode/StackManipulation$Compound;-><init>(Ljava/util/List;)V

    .line 561
    invoke-virtual {v0, p1, p2}, Lnet/bytebuddy/implementation/bytecode/StackManipulation$Compound;->apply(Lnet/bytebuddy/jar/asm/MethodVisitor;Lnet/bytebuddy/implementation/Implementation$Context;)Lnet/bytebuddy/implementation/bytecode/StackManipulation$Size;

    move-result-object v0

    .line 559
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
    iget-object v2, p0, Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$MethodBinding$Builder$Build;->target:Lnet/bytebuddy/description/method/MethodDescription;

    check-cast p1, Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$MethodBinding$Builder$Build;

    iget-object v3, p1, Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$MethodBinding$Builder$Build;->target:Lnet/bytebuddy/description/method/MethodDescription;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    return v1

    :cond_3
    iget-object v2, p0, Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$MethodBinding$Builder$Build;->registeredTargetIndices:Ljava/util/Map;

    iget-object v3, p1, Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$MethodBinding$Builder$Build;->registeredTargetIndices:Ljava/util/Map;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    return v1

    :cond_4
    iget-object v2, p0, Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$MethodBinding$Builder$Build;->methodInvocation:Lnet/bytebuddy/implementation/bytecode/StackManipulation;

    iget-object v3, p1, Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$MethodBinding$Builder$Build;->methodInvocation:Lnet/bytebuddy/implementation/bytecode/StackManipulation;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    return v1

    :cond_5
    iget-object v2, p0, Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$MethodBinding$Builder$Build;->parameterStackManipulations:Ljava/util/List;

    iget-object v3, p1, Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$MethodBinding$Builder$Build;->parameterStackManipulations:Ljava/util/List;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    return v1

    :cond_6
    iget-object v2, p0, Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$MethodBinding$Builder$Build;->terminatingStackManipulation:Lnet/bytebuddy/implementation/bytecode/StackManipulation;

    iget-object p1, p1, Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$MethodBinding$Builder$Build;->terminatingStackManipulation:Lnet/bytebuddy/implementation/bytecode/StackManipulation;

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    return v1

    :cond_7
    return v0
.end method

.method public getTarget()Lnet/bytebuddy/description/method/MethodDescription;
    .locals 1

    .line 552
    iget-object v0, p0, Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$MethodBinding$Builder$Build;->target:Lnet/bytebuddy/description/method/MethodDescription;

    return-object v0
.end method

.method public getTargetParameterIndex(Ljava/lang/Object;)Ljava/lang/Integer;
    .locals 1
    .param p1, "parameterBindingToken"    # Ljava/lang/Object;

    .line 545
    iget-object v0, p0, Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$MethodBinding$Builder$Build;->registeredTargetIndices:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    invoke-virtual {p0}, Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$MethodBinding$Builder$Build;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$MethodBinding$Builder$Build;->target:Lnet/bytebuddy/description/method/MethodDescription;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$MethodBinding$Builder$Build;->registeredTargetIndices:Ljava/util/Map;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$MethodBinding$Builder$Build;->methodInvocation:Lnet/bytebuddy/implementation/bytecode/StackManipulation;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$MethodBinding$Builder$Build;->parameterStackManipulations:Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$MethodBinding$Builder$Build;->terminatingStackManipulation:Lnet/bytebuddy/implementation/bytecode/StackManipulation;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public isValid()Z
    .locals 3

    .line 533
    iget-object v0, p0, Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$MethodBinding$Builder$Build;->methodInvocation:Lnet/bytebuddy/implementation/bytecode/StackManipulation;

    invoke-interface {v0}, Lnet/bytebuddy/implementation/bytecode/StackManipulation;->isValid()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$MethodBinding$Builder$Build;->terminatingStackManipulation:Lnet/bytebuddy/implementation/bytecode/StackManipulation;

    invoke-interface {v0}, Lnet/bytebuddy/implementation/bytecode/StackManipulation;->isValid()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 534
    .local v0, "result":Z
    :goto_0
    iget-object v1, p0, Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$MethodBinding$Builder$Build;->parameterStackManipulations:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 535
    .local v1, "assignment":Ljava/util/Iterator;, "Ljava/util/Iterator<Lnet/bytebuddy/implementation/bytecode/StackManipulation;>;"
    :goto_1
    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 536
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnet/bytebuddy/implementation/bytecode/StackManipulation;

    invoke-interface {v2}, Lnet/bytebuddy/implementation/bytecode/StackManipulation;->isValid()Z

    move-result v0

    goto :goto_1

    .line 538
    :cond_1
    return v0
.end method
