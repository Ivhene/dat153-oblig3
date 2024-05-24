.class public Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$BindingResolver$StreamWriting;
.super Ljava/lang/Object;
.source "MethodDelegationBinder.java"

# interfaces
.implements Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$BindingResolver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$BindingResolver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "StreamWriting"
.end annotation

.annotation runtime Lnet/bytebuddy/build/HashCodeAndEqualsPlugin$Enhance;
.end annotation


# instance fields
.field private final delegate:Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$BindingResolver;

.field private final printStream:Ljava/io/PrintStream;


# direct methods
.method public constructor <init>(Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$BindingResolver;Ljava/io/PrintStream;)V
    .locals 0
    .param p1, "delegate"    # Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$BindingResolver;
    .param p2, "printStream"    # Ljava/io/PrintStream;

    .line 723
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 724
    iput-object p1, p0, Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$BindingResolver$StreamWriting;->delegate:Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$BindingResolver;

    .line 725
    iput-object p2, p0, Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$BindingResolver$StreamWriting;->printStream:Ljava/io/PrintStream;

    .line 726
    return-void
.end method

.method public static toSystemError()Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$BindingResolver;
    .locals 1

    .line 753
    sget-object v0, Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$BindingResolver$Default;->INSTANCE:Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$BindingResolver$Default;

    invoke-static {v0}, Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$BindingResolver$StreamWriting;->toSystemError(Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$BindingResolver;)Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$BindingResolver;

    move-result-object v0

    return-object v0
.end method

.method public static toSystemError(Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$BindingResolver;)Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$BindingResolver;
    .locals 2
    .param p0, "bindingResolver"    # Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$BindingResolver;

    .line 763
    new-instance v0, Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$BindingResolver$StreamWriting;

    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-direct {v0, p0, v1}, Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$BindingResolver$StreamWriting;-><init>(Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$BindingResolver;Ljava/io/PrintStream;)V

    return-object v0
.end method

.method public static toSystemOut()Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$BindingResolver;
    .locals 1

    .line 734
    sget-object v0, Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$BindingResolver$Default;->INSTANCE:Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$BindingResolver$Default;

    invoke-static {v0}, Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$BindingResolver$StreamWriting;->toSystemOut(Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$BindingResolver;)Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$BindingResolver;

    move-result-object v0

    return-object v0
.end method

.method public static toSystemOut(Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$BindingResolver;)Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$BindingResolver;
    .locals 2
    .param p0, "bindingResolver"    # Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$BindingResolver;

    .line 744
    new-instance v0, Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$BindingResolver$StreamWriting;

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-direct {v0, p0, v1}, Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$BindingResolver$StreamWriting;-><init>(Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$BindingResolver;Ljava/io/PrintStream;)V

    return-object v0
.end method


# virtual methods
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
    iget-object v2, p0, Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$BindingResolver$StreamWriting;->delegate:Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$BindingResolver;

    check-cast p1, Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$BindingResolver$StreamWriting;

    iget-object v3, p1, Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$BindingResolver$StreamWriting;->delegate:Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$BindingResolver;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    return v1

    :cond_3
    iget-object v2, p0, Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$BindingResolver$StreamWriting;->printStream:Ljava/io/PrintStream;

    iget-object p1, p1, Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$BindingResolver$StreamWriting;->printStream:Ljava/io/PrintStream;

    invoke-virtual {v2, p1}, Ljava/io/PrintStream;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    return v1

    :cond_4
    return v0
.end method

.method public hashCode()I
    .locals 2

    invoke-virtual {p0}, Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$BindingResolver$StreamWriting;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$BindingResolver$StreamWriting;->delegate:Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$BindingResolver;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$BindingResolver$StreamWriting;->printStream:Ljava/io/PrintStream;

    invoke-virtual {v1}, Ljava/io/PrintStream;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public resolve(Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$AmbiguityResolver;Lnet/bytebuddy/description/method/MethodDescription;Ljava/util/List;)Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$MethodBinding;
    .locals 4
    .param p1, "ambiguityResolver"    # Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$AmbiguityResolver;
    .param p2, "source"    # Lnet/bytebuddy/description/method/MethodDescription;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$AmbiguityResolver;",
            "Lnet/bytebuddy/description/method/MethodDescription;",
            "Ljava/util/List<",
            "Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$MethodBinding;",
            ">;)",
            "Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$MethodBinding;"
        }
    .end annotation

    .line 770
    .local p3, "targets":Ljava/util/List;, "Ljava/util/List<Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$MethodBinding;>;"
    iget-object v0, p0, Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$BindingResolver$StreamWriting;->delegate:Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$BindingResolver;

    invoke-interface {v0, p1, p2, p3}, Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$BindingResolver;->resolve(Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$AmbiguityResolver;Lnet/bytebuddy/description/method/MethodDescription;Ljava/util/List;)Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$MethodBinding;

    move-result-object v0

    .line 771
    .local v0, "methodBinding":Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$MethodBinding;
    iget-object v1, p0, Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$BindingResolver$StreamWriting;->printStream:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Binding "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " as delegation to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v0}, Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$MethodBinding;->getTarget()Lnet/bytebuddy/description/method/MethodDescription;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 772
    return-object v0
.end method
