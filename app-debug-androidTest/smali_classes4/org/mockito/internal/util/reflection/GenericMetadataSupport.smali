.class public abstract Lorg/mockito/internal/util/reflection/GenericMetadataSupport;
.super Ljava/lang/Object;
.source "GenericMetadataSupport.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/mockito/internal/util/reflection/GenericMetadataSupport$WildCardBoundedType;,
        Lorg/mockito/internal/util/reflection/GenericMetadataSupport$TypeVarBoundedType;,
        Lorg/mockito/internal/util/reflection/GenericMetadataSupport$BoundedType;,
        Lorg/mockito/internal/util/reflection/GenericMetadataSupport$NotGenericReturnTypeSupport;,
        Lorg/mockito/internal/util/reflection/GenericMetadataSupport$GenericArrayReturnType;,
        Lorg/mockito/internal/util/reflection/GenericMetadataSupport$TypeVariableReturnType;,
        Lorg/mockito/internal/util/reflection/GenericMetadataSupport$ParameterizedReturnType;,
        Lorg/mockito/internal/util/reflection/GenericMetadataSupport$FromParameterizedTypeGenericMetadataSupport;,
        Lorg/mockito/internal/util/reflection/GenericMetadataSupport$FromClassGenericMetadataSupport;
    }
.end annotation


# instance fields
.field protected contextualActualTypeParameters:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/reflect/TypeVariable<",
            "*>;",
            "Ljava/lang/reflect/Type;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/mockito/internal/util/reflection/GenericMetadataSupport;->contextualActualTypeParameters:Ljava/util/Map;

    return-void
.end method

.method private boundsOf(Ljava/lang/reflect/TypeVariable;)Lorg/mockito/internal/util/reflection/GenericMetadataSupport$BoundedType;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/TypeVariable<",
            "*>;)",
            "Lorg/mockito/internal/util/reflection/GenericMetadataSupport$BoundedType;"
        }
    .end annotation

    .line 183
    .local p1, "typeParameter":Ljava/lang/reflect/TypeVariable;, "Ljava/lang/reflect/TypeVariable<*>;"
    invoke-interface {p1}, Ljava/lang/reflect/TypeVariable;->getBounds()[Ljava/lang/reflect/Type;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    instance-of v0, v0, Ljava/lang/reflect/TypeVariable;

    if-eqz v0, :cond_0

    .line 184
    invoke-interface {p1}, Ljava/lang/reflect/TypeVariable;->getBounds()[Ljava/lang/reflect/Type;

    move-result-object v0

    aget-object v0, v0, v1

    check-cast v0, Ljava/lang/reflect/TypeVariable;

    invoke-direct {p0, v0}, Lorg/mockito/internal/util/reflection/GenericMetadataSupport;->boundsOf(Ljava/lang/reflect/TypeVariable;)Lorg/mockito/internal/util/reflection/GenericMetadataSupport$BoundedType;

    move-result-object v0

    return-object v0

    .line 186
    :cond_0
    new-instance v0, Lorg/mockito/internal/util/reflection/GenericMetadataSupport$TypeVarBoundedType;

    invoke-direct {v0, p1}, Lorg/mockito/internal/util/reflection/GenericMetadataSupport$TypeVarBoundedType;-><init>(Ljava/lang/reflect/TypeVariable;)V

    return-object v0
.end method

.method private boundsOf(Ljava/lang/reflect/WildcardType;)Lorg/mockito/internal/util/reflection/GenericMetadataSupport$BoundedType;
    .locals 2
    .param p1, "wildCard"    # Ljava/lang/reflect/WildcardType;

    .line 205
    new-instance v0, Lorg/mockito/internal/util/reflection/GenericMetadataSupport$WildCardBoundedType;

    invoke-direct {v0, p1}, Lorg/mockito/internal/util/reflection/GenericMetadataSupport$WildCardBoundedType;-><init>(Ljava/lang/reflect/WildcardType;)V

    .line 206
    .local v0, "wildCardBoundedType":Lorg/mockito/internal/util/reflection/GenericMetadataSupport$WildCardBoundedType;
    invoke-virtual {v0}, Lorg/mockito/internal/util/reflection/GenericMetadataSupport$WildCardBoundedType;->firstBound()Ljava/lang/reflect/Type;

    move-result-object v1

    instance-of v1, v1, Ljava/lang/reflect/TypeVariable;

    if-eqz v1, :cond_0

    .line 207
    invoke-virtual {v0}, Lorg/mockito/internal/util/reflection/GenericMetadataSupport$WildCardBoundedType;->firstBound()Ljava/lang/reflect/Type;

    move-result-object v1

    check-cast v1, Ljava/lang/reflect/TypeVariable;

    invoke-direct {p0, v1}, Lorg/mockito/internal/util/reflection/GenericMetadataSupport;->boundsOf(Ljava/lang/reflect/TypeVariable;)Lorg/mockito/internal/util/reflection/GenericMetadataSupport$BoundedType;

    move-result-object v1

    return-object v1

    .line 210
    :cond_0
    return-object v0
.end method

.method public static inferFrom(Ljava/lang/reflect/Type;)Lorg/mockito/internal/util/reflection/GenericMetadataSupport;
    .locals 3
    .param p0, "type"    # Ljava/lang/reflect/Type;

    .line 332
    const-string v0, "type"

    invoke-static {p0, v0}, Lorg/mockito/internal/util/Checks;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 333
    instance-of v0, p0, Ljava/lang/Class;

    if-eqz v0, :cond_0

    .line 334
    new-instance v0, Lorg/mockito/internal/util/reflection/GenericMetadataSupport$FromClassGenericMetadataSupport;

    move-object v1, p0

    check-cast v1, Ljava/lang/Class;

    invoke-direct {v0, v1}, Lorg/mockito/internal/util/reflection/GenericMetadataSupport$FromClassGenericMetadataSupport;-><init>(Ljava/lang/Class;)V

    return-object v0

    .line 336
    :cond_0
    instance-of v0, p0, Ljava/lang/reflect/ParameterizedType;

    if-eqz v0, :cond_1

    .line 337
    new-instance v0, Lorg/mockito/internal/util/reflection/GenericMetadataSupport$FromParameterizedTypeGenericMetadataSupport;

    move-object v1, p0

    check-cast v1, Ljava/lang/reflect/ParameterizedType;

    invoke-direct {v0, v1}, Lorg/mockito/internal/util/reflection/GenericMetadataSupport$FromParameterizedTypeGenericMetadataSupport;-><init>(Ljava/lang/reflect/ParameterizedType;)V

    return-object v0

    .line 340
    :cond_1
    new-instance v0, Lorg/mockito/exceptions/base/MockitoException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Type meta-data for this Type ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 342
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") is not supported : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/mockito/exceptions/base/MockitoException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private registerTypeVariableIfNotPresent(Ljava/lang/reflect/TypeVariable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/TypeVariable<",
            "*>;)V"
        }
    .end annotation

    .line 169
    .local p1, "typeVariable":Ljava/lang/reflect/TypeVariable;, "Ljava/lang/reflect/TypeVariable<*>;"
    iget-object v0, p0, Lorg/mockito/internal/util/reflection/GenericMetadataSupport;->contextualActualTypeParameters:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 170
    iget-object v0, p0, Lorg/mockito/internal/util/reflection/GenericMetadataSupport;->contextualActualTypeParameters:Ljava/util/Map;

    invoke-direct {p0, p1}, Lorg/mockito/internal/util/reflection/GenericMetadataSupport;->boundsOf(Ljava/lang/reflect/TypeVariable;)Lorg/mockito/internal/util/reflection/GenericMetadataSupport$BoundedType;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 175
    :cond_0
    return-void
.end method

.method private resolveGenericType(Ljava/lang/reflect/Type;Ljava/lang/reflect/Method;)Lorg/mockito/internal/util/reflection/GenericMetadataSupport;
    .locals 3
    .param p1, "type"    # Ljava/lang/reflect/Type;
    .param p2, "method"    # Ljava/lang/reflect/Method;

    .line 298
    instance-of v0, p1, Ljava/lang/Class;

    if-eqz v0, :cond_0

    .line 299
    new-instance v0, Lorg/mockito/internal/util/reflection/GenericMetadataSupport$NotGenericReturnTypeSupport;

    invoke-direct {v0, p0, p1}, Lorg/mockito/internal/util/reflection/GenericMetadataSupport$NotGenericReturnTypeSupport;-><init>(Lorg/mockito/internal/util/reflection/GenericMetadataSupport;Ljava/lang/reflect/Type;)V

    return-object v0

    .line 301
    :cond_0
    instance-of v0, p1, Ljava/lang/reflect/ParameterizedType;

    if-eqz v0, :cond_1

    .line 302
    new-instance v0, Lorg/mockito/internal/util/reflection/GenericMetadataSupport$ParameterizedReturnType;

    .line 303
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getTypeParameters()[Ljava/lang/reflect/TypeVariable;

    move-result-object v1

    move-object v2, p1

    check-cast v2, Ljava/lang/reflect/ParameterizedType;

    invoke-direct {v0, p0, v1, v2}, Lorg/mockito/internal/util/reflection/GenericMetadataSupport$ParameterizedReturnType;-><init>(Lorg/mockito/internal/util/reflection/GenericMetadataSupport;[Ljava/lang/reflect/TypeVariable;Ljava/lang/reflect/ParameterizedType;)V

    .line 302
    return-object v0

    .line 305
    :cond_1
    instance-of v0, p1, Ljava/lang/reflect/TypeVariable;

    if-eqz v0, :cond_2

    .line 306
    new-instance v0, Lorg/mockito/internal/util/reflection/GenericMetadataSupport$TypeVariableReturnType;

    .line 307
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getTypeParameters()[Ljava/lang/reflect/TypeVariable;

    move-result-object v1

    move-object v2, p1

    check-cast v2, Ljava/lang/reflect/TypeVariable;

    invoke-direct {v0, p0, v1, v2}, Lorg/mockito/internal/util/reflection/GenericMetadataSupport$TypeVariableReturnType;-><init>(Lorg/mockito/internal/util/reflection/GenericMetadataSupport;[Ljava/lang/reflect/TypeVariable;Ljava/lang/reflect/TypeVariable;)V

    .line 306
    return-object v0

    .line 310
    :cond_2
    new-instance v0, Lorg/mockito/exceptions/base/MockitoException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Ouch, it shouldn\'t happen, type \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 312
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' on method : \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 314
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->toGenericString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' is not supported : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/mockito/exceptions/base/MockitoException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public actualTypeArguments()Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/reflect/TypeVariable<",
            "*>;",
            "Ljava/lang/reflect/Type;",
            ">;"
        }
    .end annotation

    .line 243
    invoke-virtual {p0}, Lorg/mockito/internal/util/reflection/GenericMetadataSupport;->rawType()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getTypeParameters()[Ljava/lang/reflect/TypeVariable;

    move-result-object v0

    .line 244
    .local v0, "typeParameters":[Ljava/lang/reflect/TypeVariable;, "[Ljava/lang/reflect/TypeVariable<*>;"
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 246
    .local v1, "actualTypeArguments":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/reflect/TypeVariable<*>;Ljava/lang/reflect/Type;>;"
    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v0, v3

    .line 248
    .local v4, "typeParameter":Ljava/lang/reflect/TypeVariable;, "Ljava/lang/reflect/TypeVariable<*>;"
    invoke-virtual {p0, v4}, Lorg/mockito/internal/util/reflection/GenericMetadataSupport;->getActualTypeArgumentFor(Ljava/lang/reflect/TypeVariable;)Ljava/lang/reflect/Type;

    move-result-object v5

    .line 250
    .local v5, "actualType":Ljava/lang/reflect/Type;
    invoke-virtual {v1, v4, v5}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 246
    .end local v4    # "typeParameter":Ljava/lang/reflect/TypeVariable;, "Ljava/lang/reflect/TypeVariable<*>;"
    .end local v5    # "actualType":Ljava/lang/reflect/Type;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 256
    :cond_0
    return-object v1
.end method

.method public extraInterfaces()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/reflect/Type;",
            ">;"
        }
    .end annotation

    .line 222
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected extractRawTypeOf(Ljava/lang/reflect/Type;)Ljava/lang/Class;
    .locals 3
    .param p1, "type"    # Ljava/lang/reflect/Type;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 99
    instance-of v0, p1, Ljava/lang/Class;

    if-eqz v0, :cond_0

    .line 100
    move-object v0, p1

    check-cast v0, Ljava/lang/Class;

    return-object v0

    .line 102
    :cond_0
    instance-of v0, p1, Ljava/lang/reflect/ParameterizedType;

    if-eqz v0, :cond_1

    .line 103
    move-object v0, p1

    check-cast v0, Ljava/lang/reflect/ParameterizedType;

    invoke-interface {v0}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    return-object v0

    .line 105
    :cond_1
    instance-of v0, p1, Lorg/mockito/internal/util/reflection/GenericMetadataSupport$BoundedType;

    if-eqz v0, :cond_2

    .line 106
    move-object v0, p1

    check-cast v0, Lorg/mockito/internal/util/reflection/GenericMetadataSupport$BoundedType;

    invoke-interface {v0}, Lorg/mockito/internal/util/reflection/GenericMetadataSupport$BoundedType;->firstBound()Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/mockito/internal/util/reflection/GenericMetadataSupport;->extractRawTypeOf(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v0

    return-object v0

    .line 108
    :cond_2
    instance-of v0, p1, Ljava/lang/reflect/TypeVariable;

    if-eqz v0, :cond_3

    .line 114
    iget-object v0, p0, Lorg/mockito/internal/util/reflection/GenericMetadataSupport;->contextualActualTypeParameters:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Type;

    invoke-virtual {p0, v0}, Lorg/mockito/internal/util/reflection/GenericMetadataSupport;->extractRawTypeOf(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v0

    return-object v0

    .line 116
    :cond_3
    new-instance v0, Lorg/mockito/exceptions/base/MockitoException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Raw extraction not supported for : \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/mockito/exceptions/base/MockitoException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected getActualTypeArgumentFor(Ljava/lang/reflect/TypeVariable;)Ljava/lang/reflect/Type;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/TypeVariable<",
            "*>;)",
            "Ljava/lang/reflect/Type;"
        }
    .end annotation

    .line 260
    .local p1, "typeParameter":Ljava/lang/reflect/TypeVariable;, "Ljava/lang/reflect/TypeVariable<*>;"
    iget-object v0, p0, Lorg/mockito/internal/util/reflection/GenericMetadataSupport;->contextualActualTypeParameters:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Type;

    .line 261
    .local v0, "type":Ljava/lang/reflect/Type;
    instance-of v1, v0, Ljava/lang/reflect/TypeVariable;

    if-eqz v1, :cond_0

    .line 262
    move-object v1, v0

    check-cast v1, Ljava/lang/reflect/TypeVariable;

    .line 263
    .local v1, "typeVariable":Ljava/lang/reflect/TypeVariable;, "Ljava/lang/reflect/TypeVariable<*>;"
    invoke-virtual {p0, v1}, Lorg/mockito/internal/util/reflection/GenericMetadataSupport;->getActualTypeArgumentFor(Ljava/lang/reflect/TypeVariable;)Ljava/lang/reflect/Type;

    move-result-object v2

    return-object v2

    .line 266
    .end local v1    # "typeVariable":Ljava/lang/reflect/TypeVariable;, "Ljava/lang/reflect/TypeVariable<*>;"
    :cond_0
    return-object v0
.end method

.method public hasRawExtraInterfaces()Z
    .locals 1

    .line 236
    invoke-virtual {p0}, Lorg/mockito/internal/util/reflection/GenericMetadataSupport;->rawExtraInterfaces()[Ljava/lang/Class;

    move-result-object v0

    array-length v0, v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public rawExtraInterfaces()[Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 229
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Class;

    return-object v0
.end method

.method public abstract rawType()Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end method

.method protected registerAllTypeVariables(Ljava/lang/reflect/Type;)V
    .locals 5
    .param p1, "classType"    # Ljava/lang/reflect/Type;

    .line 79
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 80
    .local v0, "typesToRegister":Ljava/util/Queue;, "Ljava/util/Queue<Ljava/lang/reflect/Type;>;"
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 81
    .local v1, "registeredTypes":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/reflect/Type;>;"
    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 83
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    .line 84
    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/reflect/Type;

    .line 85
    .local v2, "typeToRegister":Ljava/lang/reflect/Type;
    if-eqz v2, :cond_0

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 86
    goto :goto_0

    .line 89
    :cond_1
    invoke-virtual {p0, v2}, Lorg/mockito/internal/util/reflection/GenericMetadataSupport;->registerTypeVariablesOn(Ljava/lang/reflect/Type;)V

    .line 90
    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 92
    invoke-virtual {p0, v2}, Lorg/mockito/internal/util/reflection/GenericMetadataSupport;->extractRawTypeOf(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v3

    .line 93
    .local v3, "rawType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v3}, Ljava/lang/Class;->getGenericSuperclass()Ljava/lang/reflect/Type;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 94
    invoke-virtual {v3}, Ljava/lang/Class;->getGenericInterfaces()[Ljava/lang/reflect/Type;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Queue;->addAll(Ljava/util/Collection;)Z

    .line 95
    .end local v2    # "typeToRegister":Ljava/lang/reflect/Type;
    .end local v3    # "rawType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    goto :goto_0

    .line 96
    :cond_2
    return-void
.end method

.method protected registerTypeParametersOn([Ljava/lang/reflect/TypeVariable;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/reflect/TypeVariable<",
            "*>;)V"
        }
    .end annotation

    .line 163
    .local p1, "typeParameters":[Ljava/lang/reflect/TypeVariable;, "[Ljava/lang/reflect/TypeVariable<*>;"
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    .line 164
    .local v2, "type":Ljava/lang/reflect/TypeVariable;, "Ljava/lang/reflect/TypeVariable<*>;"
    invoke-direct {p0, v2}, Lorg/mockito/internal/util/reflection/GenericMetadataSupport;->registerTypeVariableIfNotPresent(Ljava/lang/reflect/TypeVariable;)V

    .line 163
    .end local v2    # "type":Ljava/lang/reflect/TypeVariable;, "Ljava/lang/reflect/TypeVariable<*>;"
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 166
    :cond_0
    return-void
.end method

.method protected registerTypeVariablesOn(Ljava/lang/reflect/Type;)V
    .locals 8
    .param p1, "classType"    # Ljava/lang/reflect/Type;

    .line 120
    instance-of v0, p1, Ljava/lang/reflect/ParameterizedType;

    if-nez v0, :cond_0

    .line 121
    return-void

    .line 123
    :cond_0
    move-object v0, p1

    check-cast v0, Ljava/lang/reflect/ParameterizedType;

    .line 124
    .local v0, "parameterizedType":Ljava/lang/reflect/ParameterizedType;
    nop

    .line 125
    invoke-interface {v0}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v1

    check-cast v1, Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->getTypeParameters()[Ljava/lang/reflect/TypeVariable;

    move-result-object v1

    .line 126
    .local v1, "typeParameters":[Ljava/lang/reflect/TypeVariable;, "[Ljava/lang/reflect/TypeVariable<*>;"
    invoke-interface {v0}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v2

    .line 127
    .local v2, "actualTypeArguments":[Ljava/lang/reflect/Type;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v4, v2

    if-ge v3, v4, :cond_4

    .line 128
    aget-object v4, v1, v3

    .line 129
    .local v4, "typeParameter":Ljava/lang/reflect/TypeVariable;, "Ljava/lang/reflect/TypeVariable<*>;"
    aget-object v5, v2, v3

    .line 131
    .local v5, "actualTypeArgument":Ljava/lang/reflect/Type;
    instance-of v6, v5, Ljava/lang/reflect/TypeVariable;

    if-eqz v6, :cond_1

    .line 139
    move-object v6, v5

    check-cast v6, Ljava/lang/reflect/TypeVariable;

    invoke-direct {p0, v6}, Lorg/mockito/internal/util/reflection/GenericMetadataSupport;->registerTypeVariableIfNotPresent(Ljava/lang/reflect/TypeVariable;)V

    .line 145
    iget-object v6, p0, Lorg/mockito/internal/util/reflection/GenericMetadataSupport;->contextualActualTypeParameters:Ljava/util/Map;

    invoke-interface {v6, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 146
    goto :goto_1

    .line 150
    :cond_1
    instance-of v6, v5, Ljava/lang/reflect/WildcardType;

    if-eqz v6, :cond_2

    .line 151
    iget-object v6, p0, Lorg/mockito/internal/util/reflection/GenericMetadataSupport;->contextualActualTypeParameters:Ljava/util/Map;

    move-object v7, v5

    check-cast v7, Ljava/lang/reflect/WildcardType;

    .line 152
    invoke-direct {p0, v7}, Lorg/mockito/internal/util/reflection/GenericMetadataSupport;->boundsOf(Ljava/lang/reflect/WildcardType;)Lorg/mockito/internal/util/reflection/GenericMetadataSupport$BoundedType;

    move-result-object v7

    .line 151
    invoke-interface {v6, v4, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 153
    :cond_2
    if-eq v4, v5, :cond_3

    .line 154
    iget-object v6, p0, Lorg/mockito/internal/util/reflection/GenericMetadataSupport;->contextualActualTypeParameters:Ljava/util/Map;

    invoke-interface {v6, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    .end local v4    # "typeParameter":Ljava/lang/reflect/TypeVariable;, "Ljava/lang/reflect/TypeVariable<*>;"
    .end local v5    # "actualTypeArgument":Ljava/lang/reflect/Type;
    :cond_3
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 160
    .end local v3    # "i":I
    :cond_4
    return-void
.end method

.method public resolveGenericReturnType(Ljava/lang/reflect/Method;)Lorg/mockito/internal/util/reflection/GenericMetadataSupport;
    .locals 4
    .param p1, "method"    # Ljava/lang/reflect/Method;

    .line 276
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getGenericReturnType()Ljava/lang/reflect/Type;

    move-result-object v0

    .line 281
    .local v0, "genericReturnType":Ljava/lang/reflect/Type;
    const/4 v1, 0x0

    .line 282
    .local v1, "arity":I
    :goto_0
    instance-of v2, v0, Ljava/lang/reflect/GenericArrayType;

    if-eqz v2, :cond_0

    .line 283
    add-int/lit8 v1, v1, 0x1

    .line 284
    move-object v2, v0

    check-cast v2, Ljava/lang/reflect/GenericArrayType;

    invoke-interface {v2}, Ljava/lang/reflect/GenericArrayType;->getGenericComponentType()Ljava/lang/reflect/Type;

    move-result-object v0

    goto :goto_0

    .line 287
    :cond_0
    nop

    .line 288
    invoke-direct {p0, v0, p1}, Lorg/mockito/internal/util/reflection/GenericMetadataSupport;->resolveGenericType(Ljava/lang/reflect/Type;Ljava/lang/reflect/Method;)Lorg/mockito/internal/util/reflection/GenericMetadataSupport;

    move-result-object v2

    .line 289
    .local v2, "genericMetadataSupport":Lorg/mockito/internal/util/reflection/GenericMetadataSupport;
    if-nez v1, :cond_1

    .line 290
    return-object v2

    .line 292
    :cond_1
    new-instance v3, Lorg/mockito/internal/util/reflection/GenericMetadataSupport$GenericArrayReturnType;

    invoke-direct {v3, v2, v1}, Lorg/mockito/internal/util/reflection/GenericMetadataSupport$GenericArrayReturnType;-><init>(Lorg/mockito/internal/util/reflection/GenericMetadataSupport;I)V

    return-object v3
.end method
