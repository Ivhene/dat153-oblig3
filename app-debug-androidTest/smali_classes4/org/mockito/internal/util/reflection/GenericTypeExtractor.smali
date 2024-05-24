.class public final Lorg/mockito/internal/util/reflection/GenericTypeExtractor;
.super Ljava/lang/Object;
.source "GenericTypeExtractor.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static extractGeneric(Ljava/lang/reflect/Type;)Ljava/lang/Class;
    .locals 3
    .param p0, "type"    # Ljava/lang/reflect/Type;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 79
    instance-of v0, p0, Ljava/lang/reflect/ParameterizedType;

    if-eqz v0, :cond_0

    .line 80
    move-object v0, p0

    check-cast v0, Ljava/lang/reflect/ParameterizedType;

    invoke-interface {v0}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v0

    .line 81
    .local v0, "genericTypes":[Ljava/lang/reflect/Type;
    array-length v1, v0

    if-lez v1, :cond_0

    const/4 v1, 0x0

    aget-object v2, v0, v1

    instance-of v2, v2, Ljava/lang/Class;

    if-eqz v2, :cond_0

    .line 82
    aget-object v1, v0, v1

    check-cast v1, Ljava/lang/Class;

    return-object v1

    .line 85
    .end local v0    # "genericTypes":[Ljava/lang/reflect/Type;
    :cond_0
    const-class v0, Ljava/lang/Object;

    return-object v0
.end method

.method private static findGenericInterface(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/reflect/Type;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/reflect/Type;"
        }
    .end annotation

    .line 60
    .local p0, "sourceClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p1, "targetBaseInterface":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    move-result-object v1

    array-length v1, v1

    if-ge v0, v1, :cond_2

    .line 61
    invoke-virtual {p0}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    move-result-object v1

    aget-object v1, v1, v0

    .line 62
    .local v1, "inter":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-ne v1, p1, :cond_0

    .line 63
    invoke-virtual {p0}, Ljava/lang/Class;->getGenericInterfaces()[Ljava/lang/reflect/Type;

    move-result-object v2

    aget-object v2, v2, v0

    return-object v2

    .line 65
    :cond_0
    invoke-static {v1, p1}, Lorg/mockito/internal/util/reflection/GenericTypeExtractor;->findGenericInterface(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/reflect/Type;

    move-result-object v2

    .line 66
    .local v2, "deeper":Ljava/lang/reflect/Type;
    if-eqz v2, :cond_1

    .line 67
    return-object v2

    .line 60
    .end local v1    # "inter":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v2    # "deeper":Ljava/lang/reflect/Type;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 71
    .end local v0    # "i":I
    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method

.method public static genericTypeOf(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/Class;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 38
    .local p0, "rootClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p1, "targetBaseClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p2, "targetBaseInterface":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    move-object v0, p0

    .line 39
    .local v0, "match":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_0
    const-class v1, Ljava/lang/Object;

    if-eq v0, v1, :cond_2

    .line 41
    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v1

    if-ne v1, p1, :cond_0

    .line 42
    invoke-virtual {v0}, Ljava/lang/Class;->getGenericSuperclass()Ljava/lang/reflect/Type;

    move-result-object v1

    invoke-static {v1}, Lorg/mockito/internal/util/reflection/GenericTypeExtractor;->extractGeneric(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v1

    return-object v1

    .line 45
    :cond_0
    invoke-static {v0, p2}, Lorg/mockito/internal/util/reflection/GenericTypeExtractor;->findGenericInterface(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/reflect/Type;

    move-result-object v1

    .line 46
    .local v1, "genericInterface":Ljava/lang/reflect/Type;
    if-eqz v1, :cond_1

    .line 47
    invoke-static {v1}, Lorg/mockito/internal/util/reflection/GenericTypeExtractor;->extractGeneric(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v2

    return-object v2

    .line 50
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    .line 51
    .end local v1    # "genericInterface":Ljava/lang/reflect/Type;
    goto :goto_0

    .line 52
    :cond_2
    const-class v1, Ljava/lang/Object;

    return-object v1
.end method
