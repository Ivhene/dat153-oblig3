.class public Lnet/bytebuddy/description/annotation/AnnotationValue$ForDescriptionArray$Loaded;
.super Lnet/bytebuddy/description/annotation/AnnotationValue$Loaded$AbstractBase;
.source "AnnotationValue.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/description/annotation/AnnotationValue$ForDescriptionArray;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "Loaded"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<W:",
        "Ljava/lang/Object;",
        ">",
        "Lnet/bytebuddy/description/annotation/AnnotationValue$Loaded$AbstractBase<",
        "TW;>;"
    }
.end annotation


# instance fields
.field private final componentType:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TW;>;"
        }
    .end annotation
.end field

.field private transient synthetic hashCode:I

.field private final values:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lnet/bytebuddy/description/annotation/AnnotationValue$Loaded<",
            "*>;>;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Ljava/lang/Class;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "TW;>;",
            "Ljava/util/List<",
            "Lnet/bytebuddy/description/annotation/AnnotationValue$Loaded<",
            "*>;>;)V"
        }
    .end annotation

    .line 2395
    .local p0, "this":Lnet/bytebuddy/description/annotation/AnnotationValue$ForDescriptionArray$Loaded;, "Lnet/bytebuddy/description/annotation/AnnotationValue$ForDescriptionArray$Loaded<TW;>;"
    .local p1, "componentType":Ljava/lang/Class;, "Ljava/lang/Class<TW;>;"
    .local p2, "values":Ljava/util/List;, "Ljava/util/List<Lnet/bytebuddy/description/annotation/AnnotationValue$Loaded<*>;>;"
    invoke-direct {p0}, Lnet/bytebuddy/description/annotation/AnnotationValue$Loaded$AbstractBase;-><init>()V

    .line 2396
    iput-object p1, p0, Lnet/bytebuddy/description/annotation/AnnotationValue$ForDescriptionArray$Loaded;->componentType:Ljava/lang/Class;

    .line 2397
    iput-object p2, p0, Lnet/bytebuddy/description/annotation/AnnotationValue$ForDescriptionArray$Loaded;->values:Ljava/util/List;

    .line 2398
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 11
    .param p1, "other"    # Ljava/lang/Object;

    .line 2455
    .local p0, "this":Lnet/bytebuddy/description/annotation/AnnotationValue$ForDescriptionArray$Loaded;, "Lnet/bytebuddy/description/annotation/AnnotationValue$ForDescriptionArray$Loaded<TW;>;"
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 2456
    return v0

    .line 2457
    :cond_0
    instance-of v1, p1, Lnet/bytebuddy/description/annotation/AnnotationValue$Loaded;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 2458
    return v2

    .line 2460
    :cond_1
    move-object v1, p1

    check-cast v1, Lnet/bytebuddy/description/annotation/AnnotationValue$Loaded;

    .line 2461
    .local v1, "annotationValue":Lnet/bytebuddy/description/annotation/AnnotationValue$Loaded;, "Lnet/bytebuddy/description/annotation/AnnotationValue$Loaded<*>;"
    invoke-interface {v1}, Lnet/bytebuddy/description/annotation/AnnotationValue$Loaded;->getState()Lnet/bytebuddy/description/annotation/AnnotationValue$State;

    move-result-object v3

    invoke-virtual {v3}, Lnet/bytebuddy/description/annotation/AnnotationValue$State;->isResolved()Z

    move-result v3

    if-nez v3, :cond_2

    .line 2462
    return v2

    .line 2464
    :cond_2
    invoke-interface {v1}, Lnet/bytebuddy/description/annotation/AnnotationValue$Loaded;->resolve()Ljava/lang/Object;

    move-result-object v3

    .line 2465
    .local v3, "value":Ljava/lang/Object;
    instance-of v4, v3, [Ljava/lang/Object;

    if-nez v4, :cond_3

    .line 2466
    return v2

    .line 2468
    :cond_3
    move-object v4, v3

    check-cast v4, [Ljava/lang/Object;

    check-cast v4, [Ljava/lang/Object;

    .line 2469
    .local v4, "arrayValue":[Ljava/lang/Object;
    iget-object v5, p0, Lnet/bytebuddy/description/annotation/AnnotationValue$ForDescriptionArray$Loaded;->values:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    array-length v6, v4

    if-eq v5, v6, :cond_4

    .line 2470
    return v2

    .line 2472
    :cond_4
    iget-object v5, p0, Lnet/bytebuddy/description/annotation/AnnotationValue$ForDescriptionArray$Loaded;->values:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 2473
    .local v5, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lnet/bytebuddy/description/annotation/AnnotationValue$Loaded<*>;>;"
    array-length v6, v4

    move v7, v2

    :goto_0
    if-ge v7, v6, :cond_7

    aget-object v8, v4, v7

    .line 2474
    .local v8, "aValue":Ljava/lang/Object;
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lnet/bytebuddy/description/annotation/AnnotationValue$Loaded;

    .line 2475
    .local v9, "self":Lnet/bytebuddy/description/annotation/AnnotationValue$Loaded;, "Lnet/bytebuddy/description/annotation/AnnotationValue$Loaded<*>;"
    invoke-interface {v9}, Lnet/bytebuddy/description/annotation/AnnotationValue$Loaded;->getState()Lnet/bytebuddy/description/annotation/AnnotationValue$State;

    move-result-object v10

    invoke-virtual {v10}, Lnet/bytebuddy/description/annotation/AnnotationValue$State;->isResolved()Z

    move-result v10

    if-eqz v10, :cond_6

    invoke-interface {v9}, Lnet/bytebuddy/description/annotation/AnnotationValue$Loaded;->resolve()Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_5

    goto :goto_1

    .line 2473
    .end local v8    # "aValue":Ljava/lang/Object;
    .end local v9    # "self":Lnet/bytebuddy/description/annotation/AnnotationValue$Loaded;, "Lnet/bytebuddy/description/annotation/AnnotationValue$Loaded<*>;"
    :cond_5
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 2476
    .restart local v8    # "aValue":Ljava/lang/Object;
    .restart local v9    # "self":Lnet/bytebuddy/description/annotation/AnnotationValue$Loaded;, "Lnet/bytebuddy/description/annotation/AnnotationValue$Loaded<*>;"
    :cond_6
    :goto_1
    return v2

    .line 2479
    .end local v8    # "aValue":Ljava/lang/Object;
    .end local v9    # "self":Lnet/bytebuddy/description/annotation/AnnotationValue$Loaded;, "Lnet/bytebuddy/description/annotation/AnnotationValue$Loaded<*>;"
    :cond_7
    return v0
.end method

.method public getState()Lnet/bytebuddy/description/annotation/AnnotationValue$State;
    .locals 3

    .line 2404
    .local p0, "this":Lnet/bytebuddy/description/annotation/AnnotationValue$ForDescriptionArray$Loaded;, "Lnet/bytebuddy/description/annotation/AnnotationValue$ForDescriptionArray$Loaded<TW;>;"
    iget-object v0, p0, Lnet/bytebuddy/description/annotation/AnnotationValue$ForDescriptionArray$Loaded;->values:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/bytebuddy/description/annotation/AnnotationValue$Loaded;

    .line 2405
    .local v1, "value":Lnet/bytebuddy/description/annotation/AnnotationValue$Loaded;, "Lnet/bytebuddy/description/annotation/AnnotationValue$Loaded<*>;"
    invoke-interface {v1}, Lnet/bytebuddy/description/annotation/AnnotationValue$Loaded;->getState()Lnet/bytebuddy/description/annotation/AnnotationValue$State;

    move-result-object v2

    invoke-virtual {v2}, Lnet/bytebuddy/description/annotation/AnnotationValue$State;->isResolved()Z

    move-result v2

    if-nez v2, :cond_0

    .line 2406
    sget-object v0, Lnet/bytebuddy/description/annotation/AnnotationValue$State;->UNRESOLVED:Lnet/bytebuddy/description/annotation/AnnotationValue$State;

    return-object v0

    .line 2408
    .end local v1    # "value":Lnet/bytebuddy/description/annotation/AnnotationValue$Loaded;, "Lnet/bytebuddy/description/annotation/AnnotationValue$Loaded<*>;"
    :cond_0
    goto :goto_0

    .line 2409
    :cond_1
    sget-object v0, Lnet/bytebuddy/description/annotation/AnnotationValue$State;->RESOLVED:Lnet/bytebuddy/description/annotation/AnnotationValue$State;

    return-object v0
.end method

.method public hashCode()I
    .locals 7
    .annotation runtime Lnet/bytebuddy/build/CachedReturnPlugin$Enhance;
        value = "hashCode"
    .end annotation

    .line 2446
    iget v0, p0, Lnet/bytebuddy/description/annotation/AnnotationValue$ForDescriptionArray$Loaded;->hashCode:I

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    move-object v1, p0

    goto :goto_1

    :cond_0
    move-object v0, p0

    .local v0, "this":Lnet/bytebuddy/description/annotation/AnnotationValue$ForDescriptionArray$Loaded;, "Lnet/bytebuddy/description/annotation/AnnotationValue$ForDescriptionArray$Loaded<TW;>;"
    const/4 v1, 0x1

    .line 2447
    .local v1, "result":I
    iget-object v2, p0, Lnet/bytebuddy/description/annotation/AnnotationValue$ForDescriptionArray$Loaded;->values:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lnet/bytebuddy/description/annotation/AnnotationValue$Loaded;

    .line 2448
    .local v3, "value":Lnet/bytebuddy/description/annotation/AnnotationValue$Loaded;, "Lnet/bytebuddy/description/annotation/AnnotationValue$Loaded<*>;"
    mul-int/lit8 v4, v1, 0x1f

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v5

    add-int v1, v4, v5

    .line 2449
    .end local v3    # "value":Lnet/bytebuddy/description/annotation/AnnotationValue$Loaded;, "Lnet/bytebuddy/description/annotation/AnnotationValue$Loaded<*>;"
    goto :goto_0

    .line 2450
    :cond_1
    move v6, v1

    move-object v1, v0

    move v0, v6

    .end local v0    # "this":Lnet/bytebuddy/description/annotation/AnnotationValue$ForDescriptionArray$Loaded;, "Lnet/bytebuddy/description/annotation/AnnotationValue$ForDescriptionArray$Loaded<TW;>;"
    .end local v1    # "result":I
    :goto_1
    if-nez v0, :cond_2

    iget v0, v1, Lnet/bytebuddy/description/annotation/AnnotationValue$ForDescriptionArray$Loaded;->hashCode:I

    goto :goto_2

    :cond_2
    iput v0, v1, Lnet/bytebuddy/description/annotation/AnnotationValue$ForDescriptionArray$Loaded;->hashCode:I

    :goto_2
    return v0
.end method

.method public represents(Ljava/lang/Object;)Z
    .locals 8
    .param p1, "value"    # Ljava/lang/Object;

    .line 2429
    .local p0, "this":Lnet/bytebuddy/description/annotation/AnnotationValue$ForDescriptionArray$Loaded;, "Lnet/bytebuddy/description/annotation/AnnotationValue$ForDescriptionArray$Loaded<TW;>;"
    instance-of v0, p1, [Ljava/lang/Object;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2430
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    iget-object v2, p0, Lnet/bytebuddy/description/annotation/AnnotationValue$ForDescriptionArray$Loaded;->componentType:Ljava/lang/Class;

    if-eq v0, v2, :cond_1

    return v1

    .line 2431
    :cond_1
    move-object v0, p1

    check-cast v0, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    .line 2432
    .local v0, "array":[Ljava/lang/Object;
    iget-object v2, p0, Lnet/bytebuddy/description/annotation/AnnotationValue$ForDescriptionArray$Loaded;->values:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    array-length v3, v0

    if-eq v2, v3, :cond_2

    return v1

    .line 2433
    :cond_2
    iget-object v2, p0, Lnet/bytebuddy/description/annotation/AnnotationValue$ForDescriptionArray$Loaded;->values:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 2434
    .local v2, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lnet/bytebuddy/description/annotation/AnnotationValue$Loaded<*>;>;"
    array-length v3, v0

    move v4, v1

    :goto_0
    if-ge v4, v3, :cond_4

    aget-object v5, v0, v4

    .line 2435
    .local v5, "aValue":Ljava/lang/Object;
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lnet/bytebuddy/description/annotation/AnnotationValue$Loaded;

    .line 2436
    .local v6, "self":Lnet/bytebuddy/description/annotation/AnnotationValue$Loaded;, "Lnet/bytebuddy/description/annotation/AnnotationValue$Loaded<*>;"
    invoke-interface {v6, v5}, Lnet/bytebuddy/description/annotation/AnnotationValue$Loaded;->represents(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 2437
    return v1

    .line 2434
    .end local v5    # "aValue":Ljava/lang/Object;
    .end local v6    # "self":Lnet/bytebuddy/description/annotation/AnnotationValue$Loaded;, "Lnet/bytebuddy/description/annotation/AnnotationValue$Loaded<*>;"
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 2440
    :cond_4
    const/4 v1, 0x1

    return v1
.end method

.method public resolve()Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TW;"
        }
    .end annotation

    .line 2417
    .local p0, "this":Lnet/bytebuddy/description/annotation/AnnotationValue$ForDescriptionArray$Loaded;, "Lnet/bytebuddy/description/annotation/AnnotationValue$ForDescriptionArray$Loaded<TW;>;"
    iget-object v0, p0, Lnet/bytebuddy/description/annotation/AnnotationValue$ForDescriptionArray$Loaded;->componentType:Ljava/lang/Class;

    iget-object v1, p0, Lnet/bytebuddy/description/annotation/AnnotationValue$ForDescriptionArray$Loaded;->values:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    .line 2418
    .local v0, "array":Ljava/lang/Object;, "TW;"
    const/4 v1, 0x0

    .line 2419
    .local v1, "index":I
    iget-object v2, p0, Lnet/bytebuddy/description/annotation/AnnotationValue$ForDescriptionArray$Loaded;->values:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lnet/bytebuddy/description/annotation/AnnotationValue$Loaded;

    .line 2420
    .local v3, "annotationValue":Lnet/bytebuddy/description/annotation/AnnotationValue$Loaded;, "Lnet/bytebuddy/description/annotation/AnnotationValue$Loaded<*>;"
    add-int/lit8 v4, v1, 0x1

    .end local v1    # "index":I
    .local v4, "index":I
    invoke-interface {v3}, Lnet/bytebuddy/description/annotation/AnnotationValue$Loaded;->resolve()Ljava/lang/Object;

    move-result-object v5

    invoke-static {v0, v1, v5}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 2421
    .end local v3    # "annotationValue":Lnet/bytebuddy/description/annotation/AnnotationValue$Loaded;, "Lnet/bytebuddy/description/annotation/AnnotationValue$Loaded<*>;"
    move v1, v4

    goto :goto_0

    .line 2422
    .end local v4    # "index":I
    .restart local v1    # "index":I
    :cond_0
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 2484
    .local p0, "this":Lnet/bytebuddy/description/annotation/AnnotationValue$ForDescriptionArray$Loaded;, "Lnet/bytebuddy/description/annotation/AnnotationValue$ForDescriptionArray$Loaded<TW;>;"
    sget-object v0, Lnet/bytebuddy/description/annotation/AnnotationValue$RenderingDispatcher;->CURRENT:Lnet/bytebuddy/description/annotation/AnnotationValue$RenderingDispatcher;

    iget-object v1, p0, Lnet/bytebuddy/description/annotation/AnnotationValue$ForDescriptionArray$Loaded;->values:Ljava/util/List;

    invoke-virtual {v0, v1}, Lnet/bytebuddy/description/annotation/AnnotationValue$RenderingDispatcher;->toSourceString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
