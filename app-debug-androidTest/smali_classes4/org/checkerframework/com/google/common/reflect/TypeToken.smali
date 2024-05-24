.class public abstract Lorg/checkerframework/com/google/common/reflect/TypeToken;
.super Lorg/checkerframework/com/google/common/reflect/TypeCapture;
.source "TypeToken.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/checkerframework/com/google/common/reflect/TypeToken$TypeCollector;,
        Lorg/checkerframework/com/google/common/reflect/TypeToken$SimpleTypeToken;,
        Lorg/checkerframework/com/google/common/reflect/TypeToken$Bounds;,
        Lorg/checkerframework/com/google/common/reflect/TypeToken$TypeFilter;,
        Lorg/checkerframework/com/google/common/reflect/TypeToken$ClassSet;,
        Lorg/checkerframework/com/google/common/reflect/TypeToken$InterfaceSet;,
        Lorg/checkerframework/com/google/common/reflect/TypeToken$TypeSet;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/checkerframework/com/google/common/reflect/TypeCapture<",
        "TT;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x327b23b1befe387cL


# instance fields
.field private transient covariantTypeResolver:Lorg/checkerframework/com/google/common/reflect/TypeResolver;

.field private transient invariantTypeResolver:Lorg/checkerframework/com/google/common/reflect/TypeResolver;

.field private final runtimeType:Ljava/lang/reflect/Type;


# direct methods
.method protected constructor <init>()V
    .locals 3

    .line 124
    .local p0, "this":Lorg/checkerframework/com/google/common/reflect/TypeToken;, "Lorg/checkerframework/com/google/common/reflect/TypeToken<TT;>;"
    invoke-direct {p0}, Lorg/checkerframework/com/google/common/reflect/TypeCapture;-><init>()V

    .line 125
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/reflect/TypeToken;->capture()Ljava/lang/reflect/Type;

    move-result-object v0

    iput-object v0, p0, Lorg/checkerframework/com/google/common/reflect/TypeToken;->runtimeType:Ljava/lang/reflect/Type;

    .line 126
    instance-of v1, v0, Ljava/lang/reflect/TypeVariable;

    xor-int/lit8 v1, v1, 0x1

    const-string v2, "Cannot construct a TypeToken for a type variable.\nYou probably meant to call new TypeToken<%s>(getClass()) that can resolve the type variable for you.\nIf you do need to create a TypeToken of a type variable, please use TypeToken.of() instead."

    invoke-static {v1, v2, v0}, Lorg/checkerframework/com/google/common/base/Preconditions;->checkState(ZLjava/lang/String;Ljava/lang/Object;)V

    .line 134
    return-void
.end method

.method protected constructor <init>(Ljava/lang/Class;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 155
    .local p0, "this":Lorg/checkerframework/com/google/common/reflect/TypeToken;, "Lorg/checkerframework/com/google/common/reflect/TypeToken<TT;>;"
    .local p1, "declaringClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-direct {p0}, Lorg/checkerframework/com/google/common/reflect/TypeCapture;-><init>()V

    .line 156
    invoke-super {p0}, Lorg/checkerframework/com/google/common/reflect/TypeCapture;->capture()Ljava/lang/reflect/Type;

    move-result-object v0

    .line 157
    .local v0, "captured":Ljava/lang/reflect/Type;
    instance-of v1, v0, Ljava/lang/Class;

    if-eqz v1, :cond_0

    .line 158
    iput-object v0, p0, Lorg/checkerframework/com/google/common/reflect/TypeToken;->runtimeType:Ljava/lang/reflect/Type;

    goto :goto_0

    .line 160
    :cond_0
    invoke-static {p1}, Lorg/checkerframework/com/google/common/reflect/TypeResolver;->covariantly(Ljava/lang/reflect/Type;)Lorg/checkerframework/com/google/common/reflect/TypeResolver;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/checkerframework/com/google/common/reflect/TypeResolver;->resolveType(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v1

    iput-object v1, p0, Lorg/checkerframework/com/google/common/reflect/TypeToken;->runtimeType:Ljava/lang/reflect/Type;

    .line 162
    :goto_0
    return-void
.end method

.method private constructor <init>(Ljava/lang/reflect/Type;)V
    .locals 1
    .param p1, "type"    # Ljava/lang/reflect/Type;

    .line 164
    .local p0, "this":Lorg/checkerframework/com/google/common/reflect/TypeToken;, "Lorg/checkerframework/com/google/common/reflect/TypeToken<TT;>;"
    invoke-direct {p0}, Lorg/checkerframework/com/google/common/reflect/TypeCapture;-><init>()V

    .line 165
    invoke-static {p1}, Lorg/checkerframework/com/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Type;

    iput-object v0, p0, Lorg/checkerframework/com/google/common/reflect/TypeToken;->runtimeType:Ljava/lang/reflect/Type;

    .line 166
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/reflect/Type;Lorg/checkerframework/com/google/common/reflect/TypeToken$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/reflect/Type;
    .param p2, "x1"    # Lorg/checkerframework/com/google/common/reflect/TypeToken$1;

    .line 102
    .local p0, "this":Lorg/checkerframework/com/google/common/reflect/TypeToken;, "Lorg/checkerframework/com/google/common/reflect/TypeToken<TT;>;"
    invoke-direct {p0, p1}, Lorg/checkerframework/com/google/common/reflect/TypeToken;-><init>(Ljava/lang/reflect/Type;)V

    return-void
.end method

.method static synthetic access$000(Lorg/checkerframework/com/google/common/reflect/TypeToken;)Lorg/checkerframework/com/google/common/reflect/TypeResolver;
    .locals 1
    .param p0, "x0"    # Lorg/checkerframework/com/google/common/reflect/TypeToken;

    .line 102
    invoke-direct {p0}, Lorg/checkerframework/com/google/common/reflect/TypeToken;->getCovariantTypeResolver()Lorg/checkerframework/com/google/common/reflect/TypeResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lorg/checkerframework/com/google/common/reflect/TypeToken;)Lorg/checkerframework/com/google/common/reflect/TypeResolver;
    .locals 1
    .param p0, "x0"    # Lorg/checkerframework/com/google/common/reflect/TypeToken;

    .line 102
    invoke-direct {p0}, Lorg/checkerframework/com/google/common/reflect/TypeToken;->getInvariantTypeResolver()Lorg/checkerframework/com/google/common/reflect/TypeResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lorg/checkerframework/com/google/common/reflect/TypeToken;)Lorg/checkerframework/com/google/common/collect/ImmutableSet;
    .locals 1
    .param p0, "x0"    # Lorg/checkerframework/com/google/common/reflect/TypeToken;

    .line 102
    invoke-direct {p0}, Lorg/checkerframework/com/google/common/reflect/TypeToken;->getRawTypes()Lorg/checkerframework/com/google/common/collect/ImmutableSet;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lorg/checkerframework/com/google/common/reflect/TypeToken;)Ljava/lang/reflect/Type;
    .locals 1
    .param p0, "x0"    # Lorg/checkerframework/com/google/common/reflect/TypeToken;

    .line 102
    iget-object v0, p0, Lorg/checkerframework/com/google/common/reflect/TypeToken;->runtimeType:Ljava/lang/reflect/Type;

    return-object v0
.end method

.method private static any([Ljava/lang/reflect/Type;)Lorg/checkerframework/com/google/common/reflect/TypeToken$Bounds;
    .locals 2
    .param p0, "bounds"    # [Ljava/lang/reflect/Type;

    .line 1054
    new-instance v0, Lorg/checkerframework/com/google/common/reflect/TypeToken$Bounds;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lorg/checkerframework/com/google/common/reflect/TypeToken$Bounds;-><init>([Ljava/lang/reflect/Type;Z)V

    return-object v0
.end method

.method private boundAsSuperclass(Ljava/lang/reflect/Type;)Lorg/checkerframework/com/google/common/reflect/TypeToken;
    .locals 2
    .param p1, "bound"    # Ljava/lang/reflect/Type;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            ")",
            "Lorg/checkerframework/com/google/common/reflect/TypeToken<",
            "-TT;>;"
        }
    .end annotation

    .line 311
    .local p0, "this":Lorg/checkerframework/com/google/common/reflect/TypeToken;, "Lorg/checkerframework/com/google/common/reflect/TypeToken<TT;>;"
    invoke-static {p1}, Lorg/checkerframework/com/google/common/reflect/TypeToken;->of(Ljava/lang/reflect/Type;)Lorg/checkerframework/com/google/common/reflect/TypeToken;

    move-result-object v0

    .line 312
    .local v0, "token":Lorg/checkerframework/com/google/common/reflect/TypeToken;, "Lorg/checkerframework/com/google/common/reflect/TypeToken<*>;"
    invoke-virtual {v0}, Lorg/checkerframework/com/google/common/reflect/TypeToken;->getRawType()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->isInterface()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 313
    const/4 v1, 0x0

    return-object v1

    .line 316
    :cond_0
    move-object v1, v0

    .line 317
    .local v1, "superclass":Lorg/checkerframework/com/google/common/reflect/TypeToken;, "Lorg/checkerframework/com/google/common/reflect/TypeToken<-TT;>;"
    return-object v1
.end method

.method private boundsAsInterfaces([Ljava/lang/reflect/Type;)Lorg/checkerframework/com/google/common/collect/ImmutableList;
    .locals 6
    .param p1, "bounds"    # [Ljava/lang/reflect/Type;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/reflect/Type;",
            ")",
            "Lorg/checkerframework/com/google/common/collect/ImmutableList<",
            "Lorg/checkerframework/com/google/common/reflect/TypeToken<",
            "-TT;>;>;"
        }
    .end annotation

    .line 350
    .local p0, "this":Lorg/checkerframework/com/google/common/reflect/TypeToken;, "Lorg/checkerframework/com/google/common/reflect/TypeToken<TT;>;"
    invoke-static {}, Lorg/checkerframework/com/google/common/collect/ImmutableList;->builder()Lorg/checkerframework/com/google/common/collect/ImmutableList$Builder;

    move-result-object v0

    .line 351
    .local v0, "builder":Lorg/checkerframework/com/google/common/collect/ImmutableList$Builder;, "Lorg/checkerframework/com/google/common/collect/ImmutableList$Builder<Lorg/checkerframework/com/google/common/reflect/TypeToken<-TT;>;>;"
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, p1, v2

    .line 353
    .local v3, "bound":Ljava/lang/reflect/Type;
    invoke-static {v3}, Lorg/checkerframework/com/google/common/reflect/TypeToken;->of(Ljava/lang/reflect/Type;)Lorg/checkerframework/com/google/common/reflect/TypeToken;

    move-result-object v4

    .line 354
    .local v4, "boundType":Lorg/checkerframework/com/google/common/reflect/TypeToken;, "Lorg/checkerframework/com/google/common/reflect/TypeToken<-TT;>;"
    invoke-virtual {v4}, Lorg/checkerframework/com/google/common/reflect/TypeToken;->getRawType()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->isInterface()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 355
    invoke-virtual {v0, v4}, Lorg/checkerframework/com/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lorg/checkerframework/com/google/common/collect/ImmutableList$Builder;

    .line 351
    .end local v3    # "bound":Ljava/lang/reflect/Type;
    .end local v4    # "boundType":Lorg/checkerframework/com/google/common/reflect/TypeToken;, "Lorg/checkerframework/com/google/common/reflect/TypeToken<-TT;>;"
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 358
    :cond_1
    invoke-virtual {v0}, Lorg/checkerframework/com/google/common/collect/ImmutableList$Builder;->build()Lorg/checkerframework/com/google/common/collect/ImmutableList;

    move-result-object v1

    return-object v1
.end method

.method private static canonicalizeTypeArg(Ljava/lang/reflect/TypeVariable;Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;
    .locals 1
    .param p1, "typeArg"    # Ljava/lang/reflect/Type;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/TypeVariable<",
            "*>;",
            "Ljava/lang/reflect/Type;",
            ")",
            "Ljava/lang/reflect/Type;"
        }
    .end annotation

    .line 1005
    .local p0, "declaration":Ljava/lang/reflect/TypeVariable;, "Ljava/lang/reflect/TypeVariable<*>;"
    instance-of v0, p1, Ljava/lang/reflect/WildcardType;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Ljava/lang/reflect/WildcardType;

    .line 1006
    invoke-static {p0, v0}, Lorg/checkerframework/com/google/common/reflect/TypeToken;->canonicalizeWildcardType(Ljava/lang/reflect/TypeVariable;Ljava/lang/reflect/WildcardType;)Ljava/lang/reflect/WildcardType;

    move-result-object v0

    goto :goto_0

    .line 1007
    :cond_0
    invoke-static {p1}, Lorg/checkerframework/com/google/common/reflect/TypeToken;->canonicalizeWildcardsInType(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v0

    .line 1005
    :goto_0
    return-object v0
.end method

.method private static canonicalizeWildcardType(Ljava/lang/reflect/TypeVariable;Ljava/lang/reflect/WildcardType;)Ljava/lang/reflect/WildcardType;
    .locals 8
    .param p1, "type"    # Ljava/lang/reflect/WildcardType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/TypeVariable<",
            "*>;",
            "Ljava/lang/reflect/WildcardType;",
            ")",
            "Ljava/lang/reflect/WildcardType;"
        }
    .end annotation

    .line 1026
    .local p0, "declaration":Ljava/lang/reflect/TypeVariable;, "Ljava/lang/reflect/TypeVariable<*>;"
    invoke-interface {p0}, Ljava/lang/reflect/TypeVariable;->getBounds()[Ljava/lang/reflect/Type;

    move-result-object v0

    .line 1027
    .local v0, "declared":[Ljava/lang/reflect/Type;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1028
    .local v1, "upperBounds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/reflect/Type;>;"
    invoke-interface {p1}, Ljava/lang/reflect/WildcardType;->getUpperBounds()[Ljava/lang/reflect/Type;

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-ge v5, v3, :cond_1

    aget-object v6, v2, v5

    .line 1029
    .local v6, "bound":Ljava/lang/reflect/Type;
    invoke-static {v0}, Lorg/checkerframework/com/google/common/reflect/TypeToken;->any([Ljava/lang/reflect/Type;)Lorg/checkerframework/com/google/common/reflect/TypeToken$Bounds;

    move-result-object v7

    invoke-virtual {v7, v6}, Lorg/checkerframework/com/google/common/reflect/TypeToken$Bounds;->isSubtypeOf(Ljava/lang/reflect/Type;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 1030
    invoke-static {v6}, Lorg/checkerframework/com/google/common/reflect/TypeToken;->canonicalizeWildcardsInType(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v7

    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1028
    .end local v6    # "bound":Ljava/lang/reflect/Type;
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 1033
    :cond_1
    new-instance v2, Lorg/checkerframework/com/google/common/reflect/Types$WildcardTypeImpl;

    invoke-interface {p1}, Ljava/lang/reflect/WildcardType;->getLowerBounds()[Ljava/lang/reflect/Type;

    move-result-object v3

    new-array v4, v4, [Ljava/lang/reflect/Type;

    invoke-interface {v1, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/reflect/Type;

    invoke-direct {v2, v3, v4}, Lorg/checkerframework/com/google/common/reflect/Types$WildcardTypeImpl;-><init>([Ljava/lang/reflect/Type;[Ljava/lang/reflect/Type;)V

    return-object v2
.end method

.method private static canonicalizeWildcardsInParameterizedType(Ljava/lang/reflect/ParameterizedType;)Ljava/lang/reflect/ParameterizedType;
    .locals 6
    .param p0, "type"    # Ljava/lang/reflect/ParameterizedType;

    .line 1038
    invoke-interface {p0}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    .line 1039
    .local v0, "rawType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v0}, Ljava/lang/Class;->getTypeParameters()[Ljava/lang/reflect/TypeVariable;

    move-result-object v1

    .line 1040
    .local v1, "typeVars":[Ljava/lang/reflect/TypeVariable;, "[Ljava/lang/reflect/TypeVariable<*>;"
    invoke-interface {p0}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v2

    .line 1041
    .local v2, "typeArgs":[Ljava/lang/reflect/Type;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v4, v2

    if-ge v3, v4, :cond_0

    .line 1042
    aget-object v4, v1, v3

    aget-object v5, v2, v3

    invoke-static {v4, v5}, Lorg/checkerframework/com/google/common/reflect/TypeToken;->canonicalizeTypeArg(Ljava/lang/reflect/TypeVariable;Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v4

    aput-object v4, v2, v3

    .line 1041
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1044
    .end local v3    # "i":I
    :cond_0
    invoke-interface {p0}, Ljava/lang/reflect/ParameterizedType;->getOwnerType()Ljava/lang/reflect/Type;

    move-result-object v3

    invoke-static {v3, v0, v2}, Lorg/checkerframework/com/google/common/reflect/Types;->newParameterizedTypeWithOwner(Ljava/lang/reflect/Type;Ljava/lang/Class;[Ljava/lang/reflect/Type;)Ljava/lang/reflect/ParameterizedType;

    move-result-object v3

    return-object v3
.end method

.method private static canonicalizeWildcardsInType(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;
    .locals 1
    .param p0, "type"    # Ljava/lang/reflect/Type;

    .line 1011
    instance-of v0, p0, Ljava/lang/reflect/ParameterizedType;

    if-eqz v0, :cond_0

    .line 1012
    move-object v0, p0

    check-cast v0, Ljava/lang/reflect/ParameterizedType;

    invoke-static {v0}, Lorg/checkerframework/com/google/common/reflect/TypeToken;->canonicalizeWildcardsInParameterizedType(Ljava/lang/reflect/ParameterizedType;)Ljava/lang/reflect/ParameterizedType;

    move-result-object v0

    return-object v0

    .line 1014
    :cond_0
    instance-of v0, p0, Ljava/lang/reflect/GenericArrayType;

    if-eqz v0, :cond_1

    .line 1015
    move-object v0, p0

    check-cast v0, Ljava/lang/reflect/GenericArrayType;

    .line 1016
    invoke-interface {v0}, Ljava/lang/reflect/GenericArrayType;->getGenericComponentType()Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-static {v0}, Lorg/checkerframework/com/google/common/reflect/TypeToken;->canonicalizeWildcardsInType(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v0

    .line 1015
    invoke-static {v0}, Lorg/checkerframework/com/google/common/reflect/Types;->newArrayType(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v0

    return-object v0

    .line 1018
    :cond_1
    return-object p0
.end method

.method private static every([Ljava/lang/reflect/Type;)Lorg/checkerframework/com/google/common/reflect/TypeToken$Bounds;
    .locals 2
    .param p0, "bounds"    # [Ljava/lang/reflect/Type;

    .line 1049
    new-instance v0, Lorg/checkerframework/com/google/common/reflect/TypeToken$Bounds;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/checkerframework/com/google/common/reflect/TypeToken$Bounds;-><init>([Ljava/lang/reflect/Type;Z)V

    return-object v0
.end method

.method private getArraySubtype(Ljava/lang/Class;)Lorg/checkerframework/com/google/common/reflect/TypeToken;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lorg/checkerframework/com/google/common/reflect/TypeToken<",
            "+TT;>;"
        }
    .end annotation

    .line 1238
    .local p0, "this":Lorg/checkerframework/com/google/common/reflect/TypeToken;, "Lorg/checkerframework/com/google/common/reflect/TypeToken<TT;>;"
    .local p1, "subclass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/reflect/TypeToken;->getComponentType()Lorg/checkerframework/com/google/common/reflect/TypeToken;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/checkerframework/com/google/common/reflect/TypeToken;->getSubtype(Ljava/lang/Class;)Lorg/checkerframework/com/google/common/reflect/TypeToken;

    move-result-object v0

    .line 1240
    .local v0, "componentSubtype":Lorg/checkerframework/com/google/common/reflect/TypeToken;, "Lorg/checkerframework/com/google/common/reflect/TypeToken<*>;"
    iget-object v1, v0, Lorg/checkerframework/com/google/common/reflect/TypeToken;->runtimeType:Ljava/lang/reflect/Type;

    .line 1243
    invoke-static {v1}, Lorg/checkerframework/com/google/common/reflect/TypeToken;->newArrayClassOrGenericArrayType(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v1

    invoke-static {v1}, Lorg/checkerframework/com/google/common/reflect/TypeToken;->of(Ljava/lang/reflect/Type;)Lorg/checkerframework/com/google/common/reflect/TypeToken;

    move-result-object v1

    .line 1244
    .local v1, "result":Lorg/checkerframework/com/google/common/reflect/TypeToken;, "Lorg/checkerframework/com/google/common/reflect/TypeToken<+TT;>;"
    return-object v1
.end method

.method private getArraySupertype(Ljava/lang/Class;)Lorg/checkerframework/com/google/common/reflect/TypeToken;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "-TT;>;)",
            "Lorg/checkerframework/com/google/common/reflect/TypeToken<",
            "-TT;>;"
        }
    .end annotation

    .line 1223
    .local p0, "this":Lorg/checkerframework/com/google/common/reflect/TypeToken;, "Lorg/checkerframework/com/google/common/reflect/TypeToken<TT;>;"
    .local p1, "supertype":Ljava/lang/Class;, "Ljava/lang/Class<-TT;>;"
    nop

    .line 1224
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/reflect/TypeToken;->getComponentType()Lorg/checkerframework/com/google/common/reflect/TypeToken;

    move-result-object v0

    const-string v1, "%s isn\'t a super type of %s"

    invoke-static {v0, v1, p1, p0}, Lorg/checkerframework/com/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/google/common/reflect/TypeToken;

    .line 1227
    .local v0, "componentType":Lorg/checkerframework/com/google/common/reflect/TypeToken;
    invoke-virtual {p1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/checkerframework/com/google/common/reflect/TypeToken;->getSupertype(Ljava/lang/Class;)Lorg/checkerframework/com/google/common/reflect/TypeToken;

    move-result-object v1

    .line 1229
    .local v1, "componentSupertype":Lorg/checkerframework/com/google/common/reflect/TypeToken;, "Lorg/checkerframework/com/google/common/reflect/TypeToken<*>;"
    iget-object v2, v1, Lorg/checkerframework/com/google/common/reflect/TypeToken;->runtimeType:Ljava/lang/reflect/Type;

    .line 1232
    invoke-static {v2}, Lorg/checkerframework/com/google/common/reflect/TypeToken;->newArrayClassOrGenericArrayType(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v2

    invoke-static {v2}, Lorg/checkerframework/com/google/common/reflect/TypeToken;->of(Ljava/lang/reflect/Type;)Lorg/checkerframework/com/google/common/reflect/TypeToken;

    move-result-object v2

    .line 1233
    .local v2, "result":Lorg/checkerframework/com/google/common/reflect/TypeToken;, "Lorg/checkerframework/com/google/common/reflect/TypeToken<-TT;>;"
    return-object v2
.end method

.method private getCovariantTypeResolver()Lorg/checkerframework/com/google/common/reflect/TypeResolver;
    .locals 2

    .line 1180
    .local p0, "this":Lorg/checkerframework/com/google/common/reflect/TypeToken;, "Lorg/checkerframework/com/google/common/reflect/TypeToken<TT;>;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/reflect/TypeToken;->covariantTypeResolver:Lorg/checkerframework/com/google/common/reflect/TypeResolver;

    .line 1181
    .local v0, "resolver":Lorg/checkerframework/com/google/common/reflect/TypeResolver;
    if-nez v0, :cond_0

    .line 1182
    iget-object v1, p0, Lorg/checkerframework/com/google/common/reflect/TypeToken;->runtimeType:Ljava/lang/reflect/Type;

    invoke-static {v1}, Lorg/checkerframework/com/google/common/reflect/TypeResolver;->covariantly(Ljava/lang/reflect/Type;)Lorg/checkerframework/com/google/common/reflect/TypeResolver;

    move-result-object v1

    iput-object v1, p0, Lorg/checkerframework/com/google/common/reflect/TypeToken;->covariantTypeResolver:Lorg/checkerframework/com/google/common/reflect/TypeResolver;

    move-object v0, v1

    .line 1184
    :cond_0
    return-object v0
.end method

.method private getInvariantTypeResolver()Lorg/checkerframework/com/google/common/reflect/TypeResolver;
    .locals 2

    .line 1188
    .local p0, "this":Lorg/checkerframework/com/google/common/reflect/TypeToken;, "Lorg/checkerframework/com/google/common/reflect/TypeToken<TT;>;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/reflect/TypeToken;->invariantTypeResolver:Lorg/checkerframework/com/google/common/reflect/TypeResolver;

    .line 1189
    .local v0, "resolver":Lorg/checkerframework/com/google/common/reflect/TypeResolver;
    if-nez v0, :cond_0

    .line 1190
    iget-object v1, p0, Lorg/checkerframework/com/google/common/reflect/TypeToken;->runtimeType:Ljava/lang/reflect/Type;

    invoke-static {v1}, Lorg/checkerframework/com/google/common/reflect/TypeResolver;->invariantly(Ljava/lang/reflect/Type;)Lorg/checkerframework/com/google/common/reflect/TypeResolver;

    move-result-object v1

    iput-object v1, p0, Lorg/checkerframework/com/google/common/reflect/TypeToken;->invariantTypeResolver:Lorg/checkerframework/com/google/common/reflect/TypeResolver;

    move-object v0, v1

    .line 1192
    :cond_0
    return-object v0
.end method

.method private getOwnerTypeIfPresent()Ljava/lang/reflect/Type;
    .locals 2

    .line 1135
    .local p0, "this":Lorg/checkerframework/com/google/common/reflect/TypeToken;, "Lorg/checkerframework/com/google/common/reflect/TypeToken<TT;>;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/reflect/TypeToken;->runtimeType:Ljava/lang/reflect/Type;

    instance-of v1, v0, Ljava/lang/reflect/ParameterizedType;

    if-eqz v1, :cond_0

    .line 1136
    check-cast v0, Ljava/lang/reflect/ParameterizedType;

    invoke-interface {v0}, Ljava/lang/reflect/ParameterizedType;->getOwnerType()Ljava/lang/reflect/Type;

    move-result-object v0

    return-object v0

    .line 1137
    :cond_0
    instance-of v1, v0, Ljava/lang/Class;

    if-eqz v1, :cond_1

    .line 1138
    check-cast v0, Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getEnclosingClass()Ljava/lang/Class;

    move-result-object v0

    return-object v0

    .line 1140
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method private getRawTypes()Lorg/checkerframework/com/google/common/collect/ImmutableSet;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/checkerframework/com/google/common/collect/ImmutableSet<",
            "Ljava/lang/Class<",
            "-TT;>;>;"
        }
    .end annotation

    .line 1087
    .local p0, "this":Lorg/checkerframework/com/google/common/reflect/TypeToken;, "Lorg/checkerframework/com/google/common/reflect/TypeToken<TT;>;"
    invoke-static {}, Lorg/checkerframework/com/google/common/collect/ImmutableSet;->builder()Lorg/checkerframework/com/google/common/collect/ImmutableSet$Builder;

    move-result-object v0

    .line 1088
    .local v0, "builder":Lorg/checkerframework/com/google/common/collect/ImmutableSet$Builder;, "Lorg/checkerframework/com/google/common/collect/ImmutableSet$Builder<Ljava/lang/Class<*>;>;"
    new-instance v1, Lorg/checkerframework/com/google/common/reflect/TypeToken$4;

    invoke-direct {v1, p0, v0}, Lorg/checkerframework/com/google/common/reflect/TypeToken$4;-><init>(Lorg/checkerframework/com/google/common/reflect/TypeToken;Lorg/checkerframework/com/google/common/collect/ImmutableSet$Builder;)V

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/reflect/Type;

    const/4 v3, 0x0

    iget-object v4, p0, Lorg/checkerframework/com/google/common/reflect/TypeToken;->runtimeType:Ljava/lang/reflect/Type;

    aput-object v4, v2, v3

    .line 1113
    invoke-virtual {v1, v2}, Lorg/checkerframework/com/google/common/reflect/TypeToken$4;->visit([Ljava/lang/reflect/Type;)V

    .line 1116
    invoke-virtual {v0}, Lorg/checkerframework/com/google/common/collect/ImmutableSet$Builder;->build()Lorg/checkerframework/com/google/common/collect/ImmutableSet;

    move-result-object v1

    .line 1117
    .local v1, "result":Lorg/checkerframework/com/google/common/collect/ImmutableSet;, "Lorg/checkerframework/com/google/common/collect/ImmutableSet<Ljava/lang/Class<-TT;>;>;"
    return-object v1
.end method

.method private getSubtypeFromLowerBounds(Ljava/lang/Class;[Ljava/lang/reflect/Type;)Lorg/checkerframework/com/google/common/reflect/TypeToken;
    .locals 3
    .param p2, "lowerBounds"    # [Ljava/lang/reflect/Type;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;[",
            "Ljava/lang/reflect/Type;",
            ")",
            "Lorg/checkerframework/com/google/common/reflect/TypeToken<",
            "+TT;>;"
        }
    .end annotation

    .line 1210
    .local p0, "this":Lorg/checkerframework/com/google/common/reflect/TypeToken;, "Lorg/checkerframework/com/google/common/reflect/TypeToken<TT;>;"
    .local p1, "subclass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    array-length v0, p2

    if-lez v0, :cond_0

    const/4 v0, 0x0

    aget-object v0, p2, v0

    .line 1212
    .local v0, "lowerBound":Ljava/lang/reflect/Type;
    invoke-static {v0}, Lorg/checkerframework/com/google/common/reflect/TypeToken;->of(Ljava/lang/reflect/Type;)Lorg/checkerframework/com/google/common/reflect/TypeToken;

    move-result-object v1

    .line 1214
    .local v1, "bound":Lorg/checkerframework/com/google/common/reflect/TypeToken;, "Lorg/checkerframework/com/google/common/reflect/TypeToken<+TT;>;"
    invoke-virtual {v1, p1}, Lorg/checkerframework/com/google/common/reflect/TypeToken;->getSubtype(Ljava/lang/Class;)Lorg/checkerframework/com/google/common/reflect/TypeToken;

    move-result-object v2

    return-object v2

    .line 1216
    .end local v0    # "lowerBound":Ljava/lang/reflect/Type;
    .end local v1    # "bound":Lorg/checkerframework/com/google/common/reflect/TypeToken;, "Lorg/checkerframework/com/google/common/reflect/TypeToken<+TT;>;"
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " isn\'t a subclass of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private getSupertypeFromUpperBounds(Ljava/lang/Class;[Ljava/lang/reflect/Type;)Lorg/checkerframework/com/google/common/reflect/TypeToken;
    .locals 5
    .param p2, "upperBounds"    # [Ljava/lang/reflect/Type;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "-TT;>;[",
            "Ljava/lang/reflect/Type;",
            ")",
            "Lorg/checkerframework/com/google/common/reflect/TypeToken<",
            "-TT;>;"
        }
    .end annotation

    .line 1197
    .local p0, "this":Lorg/checkerframework/com/google/common/reflect/TypeToken;, "Lorg/checkerframework/com/google/common/reflect/TypeToken<TT;>;"
    .local p1, "supertype":Ljava/lang/Class;, "Ljava/lang/Class<-TT;>;"
    array-length v0, p2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p2, v1

    .line 1199
    .local v2, "upperBound":Ljava/lang/reflect/Type;
    invoke-static {v2}, Lorg/checkerframework/com/google/common/reflect/TypeToken;->of(Ljava/lang/reflect/Type;)Lorg/checkerframework/com/google/common/reflect/TypeToken;

    move-result-object v3

    .line 1200
    .local v3, "bound":Lorg/checkerframework/com/google/common/reflect/TypeToken;, "Lorg/checkerframework/com/google/common/reflect/TypeToken<-TT;>;"
    invoke-virtual {v3, p1}, Lorg/checkerframework/com/google/common/reflect/TypeToken;->isSubtypeOf(Ljava/lang/reflect/Type;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1202
    invoke-virtual {v3, p1}, Lorg/checkerframework/com/google/common/reflect/TypeToken;->getSupertype(Ljava/lang/Class;)Lorg/checkerframework/com/google/common/reflect/TypeToken;

    move-result-object v0

    .line 1203
    .local v0, "result":Lorg/checkerframework/com/google/common/reflect/TypeToken;, "Lorg/checkerframework/com/google/common/reflect/TypeToken<-TT;>;"
    return-object v0

    .line 1197
    .end local v0    # "result":Lorg/checkerframework/com/google/common/reflect/TypeToken;, "Lorg/checkerframework/com/google/common/reflect/TypeToken<-TT;>;"
    .end local v2    # "upperBound":Ljava/lang/reflect/Type;
    .end local v3    # "bound":Lorg/checkerframework/com/google/common/reflect/TypeToken;, "Lorg/checkerframework/com/google/common/reflect/TypeToken<-TT;>;"
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1206
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " isn\'t a super type of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private is(Ljava/lang/reflect/Type;Ljava/lang/reflect/TypeVariable;)Z
    .locals 4
    .param p1, "formalType"    # Ljava/lang/reflect/Type;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/reflect/TypeVariable<",
            "*>;)Z"
        }
    .end annotation

    .line 970
    .local p0, "this":Lorg/checkerframework/com/google/common/reflect/TypeToken;, "Lorg/checkerframework/com/google/common/reflect/TypeToken<TT;>;"
    .local p2, "declaration":Ljava/lang/reflect/TypeVariable;, "Ljava/lang/reflect/TypeVariable<*>;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/reflect/TypeToken;->runtimeType:Ljava/lang/reflect/Type;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 971
    return v1

    .line 973
    :cond_0
    instance-of v0, p1, Ljava/lang/reflect/WildcardType;

    if-eqz v0, :cond_2

    .line 974
    move-object v0, p1

    check-cast v0, Ljava/lang/reflect/WildcardType;

    invoke-static {p2, v0}, Lorg/checkerframework/com/google/common/reflect/TypeToken;->canonicalizeWildcardType(Ljava/lang/reflect/TypeVariable;Ljava/lang/reflect/WildcardType;)Ljava/lang/reflect/WildcardType;

    move-result-object v0

    .line 980
    .local v0, "your":Ljava/lang/reflect/WildcardType;
    invoke-interface {v0}, Ljava/lang/reflect/WildcardType;->getUpperBounds()[Ljava/lang/reflect/Type;

    move-result-object v2

    invoke-static {v2}, Lorg/checkerframework/com/google/common/reflect/TypeToken;->every([Ljava/lang/reflect/Type;)Lorg/checkerframework/com/google/common/reflect/TypeToken$Bounds;

    move-result-object v2

    iget-object v3, p0, Lorg/checkerframework/com/google/common/reflect/TypeToken;->runtimeType:Ljava/lang/reflect/Type;

    invoke-virtual {v2, v3}, Lorg/checkerframework/com/google/common/reflect/TypeToken$Bounds;->isSupertypeOf(Ljava/lang/reflect/Type;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 981
    invoke-interface {v0}, Ljava/lang/reflect/WildcardType;->getLowerBounds()[Ljava/lang/reflect/Type;

    move-result-object v2

    invoke-static {v2}, Lorg/checkerframework/com/google/common/reflect/TypeToken;->every([Ljava/lang/reflect/Type;)Lorg/checkerframework/com/google/common/reflect/TypeToken$Bounds;

    move-result-object v2

    iget-object v3, p0, Lorg/checkerframework/com/google/common/reflect/TypeToken;->runtimeType:Ljava/lang/reflect/Type;

    invoke-virtual {v2, v3}, Lorg/checkerframework/com/google/common/reflect/TypeToken$Bounds;->isSubtypeOf(Ljava/lang/reflect/Type;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 980
    :goto_0
    return v1

    .line 983
    .end local v0    # "your":Ljava/lang/reflect/WildcardType;
    :cond_2
    iget-object v0, p0, Lorg/checkerframework/com/google/common/reflect/TypeToken;->runtimeType:Ljava/lang/reflect/Type;

    invoke-static {v0}, Lorg/checkerframework/com/google/common/reflect/TypeToken;->canonicalizeWildcardsInType(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-static {p1}, Lorg/checkerframework/com/google/common/reflect/TypeToken;->canonicalizeWildcardsInType(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private isOwnedBySubtypeOf(Ljava/lang/reflect/Type;)Z
    .locals 4
    .param p1, "supertype"    # Ljava/lang/reflect/Type;

    .line 1121
    .local p0, "this":Lorg/checkerframework/com/google/common/reflect/TypeToken;, "Lorg/checkerframework/com/google/common/reflect/TypeToken<TT;>;"
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/reflect/TypeToken;->getTypes()Lorg/checkerframework/com/google/common/reflect/TypeToken$TypeSet;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/com/google/common/reflect/TypeToken$TypeSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/checkerframework/com/google/common/reflect/TypeToken;

    .line 1122
    .local v1, "type":Lorg/checkerframework/com/google/common/reflect/TypeToken;, "Lorg/checkerframework/com/google/common/reflect/TypeToken<*>;"
    invoke-direct {v1}, Lorg/checkerframework/com/google/common/reflect/TypeToken;->getOwnerTypeIfPresent()Ljava/lang/reflect/Type;

    move-result-object v2

    .line 1123
    .local v2, "ownerType":Ljava/lang/reflect/Type;
    if-eqz v2, :cond_0

    invoke-static {v2}, Lorg/checkerframework/com/google/common/reflect/TypeToken;->of(Ljava/lang/reflect/Type;)Lorg/checkerframework/com/google/common/reflect/TypeToken;

    move-result-object v3

    invoke-virtual {v3, p1}, Lorg/checkerframework/com/google/common/reflect/TypeToken;->isSubtypeOf(Ljava/lang/reflect/Type;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1124
    const/4 v0, 0x1

    return v0

    .line 1126
    .end local v1    # "type":Lorg/checkerframework/com/google/common/reflect/TypeToken;, "Lorg/checkerframework/com/google/common/reflect/TypeToken<*>;"
    .end local v2    # "ownerType":Ljava/lang/reflect/Type;
    :cond_0
    goto :goto_0

    .line 1127
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private isSubtypeOfArrayType(Ljava/lang/reflect/GenericArrayType;)Z
    .locals 3
    .param p1, "supertype"    # Ljava/lang/reflect/GenericArrayType;

    .line 913
    .local p0, "this":Lorg/checkerframework/com/google/common/reflect/TypeToken;, "Lorg/checkerframework/com/google/common/reflect/TypeToken<TT;>;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/reflect/TypeToken;->runtimeType:Ljava/lang/reflect/Type;

    instance-of v1, v0, Ljava/lang/Class;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 914
    check-cast v0, Ljava/lang/Class;

    .line 915
    .local v0, "fromClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v1

    if-nez v1, :cond_0

    .line 916
    return v2

    .line 918
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1}, Lorg/checkerframework/com/google/common/reflect/TypeToken;->of(Ljava/lang/Class;)Lorg/checkerframework/com/google/common/reflect/TypeToken;

    move-result-object v1

    invoke-interface {p1}, Ljava/lang/reflect/GenericArrayType;->getGenericComponentType()Ljava/lang/reflect/Type;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/checkerframework/com/google/common/reflect/TypeToken;->isSubtypeOf(Ljava/lang/reflect/Type;)Z

    move-result v1

    return v1

    .line 919
    .end local v0    # "fromClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_1
    instance-of v1, v0, Ljava/lang/reflect/GenericArrayType;

    if-eqz v1, :cond_2

    .line 920
    check-cast v0, Ljava/lang/reflect/GenericArrayType;

    .line 921
    .local v0, "fromArrayType":Ljava/lang/reflect/GenericArrayType;
    invoke-interface {v0}, Ljava/lang/reflect/GenericArrayType;->getGenericComponentType()Ljava/lang/reflect/Type;

    move-result-object v1

    invoke-static {v1}, Lorg/checkerframework/com/google/common/reflect/TypeToken;->of(Ljava/lang/reflect/Type;)Lorg/checkerframework/com/google/common/reflect/TypeToken;

    move-result-object v1

    .line 922
    invoke-interface {p1}, Ljava/lang/reflect/GenericArrayType;->getGenericComponentType()Ljava/lang/reflect/Type;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/checkerframework/com/google/common/reflect/TypeToken;->isSubtypeOf(Ljava/lang/reflect/Type;)Z

    move-result v1

    .line 921
    return v1

    .line 924
    .end local v0    # "fromArrayType":Ljava/lang/reflect/GenericArrayType;
    :cond_2
    return v2
.end method

.method private isSubtypeOfParameterizedType(Ljava/lang/reflect/ParameterizedType;)Z
    .locals 9
    .param p1, "supertype"    # Ljava/lang/reflect/ParameterizedType;

    .line 888
    .local p0, "this":Lorg/checkerframework/com/google/common/reflect/TypeToken;, "Lorg/checkerframework/com/google/common/reflect/TypeToken<TT;>;"
    invoke-static {p1}, Lorg/checkerframework/com/google/common/reflect/TypeToken;->of(Ljava/lang/reflect/Type;)Lorg/checkerframework/com/google/common/reflect/TypeToken;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/com/google/common/reflect/TypeToken;->getRawType()Ljava/lang/Class;

    move-result-object v0

    .line 889
    .local v0, "matchedClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-direct {p0, v0}, Lorg/checkerframework/com/google/common/reflect/TypeToken;->someRawTypeIsSubclassOf(Ljava/lang/Class;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 890
    return v2

    .line 892
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Class;->getTypeParameters()[Ljava/lang/reflect/TypeVariable;

    move-result-object v1

    .line 893
    .local v1, "typeVars":[Ljava/lang/reflect/TypeVariable;, "[Ljava/lang/reflect/TypeVariable<*>;"
    invoke-interface {p1}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v3

    .line 894
    .local v3, "supertypeArgs":[Ljava/lang/reflect/Type;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    array-length v5, v1

    if-ge v4, v5, :cond_2

    .line 895
    invoke-direct {p0}, Lorg/checkerframework/com/google/common/reflect/TypeToken;->getCovariantTypeResolver()Lorg/checkerframework/com/google/common/reflect/TypeResolver;

    move-result-object v5

    aget-object v6, v1, v4

    invoke-virtual {v5, v6}, Lorg/checkerframework/com/google/common/reflect/TypeResolver;->resolveType(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v5

    .line 900
    .local v5, "subtypeParam":Ljava/lang/reflect/Type;
    invoke-static {v5}, Lorg/checkerframework/com/google/common/reflect/TypeToken;->of(Ljava/lang/reflect/Type;)Lorg/checkerframework/com/google/common/reflect/TypeToken;

    move-result-object v6

    aget-object v7, v3, v4

    aget-object v8, v1, v4

    invoke-direct {v6, v7, v8}, Lorg/checkerframework/com/google/common/reflect/TypeToken;->is(Ljava/lang/reflect/Type;Ljava/lang/reflect/TypeVariable;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 901
    return v2

    .line 894
    .end local v5    # "subtypeParam":Ljava/lang/reflect/Type;
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 907
    .end local v4    # "i":I
    :cond_2
    invoke-interface {p1}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v4

    check-cast v4, Ljava/lang/Class;

    invoke-virtual {v4}, Ljava/lang/Class;->getModifiers()I

    move-result v4

    invoke-static {v4}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v4

    if-nez v4, :cond_3

    .line 908
    invoke-interface {p1}, Ljava/lang/reflect/ParameterizedType;->getOwnerType()Ljava/lang/reflect/Type;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 909
    invoke-interface {p1}, Ljava/lang/reflect/ParameterizedType;->getOwnerType()Ljava/lang/reflect/Type;

    move-result-object v4

    invoke-direct {p0, v4}, Lorg/checkerframework/com/google/common/reflect/TypeToken;->isOwnedBySubtypeOf(Ljava/lang/reflect/Type;)Z

    move-result v4

    if-eqz v4, :cond_4

    :cond_3
    const/4 v2, 0x1

    .line 907
    :cond_4
    return v2
.end method

.method private isSupertypeOfArray(Ljava/lang/reflect/GenericArrayType;)Z
    .locals 3
    .param p1, "subtype"    # Ljava/lang/reflect/GenericArrayType;

    .line 929
    .local p0, "this":Lorg/checkerframework/com/google/common/reflect/TypeToken;, "Lorg/checkerframework/com/google/common/reflect/TypeToken<TT;>;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/reflect/TypeToken;->runtimeType:Ljava/lang/reflect/Type;

    instance-of v1, v0, Ljava/lang/Class;

    if-eqz v1, :cond_1

    .line 930
    check-cast v0, Ljava/lang/Class;

    .line 931
    .local v0, "thisClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v1

    if-nez v1, :cond_0

    .line 932
    const-class v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    return v1

    .line 934
    :cond_0
    invoke-interface {p1}, Ljava/lang/reflect/GenericArrayType;->getGenericComponentType()Ljava/lang/reflect/Type;

    move-result-object v1

    invoke-static {v1}, Lorg/checkerframework/com/google/common/reflect/TypeToken;->of(Ljava/lang/reflect/Type;)Lorg/checkerframework/com/google/common/reflect/TypeToken;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/checkerframework/com/google/common/reflect/TypeToken;->isSubtypeOf(Ljava/lang/reflect/Type;)Z

    move-result v1

    return v1

    .line 935
    .end local v0    # "thisClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_1
    instance-of v0, v0, Ljava/lang/reflect/GenericArrayType;

    if-eqz v0, :cond_2

    .line 936
    invoke-interface {p1}, Ljava/lang/reflect/GenericArrayType;->getGenericComponentType()Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-static {v0}, Lorg/checkerframework/com/google/common/reflect/TypeToken;->of(Ljava/lang/reflect/Type;)Lorg/checkerframework/com/google/common/reflect/TypeToken;

    move-result-object v0

    iget-object v1, p0, Lorg/checkerframework/com/google/common/reflect/TypeToken;->runtimeType:Ljava/lang/reflect/Type;

    check-cast v1, Ljava/lang/reflect/GenericArrayType;

    .line 937
    invoke-interface {v1}, Ljava/lang/reflect/GenericArrayType;->getGenericComponentType()Ljava/lang/reflect/Type;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/checkerframework/com/google/common/reflect/TypeToken;->isSubtypeOf(Ljava/lang/reflect/Type;)Z

    move-result v0

    .line 936
    return v0

    .line 939
    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method private isWrapper()Z
    .locals 2

    .line 540
    .local p0, "this":Lorg/checkerframework/com/google/common/reflect/TypeToken;, "Lorg/checkerframework/com/google/common/reflect/TypeToken<TT;>;"
    invoke-static {}, Lorg/checkerframework/com/google/common/primitives/Primitives;->allWrapperTypes()Ljava/util/Set;

    move-result-object v0

    iget-object v1, p0, Lorg/checkerframework/com/google/common/reflect/TypeToken;->runtimeType:Ljava/lang/reflect/Type;

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private static newArrayClassOrGenericArrayType(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;
    .locals 1
    .param p0, "componentType"    # Ljava/lang/reflect/Type;

    .line 1279
    sget-object v0, Lorg/checkerframework/com/google/common/reflect/Types$JavaVersion;->JAVA7:Lorg/checkerframework/com/google/common/reflect/Types$JavaVersion;

    invoke-virtual {v0, p0}, Lorg/checkerframework/com/google/common/reflect/Types$JavaVersion;->newArrayType(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v0

    return-object v0
.end method

.method public static of(Ljava/lang/Class;)Lorg/checkerframework/com/google/common/reflect/TypeToken;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Lorg/checkerframework/com/google/common/reflect/TypeToken<",
            "TT;>;"
        }
    .end annotation

    .line 170
    .local p0, "type":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    new-instance v0, Lorg/checkerframework/com/google/common/reflect/TypeToken$SimpleTypeToken;

    invoke-direct {v0, p0}, Lorg/checkerframework/com/google/common/reflect/TypeToken$SimpleTypeToken;-><init>(Ljava/lang/reflect/Type;)V

    return-object v0
.end method

.method public static of(Ljava/lang/reflect/Type;)Lorg/checkerframework/com/google/common/reflect/TypeToken;
    .locals 1
    .param p0, "type"    # Ljava/lang/reflect/Type;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            ")",
            "Lorg/checkerframework/com/google/common/reflect/TypeToken<",
            "*>;"
        }
    .end annotation

    .line 175
    new-instance v0, Lorg/checkerframework/com/google/common/reflect/TypeToken$SimpleTypeToken;

    invoke-direct {v0, p0}, Lorg/checkerframework/com/google/common/reflect/TypeToken$SimpleTypeToken;-><init>(Ljava/lang/reflect/Type;)V

    return-object v0
.end method

.method private resolveSupertype(Ljava/lang/reflect/Type;)Lorg/checkerframework/com/google/common/reflect/TypeToken;
    .locals 2
    .param p1, "type"    # Ljava/lang/reflect/Type;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            ")",
            "Lorg/checkerframework/com/google/common/reflect/TypeToken<",
            "*>;"
        }
    .end annotation

    .line 273
    .local p0, "this":Lorg/checkerframework/com/google/common/reflect/TypeToken;, "Lorg/checkerframework/com/google/common/reflect/TypeToken<TT;>;"
    invoke-direct {p0}, Lorg/checkerframework/com/google/common/reflect/TypeToken;->getCovariantTypeResolver()Lorg/checkerframework/com/google/common/reflect/TypeResolver;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/checkerframework/com/google/common/reflect/TypeResolver;->resolveType(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-static {v0}, Lorg/checkerframework/com/google/common/reflect/TypeToken;->of(Ljava/lang/reflect/Type;)Lorg/checkerframework/com/google/common/reflect/TypeToken;

    move-result-object v0

    .line 275
    .local v0, "supertype":Lorg/checkerframework/com/google/common/reflect/TypeToken;, "Lorg/checkerframework/com/google/common/reflect/TypeToken<*>;"
    iget-object v1, p0, Lorg/checkerframework/com/google/common/reflect/TypeToken;->covariantTypeResolver:Lorg/checkerframework/com/google/common/reflect/TypeResolver;

    iput-object v1, v0, Lorg/checkerframework/com/google/common/reflect/TypeToken;->covariantTypeResolver:Lorg/checkerframework/com/google/common/reflect/TypeResolver;

    .line 276
    iget-object v1, p0, Lorg/checkerframework/com/google/common/reflect/TypeToken;->invariantTypeResolver:Lorg/checkerframework/com/google/common/reflect/TypeResolver;

    iput-object v1, v0, Lorg/checkerframework/com/google/common/reflect/TypeToken;->invariantTypeResolver:Lorg/checkerframework/com/google/common/reflect/TypeResolver;

    .line 277
    return-object v0
.end method

.method private resolveTypeArgsForSubclass(Ljava/lang/Class;)Ljava/lang/reflect/Type;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/reflect/Type;"
        }
    .end annotation

    .line 1252
    .local p0, "this":Lorg/checkerframework/com/google/common/reflect/TypeToken;, "Lorg/checkerframework/com/google/common/reflect/TypeToken<TT;>;"
    .local p1, "subclass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/reflect/TypeToken;->runtimeType:Ljava/lang/reflect/Type;

    instance-of v0, v0, Ljava/lang/Class;

    if-eqz v0, :cond_1

    .line 1253
    invoke-virtual {p1}, Ljava/lang/Class;->getTypeParameters()[Ljava/lang/reflect/TypeVariable;

    move-result-object v0

    array-length v0, v0

    if-eqz v0, :cond_0

    .line 1254
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/reflect/TypeToken;->getRawType()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getTypeParameters()[Ljava/lang/reflect/TypeVariable;

    move-result-object v0

    array-length v0, v0

    if-eqz v0, :cond_1

    .line 1256
    :cond_0
    return-object p1

    .line 1265
    :cond_1
    invoke-static {p1}, Lorg/checkerframework/com/google/common/reflect/TypeToken;->toGenericType(Ljava/lang/Class;)Lorg/checkerframework/com/google/common/reflect/TypeToken;

    move-result-object v0

    .line 1267
    .local v0, "genericSubtype":Lorg/checkerframework/com/google/common/reflect/TypeToken;, "Lorg/checkerframework/com/google/common/reflect/TypeToken<*>;"
    nop

    .line 1268
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/reflect/TypeToken;->getRawType()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/checkerframework/com/google/common/reflect/TypeToken;->getSupertype(Ljava/lang/Class;)Lorg/checkerframework/com/google/common/reflect/TypeToken;

    move-result-object v1

    iget-object v1, v1, Lorg/checkerframework/com/google/common/reflect/TypeToken;->runtimeType:Ljava/lang/reflect/Type;

    .line 1269
    .local v1, "supertypeWithArgsFromSubtype":Ljava/lang/reflect/Type;
    new-instance v2, Lorg/checkerframework/com/google/common/reflect/TypeResolver;

    invoke-direct {v2}, Lorg/checkerframework/com/google/common/reflect/TypeResolver;-><init>()V

    iget-object v3, p0, Lorg/checkerframework/com/google/common/reflect/TypeToken;->runtimeType:Ljava/lang/reflect/Type;

    .line 1270
    invoke-virtual {v2, v1, v3}, Lorg/checkerframework/com/google/common/reflect/TypeResolver;->where(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)Lorg/checkerframework/com/google/common/reflect/TypeResolver;

    move-result-object v2

    iget-object v3, v0, Lorg/checkerframework/com/google/common/reflect/TypeToken;->runtimeType:Ljava/lang/reflect/Type;

    .line 1271
    invoke-virtual {v2, v3}, Lorg/checkerframework/com/google/common/reflect/TypeResolver;->resolveType(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v2

    .line 1269
    return-object v2
.end method

.method private someRawTypeIsSubclassOf(Ljava/lang/Class;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    .line 879
    .local p0, "this":Lorg/checkerframework/com/google/common/reflect/TypeToken;, "Lorg/checkerframework/com/google/common/reflect/TypeToken<TT;>;"
    .local p1, "superclass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-direct {p0}, Lorg/checkerframework/com/google/common/reflect/TypeToken;->getRawTypes()Lorg/checkerframework/com/google/common/collect/ImmutableSet;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/com/google/common/collect/ImmutableSet;->iterator()Lorg/checkerframework/com/google/common/collect/UnmodifiableIterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Class;

    .line 880
    .local v1, "rawType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p1, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 881
    const/4 v0, 0x1

    return v0

    .line 883
    .end local v1    # "rawType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_0
    goto :goto_0

    .line 884
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method static toGenericType(Ljava/lang/Class;)Lorg/checkerframework/com/google/common/reflect/TypeToken;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Lorg/checkerframework/com/google/common/reflect/TypeToken<",
            "+TT;>;"
        }
    .end annotation

    .line 1153
    .local p0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-virtual {p0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1154
    nop

    .line 1157
    invoke-virtual {p0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lorg/checkerframework/com/google/common/reflect/TypeToken;->toGenericType(Ljava/lang/Class;)Lorg/checkerframework/com/google/common/reflect/TypeToken;

    move-result-object v0

    iget-object v0, v0, Lorg/checkerframework/com/google/common/reflect/TypeToken;->runtimeType:Ljava/lang/reflect/Type;

    .line 1155
    invoke-static {v0}, Lorg/checkerframework/com/google/common/reflect/Types;->newArrayType(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v0

    .line 1159
    .local v0, "arrayOfGenericType":Ljava/lang/reflect/Type;
    invoke-static {v0}, Lorg/checkerframework/com/google/common/reflect/TypeToken;->of(Ljava/lang/reflect/Type;)Lorg/checkerframework/com/google/common/reflect/TypeToken;

    move-result-object v1

    .line 1160
    .local v1, "result":Lorg/checkerframework/com/google/common/reflect/TypeToken;, "Lorg/checkerframework/com/google/common/reflect/TypeToken<+TT;>;"
    return-object v1

    .line 1162
    .end local v0    # "arrayOfGenericType":Ljava/lang/reflect/Type;
    .end local v1    # "result":Lorg/checkerframework/com/google/common/reflect/TypeToken;, "Lorg/checkerframework/com/google/common/reflect/TypeToken<+TT;>;"
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Class;->getTypeParameters()[Ljava/lang/reflect/TypeVariable;

    move-result-object v0

    .line 1163
    .local v0, "typeParams":[Ljava/lang/reflect/TypeVariable;, "[Ljava/lang/reflect/TypeVariable<Ljava/lang/Class<TT;>;>;"
    nop

    .line 1164
    invoke-virtual {p0}, Ljava/lang/Class;->isMemberClass()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Ljava/lang/Class;->getModifiers()I

    move-result v1

    invoke-static {v1}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1165
    invoke-virtual {p0}, Ljava/lang/Class;->getEnclosingClass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1}, Lorg/checkerframework/com/google/common/reflect/TypeToken;->toGenericType(Ljava/lang/Class;)Lorg/checkerframework/com/google/common/reflect/TypeToken;

    move-result-object v1

    iget-object v1, v1, Lorg/checkerframework/com/google/common/reflect/TypeToken;->runtimeType:Ljava/lang/reflect/Type;

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 1168
    .local v1, "ownerType":Ljava/lang/reflect/Type;
    :goto_0
    array-length v2, v0

    if-gtz v2, :cond_3

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Class;->getEnclosingClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_2

    goto :goto_1

    .line 1175
    :cond_2
    invoke-static {p0}, Lorg/checkerframework/com/google/common/reflect/TypeToken;->of(Ljava/lang/Class;)Lorg/checkerframework/com/google/common/reflect/TypeToken;

    move-result-object v2

    return-object v2

    .line 1170
    :cond_3
    :goto_1
    nop

    .line 1172
    invoke-static {v1, p0, v0}, Lorg/checkerframework/com/google/common/reflect/Types;->newParameterizedTypeWithOwner(Ljava/lang/reflect/Type;Ljava/lang/Class;[Ljava/lang/reflect/Type;)Ljava/lang/reflect/ParameterizedType;

    move-result-object v2

    invoke-static {v2}, Lorg/checkerframework/com/google/common/reflect/TypeToken;->of(Ljava/lang/reflect/Type;)Lorg/checkerframework/com/google/common/reflect/TypeToken;

    move-result-object v2

    .line 1173
    .local v2, "type":Lorg/checkerframework/com/google/common/reflect/TypeToken;, "Lorg/checkerframework/com/google/common/reflect/TypeToken<+TT;>;"
    return-object v2
.end method


# virtual methods
.method public final constructor(Ljava/lang/reflect/Constructor;)Lorg/checkerframework/com/google/common/reflect/Invokable;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Constructor<",
            "*>;)",
            "Lorg/checkerframework/com/google/common/reflect/Invokable<",
            "TT;TT;>;"
        }
    .end annotation

    .line 615
    .local p0, "this":Lorg/checkerframework/com/google/common/reflect/TypeToken;, "Lorg/checkerframework/com/google/common/reflect/TypeToken<TT;>;"
    .local p1, "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    nop

    .line 616
    invoke-virtual {p1}, Ljava/lang/reflect/Constructor;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/reflect/TypeToken;->getRawType()Ljava/lang/Class;

    move-result-object v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 619
    :goto_0
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/reflect/TypeToken;->getRawType()Ljava/lang/Class;

    move-result-object v1

    .line 615
    const-string v2, "%s not declared by %s"

    invoke-static {v0, v2, p1, v1}, Lorg/checkerframework/com/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 620
    new-instance v0, Lorg/checkerframework/com/google/common/reflect/TypeToken$2;

    invoke-direct {v0, p0, p1}, Lorg/checkerframework/com/google/common/reflect/TypeToken$2;-><init>(Lorg/checkerframework/com/google/common/reflect/TypeToken;Ljava/lang/reflect/Constructor;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;

    .line 821
    .local p0, "this":Lorg/checkerframework/com/google/common/reflect/TypeToken;, "Lorg/checkerframework/com/google/common/reflect/TypeToken<TT;>;"
    instance-of v0, p1, Lorg/checkerframework/com/google/common/reflect/TypeToken;

    if-eqz v0, :cond_0

    .line 822
    move-object v0, p1

    check-cast v0, Lorg/checkerframework/com/google/common/reflect/TypeToken;

    .line 823
    .local v0, "that":Lorg/checkerframework/com/google/common/reflect/TypeToken;, "Lorg/checkerframework/com/google/common/reflect/TypeToken<*>;"
    iget-object v1, p0, Lorg/checkerframework/com/google/common/reflect/TypeToken;->runtimeType:Ljava/lang/reflect/Type;

    iget-object v2, v0, Lorg/checkerframework/com/google/common/reflect/TypeToken;->runtimeType:Ljava/lang/reflect/Type;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1

    .line 825
    .end local v0    # "that":Lorg/checkerframework/com/google/common/reflect/TypeToken;, "Lorg/checkerframework/com/google/common/reflect/TypeToken<*>;"
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final getComponentType()Lorg/checkerframework/com/google/common/reflect/TypeToken;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/checkerframework/com/google/common/reflect/TypeToken<",
            "*>;"
        }
    .end annotation

    .line 563
    .local p0, "this":Lorg/checkerframework/com/google/common/reflect/TypeToken;, "Lorg/checkerframework/com/google/common/reflect/TypeToken<TT;>;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/reflect/TypeToken;->runtimeType:Ljava/lang/reflect/Type;

    invoke-static {v0}, Lorg/checkerframework/com/google/common/reflect/Types;->getComponentType(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v0

    .line 564
    .local v0, "componentType":Ljava/lang/reflect/Type;
    if-nez v0, :cond_0

    .line 565
    const/4 v1, 0x0

    return-object v1

    .line 567
    :cond_0
    invoke-static {v0}, Lorg/checkerframework/com/google/common/reflect/TypeToken;->of(Ljava/lang/reflect/Type;)Lorg/checkerframework/com/google/common/reflect/TypeToken;

    move-result-object v1

    return-object v1
.end method

.method final getGenericInterfaces()Lorg/checkerframework/com/google/common/collect/ImmutableList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/checkerframework/com/google/common/collect/ImmutableList<",
            "Lorg/checkerframework/com/google/common/reflect/TypeToken<",
            "-TT;>;>;"
        }
    .end annotation

    .line 333
    .local p0, "this":Lorg/checkerframework/com/google/common/reflect/TypeToken;, "Lorg/checkerframework/com/google/common/reflect/TypeToken<TT;>;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/reflect/TypeToken;->runtimeType:Ljava/lang/reflect/Type;

    instance-of v1, v0, Ljava/lang/reflect/TypeVariable;

    if-eqz v1, :cond_0

    .line 334
    check-cast v0, Ljava/lang/reflect/TypeVariable;

    invoke-interface {v0}, Ljava/lang/reflect/TypeVariable;->getBounds()[Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/checkerframework/com/google/common/reflect/TypeToken;->boundsAsInterfaces([Ljava/lang/reflect/Type;)Lorg/checkerframework/com/google/common/collect/ImmutableList;

    move-result-object v0

    return-object v0

    .line 336
    :cond_0
    instance-of v1, v0, Ljava/lang/reflect/WildcardType;

    if-eqz v1, :cond_1

    .line 337
    check-cast v0, Ljava/lang/reflect/WildcardType;

    invoke-interface {v0}, Ljava/lang/reflect/WildcardType;->getUpperBounds()[Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/checkerframework/com/google/common/reflect/TypeToken;->boundsAsInterfaces([Ljava/lang/reflect/Type;)Lorg/checkerframework/com/google/common/collect/ImmutableList;

    move-result-object v0

    return-object v0

    .line 339
    :cond_1
    invoke-static {}, Lorg/checkerframework/com/google/common/collect/ImmutableList;->builder()Lorg/checkerframework/com/google/common/collect/ImmutableList$Builder;

    move-result-object v0

    .line 340
    .local v0, "builder":Lorg/checkerframework/com/google/common/collect/ImmutableList$Builder;, "Lorg/checkerframework/com/google/common/collect/ImmutableList$Builder<Lorg/checkerframework/com/google/common/reflect/TypeToken<-TT;>;>;"
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/reflect/TypeToken;->getRawType()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getGenericInterfaces()[Ljava/lang/reflect/Type;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, v1, v3

    .line 342
    .local v4, "interfaceType":Ljava/lang/reflect/Type;
    nop

    .line 343
    invoke-direct {p0, v4}, Lorg/checkerframework/com/google/common/reflect/TypeToken;->resolveSupertype(Ljava/lang/reflect/Type;)Lorg/checkerframework/com/google/common/reflect/TypeToken;

    move-result-object v5

    .line 344
    .local v5, "resolvedInterface":Lorg/checkerframework/com/google/common/reflect/TypeToken;, "Lorg/checkerframework/com/google/common/reflect/TypeToken<-TT;>;"
    invoke-virtual {v0, v5}, Lorg/checkerframework/com/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lorg/checkerframework/com/google/common/collect/ImmutableList$Builder;

    .line 340
    .end local v4    # "interfaceType":Ljava/lang/reflect/Type;
    .end local v5    # "resolvedInterface":Lorg/checkerframework/com/google/common/reflect/TypeToken;, "Lorg/checkerframework/com/google/common/reflect/TypeToken<-TT;>;"
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 346
    :cond_2
    invoke-virtual {v0}, Lorg/checkerframework/com/google/common/collect/ImmutableList$Builder;->build()Lorg/checkerframework/com/google/common/collect/ImmutableList;

    move-result-object v1

    return-object v1
.end method

.method final getGenericSuperclass()Lorg/checkerframework/com/google/common/reflect/TypeToken;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/checkerframework/com/google/common/reflect/TypeToken<",
            "-TT;>;"
        }
    .end annotation

    .line 293
    .local p0, "this":Lorg/checkerframework/com/google/common/reflect/TypeToken;, "Lorg/checkerframework/com/google/common/reflect/TypeToken<TT;>;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/reflect/TypeToken;->runtimeType:Ljava/lang/reflect/Type;

    instance-of v1, v0, Ljava/lang/reflect/TypeVariable;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 295
    check-cast v0, Ljava/lang/reflect/TypeVariable;

    invoke-interface {v0}, Ljava/lang/reflect/TypeVariable;->getBounds()[Ljava/lang/reflect/Type;

    move-result-object v0

    aget-object v0, v0, v2

    invoke-direct {p0, v0}, Lorg/checkerframework/com/google/common/reflect/TypeToken;->boundAsSuperclass(Ljava/lang/reflect/Type;)Lorg/checkerframework/com/google/common/reflect/TypeToken;

    move-result-object v0

    return-object v0

    .line 297
    :cond_0
    instance-of v1, v0, Ljava/lang/reflect/WildcardType;

    if-eqz v1, :cond_1

    .line 299
    check-cast v0, Ljava/lang/reflect/WildcardType;

    invoke-interface {v0}, Ljava/lang/reflect/WildcardType;->getUpperBounds()[Ljava/lang/reflect/Type;

    move-result-object v0

    aget-object v0, v0, v2

    invoke-direct {p0, v0}, Lorg/checkerframework/com/google/common/reflect/TypeToken;->boundAsSuperclass(Ljava/lang/reflect/Type;)Lorg/checkerframework/com/google/common/reflect/TypeToken;

    move-result-object v0

    return-object v0

    .line 301
    :cond_1
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/reflect/TypeToken;->getRawType()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getGenericSuperclass()Ljava/lang/reflect/Type;

    move-result-object v0

    .line 302
    .local v0, "superclass":Ljava/lang/reflect/Type;
    if-nez v0, :cond_2

    .line 303
    const/4 v1, 0x0

    return-object v1

    .line 306
    :cond_2
    invoke-direct {p0, v0}, Lorg/checkerframework/com/google/common/reflect/TypeToken;->resolveSupertype(Ljava/lang/reflect/Type;)Lorg/checkerframework/com/google/common/reflect/TypeToken;

    move-result-object v1

    .line 307
    .local v1, "superToken":Lorg/checkerframework/com/google/common/reflect/TypeToken;, "Lorg/checkerframework/com/google/common/reflect/TypeToken<-TT;>;"
    return-object v1
.end method

.method public final getRawType()Ljava/lang/Class;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "-TT;>;"
        }
    .end annotation

    .line 195
    .local p0, "this":Lorg/checkerframework/com/google/common/reflect/TypeToken;, "Lorg/checkerframework/com/google/common/reflect/TypeToken<TT;>;"
    invoke-direct {p0}, Lorg/checkerframework/com/google/common/reflect/TypeToken;->getRawTypes()Lorg/checkerframework/com/google/common/collect/ImmutableSet;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/com/google/common/collect/ImmutableSet;->iterator()Lorg/checkerframework/com/google/common/collect/UnmodifiableIterator;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/com/google/common/collect/UnmodifiableIterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    .line 197
    .local v0, "rawType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    move-object v1, v0

    .line 198
    .local v1, "result":Ljava/lang/Class;, "Ljava/lang/Class<-TT;>;"
    return-object v1
.end method

.method public final getSubtype(Ljava/lang/Class;)Lorg/checkerframework/com/google/common/reflect/TypeToken;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lorg/checkerframework/com/google/common/reflect/TypeToken<",
            "+TT;>;"
        }
    .end annotation

    .line 408
    .local p0, "this":Lorg/checkerframework/com/google/common/reflect/TypeToken;, "Lorg/checkerframework/com/google/common/reflect/TypeToken<TT;>;"
    .local p1, "subclass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/reflect/TypeToken;->runtimeType:Ljava/lang/reflect/Type;

    instance-of v0, v0, Ljava/lang/reflect/TypeVariable;

    xor-int/lit8 v0, v0, 0x1

    const-string v1, "Cannot get subtype of type variable <%s>"

    invoke-static {v0, v1, p0}, Lorg/checkerframework/com/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;Ljava/lang/Object;)V

    .line 410
    iget-object v0, p0, Lorg/checkerframework/com/google/common/reflect/TypeToken;->runtimeType:Ljava/lang/reflect/Type;

    instance-of v1, v0, Ljava/lang/reflect/WildcardType;

    if-eqz v1, :cond_0

    .line 411
    check-cast v0, Ljava/lang/reflect/WildcardType;

    invoke-interface {v0}, Ljava/lang/reflect/WildcardType;->getLowerBounds()[Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/checkerframework/com/google/common/reflect/TypeToken;->getSubtypeFromLowerBounds(Ljava/lang/Class;[Ljava/lang/reflect/Type;)Lorg/checkerframework/com/google/common/reflect/TypeToken;

    move-result-object v0

    return-object v0

    .line 414
    :cond_0
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/reflect/TypeToken;->isArray()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 415
    invoke-direct {p0, p1}, Lorg/checkerframework/com/google/common/reflect/TypeToken;->getArraySubtype(Ljava/lang/Class;)Lorg/checkerframework/com/google/common/reflect/TypeToken;

    move-result-object v0

    return-object v0

    .line 418
    :cond_1
    nop

    .line 419
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/reflect/TypeToken;->getRawType()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    .line 418
    const-string v1, "%s isn\'t a subclass of %s"

    invoke-static {v0, v1, p1, p0}, Lorg/checkerframework/com/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 420
    invoke-direct {p0, p1}, Lorg/checkerframework/com/google/common/reflect/TypeToken;->resolveTypeArgsForSubclass(Ljava/lang/Class;)Ljava/lang/reflect/Type;

    move-result-object v0

    .line 422
    .local v0, "resolvedTypeArgs":Ljava/lang/reflect/Type;
    invoke-static {v0}, Lorg/checkerframework/com/google/common/reflect/TypeToken;->of(Ljava/lang/reflect/Type;)Lorg/checkerframework/com/google/common/reflect/TypeToken;

    move-result-object v1

    .line 423
    .local v1, "subtype":Lorg/checkerframework/com/google/common/reflect/TypeToken;, "Lorg/checkerframework/com/google/common/reflect/TypeToken<+TT;>;"
    nop

    .line 424
    invoke-virtual {v1, p0}, Lorg/checkerframework/com/google/common/reflect/TypeToken;->isSubtypeOf(Lorg/checkerframework/com/google/common/reflect/TypeToken;)Z

    move-result v2

    .line 423
    const-string v3, "%s does not appear to be a subtype of %s"

    invoke-static {v2, v3, v1, p0}, Lorg/checkerframework/com/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 425
    return-object v1
.end method

.method public final getSupertype(Ljava/lang/Class;)Lorg/checkerframework/com/google/common/reflect/TypeToken;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "-TT;>;)",
            "Lorg/checkerframework/com/google/common/reflect/TypeToken<",
            "-TT;>;"
        }
    .end annotation

    .line 382
    .local p0, "this":Lorg/checkerframework/com/google/common/reflect/TypeToken;, "Lorg/checkerframework/com/google/common/reflect/TypeToken<TT;>;"
    .local p1, "superclass":Ljava/lang/Class;, "Ljava/lang/Class<-TT;>;"
    nop

    .line 383
    invoke-direct {p0, p1}, Lorg/checkerframework/com/google/common/reflect/TypeToken;->someRawTypeIsSubclassOf(Ljava/lang/Class;)Z

    move-result v0

    .line 382
    const-string v1, "%s is not a super class of %s"

    invoke-static {v0, v1, p1, p0}, Lorg/checkerframework/com/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 387
    iget-object v0, p0, Lorg/checkerframework/com/google/common/reflect/TypeToken;->runtimeType:Ljava/lang/reflect/Type;

    instance-of v1, v0, Ljava/lang/reflect/TypeVariable;

    if-eqz v1, :cond_0

    .line 388
    check-cast v0, Ljava/lang/reflect/TypeVariable;

    invoke-interface {v0}, Ljava/lang/reflect/TypeVariable;->getBounds()[Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/checkerframework/com/google/common/reflect/TypeToken;->getSupertypeFromUpperBounds(Ljava/lang/Class;[Ljava/lang/reflect/Type;)Lorg/checkerframework/com/google/common/reflect/TypeToken;

    move-result-object v0

    return-object v0

    .line 390
    :cond_0
    instance-of v1, v0, Ljava/lang/reflect/WildcardType;

    if-eqz v1, :cond_1

    .line 391
    check-cast v0, Ljava/lang/reflect/WildcardType;

    invoke-interface {v0}, Ljava/lang/reflect/WildcardType;->getUpperBounds()[Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/checkerframework/com/google/common/reflect/TypeToken;->getSupertypeFromUpperBounds(Ljava/lang/Class;[Ljava/lang/reflect/Type;)Lorg/checkerframework/com/google/common/reflect/TypeToken;

    move-result-object v0

    return-object v0

    .line 393
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 394
    invoke-direct {p0, p1}, Lorg/checkerframework/com/google/common/reflect/TypeToken;->getArraySupertype(Ljava/lang/Class;)Lorg/checkerframework/com/google/common/reflect/TypeToken;

    move-result-object v0

    return-object v0

    .line 397
    :cond_2
    nop

    .line 398
    invoke-static {p1}, Lorg/checkerframework/com/google/common/reflect/TypeToken;->toGenericType(Ljava/lang/Class;)Lorg/checkerframework/com/google/common/reflect/TypeToken;

    move-result-object v0

    iget-object v0, v0, Lorg/checkerframework/com/google/common/reflect/TypeToken;->runtimeType:Ljava/lang/reflect/Type;

    invoke-direct {p0, v0}, Lorg/checkerframework/com/google/common/reflect/TypeToken;->resolveSupertype(Ljava/lang/reflect/Type;)Lorg/checkerframework/com/google/common/reflect/TypeToken;

    move-result-object v0

    .line 399
    .local v0, "supertype":Lorg/checkerframework/com/google/common/reflect/TypeToken;, "Lorg/checkerframework/com/google/common/reflect/TypeToken<-TT;>;"
    return-object v0
.end method

.method public final getType()Ljava/lang/reflect/Type;
    .locals 1

    .line 203
    .local p0, "this":Lorg/checkerframework/com/google/common/reflect/TypeToken;, "Lorg/checkerframework/com/google/common/reflect/TypeToken<TT;>;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/reflect/TypeToken;->runtimeType:Ljava/lang/reflect/Type;

    return-object v0
.end method

.method public final getTypes()Lorg/checkerframework/com/google/common/reflect/TypeToken$TypeSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/checkerframework/com/google/common/reflect/TypeToken<",
            "TT;>.TypeSet;"
        }
    .end annotation

    .line 373
    .local p0, "this":Lorg/checkerframework/com/google/common/reflect/TypeToken;, "Lorg/checkerframework/com/google/common/reflect/TypeToken<TT;>;"
    new-instance v0, Lorg/checkerframework/com/google/common/reflect/TypeToken$TypeSet;

    invoke-direct {v0, p0}, Lorg/checkerframework/com/google/common/reflect/TypeToken$TypeSet;-><init>(Lorg/checkerframework/com/google/common/reflect/TypeToken;)V

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 830
    .local p0, "this":Lorg/checkerframework/com/google/common/reflect/TypeToken;, "Lorg/checkerframework/com/google/common/reflect/TypeToken<TT;>;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/reflect/TypeToken;->runtimeType:Ljava/lang/reflect/Type;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public final isArray()Z
    .locals 1

    .line 512
    .local p0, "this":Lorg/checkerframework/com/google/common/reflect/TypeToken;, "Lorg/checkerframework/com/google/common/reflect/TypeToken<TT;>;"
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/reflect/TypeToken;->getComponentType()Lorg/checkerframework/com/google/common/reflect/TypeToken;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final isPrimitive()Z
    .locals 2

    .line 521
    .local p0, "this":Lorg/checkerframework/com/google/common/reflect/TypeToken;, "Lorg/checkerframework/com/google/common/reflect/TypeToken<TT;>;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/reflect/TypeToken;->runtimeType:Ljava/lang/reflect/Type;

    instance-of v1, v0, Ljava/lang/Class;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final isSubtypeOf(Ljava/lang/reflect/Type;)Z
    .locals 3
    .param p1, "supertype"    # Ljava/lang/reflect/Type;

    .line 473
    .local p0, "this":Lorg/checkerframework/com/google/common/reflect/TypeToken;, "Lorg/checkerframework/com/google/common/reflect/TypeToken<TT;>;"
    invoke-static {p1}, Lorg/checkerframework/com/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 474
    instance-of v0, p1, Ljava/lang/reflect/WildcardType;

    if-eqz v0, :cond_0

    .line 478
    move-object v0, p1

    check-cast v0, Ljava/lang/reflect/WildcardType;

    invoke-interface {v0}, Ljava/lang/reflect/WildcardType;->getLowerBounds()[Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-static {v0}, Lorg/checkerframework/com/google/common/reflect/TypeToken;->any([Ljava/lang/reflect/Type;)Lorg/checkerframework/com/google/common/reflect/TypeToken$Bounds;

    move-result-object v0

    iget-object v1, p0, Lorg/checkerframework/com/google/common/reflect/TypeToken;->runtimeType:Ljava/lang/reflect/Type;

    invoke-virtual {v0, v1}, Lorg/checkerframework/com/google/common/reflect/TypeToken$Bounds;->isSupertypeOf(Ljava/lang/reflect/Type;)Z

    move-result v0

    return v0

    .line 482
    :cond_0
    iget-object v0, p0, Lorg/checkerframework/com/google/common/reflect/TypeToken;->runtimeType:Ljava/lang/reflect/Type;

    instance-of v1, v0, Ljava/lang/reflect/WildcardType;

    if-eqz v1, :cond_1

    .line 484
    check-cast v0, Ljava/lang/reflect/WildcardType;

    invoke-interface {v0}, Ljava/lang/reflect/WildcardType;->getUpperBounds()[Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-static {v0}, Lorg/checkerframework/com/google/common/reflect/TypeToken;->any([Ljava/lang/reflect/Type;)Lorg/checkerframework/com/google/common/reflect/TypeToken$Bounds;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/checkerframework/com/google/common/reflect/TypeToken$Bounds;->isSubtypeOf(Ljava/lang/reflect/Type;)Z

    move-result v0

    return v0

    .line 488
    :cond_1
    instance-of v1, v0, Ljava/lang/reflect/TypeVariable;

    const/4 v2, 0x0

    if-eqz v1, :cond_4

    .line 489
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/checkerframework/com/google/common/reflect/TypeToken;->runtimeType:Ljava/lang/reflect/Type;

    check-cast v0, Ljava/lang/reflect/TypeVariable;

    .line 490
    invoke-interface {v0}, Ljava/lang/reflect/TypeVariable;->getBounds()[Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-static {v0}, Lorg/checkerframework/com/google/common/reflect/TypeToken;->any([Ljava/lang/reflect/Type;)Lorg/checkerframework/com/google/common/reflect/TypeToken$Bounds;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/checkerframework/com/google/common/reflect/TypeToken$Bounds;->isSubtypeOf(Ljava/lang/reflect/Type;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    const/4 v2, 0x1

    .line 489
    :cond_3
    return v2

    .line 492
    :cond_4
    instance-of v0, v0, Ljava/lang/reflect/GenericArrayType;

    if-eqz v0, :cond_5

    .line 493
    invoke-static {p1}, Lorg/checkerframework/com/google/common/reflect/TypeToken;->of(Ljava/lang/reflect/Type;)Lorg/checkerframework/com/google/common/reflect/TypeToken;

    move-result-object v0

    iget-object v1, p0, Lorg/checkerframework/com/google/common/reflect/TypeToken;->runtimeType:Ljava/lang/reflect/Type;

    check-cast v1, Ljava/lang/reflect/GenericArrayType;

    invoke-direct {v0, v1}, Lorg/checkerframework/com/google/common/reflect/TypeToken;->isSupertypeOfArray(Ljava/lang/reflect/GenericArrayType;)Z

    move-result v0

    return v0

    .line 496
    :cond_5
    instance-of v0, p1, Ljava/lang/Class;

    if-eqz v0, :cond_6

    .line 497
    move-object v0, p1

    check-cast v0, Ljava/lang/Class;

    invoke-direct {p0, v0}, Lorg/checkerframework/com/google/common/reflect/TypeToken;->someRawTypeIsSubclassOf(Ljava/lang/Class;)Z

    move-result v0

    return v0

    .line 498
    :cond_6
    instance-of v0, p1, Ljava/lang/reflect/ParameterizedType;

    if-eqz v0, :cond_7

    .line 499
    move-object v0, p1

    check-cast v0, Ljava/lang/reflect/ParameterizedType;

    invoke-direct {p0, v0}, Lorg/checkerframework/com/google/common/reflect/TypeToken;->isSubtypeOfParameterizedType(Ljava/lang/reflect/ParameterizedType;)Z

    move-result v0

    return v0

    .line 500
    :cond_7
    instance-of v0, p1, Ljava/lang/reflect/GenericArrayType;

    if-eqz v0, :cond_8

    .line 501
    move-object v0, p1

    check-cast v0, Ljava/lang/reflect/GenericArrayType;

    invoke-direct {p0, v0}, Lorg/checkerframework/com/google/common/reflect/TypeToken;->isSubtypeOfArrayType(Ljava/lang/reflect/GenericArrayType;)Z

    move-result v0

    return v0

    .line 503
    :cond_8
    return v2
.end method

.method public final isSubtypeOf(Lorg/checkerframework/com/google/common/reflect/TypeToken;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/google/common/reflect/TypeToken<",
            "*>;)Z"
        }
    .end annotation

    .line 461
    .local p0, "this":Lorg/checkerframework/com/google/common/reflect/TypeToken;, "Lorg/checkerframework/com/google/common/reflect/TypeToken<TT;>;"
    .local p1, "type":Lorg/checkerframework/com/google/common/reflect/TypeToken;, "Lorg/checkerframework/com/google/common/reflect/TypeToken<*>;"
    invoke-virtual {p1}, Lorg/checkerframework/com/google/common/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/checkerframework/com/google/common/reflect/TypeToken;->isSubtypeOf(Ljava/lang/reflect/Type;)Z

    move-result v0

    return v0
.end method

.method public final isSupertypeOf(Ljava/lang/reflect/Type;)Z
    .locals 2
    .param p1, "type"    # Ljava/lang/reflect/Type;

    .line 449
    .local p0, "this":Lorg/checkerframework/com/google/common/reflect/TypeToken;, "Lorg/checkerframework/com/google/common/reflect/TypeToken<TT;>;"
    invoke-static {p1}, Lorg/checkerframework/com/google/common/reflect/TypeToken;->of(Ljava/lang/reflect/Type;)Lorg/checkerframework/com/google/common/reflect/TypeToken;

    move-result-object v0

    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/checkerframework/com/google/common/reflect/TypeToken;->isSubtypeOf(Ljava/lang/reflect/Type;)Z

    move-result v0

    return v0
.end method

.method public final isSupertypeOf(Lorg/checkerframework/com/google/common/reflect/TypeToken;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/google/common/reflect/TypeToken<",
            "*>;)Z"
        }
    .end annotation

    .line 437
    .local p0, "this":Lorg/checkerframework/com/google/common/reflect/TypeToken;, "Lorg/checkerframework/com/google/common/reflect/TypeToken<TT;>;"
    .local p1, "type":Lorg/checkerframework/com/google/common/reflect/TypeToken;, "Lorg/checkerframework/com/google/common/reflect/TypeToken<*>;"
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/checkerframework/com/google/common/reflect/TypeToken;->isSubtypeOf(Ljava/lang/reflect/Type;)Z

    move-result v0

    return v0
.end method

.method public final method(Ljava/lang/reflect/Method;)Lorg/checkerframework/com/google/common/reflect/Invokable;
    .locals 2
    .param p1, "method"    # Ljava/lang/reflect/Method;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Method;",
            ")",
            "Lorg/checkerframework/com/google/common/reflect/Invokable<",
            "TT;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 576
    .local p0, "this":Lorg/checkerframework/com/google/common/reflect/TypeToken;, "Lorg/checkerframework/com/google/common/reflect/TypeToken<TT;>;"
    nop

    .line 577
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/checkerframework/com/google/common/reflect/TypeToken;->someRawTypeIsSubclassOf(Ljava/lang/Class;)Z

    move-result v0

    .line 576
    const-string v1, "%s not declared by %s"

    invoke-static {v0, v1, p1, p0}, Lorg/checkerframework/com/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 581
    new-instance v0, Lorg/checkerframework/com/google/common/reflect/TypeToken$1;

    invoke-direct {v0, p0, p1}, Lorg/checkerframework/com/google/common/reflect/TypeToken$1;-><init>(Lorg/checkerframework/com/google/common/reflect/TypeToken;Ljava/lang/reflect/Method;)V

    return-object v0
.end method

.method final rejectTypeVariables()Lorg/checkerframework/com/google/common/reflect/TypeToken;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/checkerframework/com/google/common/reflect/TypeToken<",
            "TT;>;"
        }
    .end annotation

    .line 851
    .local p0, "this":Lorg/checkerframework/com/google/common/reflect/TypeToken;, "Lorg/checkerframework/com/google/common/reflect/TypeToken<TT;>;"
    new-instance v0, Lorg/checkerframework/com/google/common/reflect/TypeToken$3;

    invoke-direct {v0, p0}, Lorg/checkerframework/com/google/common/reflect/TypeToken$3;-><init>(Lorg/checkerframework/com/google/common/reflect/TypeToken;)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/reflect/Type;

    const/4 v2, 0x0

    iget-object v3, p0, Lorg/checkerframework/com/google/common/reflect/TypeToken;->runtimeType:Ljava/lang/reflect/Type;

    aput-object v3, v1, v2

    .line 874
    invoke-virtual {v0, v1}, Lorg/checkerframework/com/google/common/reflect/TypeToken$3;->visit([Ljava/lang/reflect/Type;)V

    .line 875
    return-object p0
.end method

.method public final resolveType(Ljava/lang/reflect/Type;)Lorg/checkerframework/com/google/common/reflect/TypeToken;
    .locals 1
    .param p1, "type"    # Ljava/lang/reflect/Type;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            ")",
            "Lorg/checkerframework/com/google/common/reflect/TypeToken<",
            "*>;"
        }
    .end annotation

    .line 266
    .local p0, "this":Lorg/checkerframework/com/google/common/reflect/TypeToken;, "Lorg/checkerframework/com/google/common/reflect/TypeToken<TT;>;"
    invoke-static {p1}, Lorg/checkerframework/com/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 269
    invoke-direct {p0}, Lorg/checkerframework/com/google/common/reflect/TypeToken;->getInvariantTypeResolver()Lorg/checkerframework/com/google/common/reflect/TypeResolver;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/checkerframework/com/google/common/reflect/TypeResolver;->resolveType(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-static {v0}, Lorg/checkerframework/com/google/common/reflect/TypeToken;->of(Ljava/lang/reflect/Type;)Lorg/checkerframework/com/google/common/reflect/TypeToken;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 835
    .local p0, "this":Lorg/checkerframework/com/google/common/reflect/TypeToken;, "Lorg/checkerframework/com/google/common/reflect/TypeToken<TT;>;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/reflect/TypeToken;->runtimeType:Ljava/lang/reflect/Type;

    invoke-static {v0}, Lorg/checkerframework/com/google/common/reflect/Types;->toString(Ljava/lang/reflect/Type;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final unwrap()Lorg/checkerframework/com/google/common/reflect/TypeToken;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/checkerframework/com/google/common/reflect/TypeToken<",
            "TT;>;"
        }
    .end annotation

    .line 550
    .local p0, "this":Lorg/checkerframework/com/google/common/reflect/TypeToken;, "Lorg/checkerframework/com/google/common/reflect/TypeToken<TT;>;"
    invoke-direct {p0}, Lorg/checkerframework/com/google/common/reflect/TypeToken;->isWrapper()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 552
    iget-object v0, p0, Lorg/checkerframework/com/google/common/reflect/TypeToken;->runtimeType:Ljava/lang/reflect/Type;

    check-cast v0, Ljava/lang/Class;

    .line 553
    .local v0, "type":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-static {v0}, Lorg/checkerframework/com/google/common/primitives/Primitives;->unwrap(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1}, Lorg/checkerframework/com/google/common/reflect/TypeToken;->of(Ljava/lang/Class;)Lorg/checkerframework/com/google/common/reflect/TypeToken;

    move-result-object v1

    return-object v1

    .line 555
    .end local v0    # "type":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    :cond_0
    return-object p0
.end method

.method public final where(Lorg/checkerframework/com/google/common/reflect/TypeParameter;Ljava/lang/Class;)Lorg/checkerframework/com/google/common/reflect/TypeToken;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/checkerframework/com/google/common/reflect/TypeParameter<",
            "TX;>;",
            "Ljava/lang/Class<",
            "TX;>;)",
            "Lorg/checkerframework/com/google/common/reflect/TypeToken<",
            "TT;>;"
        }
    .end annotation

    .line 253
    .local p0, "this":Lorg/checkerframework/com/google/common/reflect/TypeToken;, "Lorg/checkerframework/com/google/common/reflect/TypeToken<TT;>;"
    .local p1, "typeParam":Lorg/checkerframework/com/google/common/reflect/TypeParameter;, "Lorg/checkerframework/com/google/common/reflect/TypeParameter<TX;>;"
    .local p2, "typeArg":Ljava/lang/Class;, "Ljava/lang/Class<TX;>;"
    invoke-static {p2}, Lorg/checkerframework/com/google/common/reflect/TypeToken;->of(Ljava/lang/Class;)Lorg/checkerframework/com/google/common/reflect/TypeToken;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/checkerframework/com/google/common/reflect/TypeToken;->where(Lorg/checkerframework/com/google/common/reflect/TypeParameter;Lorg/checkerframework/com/google/common/reflect/TypeToken;)Lorg/checkerframework/com/google/common/reflect/TypeToken;

    move-result-object v0

    return-object v0
.end method

.method public final where(Lorg/checkerframework/com/google/common/reflect/TypeParameter;Lorg/checkerframework/com/google/common/reflect/TypeToken;)Lorg/checkerframework/com/google/common/reflect/TypeToken;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/checkerframework/com/google/common/reflect/TypeParameter<",
            "TX;>;",
            "Lorg/checkerframework/com/google/common/reflect/TypeToken<",
            "TX;>;)",
            "Lorg/checkerframework/com/google/common/reflect/TypeToken<",
            "TT;>;"
        }
    .end annotation

    .line 225
    .local p0, "this":Lorg/checkerframework/com/google/common/reflect/TypeToken;, "Lorg/checkerframework/com/google/common/reflect/TypeToken<TT;>;"
    .local p1, "typeParam":Lorg/checkerframework/com/google/common/reflect/TypeParameter;, "Lorg/checkerframework/com/google/common/reflect/TypeParameter<TX;>;"
    .local p2, "typeArg":Lorg/checkerframework/com/google/common/reflect/TypeToken;, "Lorg/checkerframework/com/google/common/reflect/TypeToken<TX;>;"
    new-instance v0, Lorg/checkerframework/com/google/common/reflect/TypeResolver;

    invoke-direct {v0}, Lorg/checkerframework/com/google/common/reflect/TypeResolver;-><init>()V

    new-instance v1, Lorg/checkerframework/com/google/common/reflect/TypeResolver$TypeVariableKey;

    iget-object v2, p1, Lorg/checkerframework/com/google/common/reflect/TypeParameter;->typeVariable:Ljava/lang/reflect/TypeVariable;

    invoke-direct {v1, v2}, Lorg/checkerframework/com/google/common/reflect/TypeResolver$TypeVariableKey;-><init>(Ljava/lang/reflect/TypeVariable;)V

    iget-object v2, p2, Lorg/checkerframework/com/google/common/reflect/TypeToken;->runtimeType:Ljava/lang/reflect/Type;

    .line 228
    invoke-static {v1, v2}, Lorg/checkerframework/com/google/common/collect/ImmutableMap;->of(Ljava/lang/Object;Ljava/lang/Object;)Lorg/checkerframework/com/google/common/collect/ImmutableMap;

    move-result-object v1

    .line 227
    invoke-virtual {v0, v1}, Lorg/checkerframework/com/google/common/reflect/TypeResolver;->where(Ljava/util/Map;)Lorg/checkerframework/com/google/common/reflect/TypeResolver;

    move-result-object v0

    .line 231
    .local v0, "resolver":Lorg/checkerframework/com/google/common/reflect/TypeResolver;
    new-instance v1, Lorg/checkerframework/com/google/common/reflect/TypeToken$SimpleTypeToken;

    iget-object v2, p0, Lorg/checkerframework/com/google/common/reflect/TypeToken;->runtimeType:Ljava/lang/reflect/Type;

    invoke-virtual {v0, v2}, Lorg/checkerframework/com/google/common/reflect/TypeResolver;->resolveType(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/checkerframework/com/google/common/reflect/TypeToken$SimpleTypeToken;-><init>(Ljava/lang/reflect/Type;)V

    return-object v1
.end method

.method public final wrap()Lorg/checkerframework/com/google/common/reflect/TypeToken;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/checkerframework/com/google/common/reflect/TypeToken<",
            "TT;>;"
        }
    .end annotation

    .line 531
    .local p0, "this":Lorg/checkerframework/com/google/common/reflect/TypeToken;, "Lorg/checkerframework/com/google/common/reflect/TypeToken<TT;>;"
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/reflect/TypeToken;->isPrimitive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 533
    iget-object v0, p0, Lorg/checkerframework/com/google/common/reflect/TypeToken;->runtimeType:Ljava/lang/reflect/Type;

    check-cast v0, Ljava/lang/Class;

    .line 534
    .local v0, "type":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-static {v0}, Lorg/checkerframework/com/google/common/primitives/Primitives;->wrap(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1}, Lorg/checkerframework/com/google/common/reflect/TypeToken;->of(Ljava/lang/Class;)Lorg/checkerframework/com/google/common/reflect/TypeToken;

    move-result-object v1

    return-object v1

    .line 536
    .end local v0    # "type":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    :cond_0
    return-object p0
.end method

.method protected writeReplace()Ljava/lang/Object;
    .locals 2

    .line 842
    .local p0, "this":Lorg/checkerframework/com/google/common/reflect/TypeToken;, "Lorg/checkerframework/com/google/common/reflect/TypeToken<TT;>;"
    new-instance v0, Lorg/checkerframework/com/google/common/reflect/TypeResolver;

    invoke-direct {v0}, Lorg/checkerframework/com/google/common/reflect/TypeResolver;-><init>()V

    iget-object v1, p0, Lorg/checkerframework/com/google/common/reflect/TypeToken;->runtimeType:Ljava/lang/reflect/Type;

    invoke-virtual {v0, v1}, Lorg/checkerframework/com/google/common/reflect/TypeResolver;->resolveType(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-static {v0}, Lorg/checkerframework/com/google/common/reflect/TypeToken;->of(Ljava/lang/reflect/Type;)Lorg/checkerframework/com/google/common/reflect/TypeToken;

    move-result-object v0

    return-object v0
.end method
