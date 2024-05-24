.class public Lorg/mockito/internal/verification/argumentmatching/ArgumentMatchingTool;
.super Ljava/lang/Object;
.source "ArgumentMatchingTool.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getSuspiciouslyNotMatchingArgsIndexes(Ljava/util/List;[Ljava/lang/Object;)[Ljava/lang/Integer;
    .locals 7
    .param p1, "arguments"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/mockito/ArgumentMatcher;",
            ">;[",
            "Ljava/lang/Object;",
            ")[",
            "Ljava/lang/Integer;"
        }
    .end annotation

    .line 22
    .local p0, "matchers":Ljava/util/List;, "Ljava/util/List<Lorg/mockito/ArgumentMatcher;>;"
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    array-length v1, p1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    .line 23
    new-array v0, v2, [Ljava/lang/Integer;

    return-object v0

    .line 26
    :cond_0
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 27
    .local v0, "suspicious":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v1, 0x0

    .line 28
    .local v1, "i":I
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/mockito/ArgumentMatcher;

    .line 29
    .local v4, "m":Lorg/mockito/ArgumentMatcher;
    instance-of v5, v4, Lorg/mockito/internal/matchers/ContainsExtraTypeInfo;

    if-eqz v5, :cond_1

    aget-object v5, p1, v1

    .line 30
    invoke-static {v4, v5}, Lorg/mockito/internal/verification/argumentmatching/ArgumentMatchingTool;->safelyMatches(Lorg/mockito/ArgumentMatcher;Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    aget-object v5, p1, v1

    .line 31
    invoke-static {v4, v5}, Lorg/mockito/internal/verification/argumentmatching/ArgumentMatchingTool;->toStringEquals(Lorg/mockito/ArgumentMatcher;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    move-object v5, v4

    check-cast v5, Lorg/mockito/internal/matchers/ContainsExtraTypeInfo;

    aget-object v6, p1, v1

    .line 32
    invoke-interface {v5, v6}, Lorg/mockito/internal/matchers/ContainsExtraTypeInfo;->typeMatches(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 33
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 35
    :cond_1
    nop

    .end local v4    # "m":Lorg/mockito/ArgumentMatcher;
    add-int/lit8 v1, v1, 0x1

    .line 36
    goto :goto_0

    .line 37
    :cond_2
    new-array v2, v2, [Ljava/lang/Integer;

    invoke-interface {v0, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/Integer;

    return-object v2
.end method

.method private static safelyMatches(Lorg/mockito/ArgumentMatcher;Ljava/lang/Object;)Z
    .locals 2
    .param p0, "m"    # Lorg/mockito/ArgumentMatcher;
    .param p1, "arg"    # Ljava/lang/Object;

    .line 42
    :try_start_0
    invoke-interface {p0, p1}, Lorg/mockito/ArgumentMatcher;->matches(Ljava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    .line 43
    :catchall_0
    move-exception v0

    .line 44
    .local v0, "t":Ljava/lang/Throwable;
    const/4 v1, 0x0

    return v1
.end method

.method private static toStringEquals(Lorg/mockito/ArgumentMatcher;Ljava/lang/Object;)Z
    .locals 2
    .param p0, "m"    # Lorg/mockito/ArgumentMatcher;
    .param p1, "arg"    # Ljava/lang/Object;

    .line 49
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
