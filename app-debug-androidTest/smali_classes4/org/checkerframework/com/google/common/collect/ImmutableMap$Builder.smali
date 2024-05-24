.class public Lorg/checkerframework/com/google/common/collect/ImmutableMap$Builder;
.super Ljava/lang/Object;
.source "ImmutableMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/com/google/common/collect/ImmutableMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field entries:[Ljava/util/Map$Entry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field entriesUsed:Z

.field size:I

.field valueComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "-TV;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 258
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ImmutableMap$Builder;, "Lorg/checkerframework/com/google/common/collect/ImmutableMap$Builder<TK;TV;>;"
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lorg/checkerframework/com/google/common/collect/ImmutableMap$Builder;-><init>(I)V

    .line 259
    return-void
.end method

.method constructor <init>(I)V
    .locals 1
    .param p1, "initialCapacity"    # I

    .line 262
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ImmutableMap$Builder;, "Lorg/checkerframework/com/google/common/collect/ImmutableMap$Builder<TK;TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 263
    new-array v0, p1, [Ljava/util/Map$Entry;

    iput-object v0, p0, Lorg/checkerframework/com/google/common/collect/ImmutableMap$Builder;->entries:[Ljava/util/Map$Entry;

    .line 264
    const/4 v0, 0x0

    iput v0, p0, Lorg/checkerframework/com/google/common/collect/ImmutableMap$Builder;->size:I

    .line 265
    iput-boolean v0, p0, Lorg/checkerframework/com/google/common/collect/ImmutableMap$Builder;->entriesUsed:Z

    .line 266
    return-void
.end method

.method private ensureCapacity(I)V
    .locals 2
    .param p1, "minCapacity"    # I

    .line 269
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ImmutableMap$Builder;, "Lorg/checkerframework/com/google/common/collect/ImmutableMap$Builder<TK;TV;>;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/ImmutableMap$Builder;->entries:[Ljava/util/Map$Entry;

    array-length v1, v0

    if-le p1, v1, :cond_0

    .line 270
    array-length v1, v0

    .line 272
    invoke-static {v1, p1}, Lorg/checkerframework/com/google/common/collect/ImmutableCollection$Builder;->expandedCapacity(II)I

    move-result v1

    .line 271
    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/util/Map$Entry;

    iput-object v0, p0, Lorg/checkerframework/com/google/common/collect/ImmutableMap$Builder;->entries:[Ljava/util/Map$Entry;

    .line 273
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/checkerframework/com/google/common/collect/ImmutableMap$Builder;->entriesUsed:Z

    .line 275
    :cond_0
    return-void
.end method


# virtual methods
.method public build()Lorg/checkerframework/com/google/common/collect/ImmutableMap;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/checkerframework/com/google/common/collect/ImmutableMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 378
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ImmutableMap$Builder;, "Lorg/checkerframework/com/google/common/collect/ImmutableMap$Builder<TK;TV;>;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/ImmutableMap$Builder;->valueComparator:Ljava/util/Comparator;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 379
    iget-boolean v0, p0, Lorg/checkerframework/com/google/common/collect/ImmutableMap$Builder;->entriesUsed:Z

    if-eqz v0, :cond_0

    .line 380
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/ImmutableMap$Builder;->entries:[Ljava/util/Map$Entry;

    iget v2, p0, Lorg/checkerframework/com/google/common/collect/ImmutableMap$Builder;->size:I

    invoke-static {v0, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/util/Map$Entry;

    iput-object v0, p0, Lorg/checkerframework/com/google/common/collect/ImmutableMap$Builder;->entries:[Ljava/util/Map$Entry;

    .line 382
    :cond_0
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/ImmutableMap$Builder;->entries:[Ljava/util/Map$Entry;

    iget v2, p0, Lorg/checkerframework/com/google/common/collect/ImmutableMap$Builder;->size:I

    iget-object v3, p0, Lorg/checkerframework/com/google/common/collect/ImmutableMap$Builder;->valueComparator:Ljava/util/Comparator;

    .line 383
    invoke-static {v3}, Lorg/checkerframework/com/google/common/collect/Ordering;->from(Ljava/util/Comparator;)Lorg/checkerframework/com/google/common/collect/Ordering;

    move-result-object v3

    invoke-static {}, Lorg/checkerframework/com/google/common/collect/Maps;->valueFunction()Lorg/checkerframework/com/google/common/base/Function;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/checkerframework/com/google/common/collect/Ordering;->onResultOf(Lorg/checkerframework/com/google/common/base/Function;)Lorg/checkerframework/com/google/common/collect/Ordering;

    move-result-object v3

    .line 382
    invoke-static {v0, v1, v2, v3}, Ljava/util/Arrays;->sort([Ljava/lang/Object;IILjava/util/Comparator;)V

    .line 385
    :cond_1
    iget v0, p0, Lorg/checkerframework/com/google/common/collect/ImmutableMap$Builder;->size:I

    packed-switch v0, :pswitch_data_0

    .line 391
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/checkerframework/com/google/common/collect/ImmutableMap$Builder;->entriesUsed:Z

    .line 392
    iget-object v1, p0, Lorg/checkerframework/com/google/common/collect/ImmutableMap$Builder;->entries:[Ljava/util/Map$Entry;

    invoke-static {v0, v1}, Lorg/checkerframework/com/google/common/collect/RegularImmutableMap;->fromEntryArray(I[Ljava/util/Map$Entry;)Lorg/checkerframework/com/google/common/collect/ImmutableMap;

    move-result-object v0

    return-object v0

    .line 389
    :pswitch_0
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/ImmutableMap$Builder;->entries:[Ljava/util/Map$Entry;

    aget-object v0, v0, v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    iget-object v2, p0, Lorg/checkerframework/com/google/common/collect/ImmutableMap$Builder;->entries:[Ljava/util/Map$Entry;

    aget-object v1, v2, v1

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/checkerframework/com/google/common/collect/ImmutableMap;->of(Ljava/lang/Object;Ljava/lang/Object;)Lorg/checkerframework/com/google/common/collect/ImmutableMap;

    move-result-object v0

    return-object v0

    .line 387
    :pswitch_1
    invoke-static {}, Lorg/checkerframework/com/google/common/collect/ImmutableMap;->of()Lorg/checkerframework/com/google/common/collect/ImmutableMap;

    move-result-object v0

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method buildJdkBacked()Lorg/checkerframework/com/google/common/collect/ImmutableMap;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/checkerframework/com/google/common/collect/ImmutableMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 398
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ImmutableMap$Builder;, "Lorg/checkerframework/com/google/common/collect/ImmutableMap$Builder<TK;TV;>;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/ImmutableMap$Builder;->valueComparator:Ljava/util/Comparator;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    const-string v3, "buildJdkBacked is only for testing; can\'t use valueComparator"

    invoke-static {v0, v3}, Lorg/checkerframework/com/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 400
    iget v0, p0, Lorg/checkerframework/com/google/common/collect/ImmutableMap$Builder;->size:I

    packed-switch v0, :pswitch_data_0

    .line 406
    iput-boolean v1, p0, Lorg/checkerframework/com/google/common/collect/ImmutableMap$Builder;->entriesUsed:Z

    .line 407
    iget-object v1, p0, Lorg/checkerframework/com/google/common/collect/ImmutableMap$Builder;->entries:[Ljava/util/Map$Entry;

    invoke-static {v0, v1}, Lorg/checkerframework/com/google/common/collect/JdkBackedImmutableMap;->create(I[Ljava/util/Map$Entry;)Lorg/checkerframework/com/google/common/collect/ImmutableMap;

    move-result-object v0

    return-object v0

    .line 404
    :pswitch_0
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/ImmutableMap$Builder;->entries:[Ljava/util/Map$Entry;

    aget-object v0, v0, v2

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lorg/checkerframework/com/google/common/collect/ImmutableMap$Builder;->entries:[Ljava/util/Map$Entry;

    aget-object v1, v1, v2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/checkerframework/com/google/common/collect/ImmutableMap;->of(Ljava/lang/Object;Ljava/lang/Object;)Lorg/checkerframework/com/google/common/collect/ImmutableMap;

    move-result-object v0

    return-object v0

    .line 402
    :pswitch_1
    invoke-static {}, Lorg/checkerframework/com/google/common/collect/ImmutableMap;->of()Lorg/checkerframework/com/google/common/collect/ImmutableMap;

    move-result-object v0

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method combine(Lorg/checkerframework/com/google/common/collect/ImmutableMap$Builder;)Lorg/checkerframework/com/google/common/collect/ImmutableMap$Builder;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/google/common/collect/ImmutableMap$Builder<",
            "TK;TV;>;)",
            "Lorg/checkerframework/com/google/common/collect/ImmutableMap$Builder<",
            "TK;TV;>;"
        }
    .end annotation

    .line 351
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ImmutableMap$Builder;, "Lorg/checkerframework/com/google/common/collect/ImmutableMap$Builder<TK;TV;>;"
    .local p1, "other":Lorg/checkerframework/com/google/common/collect/ImmutableMap$Builder;, "Lorg/checkerframework/com/google/common/collect/ImmutableMap$Builder<TK;TV;>;"
    invoke-static {p1}, Lorg/checkerframework/com/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 352
    iget v0, p0, Lorg/checkerframework/com/google/common/collect/ImmutableMap$Builder;->size:I

    iget v1, p1, Lorg/checkerframework/com/google/common/collect/ImmutableMap$Builder;->size:I

    add-int/2addr v0, v1

    invoke-direct {p0, v0}, Lorg/checkerframework/com/google/common/collect/ImmutableMap$Builder;->ensureCapacity(I)V

    .line 353
    iget-object v0, p1, Lorg/checkerframework/com/google/common/collect/ImmutableMap$Builder;->entries:[Ljava/util/Map$Entry;

    iget-object v1, p0, Lorg/checkerframework/com/google/common/collect/ImmutableMap$Builder;->entries:[Ljava/util/Map$Entry;

    iget v2, p0, Lorg/checkerframework/com/google/common/collect/ImmutableMap$Builder;->size:I

    iget v3, p1, Lorg/checkerframework/com/google/common/collect/ImmutableMap$Builder;->size:I

    const/4 v4, 0x0

    invoke-static {v0, v4, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 354
    iget v0, p0, Lorg/checkerframework/com/google/common/collect/ImmutableMap$Builder;->size:I

    iget v1, p1, Lorg/checkerframework/com/google/common/collect/ImmutableMap$Builder;->size:I

    add-int/2addr v0, v1

    iput v0, p0, Lorg/checkerframework/com/google/common/collect/ImmutableMap$Builder;->size:I

    .line 355
    return-object p0
.end method

.method public orderEntriesByValue(Ljava/util/Comparator;)Lorg/checkerframework/com/google/common/collect/ImmutableMap$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator<",
            "-TV;>;)",
            "Lorg/checkerframework/com/google/common/collect/ImmutableMap$Builder<",
            "TK;TV;>;"
        }
    .end annotation

    .line 344
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ImmutableMap$Builder;, "Lorg/checkerframework/com/google/common/collect/ImmutableMap$Builder<TK;TV;>;"
    .local p1, "valueComparator":Ljava/util/Comparator;, "Ljava/util/Comparator<-TV;>;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/ImmutableMap$Builder;->valueComparator:Ljava/util/Comparator;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "valueComparator was already set"

    invoke-static {v0, v1}, Lorg/checkerframework/com/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 345
    const-string v0, "valueComparator"

    invoke-static {p1, v0}, Lorg/checkerframework/com/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Comparator;

    iput-object v0, p0, Lorg/checkerframework/com/google/common/collect/ImmutableMap$Builder;->valueComparator:Ljava/util/Comparator;

    .line 346
    return-object p0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Lorg/checkerframework/com/google/common/collect/ImmutableMap$Builder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)",
            "Lorg/checkerframework/com/google/common/collect/ImmutableMap$Builder<",
            "TK;TV;>;"
        }
    .end annotation

    .line 283
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ImmutableMap$Builder;, "Lorg/checkerframework/com/google/common/collect/ImmutableMap$Builder<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    iget v0, p0, Lorg/checkerframework/com/google/common/collect/ImmutableMap$Builder;->size:I

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lorg/checkerframework/com/google/common/collect/ImmutableMap$Builder;->ensureCapacity(I)V

    .line 284
    invoke-static {p1, p2}, Lorg/checkerframework/com/google/common/collect/ImmutableMap;->entryOf(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v0

    .line 286
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    iget-object v1, p0, Lorg/checkerframework/com/google/common/collect/ImmutableMap$Builder;->entries:[Ljava/util/Map$Entry;

    iget v2, p0, Lorg/checkerframework/com/google/common/collect/ImmutableMap$Builder;->size:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/checkerframework/com/google/common/collect/ImmutableMap$Builder;->size:I

    aput-object v0, v1, v2

    .line 287
    return-object p0
.end method

.method public put(Ljava/util/Map$Entry;)Lorg/checkerframework/com/google/common/collect/ImmutableMap$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry<",
            "+TK;+TV;>;)",
            "Lorg/checkerframework/com/google/common/collect/ImmutableMap$Builder<",
            "TK;TV;>;"
        }
    .end annotation

    .line 298
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ImmutableMap$Builder;, "Lorg/checkerframework/com/google/common/collect/ImmutableMap$Builder<TK;TV;>;"
    .local p1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<+TK;+TV;>;"
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/checkerframework/com/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lorg/checkerframework/com/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    return-object v0
.end method

.method public putAll(Ljava/lang/Iterable;)Lorg/checkerframework/com/google/common/collect/ImmutableMap$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Ljava/util/Map$Entry<",
            "+TK;+TV;>;>;)",
            "Lorg/checkerframework/com/google/common/collect/ImmutableMap$Builder<",
            "TK;TV;>;"
        }
    .end annotation

    .line 322
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ImmutableMap$Builder;, "Lorg/checkerframework/com/google/common/collect/ImmutableMap$Builder<TK;TV;>;"
    .local p1, "entries":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Ljava/util/Map$Entry<+TK;+TV;>;>;"
    instance-of v0, p1, Ljava/util/Collection;

    if-eqz v0, :cond_0

    .line 323
    iget v0, p0, Lorg/checkerframework/com/google/common/collect/ImmutableMap$Builder;->size:I

    move-object v1, p1

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v1

    add-int/2addr v0, v1

    invoke-direct {p0, v0}, Lorg/checkerframework/com/google/common/collect/ImmutableMap$Builder;->ensureCapacity(I)V

    .line 325
    :cond_0
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 326
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<+TK;+TV;>;"
    invoke-virtual {p0, v1}, Lorg/checkerframework/com/google/common/collect/ImmutableMap$Builder;->put(Ljava/util/Map$Entry;)Lorg/checkerframework/com/google/common/collect/ImmutableMap$Builder;

    .line 327
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<+TK;+TV;>;"
    goto :goto_0

    .line 328
    :cond_1
    return-object p0
.end method

.method public putAll(Ljava/util/Map;)Lorg/checkerframework/com/google/common/collect/ImmutableMap$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "+TK;+TV;>;)",
            "Lorg/checkerframework/com/google/common/collect/ImmutableMap$Builder<",
            "TK;TV;>;"
        }
    .end annotation

    .line 309
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ImmutableMap$Builder;, "Lorg/checkerframework/com/google/common/collect/ImmutableMap$Builder<TK;TV;>;"
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<+TK;+TV;>;"
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/checkerframework/com/google/common/collect/ImmutableMap$Builder;->putAll(Ljava/lang/Iterable;)Lorg/checkerframework/com/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    return-object v0
.end method
