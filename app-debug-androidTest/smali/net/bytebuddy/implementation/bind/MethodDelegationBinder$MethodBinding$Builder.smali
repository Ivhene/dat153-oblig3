.class public Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$MethodBinding$Builder;
.super Ljava/lang/Object;
.source "MethodDelegationBinder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$MethodBinding;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$MethodBinding$Builder$Build;
    }
.end annotation


# instance fields
.field private final candidate:Lnet/bytebuddy/description/method/MethodDescription;

.field private final methodInvoker:Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$MethodInvoker;

.field private nextParameterIndex:I

.field private final parameterStackManipulations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lnet/bytebuddy/implementation/bytecode/StackManipulation;",
            ">;"
        }
    .end annotation
.end field

.field private final registeredTargetIndices:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/Object;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$MethodInvoker;Lnet/bytebuddy/description/method/MethodDescription;)V
    .locals 2
    .param p1, "methodInvoker"    # Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$MethodInvoker;
    .param p2, "candidate"    # Lnet/bytebuddy/description/method/MethodDescription;

    .line 437
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 438
    iput-object p1, p0, Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$MethodBinding$Builder;->methodInvoker:Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$MethodInvoker;

    .line 439
    iput-object p2, p0, Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$MethodBinding$Builder;->candidate:Lnet/bytebuddy/description/method/MethodDescription;

    .line 440
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p2}, Lnet/bytebuddy/description/method/MethodDescription;->getParameters()Lnet/bytebuddy/description/method/ParameterList;

    move-result-object v1

    invoke-interface {v1}, Lnet/bytebuddy/description/method/ParameterList;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$MethodBinding$Builder;->parameterStackManipulations:Ljava/util/List;

    .line 441
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$MethodBinding$Builder;->registeredTargetIndices:Ljava/util/LinkedHashMap;

    .line 442
    const/4 v0, 0x0

    iput v0, p0, Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$MethodBinding$Builder;->nextParameterIndex:I

    .line 443
    return-void
.end method


# virtual methods
.method public append(Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$ParameterBinding;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$ParameterBinding<",
            "*>;)Z"
        }
    .end annotation

    .line 453
    .local p1, "parameterBinding":Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$ParameterBinding;, "Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$ParameterBinding<*>;"
    iget-object v0, p0, Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$MethodBinding$Builder;->parameterStackManipulations:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 454
    iget-object v0, p0, Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$MethodBinding$Builder;->registeredTargetIndices:Ljava/util/LinkedHashMap;

    invoke-interface {p1}, Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$ParameterBinding;->getIdentificationToken()Ljava/lang/Object;

    move-result-object v1

    iget v2, p0, Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$MethodBinding$Builder;->nextParameterIndex:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$MethodBinding$Builder;->nextParameterIndex:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public build(Lnet/bytebuddy/implementation/bytecode/StackManipulation;)Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$MethodBinding;
    .locals 8
    .param p1, "terminatingManipulation"    # Lnet/bytebuddy/implementation/bytecode/StackManipulation;

    .line 464
    iget-object v0, p0, Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$MethodBinding$Builder;->candidate:Lnet/bytebuddy/description/method/MethodDescription;

    invoke-interface {v0}, Lnet/bytebuddy/description/method/MethodDescription;->getParameters()Lnet/bytebuddy/description/method/ParameterList;

    move-result-object v0

    invoke-interface {v0}, Lnet/bytebuddy/description/method/ParameterList;->size()I

    move-result v0

    iget v1, p0, Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$MethodBinding$Builder;->nextParameterIndex:I

    if-ne v0, v1, :cond_0

    .line 467
    new-instance v0, Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$MethodBinding$Builder$Build;

    iget-object v3, p0, Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$MethodBinding$Builder;->candidate:Lnet/bytebuddy/description/method/MethodDescription;

    iget-object v4, p0, Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$MethodBinding$Builder;->registeredTargetIndices:Ljava/util/LinkedHashMap;

    iget-object v1, p0, Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$MethodBinding$Builder;->methodInvoker:Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$MethodInvoker;

    .line 469
    invoke-interface {v1, v3}, Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$MethodInvoker;->invoke(Lnet/bytebuddy/description/method/MethodDescription;)Lnet/bytebuddy/implementation/bytecode/StackManipulation;

    move-result-object v5

    iget-object v6, p0, Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$MethodBinding$Builder;->parameterStackManipulations:Ljava/util/List;

    move-object v2, v0

    move-object v7, p1

    invoke-direct/range {v2 .. v7}, Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$MethodBinding$Builder$Build;-><init>(Lnet/bytebuddy/description/method/MethodDescription;Ljava/util/Map;Lnet/bytebuddy/implementation/bytecode/StackManipulation;Ljava/util/List;Lnet/bytebuddy/implementation/bytecode/StackManipulation;)V

    .line 467
    return-object v0

    .line 465
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "The number of parameters bound does not equal the target\'s number of parameters"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
