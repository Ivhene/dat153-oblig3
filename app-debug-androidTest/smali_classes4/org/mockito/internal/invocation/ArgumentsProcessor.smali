.class public final Lorg/mockito/internal/invocation/ArgumentsProcessor;
.super Ljava/lang/Object;
.source "ArgumentsProcessor.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static argumentsToMatchers([Ljava/lang/Object;)Ljava/util/List;
    .locals 5
    .param p0, "arguments"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/List<",
            "Lorg/mockito/ArgumentMatcher;",
            ">;"
        }
    .end annotation

    .line 58
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 59
    .local v0, "matchers":Ljava/util/List;, "Ljava/util/List<Lorg/mockito/ArgumentMatcher;>;"
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, p0, v2

    .line 60
    .local v3, "arg":Ljava/lang/Object;
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->isArray()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 61
    new-instance v4, Lorg/mockito/internal/matchers/ArrayEquals;

    invoke-direct {v4, v3}, Lorg/mockito/internal/matchers/ArrayEquals;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 63
    :cond_0
    new-instance v4, Lorg/mockito/internal/matchers/Equals;

    invoke-direct {v4, v3}, Lorg/mockito/internal/matchers/Equals;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 59
    .end local v3    # "arg":Ljava/lang/Object;
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 66
    :cond_1
    return-object v0
.end method

.method public static expandArgs(Lorg/mockito/internal/invocation/MockitoMethod;[Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 2
    .param p0, "method"    # Lorg/mockito/internal/invocation/MockitoMethod;
    .param p1, "args"    # [Ljava/lang/Object;

    .line 21
    invoke-interface {p0}, Lorg/mockito/internal/invocation/MockitoMethod;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v0

    array-length v0, v0

    .line 22
    .local v0, "nParams":I
    if-eqz p1, :cond_0

    array-length v1, p1

    if-le v1, v0, :cond_0

    .line 23
    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    .line 26
    :cond_0
    invoke-interface {p0}, Lorg/mockito/internal/invocation/MockitoMethod;->isVarArgs()Z

    move-result v1

    invoke-static {v1, p1}, Lorg/mockito/internal/invocation/ArgumentsProcessor;->expandVarArgs(Z[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method private static expandVarArgs(Z[Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 5
    .param p0, "isVarArgs"    # Z
    .param p1, "args"    # [Ljava/lang/Object;

    .line 32
    const/4 v0, 0x0

    if-eqz p0, :cond_2

    .line 33
    invoke-static {p1}, Lorg/mockito/internal/invocation/ArgumentsProcessor;->isNullOrEmpty([Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    array-length v1, p1

    add-int/lit8 v1, v1, -0x1

    aget-object v1, p1, v1

    if-eqz v1, :cond_0

    array-length v1, p1

    add-int/lit8 v1, v1, -0x1

    aget-object v1, p1, v1

    .line 34
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->isArray()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    .line 38
    :cond_0
    array-length v1, p1

    add-int/lit8 v1, v1, -0x1

    .line 40
    .local v1, "nonVarArgsCount":I
    aget-object v2, p1, v1

    if-nez v2, :cond_1

    .line 42
    const/4 v2, 0x0

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    .local v2, "varArgs":[Ljava/lang/Object;
    goto :goto_0

    .line 44
    .end local v2    # "varArgs":[Ljava/lang/Object;
    :cond_1
    aget-object v2, p1, v1

    invoke-static {v2}, Lorg/mockito/internal/matchers/ArrayEquals;->createObjectArray(Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    .line 46
    .restart local v2    # "varArgs":[Ljava/lang/Object;
    :goto_0
    array-length v3, v2

    .line 47
    .local v3, "varArgsCount":I
    add-int v4, v1, v3

    new-array v4, v4, [Ljava/lang/Object;

    .line 48
    .local v4, "newArgs":[Ljava/lang/Object;
    invoke-static {p1, v0, v4, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 49
    invoke-static {v2, v0, v4, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 50
    return-object v4

    .line 35
    .end local v1    # "nonVarArgsCount":I
    .end local v2    # "varArgs":[Ljava/lang/Object;
    .end local v3    # "varArgsCount":I
    .end local v4    # "newArgs":[Ljava/lang/Object;
    :cond_2
    :goto_1
    if-nez p1, :cond_3

    new-array v0, v0, [Ljava/lang/Object;

    goto :goto_2

    :cond_3
    move-object v0, p1

    :goto_2
    return-object v0
.end method

.method private static isNullOrEmpty([Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)Z"
        }
    .end annotation

    .line 54
    .local p0, "array":[Ljava/lang/Object;, "[TT;"
    if-eqz p0, :cond_1

    array-length v0, p0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method
