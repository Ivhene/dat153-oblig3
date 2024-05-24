.class final Lorg/checkerframework/com/google/common/reflect/Types$TypeVariableImpl;
.super Ljava/lang/Object;
.source "Types.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/com/google/common/reflect/Types;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "TypeVariableImpl"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<D::",
        "Ljava/lang/reflect/GenericDeclaration;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final bounds:Lorg/checkerframework/com/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/checkerframework/com/google/common/collect/ImmutableList<",
            "Ljava/lang/reflect/Type;",
            ">;"
        }
    .end annotation
.end field

.field private final genericDeclaration:Ljava/lang/reflect/GenericDeclaration;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TD;"
        }
    .end annotation
.end field

.field private final name:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/reflect/GenericDeclaration;Ljava/lang/String;[Ljava/lang/reflect/Type;)V
    .locals 1
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "bounds"    # [Ljava/lang/reflect/Type;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TD;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/reflect/Type;",
            ")V"
        }
    .end annotation

    .line 401
    .local p0, "this":Lorg/checkerframework/com/google/common/reflect/Types$TypeVariableImpl;, "Lorg/checkerframework/com/google/common/reflect/Types$TypeVariableImpl<TD;>;"
    .local p1, "genericDeclaration":Ljava/lang/reflect/GenericDeclaration;, "TD;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 402
    const-string v0, "bound for type variable"

    invoke-static {p3, v0}, Lorg/checkerframework/com/google/common/reflect/Types;->access$200([Ljava/lang/reflect/Type;Ljava/lang/String;)V

    .line 403
    invoke-static {p1}, Lorg/checkerframework/com/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/GenericDeclaration;

    iput-object v0, p0, Lorg/checkerframework/com/google/common/reflect/Types$TypeVariableImpl;->genericDeclaration:Ljava/lang/reflect/GenericDeclaration;

    .line 404
    invoke-static {p2}, Lorg/checkerframework/com/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lorg/checkerframework/com/google/common/reflect/Types$TypeVariableImpl;->name:Ljava/lang/String;

    .line 405
    invoke-static {p3}, Lorg/checkerframework/com/google/common/collect/ImmutableList;->copyOf([Ljava/lang/Object;)Lorg/checkerframework/com/google/common/collect/ImmutableList;

    move-result-object v0

    iput-object v0, p0, Lorg/checkerframework/com/google/common/reflect/Types$TypeVariableImpl;->bounds:Lorg/checkerframework/com/google/common/collect/ImmutableList;

    .line 406
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .param p1, "obj"    # Ljava/lang/Object;

    .line 436
    .local p0, "this":Lorg/checkerframework/com/google/common/reflect/Types$TypeVariableImpl;, "Lorg/checkerframework/com/google/common/reflect/Types$TypeVariableImpl<TD;>;"
    sget-boolean v0, Lorg/checkerframework/com/google/common/reflect/Types$NativeTypeVariableEquals;->NATIVE_TYPE_VARIABLE_ONLY:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 438
    if-eqz p1, :cond_1

    .line 439
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/reflect/Proxy;->isProxyClass(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 440
    invoke-static {p1}, Ljava/lang/reflect/Proxy;->getInvocationHandler(Ljava/lang/Object;)Ljava/lang/reflect/InvocationHandler;

    move-result-object v0

    instance-of v0, v0, Lorg/checkerframework/com/google/common/reflect/Types$TypeVariableInvocationHandler;

    if-eqz v0, :cond_1

    .line 441
    nop

    .line 442
    invoke-static {p1}, Ljava/lang/reflect/Proxy;->getInvocationHandler(Ljava/lang/Object;)Ljava/lang/reflect/InvocationHandler;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/google/common/reflect/Types$TypeVariableInvocationHandler;

    .line 443
    .local v0, "typeVariableInvocationHandler":Lorg/checkerframework/com/google/common/reflect/Types$TypeVariableInvocationHandler;
    invoke-static {v0}, Lorg/checkerframework/com/google/common/reflect/Types$TypeVariableInvocationHandler;->access$600(Lorg/checkerframework/com/google/common/reflect/Types$TypeVariableInvocationHandler;)Lorg/checkerframework/com/google/common/reflect/Types$TypeVariableImpl;

    move-result-object v3

    .line 444
    .local v3, "that":Lorg/checkerframework/com/google/common/reflect/Types$TypeVariableImpl;, "Lorg/checkerframework/com/google/common/reflect/Types$TypeVariableImpl<*>;"
    iget-object v4, p0, Lorg/checkerframework/com/google/common/reflect/Types$TypeVariableImpl;->name:Ljava/lang/String;

    invoke-virtual {v3}, Lorg/checkerframework/com/google/common/reflect/Types$TypeVariableImpl;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lorg/checkerframework/com/google/common/reflect/Types$TypeVariableImpl;->genericDeclaration:Ljava/lang/reflect/GenericDeclaration;

    .line 445
    invoke-virtual {v3}, Lorg/checkerframework/com/google/common/reflect/Types$TypeVariableImpl;->getGenericDeclaration()Ljava/lang/reflect/GenericDeclaration;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lorg/checkerframework/com/google/common/reflect/Types$TypeVariableImpl;->bounds:Lorg/checkerframework/com/google/common/collect/ImmutableList;

    iget-object v5, v3, Lorg/checkerframework/com/google/common/reflect/Types$TypeVariableImpl;->bounds:Lorg/checkerframework/com/google/common/collect/ImmutableList;

    .line 446
    invoke-virtual {v4, v5}, Lorg/checkerframework/com/google/common/collect/ImmutableList;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    .line 444
    :goto_0
    return v1

    .line 448
    .end local v0    # "typeVariableInvocationHandler":Lorg/checkerframework/com/google/common/reflect/Types$TypeVariableInvocationHandler;
    .end local v3    # "that":Lorg/checkerframework/com/google/common/reflect/Types$TypeVariableImpl;, "Lorg/checkerframework/com/google/common/reflect/Types$TypeVariableImpl<*>;"
    :cond_1
    return v2

    .line 451
    :cond_2
    instance-of v0, p1, Ljava/lang/reflect/TypeVariable;

    if-eqz v0, :cond_4

    .line 452
    move-object v0, p1

    check-cast v0, Ljava/lang/reflect/TypeVariable;

    .line 453
    .local v0, "that":Ljava/lang/reflect/TypeVariable;, "Ljava/lang/reflect/TypeVariable<*>;"
    iget-object v3, p0, Lorg/checkerframework/com/google/common/reflect/Types$TypeVariableImpl;->name:Ljava/lang/String;

    invoke-interface {v0}, Ljava/lang/reflect/TypeVariable;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lorg/checkerframework/com/google/common/reflect/Types$TypeVariableImpl;->genericDeclaration:Ljava/lang/reflect/GenericDeclaration;

    .line 454
    invoke-interface {v0}, Ljava/lang/reflect/TypeVariable;->getGenericDeclaration()Ljava/lang/reflect/GenericDeclaration;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_1

    :cond_3
    move v1, v2

    .line 453
    :goto_1
    return v1

    .line 456
    .end local v0    # "that":Ljava/lang/reflect/TypeVariable;, "Ljava/lang/reflect/TypeVariable<*>;"
    :cond_4
    return v2
.end method

.method public getBounds()[Ljava/lang/reflect/Type;
    .locals 1

    .line 409
    .local p0, "this":Lorg/checkerframework/com/google/common/reflect/Types$TypeVariableImpl;, "Lorg/checkerframework/com/google/common/reflect/Types$TypeVariableImpl<TD;>;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/reflect/Types$TypeVariableImpl;->bounds:Lorg/checkerframework/com/google/common/collect/ImmutableList;

    invoke-static {v0}, Lorg/checkerframework/com/google/common/reflect/Types;->access$300(Ljava/util/Collection;)[Ljava/lang/reflect/Type;

    move-result-object v0

    return-object v0
.end method

.method public getGenericDeclaration()Ljava/lang/reflect/GenericDeclaration;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TD;"
        }
    .end annotation

    .line 413
    .local p0, "this":Lorg/checkerframework/com/google/common/reflect/Types$TypeVariableImpl;, "Lorg/checkerframework/com/google/common/reflect/Types$TypeVariableImpl<TD;>;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/reflect/Types$TypeVariableImpl;->genericDeclaration:Ljava/lang/reflect/GenericDeclaration;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 417
    .local p0, "this":Lorg/checkerframework/com/google/common/reflect/Types$TypeVariableImpl;, "Lorg/checkerframework/com/google/common/reflect/Types$TypeVariableImpl<TD;>;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/reflect/Types$TypeVariableImpl;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getTypeName()Ljava/lang/String;
    .locals 1

    .line 421
    .local p0, "this":Lorg/checkerframework/com/google/common/reflect/Types$TypeVariableImpl;, "Lorg/checkerframework/com/google/common/reflect/Types$TypeVariableImpl<TD;>;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/reflect/Types$TypeVariableImpl;->name:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 431
    .local p0, "this":Lorg/checkerframework/com/google/common/reflect/Types$TypeVariableImpl;, "Lorg/checkerframework/com/google/common/reflect/Types$TypeVariableImpl<TD;>;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/reflect/Types$TypeVariableImpl;->genericDeclaration:Ljava/lang/reflect/GenericDeclaration;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iget-object v1, p0, Lorg/checkerframework/com/google/common/reflect/Types$TypeVariableImpl;->name:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 426
    .local p0, "this":Lorg/checkerframework/com/google/common/reflect/Types$TypeVariableImpl;, "Lorg/checkerframework/com/google/common/reflect/Types$TypeVariableImpl<TD;>;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/reflect/Types$TypeVariableImpl;->name:Ljava/lang/String;

    return-object v0
.end method
