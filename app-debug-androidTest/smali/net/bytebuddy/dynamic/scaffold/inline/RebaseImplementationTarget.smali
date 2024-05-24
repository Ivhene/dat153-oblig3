.class public Lnet/bytebuddy/dynamic/scaffold/inline/RebaseImplementationTarget;
.super Lnet/bytebuddy/implementation/Implementation$Target$AbstractBase;
.source "RebaseImplementationTarget.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/bytebuddy/dynamic/scaffold/inline/RebaseImplementationTarget$Factory;,
        Lnet/bytebuddy/dynamic/scaffold/inline/RebaseImplementationTarget$RebasedMethodInvocation;
    }
.end annotation

.annotation runtime Lnet/bytebuddy/build/HashCodeAndEqualsPlugin$Enhance;
.end annotation


# instance fields
.field private final rebaseableMethods:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lnet/bytebuddy/description/method/MethodDescription$SignatureToken;",
            "Lnet/bytebuddy/dynamic/scaffold/inline/MethodRebaseResolver$Resolution;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Linked;Lnet/bytebuddy/implementation/Implementation$Target$AbstractBase$DefaultMethodInvocation;Ljava/util/Map;)V
    .locals 0
    .param p1, "instrumentedType"    # Lnet/bytebuddy/description/type/TypeDescription;
    .param p2, "methodGraph"    # Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Linked;
    .param p3, "defaultMethodInvocation"    # Lnet/bytebuddy/implementation/Implementation$Target$AbstractBase$DefaultMethodInvocation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/bytebuddy/description/type/TypeDescription;",
            "Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Linked;",
            "Lnet/bytebuddy/implementation/Implementation$Target$AbstractBase$DefaultMethodInvocation;",
            "Ljava/util/Map<",
            "Lnet/bytebuddy/description/method/MethodDescription$SignatureToken;",
            "Lnet/bytebuddy/dynamic/scaffold/inline/MethodRebaseResolver$Resolution;",
            ">;)V"
        }
    .end annotation

    .line 65
    .local p4, "rebaseableMethods":Ljava/util/Map;, "Ljava/util/Map<Lnet/bytebuddy/description/method/MethodDescription$SignatureToken;Lnet/bytebuddy/dynamic/scaffold/inline/MethodRebaseResolver$Resolution;>;"
    invoke-direct {p0, p1, p2, p3}, Lnet/bytebuddy/implementation/Implementation$Target$AbstractBase;-><init>(Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Linked;Lnet/bytebuddy/implementation/Implementation$Target$AbstractBase$DefaultMethodInvocation;)V

    .line 66
    iput-object p4, p0, Lnet/bytebuddy/dynamic/scaffold/inline/RebaseImplementationTarget;->rebaseableMethods:Ljava/util/Map;

    .line 67
    return-void
.end method

.method private invokeSuper(Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Node;)Lnet/bytebuddy/implementation/Implementation$SpecialMethodInvocation;
    .locals 2
    .param p1, "node"    # Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Node;

    .line 102
    invoke-interface {p1}, Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Node;->getSort()Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Node$Sort;

    move-result-object v0

    invoke-virtual {v0}, Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Node$Sort;->isResolved()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 103
    invoke-interface {p1}, Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Node;->getRepresentative()Lnet/bytebuddy/description/method/MethodDescription;

    move-result-object v0

    iget-object v1, p0, Lnet/bytebuddy/dynamic/scaffold/inline/RebaseImplementationTarget;->instrumentedType:Lnet/bytebuddy/description/type/TypeDescription;

    invoke-interface {v1}, Lnet/bytebuddy/description/type/TypeDescription;->getSuperClass()Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object v1

    invoke-interface {v1}, Lnet/bytebuddy/description/type/TypeDescription$Generic;->asErasure()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v1

    invoke-static {v0, v1}, Lnet/bytebuddy/implementation/Implementation$SpecialMethodInvocation$Simple;->of(Lnet/bytebuddy/description/method/MethodDescription;Lnet/bytebuddy/description/type/TypeDescription;)Lnet/bytebuddy/implementation/Implementation$SpecialMethodInvocation;

    move-result-object v0

    goto :goto_0

    :cond_0
    sget-object v0, Lnet/bytebuddy/implementation/Implementation$SpecialMethodInvocation$Illegal;->INSTANCE:Lnet/bytebuddy/implementation/Implementation$SpecialMethodInvocation$Illegal;

    .line 102
    :goto_0
    return-object v0
.end method

.method private invokeSuper(Lnet/bytebuddy/dynamic/scaffold/inline/MethodRebaseResolver$Resolution;)Lnet/bytebuddy/implementation/Implementation$SpecialMethodInvocation;
    .locals 3
    .param p1, "resolution"    # Lnet/bytebuddy/dynamic/scaffold/inline/MethodRebaseResolver$Resolution;

    .line 114
    invoke-interface {p1}, Lnet/bytebuddy/dynamic/scaffold/inline/MethodRebaseResolver$Resolution;->isRebased()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 115
    invoke-interface {p1}, Lnet/bytebuddy/dynamic/scaffold/inline/MethodRebaseResolver$Resolution;->getResolvedMethod()Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    move-result-object v0

    iget-object v1, p0, Lnet/bytebuddy/dynamic/scaffold/inline/RebaseImplementationTarget;->instrumentedType:Lnet/bytebuddy/description/type/TypeDescription;

    invoke-interface {p1}, Lnet/bytebuddy/dynamic/scaffold/inline/MethodRebaseResolver$Resolution;->getPrependedParameters()Lnet/bytebuddy/description/type/TypeList;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lnet/bytebuddy/dynamic/scaffold/inline/RebaseImplementationTarget$RebasedMethodInvocation;->of(Lnet/bytebuddy/description/method/MethodDescription;Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/description/type/TypeList;)Lnet/bytebuddy/implementation/Implementation$SpecialMethodInvocation;

    move-result-object v0

    goto :goto_0

    .line 116
    :cond_0
    invoke-interface {p1}, Lnet/bytebuddy/dynamic/scaffold/inline/MethodRebaseResolver$Resolution;->getResolvedMethod()Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    move-result-object v0

    iget-object v1, p0, Lnet/bytebuddy/dynamic/scaffold/inline/RebaseImplementationTarget;->instrumentedType:Lnet/bytebuddy/description/type/TypeDescription;

    invoke-static {v0, v1}, Lnet/bytebuddy/implementation/Implementation$SpecialMethodInvocation$Simple;->of(Lnet/bytebuddy/description/method/MethodDescription;Lnet/bytebuddy/description/type/TypeDescription;)Lnet/bytebuddy/implementation/Implementation$SpecialMethodInvocation;

    move-result-object v0

    .line 114
    :goto_0
    return-object v0
.end method

.method protected static of(Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Linked;Lnet/bytebuddy/ClassFileVersion;Lnet/bytebuddy/dynamic/scaffold/inline/MethodRebaseResolver;)Lnet/bytebuddy/implementation/Implementation$Target;
    .locals 3
    .param p0, "instrumentedType"    # Lnet/bytebuddy/description/type/TypeDescription;
    .param p1, "methodGraph"    # Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Linked;
    .param p2, "classFileVersion"    # Lnet/bytebuddy/ClassFileVersion;
    .param p3, "methodRebaseResolver"    # Lnet/bytebuddy/dynamic/scaffold/inline/MethodRebaseResolver;

    .line 82
    new-instance v0, Lnet/bytebuddy/dynamic/scaffold/inline/RebaseImplementationTarget;

    invoke-static {p2}, Lnet/bytebuddy/implementation/Implementation$Target$AbstractBase$DefaultMethodInvocation;->of(Lnet/bytebuddy/ClassFileVersion;)Lnet/bytebuddy/implementation/Implementation$Target$AbstractBase$DefaultMethodInvocation;

    move-result-object v1

    invoke-interface {p3}, Lnet/bytebuddy/dynamic/scaffold/inline/MethodRebaseResolver;->asTokenMap()Ljava/util/Map;

    move-result-object v2

    invoke-direct {v0, p0, p1, v1, v2}, Lnet/bytebuddy/dynamic/scaffold/inline/RebaseImplementationTarget;-><init>(Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Linked;Lnet/bytebuddy/implementation/Implementation$Target$AbstractBase$DefaultMethodInvocation;Ljava/util/Map;)V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    invoke-super {p0, p1}, Lnet/bytebuddy/implementation/Implementation$Target$AbstractBase;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x1

    if-ne p0, p1, :cond_1

    return v0

    :cond_1
    if-nez p1, :cond_2

    return v1

    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_3

    return v1

    :cond_3
    iget-object v2, p0, Lnet/bytebuddy/dynamic/scaffold/inline/RebaseImplementationTarget;->rebaseableMethods:Ljava/util/Map;

    check-cast p1, Lnet/bytebuddy/dynamic/scaffold/inline/RebaseImplementationTarget;

    iget-object p1, p1, Lnet/bytebuddy/dynamic/scaffold/inline/RebaseImplementationTarget;->rebaseableMethods:Ljava/util/Map;

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    return v1

    :cond_4
    return v0
.end method

.method public bridge synthetic getOriginType()Lnet/bytebuddy/description/type/TypeDefinition;
    .locals 1

    .line 45
    invoke-virtual {p0}, Lnet/bytebuddy/dynamic/scaffold/inline/RebaseImplementationTarget;->getOriginType()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v0

    return-object v0
.end method

.method public getOriginType()Lnet/bytebuddy/description/type/TypeDescription;
    .locals 1

    .line 123
    iget-object v0, p0, Lnet/bytebuddy/dynamic/scaffold/inline/RebaseImplementationTarget;->instrumentedType:Lnet/bytebuddy/description/type/TypeDescription;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    invoke-super {p0}, Lnet/bytebuddy/implementation/Implementation$Target$AbstractBase;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lnet/bytebuddy/dynamic/scaffold/inline/RebaseImplementationTarget;->rebaseableMethods:Ljava/util/Map;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public invokeSuper(Lnet/bytebuddy/description/method/MethodDescription$SignatureToken;)Lnet/bytebuddy/implementation/Implementation$SpecialMethodInvocation;
    .locals 2
    .param p1, "token"    # Lnet/bytebuddy/description/method/MethodDescription$SignatureToken;

    .line 89
    iget-object v0, p0, Lnet/bytebuddy/dynamic/scaffold/inline/RebaseImplementationTarget;->rebaseableMethods:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/bytebuddy/dynamic/scaffold/inline/MethodRebaseResolver$Resolution;

    .line 90
    .local v0, "resolution":Lnet/bytebuddy/dynamic/scaffold/inline/MethodRebaseResolver$Resolution;
    if-nez v0, :cond_0

    iget-object v1, p0, Lnet/bytebuddy/dynamic/scaffold/inline/RebaseImplementationTarget;->methodGraph:Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Linked;

    .line 91
    invoke-interface {v1}, Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Linked;->getSuperClassGraph()Lnet/bytebuddy/dynamic/scaffold/MethodGraph;

    move-result-object v1

    invoke-interface {v1, p1}, Lnet/bytebuddy/dynamic/scaffold/MethodGraph;->locate(Lnet/bytebuddy/description/method/MethodDescription$SignatureToken;)Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Node;

    move-result-object v1

    invoke-direct {p0, v1}, Lnet/bytebuddy/dynamic/scaffold/inline/RebaseImplementationTarget;->invokeSuper(Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Node;)Lnet/bytebuddy/implementation/Implementation$SpecialMethodInvocation;

    move-result-object v1

    goto :goto_0

    .line 92
    :cond_0
    invoke-direct {p0, v0}, Lnet/bytebuddy/dynamic/scaffold/inline/RebaseImplementationTarget;->invokeSuper(Lnet/bytebuddy/dynamic/scaffold/inline/MethodRebaseResolver$Resolution;)Lnet/bytebuddy/implementation/Implementation$SpecialMethodInvocation;

    move-result-object v1

    .line 90
    :goto_0
    return-object v1
.end method
