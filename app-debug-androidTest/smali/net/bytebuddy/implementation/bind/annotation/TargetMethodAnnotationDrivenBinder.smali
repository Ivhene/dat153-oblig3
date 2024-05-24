.class public Lnet/bytebuddy/implementation/bind/annotation/TargetMethodAnnotationDrivenBinder;
.super Ljava/lang/Object;
.source "TargetMethodAnnotationDrivenBinder.java"

# interfaces
.implements Lnet/bytebuddy/implementation/bind/MethodDelegationBinder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/bytebuddy/implementation/bind/annotation/TargetMethodAnnotationDrivenBinder$DelegationProcessor;,
        Lnet/bytebuddy/implementation/bind/annotation/TargetMethodAnnotationDrivenBinder$ParameterBinder;,
        Lnet/bytebuddy/implementation/bind/annotation/TargetMethodAnnotationDrivenBinder$Record;
    }
.end annotation

.annotation runtime Lnet/bytebuddy/build/HashCodeAndEqualsPlugin$Enhance;
.end annotation


# instance fields
.field private final delegationProcessor:Lnet/bytebuddy/implementation/bind/annotation/TargetMethodAnnotationDrivenBinder$DelegationProcessor;


# direct methods
.method protected constructor <init>(Lnet/bytebuddy/implementation/bind/annotation/TargetMethodAnnotationDrivenBinder$DelegationProcessor;)V
    .locals 0
    .param p1, "delegationProcessor"    # Lnet/bytebuddy/implementation/bind/annotation/TargetMethodAnnotationDrivenBinder$DelegationProcessor;

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput-object p1, p0, Lnet/bytebuddy/implementation/bind/annotation/TargetMethodAnnotationDrivenBinder;->delegationProcessor:Lnet/bytebuddy/implementation/bind/annotation/TargetMethodAnnotationDrivenBinder$DelegationProcessor;

    .line 61
    return-void
.end method

.method public static of(Ljava/util/List;)Lnet/bytebuddy/implementation/bind/MethodDelegationBinder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lnet/bytebuddy/implementation/bind/annotation/TargetMethodAnnotationDrivenBinder$ParameterBinder<",
            "*>;>;)",
            "Lnet/bytebuddy/implementation/bind/MethodDelegationBinder;"
        }
    .end annotation

    .line 72
    .local p0, "parameterBinders":Ljava/util/List;, "Ljava/util/List<+Lnet/bytebuddy/implementation/bind/annotation/TargetMethodAnnotationDrivenBinder$ParameterBinder<*>;>;"
    new-instance v0, Lnet/bytebuddy/implementation/bind/annotation/TargetMethodAnnotationDrivenBinder;

    invoke-static {p0}, Lnet/bytebuddy/implementation/bind/annotation/TargetMethodAnnotationDrivenBinder$DelegationProcessor;->of(Ljava/util/List;)Lnet/bytebuddy/implementation/bind/annotation/TargetMethodAnnotationDrivenBinder$DelegationProcessor;

    move-result-object v1

    invoke-direct {v0, v1}, Lnet/bytebuddy/implementation/bind/annotation/TargetMethodAnnotationDrivenBinder;-><init>(Lnet/bytebuddy/implementation/bind/annotation/TargetMethodAnnotationDrivenBinder$DelegationProcessor;)V

    return-object v0
.end method


# virtual methods
.method public compile(Lnet/bytebuddy/description/method/MethodDescription;)Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$Record;
    .locals 4
    .param p1, "candidate"    # Lnet/bytebuddy/description/method/MethodDescription;

    .line 79
    invoke-static {p1}, Lnet/bytebuddy/implementation/bind/annotation/IgnoreForBinding$Verifier;->check(Lnet/bytebuddy/description/method/MethodDescription;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 80
    sget-object v0, Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$Record$Illegal;->INSTANCE:Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$Record$Illegal;

    return-object v0

    .line 82
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Lnet/bytebuddy/description/method/MethodDescription;->getParameters()Lnet/bytebuddy/description/method/ParameterList;

    move-result-object v1

    invoke-interface {v1}, Lnet/bytebuddy/description/method/ParameterList;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 83
    .local v0, "handlers":Ljava/util/List;, "Ljava/util/List<Lnet/bytebuddy/implementation/bind/annotation/TargetMethodAnnotationDrivenBinder$DelegationProcessor$Handler;>;"
    invoke-interface {p1}, Lnet/bytebuddy/description/method/MethodDescription;->getParameters()Lnet/bytebuddy/description/method/ParameterList;

    move-result-object v1

    invoke-interface {v1}, Lnet/bytebuddy/description/method/ParameterList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnet/bytebuddy/description/method/ParameterDescription;

    .line 84
    .local v2, "parameterDescription":Lnet/bytebuddy/description/method/ParameterDescription;
    iget-object v3, p0, Lnet/bytebuddy/implementation/bind/annotation/TargetMethodAnnotationDrivenBinder;->delegationProcessor:Lnet/bytebuddy/implementation/bind/annotation/TargetMethodAnnotationDrivenBinder$DelegationProcessor;

    invoke-virtual {v3, v2}, Lnet/bytebuddy/implementation/bind/annotation/TargetMethodAnnotationDrivenBinder$DelegationProcessor;->prepare(Lnet/bytebuddy/description/method/ParameterDescription;)Lnet/bytebuddy/implementation/bind/annotation/TargetMethodAnnotationDrivenBinder$DelegationProcessor$Handler;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 85
    .end local v2    # "parameterDescription":Lnet/bytebuddy/description/method/ParameterDescription;
    goto :goto_0

    .line 86
    :cond_1
    new-instance v1, Lnet/bytebuddy/implementation/bind/annotation/TargetMethodAnnotationDrivenBinder$Record;

    invoke-static {p1}, Lnet/bytebuddy/implementation/bind/annotation/RuntimeType$Verifier;->check(Lnet/bytebuddy/description/annotation/AnnotationSource;)Lnet/bytebuddy/implementation/bytecode/assign/Assigner$Typing;

    move-result-object v2

    invoke-direct {v1, p1, v0, v2}, Lnet/bytebuddy/implementation/bind/annotation/TargetMethodAnnotationDrivenBinder$Record;-><init>(Lnet/bytebuddy/description/method/MethodDescription;Ljava/util/List;Lnet/bytebuddy/implementation/bytecode/assign/Assigner$Typing;)V

    return-object v1
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
    iget-object v2, p0, Lnet/bytebuddy/implementation/bind/annotation/TargetMethodAnnotationDrivenBinder;->delegationProcessor:Lnet/bytebuddy/implementation/bind/annotation/TargetMethodAnnotationDrivenBinder$DelegationProcessor;

    check-cast p1, Lnet/bytebuddy/implementation/bind/annotation/TargetMethodAnnotationDrivenBinder;

    iget-object p1, p1, Lnet/bytebuddy/implementation/bind/annotation/TargetMethodAnnotationDrivenBinder;->delegationProcessor:Lnet/bytebuddy/implementation/bind/annotation/TargetMethodAnnotationDrivenBinder$DelegationProcessor;

    invoke-virtual {v2, p1}, Lnet/bytebuddy/implementation/bind/annotation/TargetMethodAnnotationDrivenBinder$DelegationProcessor;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    return v1

    :cond_3
    return v0
.end method

.method public hashCode()I
    .locals 2

    invoke-virtual {p0}, Lnet/bytebuddy/implementation/bind/annotation/TargetMethodAnnotationDrivenBinder;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lnet/bytebuddy/implementation/bind/annotation/TargetMethodAnnotationDrivenBinder;->delegationProcessor:Lnet/bytebuddy/implementation/bind/annotation/TargetMethodAnnotationDrivenBinder$DelegationProcessor;

    invoke-virtual {v1}, Lnet/bytebuddy/implementation/bind/annotation/TargetMethodAnnotationDrivenBinder$DelegationProcessor;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method
