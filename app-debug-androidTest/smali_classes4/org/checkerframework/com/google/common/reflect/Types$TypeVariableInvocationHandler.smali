.class final Lorg/checkerframework/com/google/common/reflect/Types$TypeVariableInvocationHandler;
.super Ljava/lang/Object;
.source "Types.java"

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/com/google/common/reflect/Types;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "TypeVariableInvocationHandler"
.end annotation


# static fields
.field private static final typeVariableMethods:Lorg/checkerframework/com/google/common/collect/ImmutableMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/checkerframework/com/google/common/collect/ImmutableMap<",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Method;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final typeVariableImpl:Lorg/checkerframework/com/google/common/reflect/Types$TypeVariableImpl;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/checkerframework/com/google/common/reflect/Types$TypeVariableImpl<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 358
    invoke-static {}, Lorg/checkerframework/com/google/common/collect/ImmutableMap;->builder()Lorg/checkerframework/com/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    .line 359
    .local v0, "builder":Lorg/checkerframework/com/google/common/collect/ImmutableMap$Builder;, "Lorg/checkerframework/com/google/common/collect/ImmutableMap$Builder<Ljava/lang/String;Ljava/lang/reflect/Method;>;"
    const-class v1, Lorg/checkerframework/com/google/common/reflect/Types$TypeVariableImpl;

    invoke-virtual {v1}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    .line 360
    .local v4, "method":Ljava/lang/reflect/Method;
    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v5

    const-class v6, Lorg/checkerframework/com/google/common/reflect/Types$TypeVariableImpl;

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 362
    const/4 v5, 0x1

    :try_start_0
    invoke-virtual {v4, v5}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/security/AccessControlException; {:try_start_0 .. :try_end_0} :catch_0

    .line 366
    goto :goto_1

    .line 363
    :catch_0
    move-exception v5

    .line 367
    :goto_1
    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5, v4}, Lorg/checkerframework/com/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lorg/checkerframework/com/google/common/collect/ImmutableMap$Builder;

    .line 359
    .end local v4    # "method":Ljava/lang/reflect/Method;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 370
    :cond_1
    invoke-virtual {v0}, Lorg/checkerframework/com/google/common/collect/ImmutableMap$Builder;->build()Lorg/checkerframework/com/google/common/collect/ImmutableMap;

    move-result-object v1

    sput-object v1, Lorg/checkerframework/com/google/common/reflect/Types$TypeVariableInvocationHandler;->typeVariableMethods:Lorg/checkerframework/com/google/common/collect/ImmutableMap;

    .line 371
    .end local v0    # "builder":Lorg/checkerframework/com/google/common/collect/ImmutableMap$Builder;, "Lorg/checkerframework/com/google/common/collect/ImmutableMap$Builder<Ljava/lang/String;Ljava/lang/reflect/Method;>;"
    return-void
.end method

.method constructor <init>(Lorg/checkerframework/com/google/common/reflect/Types$TypeVariableImpl;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/google/common/reflect/Types$TypeVariableImpl<",
            "*>;)V"
        }
    .end annotation

    .line 375
    .local p1, "typeVariableImpl":Lorg/checkerframework/com/google/common/reflect/Types$TypeVariableImpl;, "Lorg/checkerframework/com/google/common/reflect/Types$TypeVariableImpl<*>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 376
    iput-object p1, p0, Lorg/checkerframework/com/google/common/reflect/Types$TypeVariableInvocationHandler;->typeVariableImpl:Lorg/checkerframework/com/google/common/reflect/Types$TypeVariableImpl;

    .line 377
    return-void
.end method

.method static synthetic access$600(Lorg/checkerframework/com/google/common/reflect/Types$TypeVariableInvocationHandler;)Lorg/checkerframework/com/google/common/reflect/Types$TypeVariableImpl;
    .locals 1
    .param p0, "x0"    # Lorg/checkerframework/com/google/common/reflect/Types$TypeVariableInvocationHandler;

    .line 354
    iget-object v0, p0, Lorg/checkerframework/com/google/common/reflect/Types$TypeVariableInvocationHandler;->typeVariableImpl:Lorg/checkerframework/com/google/common/reflect/Types$TypeVariableImpl;

    return-object v0
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .param p1, "proxy"    # Ljava/lang/Object;
    .param p2, "method"    # Ljava/lang/reflect/Method;
    .param p3, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 381
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v0

    .line 382
    .local v0, "methodName":Ljava/lang/String;
    sget-object v1, Lorg/checkerframework/com/google/common/reflect/Types$TypeVariableInvocationHandler;->typeVariableMethods:Lorg/checkerframework/com/google/common/collect/ImmutableMap;

    invoke-virtual {v1, v0}, Lorg/checkerframework/com/google/common/collect/ImmutableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/reflect/Method;

    .line 383
    .local v1, "typeVariableMethod":Ljava/lang/reflect/Method;
    if-eqz v1, :cond_0

    .line 387
    :try_start_0
    iget-object v2, p0, Lorg/checkerframework/com/google/common/reflect/Types$TypeVariableInvocationHandler;->typeVariableImpl:Lorg/checkerframework/com/google/common/reflect/Types$TypeVariableImpl;

    invoke-virtual {v1, v2, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 388
    :catch_0
    move-exception v2

    .line 389
    .local v2, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v2}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    throw v3

    .line 384
    .end local v2    # "e":Ljava/lang/reflect/InvocationTargetException;
    :cond_0
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v2, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v2
.end method
