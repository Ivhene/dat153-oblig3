.class Lorg/checkerframework/com/google/common/reflect/TypeResolver$WildcardCapturer;
.super Ljava/lang/Object;
.source "TypeResolver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/com/google/common/reflect/TypeResolver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "WildcardCapturer"
.end annotation


# static fields
.field static final INSTANCE:Lorg/checkerframework/com/google/common/reflect/TypeResolver$WildcardCapturer;


# instance fields
.field private final id:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 449
    new-instance v0, Lorg/checkerframework/com/google/common/reflect/TypeResolver$WildcardCapturer;

    invoke-direct {v0}, Lorg/checkerframework/com/google/common/reflect/TypeResolver$WildcardCapturer;-><init>()V

    sput-object v0, Lorg/checkerframework/com/google/common/reflect/TypeResolver$WildcardCapturer;->INSTANCE:Lorg/checkerframework/com/google/common/reflect/TypeResolver$WildcardCapturer;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 454
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    invoke-direct {p0, v0}, Lorg/checkerframework/com/google/common/reflect/TypeResolver$WildcardCapturer;-><init>(Ljava/util/concurrent/atomic/AtomicInteger;)V

    .line 455
    return-void
.end method

.method private constructor <init>(Ljava/util/concurrent/atomic/AtomicInteger;)V
    .locals 0
    .param p1, "id"    # Ljava/util/concurrent/atomic/AtomicInteger;

    .line 457
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 458
    iput-object p1, p0, Lorg/checkerframework/com/google/common/reflect/TypeResolver$WildcardCapturer;->id:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 459
    return-void
.end method

.method synthetic constructor <init>(Ljava/util/concurrent/atomic/AtomicInteger;Lorg/checkerframework/com/google/common/reflect/TypeResolver$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/util/concurrent/atomic/AtomicInteger;
    .param p2, "x1"    # Lorg/checkerframework/com/google/common/reflect/TypeResolver$1;

    .line 447
    invoke-direct {p0, p1}, Lorg/checkerframework/com/google/common/reflect/TypeResolver$WildcardCapturer;-><init>(Ljava/util/concurrent/atomic/AtomicInteger;)V

    return-void
.end method

.method private captureNullable(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;
    .locals 1
    .param p1, "type"    # Ljava/lang/reflect/Type;

    .line 531
    if-nez p1, :cond_0

    .line 532
    const/4 v0, 0x0

    return-object v0

    .line 534
    :cond_0
    invoke-virtual {p0, p1}, Lorg/checkerframework/com/google/common/reflect/TypeResolver$WildcardCapturer;->capture(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v0

    return-object v0
.end method

.method private forTypeVariable(Ljava/lang/reflect/TypeVariable;)Lorg/checkerframework/com/google/common/reflect/TypeResolver$WildcardCapturer;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/TypeVariable<",
            "*>;)",
            "Lorg/checkerframework/com/google/common/reflect/TypeResolver$WildcardCapturer;"
        }
    .end annotation

    .line 507
    .local p1, "typeParam":Ljava/lang/reflect/TypeVariable;, "Ljava/lang/reflect/TypeVariable<*>;"
    new-instance v0, Lorg/checkerframework/com/google/common/reflect/TypeResolver$WildcardCapturer$1;

    iget-object v1, p0, Lorg/checkerframework/com/google/common/reflect/TypeResolver$WildcardCapturer;->id:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, p0, v1, p1}, Lorg/checkerframework/com/google/common/reflect/TypeResolver$WildcardCapturer$1;-><init>(Lorg/checkerframework/com/google/common/reflect/TypeResolver$WildcardCapturer;Ljava/util/concurrent/atomic/AtomicInteger;Ljava/lang/reflect/TypeVariable;)V

    return-object v0
.end method

.method private notForTypeVariable()Lorg/checkerframework/com/google/common/reflect/TypeResolver$WildcardCapturer;
    .locals 2

    .line 527
    new-instance v0, Lorg/checkerframework/com/google/common/reflect/TypeResolver$WildcardCapturer;

    iget-object v1, p0, Lorg/checkerframework/com/google/common/reflect/TypeResolver$WildcardCapturer;->id:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v1}, Lorg/checkerframework/com/google/common/reflect/TypeResolver$WildcardCapturer;-><init>(Ljava/util/concurrent/atomic/AtomicInteger;)V

    return-object v0
.end method


# virtual methods
.method final capture(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;
    .locals 7
    .param p1, "type"    # Ljava/lang/reflect/Type;

    .line 462
    invoke-static {p1}, Lorg/checkerframework/com/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 463
    instance-of v0, p1, Ljava/lang/Class;

    if-eqz v0, :cond_0

    .line 464
    return-object p1

    .line 466
    :cond_0
    instance-of v0, p1, Ljava/lang/reflect/TypeVariable;

    if-eqz v0, :cond_1

    .line 467
    return-object p1

    .line 469
    :cond_1
    instance-of v0, p1, Ljava/lang/reflect/GenericArrayType;

    if-eqz v0, :cond_2

    .line 470
    move-object v0, p1

    check-cast v0, Ljava/lang/reflect/GenericArrayType;

    .line 471
    .local v0, "arrayType":Ljava/lang/reflect/GenericArrayType;
    nop

    .line 472
    invoke-direct {p0}, Lorg/checkerframework/com/google/common/reflect/TypeResolver$WildcardCapturer;->notForTypeVariable()Lorg/checkerframework/com/google/common/reflect/TypeResolver$WildcardCapturer;

    move-result-object v1

    invoke-interface {v0}, Ljava/lang/reflect/GenericArrayType;->getGenericComponentType()Ljava/lang/reflect/Type;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/checkerframework/com/google/common/reflect/TypeResolver$WildcardCapturer;->capture(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v1

    .line 471
    invoke-static {v1}, Lorg/checkerframework/com/google/common/reflect/Types;->newArrayType(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v1

    return-object v1

    .line 474
    .end local v0    # "arrayType":Ljava/lang/reflect/GenericArrayType;
    :cond_2
    instance-of v0, p1, Ljava/lang/reflect/ParameterizedType;

    if-eqz v0, :cond_4

    .line 475
    move-object v0, p1

    check-cast v0, Ljava/lang/reflect/ParameterizedType;

    .line 476
    .local v0, "parameterizedType":Ljava/lang/reflect/ParameterizedType;
    invoke-interface {v0}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v1

    check-cast v1, Ljava/lang/Class;

    .line 477
    .local v1, "rawType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v1}, Ljava/lang/Class;->getTypeParameters()[Ljava/lang/reflect/TypeVariable;

    move-result-object v2

    .line 478
    .local v2, "typeVars":[Ljava/lang/reflect/TypeVariable;, "[Ljava/lang/reflect/TypeVariable<*>;"
    invoke-interface {v0}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v3

    .line 479
    .local v3, "typeArgs":[Ljava/lang/reflect/Type;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    array-length v5, v3

    if-ge v4, v5, :cond_3

    .line 480
    aget-object v5, v2, v4

    invoke-direct {p0, v5}, Lorg/checkerframework/com/google/common/reflect/TypeResolver$WildcardCapturer;->forTypeVariable(Ljava/lang/reflect/TypeVariable;)Lorg/checkerframework/com/google/common/reflect/TypeResolver$WildcardCapturer;

    move-result-object v5

    aget-object v6, v3, v4

    invoke-virtual {v5, v6}, Lorg/checkerframework/com/google/common/reflect/TypeResolver$WildcardCapturer;->capture(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v5

    aput-object v5, v3, v4

    .line 479
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 482
    .end local v4    # "i":I
    :cond_3
    nop

    .line 483
    invoke-direct {p0}, Lorg/checkerframework/com/google/common/reflect/TypeResolver$WildcardCapturer;->notForTypeVariable()Lorg/checkerframework/com/google/common/reflect/TypeResolver$WildcardCapturer;

    move-result-object v4

    invoke-interface {v0}, Ljava/lang/reflect/ParameterizedType;->getOwnerType()Ljava/lang/reflect/Type;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/checkerframework/com/google/common/reflect/TypeResolver$WildcardCapturer;->captureNullable(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v4

    .line 482
    invoke-static {v4, v1, v3}, Lorg/checkerframework/com/google/common/reflect/Types;->newParameterizedTypeWithOwner(Ljava/lang/reflect/Type;Ljava/lang/Class;[Ljava/lang/reflect/Type;)Ljava/lang/reflect/ParameterizedType;

    move-result-object v4

    return-object v4

    .line 487
    .end local v0    # "parameterizedType":Ljava/lang/reflect/ParameterizedType;
    .end local v1    # "rawType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v2    # "typeVars":[Ljava/lang/reflect/TypeVariable;, "[Ljava/lang/reflect/TypeVariable<*>;"
    .end local v3    # "typeArgs":[Ljava/lang/reflect/Type;
    :cond_4
    instance-of v0, p1, Ljava/lang/reflect/WildcardType;

    if-eqz v0, :cond_6

    .line 488
    move-object v0, p1

    check-cast v0, Ljava/lang/reflect/WildcardType;

    .line 489
    .local v0, "wildcardType":Ljava/lang/reflect/WildcardType;
    invoke-interface {v0}, Ljava/lang/reflect/WildcardType;->getLowerBounds()[Ljava/lang/reflect/Type;

    move-result-object v1

    .line 490
    .local v1, "lowerBounds":[Ljava/lang/reflect/Type;
    array-length v2, v1

    if-nez v2, :cond_5

    .line 491
    invoke-interface {v0}, Ljava/lang/reflect/WildcardType;->getUpperBounds()[Ljava/lang/reflect/Type;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/checkerframework/com/google/common/reflect/TypeResolver$WildcardCapturer;->captureAsTypeVariable([Ljava/lang/reflect/Type;)Ljava/lang/reflect/TypeVariable;

    move-result-object v2

    return-object v2

    .line 494
    :cond_5
    return-object p1

    .line 497
    .end local v0    # "wildcardType":Ljava/lang/reflect/WildcardType;
    .end local v1    # "lowerBounds":[Ljava/lang/reflect/Type;
    :cond_6
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "must have been one of the known types"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method captureAsTypeVariable([Ljava/lang/reflect/Type;)Ljava/lang/reflect/TypeVariable;
    .locals 2
    .param p1, "upperBounds"    # [Ljava/lang/reflect/Type;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/reflect/Type;",
            ")",
            "Ljava/lang/reflect/TypeVariable<",
            "*>;"
        }
    .end annotation

    .line 501
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "capture#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/checkerframework/com/google/common/reflect/TypeResolver$WildcardCapturer;->id:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 502
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-of ? extends "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x26

    invoke-static {v1}, Lorg/checkerframework/com/google/common/base/Joiner;->on(C)Lorg/checkerframework/com/google/common/base/Joiner;

    move-result-object v1

    invoke-virtual {v1, p1}, Lorg/checkerframework/com/google/common/base/Joiner;->join([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 503
    .local v0, "name":Ljava/lang/String;
    const-class v1, Lorg/checkerframework/com/google/common/reflect/TypeResolver$WildcardCapturer;

    invoke-static {v1, v0, p1}, Lorg/checkerframework/com/google/common/reflect/Types;->newArtificialTypeVariable(Ljava/lang/reflect/GenericDeclaration;Ljava/lang/String;[Ljava/lang/reflect/Type;)Ljava/lang/reflect/TypeVariable;

    move-result-object v1

    return-object v1
.end method
