.class public Lorg/checkerframework/com/google/common/collect/ImmutableListMultimap;
.super Lorg/checkerframework/com/google/common/collect/ImmutableMultimap;
.source "ImmutableListMultimap.java"

# interfaces
.implements Lorg/checkerframework/com/google/common/collect/ListMultimap;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/checkerframework/com/google/common/collect/ImmutableListMultimap$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/checkerframework/com/google/common/collect/ImmutableMultimap<",
        "TK;TV;>;",
        "Lorg/checkerframework/com/google/common/collect/ListMultimap<",
        "TK;TV;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J


# instance fields
.field private transient inverse:Lorg/checkerframework/com/google/common/collect/ImmutableListMultimap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/checkerframework/com/google/common/collect/ImmutableListMultimap<",
            "TV;TK;>;"
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/com/google/errorprone/annotations/concurrent/LazyInit;
    .end annotation
.end field


# direct methods
.method constructor <init>(Lorg/checkerframework/com/google/common/collect/ImmutableMap;I)V
    .locals 0
    .param p2, "size"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/google/common/collect/ImmutableMap<",
            "TK;",
            "Lorg/checkerframework/com/google/common/collect/ImmutableList<",
            "TV;>;>;I)V"
        }
    .end annotation

    .line 391
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ImmutableListMultimap;, "Lorg/checkerframework/com/google/common/collect/ImmutableListMultimap<TK;TV;>;"
    .local p1, "map":Lorg/checkerframework/com/google/common/collect/ImmutableMap;, "Lorg/checkerframework/com/google/common/collect/ImmutableMap<TK;Lorg/checkerframework/com/google/common/collect/ImmutableList<TV;>;>;"
    invoke-direct {p0, p1, p2}, Lorg/checkerframework/com/google/common/collect/ImmutableMultimap;-><init>(Lorg/checkerframework/com/google/common/collect/ImmutableMap;I)V

    .line 392
    return-void
.end method

.method public static builder()Lorg/checkerframework/com/google/common/collect/ImmutableListMultimap$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">()",
            "Lorg/checkerframework/com/google/common/collect/ImmutableListMultimap$Builder<",
            "TK;TV;>;"
        }
    .end annotation

    .line 200
    new-instance v0, Lorg/checkerframework/com/google/common/collect/ImmutableListMultimap$Builder;

    invoke-direct {v0}, Lorg/checkerframework/com/google/common/collect/ImmutableListMultimap$Builder;-><init>()V

    return-object v0
.end method

.method public static copyOf(Ljava/lang/Iterable;)Lorg/checkerframework/com/google/common/collect/ImmutableListMultimap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "+",
            "Ljava/util/Map$Entry<",
            "+TK;+TV;>;>;)",
            "Lorg/checkerframework/com/google/common/collect/ImmutableListMultimap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 360
    .local p0, "entries":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Ljava/util/Map$Entry<+TK;+TV;>;>;"
    new-instance v0, Lorg/checkerframework/com/google/common/collect/ImmutableListMultimap$Builder;

    invoke-direct {v0}, Lorg/checkerframework/com/google/common/collect/ImmutableListMultimap$Builder;-><init>()V

    invoke-virtual {v0, p0}, Lorg/checkerframework/com/google/common/collect/ImmutableListMultimap$Builder;->putAll(Ljava/lang/Iterable;)Lorg/checkerframework/com/google/common/collect/ImmutableListMultimap$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/com/google/common/collect/ImmutableListMultimap$Builder;->build()Lorg/checkerframework/com/google/common/collect/ImmutableListMultimap;

    move-result-object v0

    return-object v0
.end method

.method public static copyOf(Lorg/checkerframework/com/google/common/collect/Multimap;)Lorg/checkerframework/com/google/common/collect/ImmutableListMultimap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/checkerframework/com/google/common/collect/Multimap<",
            "+TK;+TV;>;)",
            "Lorg/checkerframework/com/google/common/collect/ImmutableListMultimap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 333
    .local p0, "multimap":Lorg/checkerframework/com/google/common/collect/Multimap;, "Lorg/checkerframework/com/google/common/collect/Multimap<+TK;+TV;>;"
    invoke-interface {p0}, Lorg/checkerframework/com/google/common/collect/Multimap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 334
    invoke-static {}, Lorg/checkerframework/com/google/common/collect/ImmutableListMultimap;->of()Lorg/checkerframework/com/google/common/collect/ImmutableListMultimap;

    move-result-object v0

    return-object v0

    .line 338
    :cond_0
    instance-of v0, p0, Lorg/checkerframework/com/google/common/collect/ImmutableListMultimap;

    if-eqz v0, :cond_1

    .line 340
    move-object v0, p0

    check-cast v0, Lorg/checkerframework/com/google/common/collect/ImmutableListMultimap;

    .line 341
    .local v0, "kvMultimap":Lorg/checkerframework/com/google/common/collect/ImmutableListMultimap;, "Lorg/checkerframework/com/google/common/collect/ImmutableListMultimap<TK;TV;>;"
    invoke-virtual {v0}, Lorg/checkerframework/com/google/common/collect/ImmutableListMultimap;->isPartialView()Z

    move-result v1

    if-nez v1, :cond_1

    .line 342
    return-object v0

    .line 346
    .end local v0    # "kvMultimap":Lorg/checkerframework/com/google/common/collect/ImmutableListMultimap;, "Lorg/checkerframework/com/google/common/collect/ImmutableListMultimap<TK;TV;>;"
    :cond_1
    invoke-interface {p0}, Lorg/checkerframework/com/google/common/collect/Multimap;->asMap()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/checkerframework/com/google/common/collect/ImmutableListMultimap;->fromMapEntries(Ljava/util/Collection;Ljava/util/Comparator;)Lorg/checkerframework/com/google/common/collect/ImmutableListMultimap;

    move-result-object v0

    return-object v0
.end method

.method public static flatteningToImmutableListMultimap(Ljava/util/function/Function;Ljava/util/function/Function;)Ljava/util/stream/Collector;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/Function<",
            "-TT;+TK;>;",
            "Ljava/util/function/Function<",
            "-TT;+",
            "Ljava/util/stream/Stream<",
            "+TV;>;>;)",
            "Ljava/util/stream/Collector<",
            "TT;*",
            "Lorg/checkerframework/com/google/common/collect/ImmutableListMultimap<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 129
    .local p0, "keyFunction":Ljava/util/function/Function;, "Ljava/util/function/Function<-TT;+TK;>;"
    .local p1, "valuesFunction":Ljava/util/function/Function;, "Ljava/util/function/Function<-TT;+Ljava/util/stream/Stream<+TV;>;>;"
    invoke-static {p0}, Lorg/checkerframework/com/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    invoke-static {p1}, Lorg/checkerframework/com/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    new-instance v0, Lorg/checkerframework/com/google/common/collect/ImmutableListMultimap$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lorg/checkerframework/com/google/common/collect/ImmutableListMultimap$$ExternalSyntheticLambda0;-><init>(Ljava/util/function/Function;)V

    new-instance v1, Lorg/checkerframework/com/google/common/collect/ImmutableListMultimap$$ExternalSyntheticLambda1;

    invoke-direct {v1, p1}, Lorg/checkerframework/com/google/common/collect/ImmutableListMultimap$$ExternalSyntheticLambda1;-><init>(Ljava/util/function/Function;)V

    .line 135
    invoke-static {}, Lorg/checkerframework/com/google/common/collect/MultimapBuilder;->linkedHashKeys()Lorg/checkerframework/com/google/common/collect/MultimapBuilder$MultimapBuilderWithKeys;

    move-result-object v2

    invoke-virtual {v2}, Lorg/checkerframework/com/google/common/collect/MultimapBuilder$MultimapBuilderWithKeys;->arrayListValues()Lorg/checkerframework/com/google/common/collect/MultimapBuilder$ListMultimapBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Lorg/checkerframework/com/google/common/collect/ImmutableListMultimap$$ExternalSyntheticLambda2;

    invoke-direct {v3, v2}, Lorg/checkerframework/com/google/common/collect/ImmutableListMultimap$$ExternalSyntheticLambda2;-><init>(Lorg/checkerframework/com/google/common/collect/MultimapBuilder$ListMultimapBuilder;)V

    .line 132
    invoke-static {v0, v1, v3}, Lorg/checkerframework/com/google/common/collect/Multimaps;->flatteningToMultimap(Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/Supplier;)Ljava/util/stream/Collector;

    move-result-object v0

    new-instance v1, Lorg/checkerframework/com/google/common/collect/ImmutableListMultimap$$ExternalSyntheticLambda3;

    invoke-direct {v1}, Lorg/checkerframework/com/google/common/collect/ImmutableListMultimap$$ExternalSyntheticLambda3;-><init>()V

    .line 131
    invoke-static {v0, v1}, Ljava/util/stream/Collectors;->collectingAndThen(Ljava/util/stream/Collector;Ljava/util/function/Function;)Ljava/util/stream/Collector;

    move-result-object v0

    return-object v0
.end method

.method static fromMapEntries(Ljava/util/Collection;Ljava/util/Comparator;)Lorg/checkerframework/com/google/common/collect/ImmutableListMultimap;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection<",
            "+",
            "Ljava/util/Map$Entry<",
            "+TK;+",
            "Ljava/util/Collection<",
            "+TV;>;>;>;",
            "Ljava/util/Comparator<",
            "-TV;>;)",
            "Lorg/checkerframework/com/google/common/collect/ImmutableListMultimap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 367
    .local p0, "mapEntries":Ljava/util/Collection;, "Ljava/util/Collection<+Ljava/util/Map$Entry<+TK;+Ljava/util/Collection<+TV;>;>;>;"
    .local p1, "valueComparator":Ljava/util/Comparator;, "Ljava/util/Comparator<-TV;>;"
    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 368
    invoke-static {}, Lorg/checkerframework/com/google/common/collect/ImmutableListMultimap;->of()Lorg/checkerframework/com/google/common/collect/ImmutableListMultimap;

    move-result-object v0

    return-object v0

    .line 370
    :cond_0
    new-instance v0, Lorg/checkerframework/com/google/common/collect/ImmutableMap$Builder;

    .line 371
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Lorg/checkerframework/com/google/common/collect/ImmutableMap$Builder;-><init>(I)V

    .line 372
    .local v0, "builder":Lorg/checkerframework/com/google/common/collect/ImmutableMap$Builder;, "Lorg/checkerframework/com/google/common/collect/ImmutableMap$Builder<TK;Lorg/checkerframework/com/google/common/collect/ImmutableList<TV;>;>;"
    const/4 v1, 0x0

    .line 374
    .local v1, "size":I
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 375
    .local v3, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<+TK;+Ljava/util/Collection<+TV;>;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    .line 376
    .local v4, "key":Ljava/lang/Object;, "TK;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Collection;

    .line 377
    .local v5, "values":Ljava/util/Collection;, "Ljava/util/Collection<+TV;>;"
    if-nez p1, :cond_1

    .line 379
    invoke-static {v5}, Lorg/checkerframework/com/google/common/collect/ImmutableList;->copyOf(Ljava/util/Collection;)Lorg/checkerframework/com/google/common/collect/ImmutableList;

    move-result-object v6

    goto :goto_1

    .line 380
    :cond_1
    invoke-static {p1, v5}, Lorg/checkerframework/com/google/common/collect/ImmutableList;->sortedCopyOf(Ljava/util/Comparator;Ljava/lang/Iterable;)Lorg/checkerframework/com/google/common/collect/ImmutableList;

    move-result-object v6

    :goto_1
    nop

    .line 381
    .local v6, "list":Lorg/checkerframework/com/google/common/collect/ImmutableList;, "Lorg/checkerframework/com/google/common/collect/ImmutableList<TV;>;"
    invoke-virtual {v6}, Lorg/checkerframework/com/google/common/collect/ImmutableList;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_2

    .line 382
    invoke-virtual {v0, v4, v6}, Lorg/checkerframework/com/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lorg/checkerframework/com/google/common/collect/ImmutableMap$Builder;

    .line 383
    invoke-virtual {v6}, Lorg/checkerframework/com/google/common/collect/ImmutableList;->size()I

    move-result v7

    add-int/2addr v1, v7

    .line 385
    .end local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<+TK;+Ljava/util/Collection<+TV;>;>;"
    .end local v4    # "key":Ljava/lang/Object;, "TK;"
    .end local v5    # "values":Ljava/util/Collection;, "Ljava/util/Collection<+TV;>;"
    .end local v6    # "list":Lorg/checkerframework/com/google/common/collect/ImmutableList;, "Lorg/checkerframework/com/google/common/collect/ImmutableList<TV;>;"
    :cond_2
    goto :goto_0

    .line 387
    :cond_3
    new-instance v2, Lorg/checkerframework/com/google/common/collect/ImmutableListMultimap;

    invoke-virtual {v0}, Lorg/checkerframework/com/google/common/collect/ImmutableMap$Builder;->build()Lorg/checkerframework/com/google/common/collect/ImmutableMap;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Lorg/checkerframework/com/google/common/collect/ImmutableListMultimap;-><init>(Lorg/checkerframework/com/google/common/collect/ImmutableMap;I)V

    return-object v2
.end method

.method private invert()Lorg/checkerframework/com/google/common/collect/ImmutableListMultimap;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/checkerframework/com/google/common/collect/ImmutableListMultimap<",
            "TV;TK;>;"
        }
    .end annotation

    .line 426
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ImmutableListMultimap;, "Lorg/checkerframework/com/google/common/collect/ImmutableListMultimap<TK;TV;>;"
    invoke-static {}, Lorg/checkerframework/com/google/common/collect/ImmutableListMultimap;->builder()Lorg/checkerframework/com/google/common/collect/ImmutableListMultimap$Builder;

    move-result-object v0

    .line 427
    .local v0, "builder":Lorg/checkerframework/com/google/common/collect/ImmutableListMultimap$Builder;, "Lorg/checkerframework/com/google/common/collect/ImmutableListMultimap$Builder<TV;TK;>;"
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/ImmutableListMultimap;->entries()Lorg/checkerframework/com/google/common/collect/ImmutableCollection;

    move-result-object v1

    invoke-virtual {v1}, Lorg/checkerframework/com/google/common/collect/ImmutableCollection;->iterator()Lorg/checkerframework/com/google/common/collect/UnmodifiableIterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 428
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lorg/checkerframework/com/google/common/collect/ImmutableListMultimap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lorg/checkerframework/com/google/common/collect/ImmutableListMultimap$Builder;

    .line 429
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    goto :goto_0

    .line 430
    :cond_0
    invoke-virtual {v0}, Lorg/checkerframework/com/google/common/collect/ImmutableListMultimap$Builder;->build()Lorg/checkerframework/com/google/common/collect/ImmutableListMultimap;

    move-result-object v1

    .line 431
    .local v1, "invertedMultimap":Lorg/checkerframework/com/google/common/collect/ImmutableListMultimap;, "Lorg/checkerframework/com/google/common/collect/ImmutableListMultimap<TV;TK;>;"
    iput-object p0, v1, Lorg/checkerframework/com/google/common/collect/ImmutableListMultimap;->inverse:Lorg/checkerframework/com/google/common/collect/ImmutableListMultimap;

    .line 432
    return-object v1
.end method

.method static synthetic lambda$flatteningToImmutableListMultimap$1(Ljava/util/function/Function;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p0, "keyFunction"    # Ljava/util/function/Function;
    .param p1, "input"    # Ljava/lang/Object;

    .line 133
    invoke-interface {p0, p1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lorg/checkerframework/com/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$flatteningToImmutableListMultimap$2(Ljava/util/function/Function;Ljava/lang/Object;)Ljava/util/stream/Stream;
    .locals 2
    .param p0, "valuesFunction"    # Ljava/util/function/Function;
    .param p1, "input"    # Ljava/lang/Object;

    .line 134
    invoke-interface {p0, p1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/stream/Stream;

    new-instance v1, Lorg/checkerframework/com/google/common/collect/ImmutableListMultimap$$ExternalSyntheticLambda4;

    invoke-direct {v1}, Lorg/checkerframework/com/google/common/collect/ImmutableListMultimap$$ExternalSyntheticLambda4;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->peek(Ljava/util/function/Consumer;)Ljava/util/stream/Stream;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$toImmutableListMultimap$0(Ljava/util/function/Function;Ljava/util/function/Function;Lorg/checkerframework/com/google/common/collect/ImmutableListMultimap$Builder;Ljava/lang/Object;)V
    .locals 2
    .param p0, "keyFunction"    # Ljava/util/function/Function;
    .param p1, "valueFunction"    # Ljava/util/function/Function;
    .param p2, "builder"    # Lorg/checkerframework/com/google/common/collect/ImmutableListMultimap$Builder;
    .param p3, "t"    # Ljava/lang/Object;

    .line 89
    invoke-interface {p0, p3}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1, p3}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Lorg/checkerframework/com/google/common/collect/ImmutableListMultimap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lorg/checkerframework/com/google/common/collect/ImmutableListMultimap$Builder;

    return-void
.end method

.method public static of()Lorg/checkerframework/com/google/common/collect/ImmutableListMultimap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">()",
            "Lorg/checkerframework/com/google/common/collect/ImmutableListMultimap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 143
    sget-object v0, Lorg/checkerframework/com/google/common/collect/EmptyImmutableListMultimap;->INSTANCE:Lorg/checkerframework/com/google/common/collect/EmptyImmutableListMultimap;

    return-object v0
.end method

.method public static of(Ljava/lang/Object;Ljava/lang/Object;)Lorg/checkerframework/com/google/common/collect/ImmutableListMultimap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(TK;TV;)",
            "Lorg/checkerframework/com/google/common/collect/ImmutableListMultimap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 148
    .local p0, "k1":Ljava/lang/Object;, "TK;"
    .local p1, "v1":Ljava/lang/Object;, "TV;"
    invoke-static {}, Lorg/checkerframework/com/google/common/collect/ImmutableListMultimap;->builder()Lorg/checkerframework/com/google/common/collect/ImmutableListMultimap$Builder;

    move-result-object v0

    .line 149
    .local v0, "builder":Lorg/checkerframework/com/google/common/collect/ImmutableListMultimap$Builder;, "Lorg/checkerframework/com/google/common/collect/ImmutableListMultimap$Builder<TK;TV;>;"
    invoke-virtual {v0, p0, p1}, Lorg/checkerframework/com/google/common/collect/ImmutableListMultimap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lorg/checkerframework/com/google/common/collect/ImmutableListMultimap$Builder;

    .line 150
    invoke-virtual {v0}, Lorg/checkerframework/com/google/common/collect/ImmutableListMultimap$Builder;->build()Lorg/checkerframework/com/google/common/collect/ImmutableListMultimap;

    move-result-object v1

    return-object v1
.end method

.method public static of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/checkerframework/com/google/common/collect/ImmutableListMultimap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(TK;TV;TK;TV;)",
            "Lorg/checkerframework/com/google/common/collect/ImmutableListMultimap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 155
    .local p0, "k1":Ljava/lang/Object;, "TK;"
    .local p1, "v1":Ljava/lang/Object;, "TV;"
    .local p2, "k2":Ljava/lang/Object;, "TK;"
    .local p3, "v2":Ljava/lang/Object;, "TV;"
    invoke-static {}, Lorg/checkerframework/com/google/common/collect/ImmutableListMultimap;->builder()Lorg/checkerframework/com/google/common/collect/ImmutableListMultimap$Builder;

    move-result-object v0

    .line 156
    .local v0, "builder":Lorg/checkerframework/com/google/common/collect/ImmutableListMultimap$Builder;, "Lorg/checkerframework/com/google/common/collect/ImmutableListMultimap$Builder<TK;TV;>;"
    invoke-virtual {v0, p0, p1}, Lorg/checkerframework/com/google/common/collect/ImmutableListMultimap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lorg/checkerframework/com/google/common/collect/ImmutableListMultimap$Builder;

    .line 157
    invoke-virtual {v0, p2, p3}, Lorg/checkerframework/com/google/common/collect/ImmutableListMultimap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lorg/checkerframework/com/google/common/collect/ImmutableListMultimap$Builder;

    .line 158
    invoke-virtual {v0}, Lorg/checkerframework/com/google/common/collect/ImmutableListMultimap$Builder;->build()Lorg/checkerframework/com/google/common/collect/ImmutableListMultimap;

    move-result-object v1

    return-object v1
.end method

.method public static of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/checkerframework/com/google/common/collect/ImmutableListMultimap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(TK;TV;TK;TV;TK;TV;)",
            "Lorg/checkerframework/com/google/common/collect/ImmutableListMultimap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 163
    .local p0, "k1":Ljava/lang/Object;, "TK;"
    .local p1, "v1":Ljava/lang/Object;, "TV;"
    .local p2, "k2":Ljava/lang/Object;, "TK;"
    .local p3, "v2":Ljava/lang/Object;, "TV;"
    .local p4, "k3":Ljava/lang/Object;, "TK;"
    .local p5, "v3":Ljava/lang/Object;, "TV;"
    invoke-static {}, Lorg/checkerframework/com/google/common/collect/ImmutableListMultimap;->builder()Lorg/checkerframework/com/google/common/collect/ImmutableListMultimap$Builder;

    move-result-object v0

    .line 164
    .local v0, "builder":Lorg/checkerframework/com/google/common/collect/ImmutableListMultimap$Builder;, "Lorg/checkerframework/com/google/common/collect/ImmutableListMultimap$Builder<TK;TV;>;"
    invoke-virtual {v0, p0, p1}, Lorg/checkerframework/com/google/common/collect/ImmutableListMultimap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lorg/checkerframework/com/google/common/collect/ImmutableListMultimap$Builder;

    .line 165
    invoke-virtual {v0, p2, p3}, Lorg/checkerframework/com/google/common/collect/ImmutableListMultimap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lorg/checkerframework/com/google/common/collect/ImmutableListMultimap$Builder;

    .line 166
    invoke-virtual {v0, p4, p5}, Lorg/checkerframework/com/google/common/collect/ImmutableListMultimap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lorg/checkerframework/com/google/common/collect/ImmutableListMultimap$Builder;

    .line 167
    invoke-virtual {v0}, Lorg/checkerframework/com/google/common/collect/ImmutableListMultimap$Builder;->build()Lorg/checkerframework/com/google/common/collect/ImmutableListMultimap;

    move-result-object v1

    return-object v1
.end method

.method public static of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/checkerframework/com/google/common/collect/ImmutableListMultimap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(TK;TV;TK;TV;TK;TV;TK;TV;)",
            "Lorg/checkerframework/com/google/common/collect/ImmutableListMultimap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 173
    .local p0, "k1":Ljava/lang/Object;, "TK;"
    .local p1, "v1":Ljava/lang/Object;, "TV;"
    .local p2, "k2":Ljava/lang/Object;, "TK;"
    .local p3, "v2":Ljava/lang/Object;, "TV;"
    .local p4, "k3":Ljava/lang/Object;, "TK;"
    .local p5, "v3":Ljava/lang/Object;, "TV;"
    .local p6, "k4":Ljava/lang/Object;, "TK;"
    .local p7, "v4":Ljava/lang/Object;, "TV;"
    invoke-static {}, Lorg/checkerframework/com/google/common/collect/ImmutableListMultimap;->builder()Lorg/checkerframework/com/google/common/collect/ImmutableListMultimap$Builder;

    move-result-object v0

    .line 174
    .local v0, "builder":Lorg/checkerframework/com/google/common/collect/ImmutableListMultimap$Builder;, "Lorg/checkerframework/com/google/common/collect/ImmutableListMultimap$Builder<TK;TV;>;"
    invoke-virtual {v0, p0, p1}, Lorg/checkerframework/com/google/common/collect/ImmutableListMultimap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lorg/checkerframework/com/google/common/collect/ImmutableListMultimap$Builder;

    .line 175
    invoke-virtual {v0, p2, p3}, Lorg/checkerframework/com/google/common/collect/ImmutableListMultimap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lorg/checkerframework/com/google/common/collect/ImmutableListMultimap$Builder;

    .line 176
    invoke-virtual {v0, p4, p5}, Lorg/checkerframework/com/google/common/collect/ImmutableListMultimap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lorg/checkerframework/com/google/common/collect/ImmutableListMultimap$Builder;

    .line 177
    invoke-virtual {v0, p6, p7}, Lorg/checkerframework/com/google/common/collect/ImmutableListMultimap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lorg/checkerframework/com/google/common/collect/ImmutableListMultimap$Builder;

    .line 178
    invoke-virtual {v0}, Lorg/checkerframework/com/google/common/collect/ImmutableListMultimap$Builder;->build()Lorg/checkerframework/com/google/common/collect/ImmutableListMultimap;

    move-result-object v1

    return-object v1
.end method

.method public static of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/checkerframework/com/google/common/collect/ImmutableListMultimap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(TK;TV;TK;TV;TK;TV;TK;TV;TK;TV;)",
            "Lorg/checkerframework/com/google/common/collect/ImmutableListMultimap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 184
    .local p0, "k1":Ljava/lang/Object;, "TK;"
    .local p1, "v1":Ljava/lang/Object;, "TV;"
    .local p2, "k2":Ljava/lang/Object;, "TK;"
    .local p3, "v2":Ljava/lang/Object;, "TV;"
    .local p4, "k3":Ljava/lang/Object;, "TK;"
    .local p5, "v3":Ljava/lang/Object;, "TV;"
    .local p6, "k4":Ljava/lang/Object;, "TK;"
    .local p7, "v4":Ljava/lang/Object;, "TV;"
    .local p8, "k5":Ljava/lang/Object;, "TK;"
    .local p9, "v5":Ljava/lang/Object;, "TV;"
    invoke-static {}, Lorg/checkerframework/com/google/common/collect/ImmutableListMultimap;->builder()Lorg/checkerframework/com/google/common/collect/ImmutableListMultimap$Builder;

    move-result-object v0

    .line 185
    .local v0, "builder":Lorg/checkerframework/com/google/common/collect/ImmutableListMultimap$Builder;, "Lorg/checkerframework/com/google/common/collect/ImmutableListMultimap$Builder<TK;TV;>;"
    invoke-virtual {v0, p0, p1}, Lorg/checkerframework/com/google/common/collect/ImmutableListMultimap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lorg/checkerframework/com/google/common/collect/ImmutableListMultimap$Builder;

    .line 186
    invoke-virtual {v0, p2, p3}, Lorg/checkerframework/com/google/common/collect/ImmutableListMultimap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lorg/checkerframework/com/google/common/collect/ImmutableListMultimap$Builder;

    .line 187
    invoke-virtual {v0, p4, p5}, Lorg/checkerframework/com/google/common/collect/ImmutableListMultimap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lorg/checkerframework/com/google/common/collect/ImmutableListMultimap$Builder;

    .line 188
    invoke-virtual {v0, p6, p7}, Lorg/checkerframework/com/google/common/collect/ImmutableListMultimap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lorg/checkerframework/com/google/common/collect/ImmutableListMultimap$Builder;

    .line 189
    invoke-virtual {v0, p8, p9}, Lorg/checkerframework/com/google/common/collect/ImmutableListMultimap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lorg/checkerframework/com/google/common/collect/ImmutableListMultimap$Builder;

    .line 190
    invoke-virtual {v0}, Lorg/checkerframework/com/google/common/collect/ImmutableListMultimap$Builder;->build()Lorg/checkerframework/com/google/common/collect/ImmutableListMultimap;

    move-result-object v1

    return-object v1
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 9
    .param p1, "stream"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 473
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ImmutableListMultimap;, "Lorg/checkerframework/com/google/common/collect/ImmutableListMultimap<TK;TV;>;"
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 474
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v0

    .line 475
    .local v0, "keyCount":I
    if-ltz v0, :cond_3

    .line 478
    invoke-static {}, Lorg/checkerframework/com/google/common/collect/ImmutableMap;->builder()Lorg/checkerframework/com/google/common/collect/ImmutableMap$Builder;

    move-result-object v1

    .line 479
    .local v1, "builder":Lorg/checkerframework/com/google/common/collect/ImmutableMap$Builder;, "Lorg/checkerframework/com/google/common/collect/ImmutableMap$Builder<Ljava/lang/Object;Lorg/checkerframework/com/google/common/collect/ImmutableList<Ljava/lang/Object;>;>;"
    const/4 v2, 0x0

    .line 481
    .local v2, "tmpSize":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_2

    .line 482
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v4

    .line 483
    .local v4, "key":Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v5

    .line 484
    .local v5, "valueCount":I
    if-lez v5, :cond_1

    .line 488
    invoke-static {}, Lorg/checkerframework/com/google/common/collect/ImmutableList;->builder()Lorg/checkerframework/com/google/common/collect/ImmutableList$Builder;

    move-result-object v6

    .line 489
    .local v6, "valuesBuilder":Lorg/checkerframework/com/google/common/collect/ImmutableList$Builder;, "Lorg/checkerframework/com/google/common/collect/ImmutableList$Builder<Ljava/lang/Object;>;"
    const/4 v7, 0x0

    .local v7, "j":I
    :goto_1
    if-ge v7, v5, :cond_0

    .line 490
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v6, v8}, Lorg/checkerframework/com/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lorg/checkerframework/com/google/common/collect/ImmutableList$Builder;

    .line 489
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 492
    .end local v7    # "j":I
    :cond_0
    invoke-virtual {v6}, Lorg/checkerframework/com/google/common/collect/ImmutableList$Builder;->build()Lorg/checkerframework/com/google/common/collect/ImmutableList;

    move-result-object v7

    invoke-virtual {v1, v4, v7}, Lorg/checkerframework/com/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lorg/checkerframework/com/google/common/collect/ImmutableMap$Builder;

    .line 493
    add-int/2addr v2, v5

    .line 481
    .end local v4    # "key":Ljava/lang/Object;
    .end local v5    # "valueCount":I
    .end local v6    # "valuesBuilder":Lorg/checkerframework/com/google/common/collect/ImmutableList$Builder;, "Lorg/checkerframework/com/google/common/collect/ImmutableList$Builder<Ljava/lang/Object;>;"
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 485
    .restart local v4    # "key":Ljava/lang/Object;
    .restart local v5    # "valueCount":I
    :cond_1
    new-instance v6, Ljava/io/InvalidObjectException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Invalid value count "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 498
    .end local v3    # "i":I
    .end local v4    # "key":Ljava/lang/Object;
    .end local v5    # "valueCount":I
    :cond_2
    :try_start_0
    invoke-virtual {v1}, Lorg/checkerframework/com/google/common/collect/ImmutableMap$Builder;->build()Lorg/checkerframework/com/google/common/collect/ImmutableMap;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 501
    .local v3, "tmpMap":Lorg/checkerframework/com/google/common/collect/ImmutableMap;, "Lorg/checkerframework/com/google/common/collect/ImmutableMap<Ljava/lang/Object;Lorg/checkerframework/com/google/common/collect/ImmutableList<Ljava/lang/Object;>;>;"
    nop

    .line 503
    sget-object v4, Lorg/checkerframework/com/google/common/collect/ImmutableMultimap$FieldSettersHolder;->MAP_FIELD_SETTER:Lorg/checkerframework/com/google/common/collect/Serialization$FieldSetter;

    invoke-virtual {v4, p0, v3}, Lorg/checkerframework/com/google/common/collect/Serialization$FieldSetter;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 504
    sget-object v4, Lorg/checkerframework/com/google/common/collect/ImmutableMultimap$FieldSettersHolder;->SIZE_FIELD_SETTER:Lorg/checkerframework/com/google/common/collect/Serialization$FieldSetter;

    invoke-virtual {v4, p0, v2}, Lorg/checkerframework/com/google/common/collect/Serialization$FieldSetter;->set(Ljava/lang/Object;I)V

    .line 505
    return-void

    .line 499
    .end local v3    # "tmpMap":Lorg/checkerframework/com/google/common/collect/ImmutableMap;, "Lorg/checkerframework/com/google/common/collect/ImmutableMap<Ljava/lang/Object;Lorg/checkerframework/com/google/common/collect/ImmutableList<Ljava/lang/Object;>;>;"
    :catch_0
    move-exception v3

    .line 500
    .local v3, "e":Ljava/lang/IllegalArgumentException;
    new-instance v4, Ljava/io/InvalidObjectException;

    invoke-virtual {v3}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/io/InvalidObjectException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v4

    check-cast v4, Ljava/io/InvalidObjectException;

    throw v4

    .line 476
    .end local v1    # "builder":Lorg/checkerframework/com/google/common/collect/ImmutableMap$Builder;, "Lorg/checkerframework/com/google/common/collect/ImmutableMap$Builder<Ljava/lang/Object;Lorg/checkerframework/com/google/common/collect/ImmutableList<Ljava/lang/Object;>;>;"
    .end local v2    # "tmpSize":I
    .end local v3    # "e":Ljava/lang/IllegalArgumentException;
    :cond_3
    new-instance v1, Ljava/io/InvalidObjectException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid key count "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static toImmutableListMultimap(Ljava/util/function/Function;Ljava/util/function/Function;)Ljava/util/stream/Collector;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/Function<",
            "-TT;+TK;>;",
            "Ljava/util/function/Function<",
            "-TT;+TV;>;)",
            "Ljava/util/stream/Collector<",
            "TT;*",
            "Lorg/checkerframework/com/google/common/collect/ImmutableListMultimap<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 85
    .local p0, "keyFunction":Ljava/util/function/Function;, "Ljava/util/function/Function<-TT;+TK;>;"
    .local p1, "valueFunction":Ljava/util/function/Function;, "Ljava/util/function/Function<-TT;+TV;>;"
    const-string v0, "keyFunction"

    invoke-static {p0, v0}, Lorg/checkerframework/com/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    const-string v0, "valueFunction"

    invoke-static {p1, v0}, Lorg/checkerframework/com/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    new-instance v0, Lorg/checkerframework/com/google/common/collect/ImmutableListMultimap$$ExternalSyntheticLambda5;

    invoke-direct {v0}, Lorg/checkerframework/com/google/common/collect/ImmutableListMultimap$$ExternalSyntheticLambda5;-><init>()V

    new-instance v1, Lorg/checkerframework/com/google/common/collect/ImmutableListMultimap$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0, p1}, Lorg/checkerframework/com/google/common/collect/ImmutableListMultimap$$ExternalSyntheticLambda6;-><init>(Ljava/util/function/Function;Ljava/util/function/Function;)V

    new-instance v2, Lorg/checkerframework/com/google/common/collect/ImmutableListMultimap$$ExternalSyntheticLambda7;

    invoke-direct {v2}, Lorg/checkerframework/com/google/common/collect/ImmutableListMultimap$$ExternalSyntheticLambda7;-><init>()V

    new-instance v3, Lorg/checkerframework/com/google/common/collect/ImmutableListMultimap$$ExternalSyntheticLambda8;

    invoke-direct {v3}, Lorg/checkerframework/com/google/common/collect/ImmutableListMultimap$$ExternalSyntheticLambda8;-><init>()V

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/util/stream/Collector$Characteristics;

    invoke-static {v0, v1, v2, v3, v4}, Ljava/util/stream/Collector;->of(Ljava/util/function/Supplier;Ljava/util/function/BiConsumer;Ljava/util/function/BinaryOperator;Ljava/util/function/Function;[Ljava/util/stream/Collector$Characteristics;)Ljava/util/stream/Collector;

    move-result-object v0

    return-object v0
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 0
    .param p1, "stream"    # Ljava/io/ObjectOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 467
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ImmutableListMultimap;, "Lorg/checkerframework/com/google/common/collect/ImmutableListMultimap<TK;TV;>;"
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 468
    invoke-static {p0, p1}, Lorg/checkerframework/com/google/common/collect/Serialization;->writeMultimap(Lorg/checkerframework/com/google/common/collect/Multimap;Ljava/io/ObjectOutputStream;)V

    .line 469
    return-void
.end method


# virtual methods
.method public bridge synthetic get(Ljava/lang/Object;)Ljava/util/Collection;
    .locals 0

    .line 52
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ImmutableListMultimap;, "Lorg/checkerframework/com/google/common/collect/ImmutableListMultimap<TK;TV;>;"
    invoke-virtual {p0, p1}, Lorg/checkerframework/com/google/common/collect/ImmutableListMultimap;->get(Ljava/lang/Object;)Lorg/checkerframework/com/google/common/collect/ImmutableList;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/util/List;
    .locals 0

    .line 52
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ImmutableListMultimap;, "Lorg/checkerframework/com/google/common/collect/ImmutableListMultimap<TK;TV;>;"
    invoke-virtual {p0, p1}, Lorg/checkerframework/com/google/common/collect/ImmutableListMultimap;->get(Ljava/lang/Object;)Lorg/checkerframework/com/google/common/collect/ImmutableList;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Lorg/checkerframework/com/google/common/collect/ImmutableCollection;
    .locals 0

    .line 52
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ImmutableListMultimap;, "Lorg/checkerframework/com/google/common/collect/ImmutableListMultimap<TK;TV;>;"
    invoke-virtual {p0, p1}, Lorg/checkerframework/com/google/common/collect/ImmutableListMultimap;->get(Ljava/lang/Object;)Lorg/checkerframework/com/google/common/collect/ImmutableList;

    move-result-object p1

    return-object p1
.end method

.method public get(Ljava/lang/Object;)Lorg/checkerframework/com/google/common/collect/ImmutableList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Lorg/checkerframework/com/google/common/collect/ImmutableList<",
            "TV;>;"
        }
    .end annotation

    .line 404
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ImmutableListMultimap;, "Lorg/checkerframework/com/google/common/collect/ImmutableListMultimap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/ImmutableListMultimap;->map:Lorg/checkerframework/com/google/common/collect/ImmutableMap;

    invoke-virtual {v0, p1}, Lorg/checkerframework/com/google/common/collect/ImmutableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/google/common/collect/ImmutableList;

    .line 405
    .local v0, "list":Lorg/checkerframework/com/google/common/collect/ImmutableList;, "Lorg/checkerframework/com/google/common/collect/ImmutableList<TV;>;"
    if-nez v0, :cond_0

    invoke-static {}, Lorg/checkerframework/com/google/common/collect/ImmutableList;->of()Lorg/checkerframework/com/google/common/collect/ImmutableList;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    return-object v1
.end method

.method public inverse()Lorg/checkerframework/com/google/common/collect/ImmutableListMultimap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/checkerframework/com/google/common/collect/ImmutableListMultimap<",
            "TV;TK;>;"
        }
    .end annotation

    .line 421
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ImmutableListMultimap;, "Lorg/checkerframework/com/google/common/collect/ImmutableListMultimap<TK;TV;>;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/ImmutableListMultimap;->inverse:Lorg/checkerframework/com/google/common/collect/ImmutableListMultimap;

    .line 422
    .local v0, "result":Lorg/checkerframework/com/google/common/collect/ImmutableListMultimap;, "Lorg/checkerframework/com/google/common/collect/ImmutableListMultimap<TV;TK;>;"
    if-nez v0, :cond_0

    invoke-direct {p0}, Lorg/checkerframework/com/google/common/collect/ImmutableListMultimap;->invert()Lorg/checkerframework/com/google/common/collect/ImmutableListMultimap;

    move-result-object v1

    iput-object v1, p0, Lorg/checkerframework/com/google/common/collect/ImmutableListMultimap;->inverse:Lorg/checkerframework/com/google/common/collect/ImmutableListMultimap;

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    return-object v1
.end method

.method public bridge synthetic inverse()Lorg/checkerframework/com/google/common/collect/ImmutableMultimap;
    .locals 1

    .line 52
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ImmutableListMultimap;, "Lorg/checkerframework/com/google/common/collect/ImmutableListMultimap<TK;TV;>;"
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/ImmutableListMultimap;->inverse()Lorg/checkerframework/com/google/common/collect/ImmutableListMultimap;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic removeAll(Ljava/lang/Object;)Ljava/util/Collection;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 52
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ImmutableListMultimap;, "Lorg/checkerframework/com/google/common/collect/ImmutableListMultimap<TK;TV;>;"
    invoke-virtual {p0, p1}, Lorg/checkerframework/com/google/common/collect/ImmutableListMultimap;->removeAll(Ljava/lang/Object;)Lorg/checkerframework/com/google/common/collect/ImmutableList;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic removeAll(Ljava/lang/Object;)Ljava/util/List;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 52
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ImmutableListMultimap;, "Lorg/checkerframework/com/google/common/collect/ImmutableListMultimap<TK;TV;>;"
    invoke-virtual {p0, p1}, Lorg/checkerframework/com/google/common/collect/ImmutableListMultimap;->removeAll(Ljava/lang/Object;)Lorg/checkerframework/com/google/common/collect/ImmutableList;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic removeAll(Ljava/lang/Object;)Lorg/checkerframework/com/google/common/collect/ImmutableCollection;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 52
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ImmutableListMultimap;, "Lorg/checkerframework/com/google/common/collect/ImmutableListMultimap<TK;TV;>;"
    invoke-virtual {p0, p1}, Lorg/checkerframework/com/google/common/collect/ImmutableListMultimap;->removeAll(Ljava/lang/Object;)Lorg/checkerframework/com/google/common/collect/ImmutableList;

    move-result-object p1

    return-object p1
.end method

.method public removeAll(Ljava/lang/Object;)Lorg/checkerframework/com/google/common/collect/ImmutableList;
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lorg/checkerframework/com/google/common/collect/ImmutableList<",
            "TV;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 445
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ImmutableListMultimap;, "Lorg/checkerframework/com/google/common/collect/ImmutableListMultimap<TK;TV;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public bridge synthetic replaceValues(Ljava/lang/Object;Ljava/lang/Iterable;)Ljava/util/Collection;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 52
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ImmutableListMultimap;, "Lorg/checkerframework/com/google/common/collect/ImmutableListMultimap<TK;TV;>;"
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/google/common/collect/ImmutableListMultimap;->replaceValues(Ljava/lang/Object;Ljava/lang/Iterable;)Lorg/checkerframework/com/google/common/collect/ImmutableList;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic replaceValues(Ljava/lang/Object;Ljava/lang/Iterable;)Ljava/util/List;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 52
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ImmutableListMultimap;, "Lorg/checkerframework/com/google/common/collect/ImmutableListMultimap<TK;TV;>;"
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/google/common/collect/ImmutableListMultimap;->replaceValues(Ljava/lang/Object;Ljava/lang/Iterable;)Lorg/checkerframework/com/google/common/collect/ImmutableList;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic replaceValues(Ljava/lang/Object;Ljava/lang/Iterable;)Lorg/checkerframework/com/google/common/collect/ImmutableCollection;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 52
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ImmutableListMultimap;, "Lorg/checkerframework/com/google/common/collect/ImmutableListMultimap<TK;TV;>;"
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/google/common/collect/ImmutableListMultimap;->replaceValues(Ljava/lang/Object;Ljava/lang/Iterable;)Lorg/checkerframework/com/google/common/collect/ImmutableList;

    move-result-object p1

    return-object p1
.end method

.method public replaceValues(Ljava/lang/Object;Ljava/lang/Iterable;)Lorg/checkerframework/com/google/common/collect/ImmutableList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Ljava/lang/Iterable<",
            "+TV;>;)",
            "Lorg/checkerframework/com/google/common/collect/ImmutableList<",
            "TV;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 458
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ImmutableListMultimap;, "Lorg/checkerframework/com/google/common/collect/ImmutableListMultimap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "values":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+TV;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
