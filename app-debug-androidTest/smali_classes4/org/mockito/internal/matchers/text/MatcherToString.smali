.class final Lorg/mockito/internal/matchers/text/MatcherToString;
.super Ljava/lang/Object;
.source "MatcherToString.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static toString(Lorg/mockito/ArgumentMatcher;)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/mockito/ArgumentMatcher<",
            "*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 28
    .local p0, "matcher":Lorg/mockito/ArgumentMatcher;, "Lorg/mockito/ArgumentMatcher<*>;"
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 29
    .local v0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_0
    const-class v1, Ljava/lang/Object;

    if-eq v0, v1, :cond_2

    .line 30
    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v1

    .line 31
    .local v1, "methods":[Ljava/lang/reflect/Method;
    array-length v2, v1

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    .line 32
    .local v4, "m":Ljava/lang/reflect/Method;
    invoke-static {v4}, Lorg/mockito/internal/util/ObjectMethodsGuru;->isToStringMethod(Ljava/lang/reflect/Method;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 33
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 31
    .end local v4    # "m":Ljava/lang/reflect/Method;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 36
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    .line 37
    .end local v1    # "methods":[Ljava/lang/reflect/Method;
    goto :goto_0

    .line 40
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 43
    .local v1, "matcherClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v1}, Ljava/lang/Class;->isSynthetic()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 44
    const-string v2, ""

    .local v2, "matcherName":Ljava/lang/String;
    goto :goto_2

    .line 46
    .end local v2    # "matcherName":Ljava/lang/String;
    :cond_3
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    .line 49
    .restart local v2    # "matcherName":Ljava/lang/String;
    :goto_2
    invoke-static {v2}, Lorg/mockito/internal/util/StringUtil;->decamelizeMatcherName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method
