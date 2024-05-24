.class public Lorg/checkerframework/com/google/common/collect/ImmutableSetMultimap;
.super Lorg/checkerframework/com/google/common/collect/ImmutableMultimap;
.source "ImmutableSetMultimap.java"

# interfaces
.implements Lorg/checkerframework/com/google/common/collect/SetMultimap;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/checkerframework/com/google/common/collect/ImmutableSetMultimap$SetFieldSettersHolder;,
        Lorg/checkerframework/com/google/common/collect/ImmutableSetMultimap$EntrySet;,
        Lorg/checkerframework/com/google/common/collect/ImmutableSetMultimap$Builder;
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
        "Lorg/checkerframework/com/google/common/collect/SetMultimap<",
        "TK;TV;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J


# instance fields
.field private final transient emptySet:Lorg/checkerframework/com/google/common/collect/ImmutableSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/checkerframework/com/google/common/collect/ImmutableSet<",
            "TV;>;"
        }
    .end annotation
.end field

.field private transient entries:Lorg/checkerframework/com/google/common/collect/ImmutableSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/checkerframework/com/google/common/collect/ImmutableSet<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation
.end field

.field private transient inverse:Lorg/checkerframework/com/google/common/collect/ImmutableSetMultimap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/checkerframework/com/google/common/collect/ImmutableSetMultimap<",
            "TV;TK;>;"
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/com/google/errorprone/annotations/concurrent/LazyInit;
    .end annotation
.end field


# direct methods
.method constructor <init>(Lorg/checkerframework/com/google/common/collect/ImmutableMap;ILjava/util/Comparator;)V
    .locals 1
    .param p2, "size"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/google/common/collect/ImmutableMap<",
            "TK;",
            "Lorg/checkerframework/com/google/common/collect/ImmutableSet<",
            "TV;>;>;I",
            "Ljava/util/Comparator<",
            "-TV;>;)V"
        }
    .end annotation

    .line 446
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ImmutableSetMultimap;, "Lorg/checkerframework/com/google/common/collect/ImmutableSetMultimap<TK;TV;>;"
    .local p1, "map":Lorg/checkerframework/com/google/common/collect/ImmutableMap;, "Lorg/checkerframework/com/google/common/collect/ImmutableMap<TK;Lorg/checkerframework/com/google/common/collect/ImmutableSet<TV;>;>;"
    .local p3, "valueComparator":Ljava/util/Comparator;, "Ljava/util/Comparator<-TV;>;"
    invoke-direct {p0, p1, p2}, Lorg/checkerframework/com/google/common/collect/ImmutableMultimap;-><init>(Lorg/checkerframework/com/google/common/collect/ImmutableMap;I)V

    .line 447
    invoke-static {p3}, Lorg/checkerframework/com/google/common/collect/ImmutableSetMultimap;->emptySet(Ljava/util/Comparator;)Lorg/checkerframework/com/google/common/collect/ImmutableSet;

    move-result-object v0

    iput-object v0, p0, Lorg/checkerframework/com/google/common/collect/ImmutableSetMultimap;->emptySet:Lorg/checkerframework/com/google/common/collect/ImmutableSet;

    .line 448
    return-void
.end method

.method public static builder()Lorg/checkerframework/com/google/common/collect/ImmutableSetMultimap$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">()",
            "Lorg/checkerframework/com/google/common/collect/ImmutableSetMultimap$Builder<",
            "TK;TV;>;"
        }
    .end annotation

    .line 222
    new-instance v0, Lorg/checkerframework/com/google/common/collect/ImmutableSetMultimap$Builder;

    invoke-direct {v0}, Lorg/checkerframework/com/google/common/collect/ImmutableSetMultimap$Builder;-><init>()V

    return-object v0
.end method

.method public static copyOf(Ljava/lang/Iterable;)Lorg/checkerframework/com/google/common/collect/ImmutableSetMultimap;
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
            "Lorg/checkerframework/com/google/common/collect/ImmutableSetMultimap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 409
    .local p0, "entries":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Ljava/util/Map$Entry<+TK;+TV;>;>;"
    new-instance v0, Lorg/checkerframework/com/google/common/collect/ImmutableSetMultimap$Builder;

    invoke-direct {v0}, Lorg/checkerframework/com/google/common/collect/ImmutableSetMultimap$Builder;-><init>()V

    invoke-virtual {v0, p0}, Lorg/checkerframework/com/google/common/collect/ImmutableSetMultimap$Builder;->putAll(Ljava/lang/Iterable;)Lorg/checkerframework/com/google/common/collect/ImmutableSetMultimap$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/com/google/common/collect/ImmutableSetMultimap$Builder;->build()Lorg/checkerframework/com/google/common/collect/ImmutableSetMultimap;

    move-result-object v0

    return-object v0
.end method

.method public static copyOf(Lorg/checkerframework/com/google/common/collect/Multimap;)Lorg/checkerframework/com/google/common/collect/ImmutableSetMultimap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/checkerframework/com/google/common/collect/Multimap<",
            "+TK;+TV;>;)",
            "Lorg/checkerframework/com/google/common/collect/ImmutableSetMultimap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 376
    .local p0, "multimap":Lorg/checkerframework/com/google/common/collect/Multimap;, "Lorg/checkerframework/com/google/common/collect/Multimap<+TK;+TV;>;"
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/checkerframework/com/google/common/collect/ImmutableSetMultimap;->copyOf(Lorg/checkerframework/com/google/common/collect/Multimap;Ljava/util/Comparator;)Lorg/checkerframework/com/google/common/collect/ImmutableSetMultimap;

    move-result-object v0

    return-object v0
.end method

.method private static copyOf(Lorg/checkerframework/com/google/common/collect/Multimap;Ljava/util/Comparator;)Lorg/checkerframework/com/google/common/collect/ImmutableSetMultimap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/checkerframework/com/google/common/collect/Multimap<",
            "+TK;+TV;>;",
            "Ljava/util/Comparator<",
            "-TV;>;)",
            "Lorg/checkerframework/com/google/common/collect/ImmutableSetMultimap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 381
    .local p0, "multimap":Lorg/checkerframework/com/google/common/collect/Multimap;, "Lorg/checkerframework/com/google/common/collect/Multimap<+TK;+TV;>;"
    .local p1, "valueComparator":Ljava/util/Comparator;, "Ljava/util/Comparator<-TV;>;"
    invoke-static {p0}, Lorg/checkerframework/com/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 382
    invoke-interface {p0}, Lorg/checkerframework/com/google/common/collect/Multimap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    .line 383
    invoke-static {}, Lorg/checkerframework/com/google/common/collect/ImmutableSetMultimap;->of()Lorg/checkerframework/com/google/common/collect/ImmutableSetMultimap;

    move-result-object v0

    return-object v0

    .line 386
    :cond_0
    instance-of v0, p0, Lorg/checkerframework/com/google/common/collect/ImmutableSetMultimap;

    if-eqz v0, :cond_1

    .line 388
    move-object v0, p0

    check-cast v0, Lorg/checkerframework/com/google/common/collect/ImmutableSetMultimap;

    .line 389
    .local v0, "kvMultimap":Lorg/checkerframework/com/google/common/collect/ImmutableSetMultimap;, "Lorg/checkerframework/com/google/common/collect/ImmutableSetMultimap<TK;TV;>;"
    invoke-virtual {v0}, Lorg/checkerframework/com/google/common/collect/ImmutableSetMultimap;->isPartialView()Z

    move-result v1

    if-nez v1, :cond_1

    .line 390
    return-object v0

    .line 394
    .end local v0    # "kvMultimap":Lorg/checkerframework/com/google/common/collect/ImmutableSetMultimap;, "Lorg/checkerframework/com/google/common/collect/ImmutableSetMultimap<TK;TV;>;"
    :cond_1
    invoke-interface {p0}, Lorg/checkerframework/com/google/common/collect/Multimap;->asMap()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/checkerframework/com/google/common/collect/ImmutableSetMultimap;->fromMapEntries(Ljava/util/Collection;Ljava/util/Comparator;)Lorg/checkerframework/com/google/common/collect/ImmutableSetMultimap;

    move-result-object v0

    return-object v0
.end method

.method private static emptySet(Ljava/util/Comparator;)Lorg/checkerframework/com/google/common/collect/ImmutableSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Comparator<",
            "-TV;>;)",
            "Lorg/checkerframework/com/google/common/collect/ImmutableSet<",
            "TV;>;"
        }
    .end annotation

    .line 567
    .local p0, "valueComparator":Ljava/util/Comparator;, "Ljava/util/Comparator<-TV;>;"
    if-nez p0, :cond_0

    .line 568
    invoke-static {}, Lorg/checkerframework/com/google/common/collect/ImmutableSet;->of()Lorg/checkerframework/com/google/common/collect/ImmutableSet;

    move-result-object v0

    goto :goto_0

    .line 569
    :cond_0
    invoke-static {p0}, Lorg/checkerframework/com/google/common/collect/ImmutableSortedSet;->emptySet(Ljava/util/Comparator;)Lorg/checkerframework/com/google/common/collect/RegularImmutableSortedSet;

    move-result-object v0

    .line 567
    :goto_0
    return-object v0
.end method

.method public static flatteningToImmutableSetMultimap(Ljava/util/function/Function;Ljava/util/function/Function;)Ljava/util/stream/Collector;
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
            "Lorg/checkerframework/com/google/common/collect/ImmutableSetMultimap<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 142
    .local p0, "keyFunction":Ljava/util/function/Function;, "Ljava/util/function/Function<-TT;+TK;>;"
    .local p1, "valuesFunction":Ljava/util/function/Function;, "Ljava/util/function/Function<-TT;+Ljava/util/stream/Stream<+TV;>;>;"
    invoke-static {p0}, Lorg/checkerframework/com/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    invoke-static {p1}, Lorg/checkerframework/com/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    new-instance v0, Lorg/checkerframework/com/google/common/collect/ImmutableSetMultimap$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0}, Lorg/checkerframework/com/google/common/collect/ImmutableSetMultimap$$ExternalSyntheticLambda4;-><init>(Ljava/util/function/Function;)V

    new-instance v1, Lorg/checkerframework/com/google/common/collect/ImmutableSetMultimap$$ExternalSyntheticLambda5;

    invoke-direct {v1, p1}, Lorg/checkerframework/com/google/common/collect/ImmutableSetMultimap$$ExternalSyntheticLambda5;-><init>(Ljava/util/function/Function;)V

    .line 148
    invoke-static {}, Lorg/checkerframework/com/google/common/collect/MultimapBuilder;->linkedHashKeys()Lorg/checkerframework/com/google/common/collect/MultimapBuilder$MultimapBuilderWithKeys;

    move-result-object v2

    invoke-virtual {v2}, Lorg/checkerframework/com/google/common/collect/MultimapBuilder$MultimapBuilderWithKeys;->linkedHashSetValues()Lorg/checkerframework/com/google/common/collect/MultimapBuilder$SetMultimapBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Lorg/checkerframework/com/google/common/collect/ImmutableSetMultimap$$ExternalSyntheticLambda6;

    invoke-direct {v3, v2}, Lorg/checkerframework/com/google/common/collect/ImmutableSetMultimap$$ExternalSyntheticLambda6;-><init>(Lorg/checkerframework/com/google/common/collect/MultimapBuilder$SetMultimapBuilder;)V

    .line 145
    invoke-static {v0, v1, v3}, Lorg/checkerframework/com/google/common/collect/Multimaps;->flatteningToMultimap(Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/Supplier;)Ljava/util/stream/Collector;

    move-result-object v0

    new-instance v1, Lorg/checkerframework/com/google/common/collect/ImmutableSetMultimap$$ExternalSyntheticLambda7;

    invoke-direct {v1}, Lorg/checkerframework/com/google/common/collect/ImmutableSetMultimap$$ExternalSyntheticLambda7;-><init>()V

    .line 144
    invoke-static {v0, v1}, Ljava/util/stream/Collectors;->collectingAndThen(Ljava/util/stream/Collector;Ljava/util/function/Function;)Ljava/util/stream/Collector;

    move-result-object v0

    return-object v0
.end method

.method static fromMapEntries(Ljava/util/Collection;Ljava/util/Comparator;)Lorg/checkerframework/com/google/common/collect/ImmutableSetMultimap;
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
            "Lorg/checkerframework/com/google/common/collect/ImmutableSetMultimap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 416
    .local p0, "mapEntries":Ljava/util/Collection;, "Ljava/util/Collection<+Ljava/util/Map$Entry<+TK;+Ljava/util/Collection<+TV;>;>;>;"
    .local p1, "valueComparator":Ljava/util/Comparator;, "Ljava/util/Comparator<-TV;>;"
    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 417
    invoke-static {}, Lorg/checkerframework/com/google/common/collect/ImmutableSetMultimap;->of()Lorg/checkerframework/com/google/common/collect/ImmutableSetMultimap;

    move-result-object v0

    return-object v0

    .line 419
    :cond_0
    new-instance v0, Lorg/checkerframework/com/google/common/collect/ImmutableMap$Builder;

    .line 420
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Lorg/checkerframework/com/google/common/collect/ImmutableMap$Builder;-><init>(I)V

    .line 421
    .local v0, "builder":Lorg/checkerframework/com/google/common/collect/ImmutableMap$Builder;, "Lorg/checkerframework/com/google/common/collect/ImmutableMap$Builder<TK;Lorg/checkerframework/com/google/common/collect/ImmutableSet<TV;>;>;"
    const/4 v1, 0x0

    .line 423
    .local v1, "size":I
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 424
    .local v3, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<+TK;+Ljava/util/Collection<+TV;>;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    .line 425
    .local v4, "key":Ljava/lang/Object;, "TK;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Collection;

    .line 426
    .local v5, "values":Ljava/util/Collection;, "Ljava/util/Collection<+TV;>;"
    invoke-static {p1, v5}, Lorg/checkerframework/com/google/common/collect/ImmutableSetMultimap;->valueSet(Ljava/util/Comparator;Ljava/util/Collection;)Lorg/checkerframework/com/google/common/collect/ImmutableSet;

    move-result-object v6

    .line 427
    .local v6, "set":Lorg/checkerframework/com/google/common/collect/ImmutableSet;, "Lorg/checkerframework/com/google/common/collect/ImmutableSet<TV;>;"
    invoke-virtual {v6}, Lorg/checkerframework/com/google/common/collect/ImmutableSet;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_1

    .line 428
    invoke-virtual {v0, v4, v6}, Lorg/checkerframework/com/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lorg/checkerframework/com/google/common/collect/ImmutableMap$Builder;

    .line 429
    invoke-virtual {v6}, Lorg/checkerframework/com/google/common/collect/ImmutableSet;->size()I

    move-result v7

    add-int/2addr v1, v7

    .line 431
    .end local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<+TK;+Ljava/util/Collection<+TV;>;>;"
    .end local v4    # "key":Ljava/lang/Object;, "TK;"
    .end local v5    # "values":Ljava/util/Collection;, "Ljava/util/Collection<+TV;>;"
    .end local v6    # "set":Lorg/checkerframework/com/google/common/collect/ImmutableSet;, "Lorg/checkerframework/com/google/common/collect/ImmutableSet<TV;>;"
    :cond_1
    goto :goto_0

    .line 433
    :cond_2
    new-instance v2, Lorg/checkerframework/com/google/common/collect/ImmutableSetMultimap;

    invoke-virtual {v0}, Lorg/checkerframework/com/google/common/collect/ImmutableMap$Builder;->build()Lorg/checkerframework/com/google/common/collect/ImmutableMap;

    move-result-object v3

    invoke-direct {v2, v3, v1, p1}, Lorg/checkerframework/com/google/common/collect/ImmutableSetMultimap;-><init>(Lorg/checkerframework/com/google/common/collect/ImmutableMap;ILjava/util/Comparator;)V

    return-object v2
.end method

.method private invert()Lorg/checkerframework/com/google/common/collect/ImmutableSetMultimap;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/checkerframework/com/google/common/collect/ImmutableSetMultimap<",
            "TV;TK;>;"
        }
    .end annotation

    .line 480
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ImmutableSetMultimap;, "Lorg/checkerframework/com/google/common/collect/ImmutableSetMultimap<TK;TV;>;"
    invoke-static {}, Lorg/checkerframework/com/google/common/collect/ImmutableSetMultimap;->builder()Lorg/checkerframework/com/google/common/collect/ImmutableSetMultimap$Builder;

    move-result-object v0

    .line 481
    .local v0, "builder":Lorg/checkerframework/com/google/common/collect/ImmutableSetMultimap$Builder;, "Lorg/checkerframework/com/google/common/collect/ImmutableSetMultimap$Builder<TV;TK;>;"
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/ImmutableSetMultimap;->entries()Lorg/checkerframework/com/google/common/collect/ImmutableSet;

    move-result-object v1

    invoke-virtual {v1}, Lorg/checkerframework/com/google/common/collect/ImmutableSet;->iterator()Lorg/checkerframework/com/google/common/collect/UnmodifiableIterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 482
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lorg/checkerframework/com/google/common/collect/ImmutableSetMultimap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lorg/checkerframework/com/google/common/collect/ImmutableSetMultimap$Builder;

    .line 483
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    goto :goto_0

    .line 484
    :cond_0
    invoke-virtual {v0}, Lorg/checkerframework/com/google/common/collect/ImmutableSetMultimap$Builder;->build()Lorg/checkerframework/com/google/common/collect/ImmutableSetMultimap;

    move-result-object v1

    .line 485
    .local v1, "invertedMultimap":Lorg/checkerframework/com/google/common/collect/ImmutableSetMultimap;, "Lorg/checkerframework/com/google/common/collect/ImmutableSetMultimap<TV;TK;>;"
    iput-object p0, v1, Lorg/checkerframework/com/google/common/collect/ImmutableSetMultimap;->inverse:Lorg/checkerframework/com/google/common/collect/ImmutableSetMultimap;

    .line 486
    return-object v1
.end method

.method static synthetic lambda$flatteningToImmutableSetMultimap$1(Ljava/util/function/Function;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p0, "keyFunction"    # Ljava/util/function/Function;
    .param p1, "input"    # Ljava/lang/Object;

    .line 146
    invoke-interface {p0, p1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lorg/checkerframework/com/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$flatteningToImmutableSetMultimap$2(Ljava/util/function/Function;Ljava/lang/Object;)Ljava/util/stream/Stream;
    .locals 2
    .param p0, "valuesFunction"    # Ljava/util/function/Function;
    .param p1, "input"    # Ljava/lang/Object;

    .line 147
    invoke-interface {p0, p1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/stream/Stream;

    new-instance v1, Lorg/checkerframework/com/google/common/collect/ImmutableListMultimap$$ExternalSyntheticLambda4;

    invoke-direct {v1}, Lorg/checkerframework/com/google/common/collect/ImmutableListMultimap$$ExternalSyntheticLambda4;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->peek(Ljava/util/function/Consumer;)Ljava/util/stream/Stream;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$toImmutableSetMultimap$0(Ljava/util/function/Function;Ljava/util/function/Function;Lorg/checkerframework/com/google/common/collect/ImmutableSetMultimap$Builder;Ljava/lang/Object;)V
    .locals 2
    .param p0, "keyFunction"    # Ljava/util/function/Function;
    .param p1, "valueFunction"    # Ljava/util/function/Function;
    .param p2, "builder"    # Lorg/checkerframework/com/google/common/collect/ImmutableSetMultimap$Builder;
    .param p3, "t"    # Ljava/lang/Object;

    .line 93
    invoke-interface {p0, p3}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1, p3}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Lorg/checkerframework/com/google/common/collect/ImmutableSetMultimap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lorg/checkerframework/com/google/common/collect/ImmutableSetMultimap$Builder;

    return-void
.end method

.method public static of()Lorg/checkerframework/com/google/common/collect/ImmutableSetMultimap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">()",
            "Lorg/checkerframework/com/google/common/collect/ImmutableSetMultimap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 156
    sget-object v0, Lorg/checkerframework/com/google/common/collect/EmptyImmutableSetMultimap;->INSTANCE:Lorg/checkerframework/com/google/common/collect/EmptyImmutableSetMultimap;

    return-object v0
.end method

.method public static of(Ljava/lang/Object;Ljava/lang/Object;)Lorg/checkerframework/com/google/common/collect/ImmutableSetMultimap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(TK;TV;)",
            "Lorg/checkerframework/com/google/common/collect/ImmutableSetMultimap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 161
    .local p0, "k1":Ljava/lang/Object;, "TK;"
    .local p1, "v1":Ljava/lang/Object;, "TV;"
    invoke-static {}, Lorg/checkerframework/com/google/common/collect/ImmutableSetMultimap;->builder()Lorg/checkerframework/com/google/common/collect/ImmutableSetMultimap$Builder;

    move-result-object v0

    .line 162
    .local v0, "builder":Lorg/checkerframework/com/google/common/collect/ImmutableSetMultimap$Builder;, "Lorg/checkerframework/com/google/common/collect/ImmutableSetMultimap$Builder<TK;TV;>;"
    invoke-virtual {v0, p0, p1}, Lorg/checkerframework/com/google/common/collect/ImmutableSetMultimap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lorg/checkerframework/com/google/common/collect/ImmutableSetMultimap$Builder;

    .line 163
    invoke-virtual {v0}, Lorg/checkerframework/com/google/common/collect/ImmutableSetMultimap$Builder;->build()Lorg/checkerframework/com/google/common/collect/ImmutableSetMultimap;

    move-result-object v1

    return-object v1
.end method

.method public static of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/checkerframework/com/google/common/collect/ImmutableSetMultimap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(TK;TV;TK;TV;)",
            "Lorg/checkerframework/com/google/common/collect/ImmutableSetMultimap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 171
    .local p0, "k1":Ljava/lang/Object;, "TK;"
    .local p1, "v1":Ljava/lang/Object;, "TV;"
    .local p2, "k2":Ljava/lang/Object;, "TK;"
    .local p3, "v2":Ljava/lang/Object;, "TV;"
    invoke-static {}, Lorg/checkerframework/com/google/common/collect/ImmutableSetMultimap;->builder()Lorg/checkerframework/com/google/common/collect/ImmutableSetMultimap$Builder;

    move-result-object v0

    .line 172
    .local v0, "builder":Lorg/checkerframework/com/google/common/collect/ImmutableSetMultimap$Builder;, "Lorg/checkerframework/com/google/common/collect/ImmutableSetMultimap$Builder<TK;TV;>;"
    invoke-virtual {v0, p0, p1}, Lorg/checkerframework/com/google/common/collect/ImmutableSetMultimap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lorg/checkerframework/com/google/common/collect/ImmutableSetMultimap$Builder;

    .line 173
    invoke-virtual {v0, p2, p3}, Lorg/checkerframework/com/google/common/collect/ImmutableSetMultimap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lorg/checkerframework/com/google/common/collect/ImmutableSetMultimap$Builder;

    .line 174
    invoke-virtual {v0}, Lorg/checkerframework/com/google/common/collect/ImmutableSetMultimap$Builder;->build()Lorg/checkerframework/com/google/common/collect/ImmutableSetMultimap;

    move-result-object v1

    return-object v1
.end method

.method public static of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/checkerframework/com/google/common/collect/ImmutableSetMultimap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(TK;TV;TK;TV;TK;TV;)",
            "Lorg/checkerframework/com/google/common/collect/ImmutableSetMultimap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 182
    .local p0, "k1":Ljava/lang/Object;, "TK;"
    .local p1, "v1":Ljava/lang/Object;, "TV;"
    .local p2, "k2":Ljava/lang/Object;, "TK;"
    .local p3, "v2":Ljava/lang/Object;, "TV;"
    .local p4, "k3":Ljava/lang/Object;, "TK;"
    .local p5, "v3":Ljava/lang/Object;, "TV;"
    invoke-static {}, Lorg/checkerframework/com/google/common/collect/ImmutableSetMultimap;->builder()Lorg/checkerframework/com/google/common/collect/ImmutableSetMultimap$Builder;

    move-result-object v0

    .line 183
    .local v0, "builder":Lorg/checkerframework/com/google/common/collect/ImmutableSetMultimap$Builder;, "Lorg/checkerframework/com/google/common/collect/ImmutableSetMultimap$Builder<TK;TV;>;"
    invoke-virtual {v0, p0, p1}, Lorg/checkerframework/com/google/common/collect/ImmutableSetMultimap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lorg/checkerframework/com/google/common/collect/ImmutableSetMultimap$Builder;

    .line 184
    invoke-virtual {v0, p2, p3}, Lorg/checkerframework/com/google/common/collect/ImmutableSetMultimap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lorg/checkerframework/com/google/common/collect/ImmutableSetMultimap$Builder;

    .line 185
    invoke-virtual {v0, p4, p5}, Lorg/checkerframework/com/google/common/collect/ImmutableSetMultimap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lorg/checkerframework/com/google/common/collect/ImmutableSetMultimap$Builder;

    .line 186
    invoke-virtual {v0}, Lorg/checkerframework/com/google/common/collect/ImmutableSetMultimap$Builder;->build()Lorg/checkerframework/com/google/common/collect/ImmutableSetMultimap;

    move-result-object v1

    return-object v1
.end method

.method public static of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/checkerframework/com/google/common/collect/ImmutableSetMultimap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(TK;TV;TK;TV;TK;TV;TK;TV;)",
            "Lorg/checkerframework/com/google/common/collect/ImmutableSetMultimap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 195
    .local p0, "k1":Ljava/lang/Object;, "TK;"
    .local p1, "v1":Ljava/lang/Object;, "TV;"
    .local p2, "k2":Ljava/lang/Object;, "TK;"
    .local p3, "v2":Ljava/lang/Object;, "TV;"
    .local p4, "k3":Ljava/lang/Object;, "TK;"
    .local p5, "v3":Ljava/lang/Object;, "TV;"
    .local p6, "k4":Ljava/lang/Object;, "TK;"
    .local p7, "v4":Ljava/lang/Object;, "TV;"
    invoke-static {}, Lorg/checkerframework/com/google/common/collect/ImmutableSetMultimap;->builder()Lorg/checkerframework/com/google/common/collect/ImmutableSetMultimap$Builder;

    move-result-object v0

    .line 196
    .local v0, "builder":Lorg/checkerframework/com/google/common/collect/ImmutableSetMultimap$Builder;, "Lorg/checkerframework/com/google/common/collect/ImmutableSetMultimap$Builder<TK;TV;>;"
    invoke-virtual {v0, p0, p1}, Lorg/checkerframework/com/google/common/collect/ImmutableSetMultimap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lorg/checkerframework/com/google/common/collect/ImmutableSetMultimap$Builder;

    .line 197
    invoke-virtual {v0, p2, p3}, Lorg/checkerframework/com/google/common/collect/ImmutableSetMultimap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lorg/checkerframework/com/google/common/collect/ImmutableSetMultimap$Builder;

    .line 198
    invoke-virtual {v0, p4, p5}, Lorg/checkerframework/com/google/common/collect/ImmutableSetMultimap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lorg/checkerframework/com/google/common/collect/ImmutableSetMultimap$Builder;

    .line 199
    invoke-virtual {v0, p6, p7}, Lorg/checkerframework/com/google/common/collect/ImmutableSetMultimap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lorg/checkerframework/com/google/common/collect/ImmutableSetMultimap$Builder;

    .line 200
    invoke-virtual {v0}, Lorg/checkerframework/com/google/common/collect/ImmutableSetMultimap$Builder;->build()Lorg/checkerframework/com/google/common/collect/ImmutableSetMultimap;

    move-result-object v1

    return-object v1
.end method

.method public static of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/checkerframework/com/google/common/collect/ImmutableSetMultimap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(TK;TV;TK;TV;TK;TV;TK;TV;TK;TV;)",
            "Lorg/checkerframework/com/google/common/collect/ImmutableSetMultimap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 209
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
    invoke-static {}, Lorg/checkerframework/com/google/common/collect/ImmutableSetMultimap;->builder()Lorg/checkerframework/com/google/common/collect/ImmutableSetMultimap$Builder;

    move-result-object v0

    .line 210
    .local v0, "builder":Lorg/checkerframework/com/google/common/collect/ImmutableSetMultimap$Builder;, "Lorg/checkerframework/com/google/common/collect/ImmutableSetMultimap$Builder<TK;TV;>;"
    invoke-virtual {v0, p0, p1}, Lorg/checkerframework/com/google/common/collect/ImmutableSetMultimap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lorg/checkerframework/com/google/common/collect/ImmutableSetMultimap$Builder;

    .line 211
    invoke-virtual {v0, p2, p3}, Lorg/checkerframework/com/google/common/collect/ImmutableSetMultimap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lorg/checkerframework/com/google/common/collect/ImmutableSetMultimap$Builder;

    .line 212
    invoke-virtual {v0, p4, p5}, Lorg/checkerframework/com/google/common/collect/ImmutableSetMultimap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lorg/checkerframework/com/google/common/collect/ImmutableSetMultimap$Builder;

    .line 213
    invoke-virtual {v0, p6, p7}, Lorg/checkerframework/com/google/common/collect/ImmutableSetMultimap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lorg/checkerframework/com/google/common/collect/ImmutableSetMultimap$Builder;

    .line 214
    invoke-virtual {v0, p8, p9}, Lorg/checkerframework/com/google/common/collect/ImmutableSetMultimap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lorg/checkerframework/com/google/common/collect/ImmutableSetMultimap$Builder;

    .line 215
    invoke-virtual {v0}, Lorg/checkerframework/com/google/common/collect/ImmutableSetMultimap$Builder;->build()Lorg/checkerframework/com/google/common/collect/ImmutableSetMultimap;

    move-result-object v1

    return-object v1
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 12
    .param p1, "stream"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 607
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ImmutableSetMultimap;, "Lorg/checkerframework/com/google/common/collect/ImmutableSetMultimap<TK;TV;>;"
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 608
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Comparator;

    .line 609
    .local v0, "valueComparator":Ljava/util/Comparator;, "Ljava/util/Comparator<Ljava/lang/Object;>;"
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v1

    .line 610
    .local v1, "keyCount":I
    if-ltz v1, :cond_4

    .line 613
    invoke-static {}, Lorg/checkerframework/com/google/common/collect/ImmutableMap;->builder()Lorg/checkerframework/com/google/common/collect/ImmutableMap$Builder;

    move-result-object v2

    .line 614
    .local v2, "builder":Lorg/checkerframework/com/google/common/collect/ImmutableMap$Builder;, "Lorg/checkerframework/com/google/common/collect/ImmutableMap$Builder<Ljava/lang/Object;Lorg/checkerframework/com/google/common/collect/ImmutableSet<Ljava/lang/Object;>;>;"
    const/4 v3, 0x0

    .line 616
    .local v3, "tmpSize":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v1, :cond_3

    .line 617
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v5

    .line 618
    .local v5, "key":Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v6

    .line 619
    .local v6, "valueCount":I
    if-lez v6, :cond_2

    .line 623
    invoke-static {v0}, Lorg/checkerframework/com/google/common/collect/ImmutableSetMultimap;->valuesBuilder(Ljava/util/Comparator;)Lorg/checkerframework/com/google/common/collect/ImmutableSet$Builder;

    move-result-object v7

    .line 624
    .local v7, "valuesBuilder":Lorg/checkerframework/com/google/common/collect/ImmutableSet$Builder;, "Lorg/checkerframework/com/google/common/collect/ImmutableSet$Builder<Ljava/lang/Object;>;"
    const/4 v8, 0x0

    .local v8, "j":I
    :goto_1
    if-ge v8, v6, :cond_0

    .line 625
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v7, v9}, Lorg/checkerframework/com/google/common/collect/ImmutableSet$Builder;->add(Ljava/lang/Object;)Lorg/checkerframework/com/google/common/collect/ImmutableSet$Builder;

    .line 624
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 627
    .end local v8    # "j":I
    :cond_0
    invoke-virtual {v7}, Lorg/checkerframework/com/google/common/collect/ImmutableSet$Builder;->build()Lorg/checkerframework/com/google/common/collect/ImmutableSet;

    move-result-object v8

    .line 628
    .local v8, "valueSet":Lorg/checkerframework/com/google/common/collect/ImmutableSet;, "Lorg/checkerframework/com/google/common/collect/ImmutableSet<Ljava/lang/Object;>;"
    invoke-virtual {v8}, Lorg/checkerframework/com/google/common/collect/ImmutableSet;->size()I

    move-result v9

    if-ne v9, v6, :cond_1

    .line 631
    invoke-virtual {v2, v5, v8}, Lorg/checkerframework/com/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lorg/checkerframework/com/google/common/collect/ImmutableMap$Builder;

    .line 632
    add-int/2addr v3, v6

    .line 616
    .end local v5    # "key":Ljava/lang/Object;
    .end local v6    # "valueCount":I
    .end local v7    # "valuesBuilder":Lorg/checkerframework/com/google/common/collect/ImmutableSet$Builder;, "Lorg/checkerframework/com/google/common/collect/ImmutableSet$Builder<Ljava/lang/Object;>;"
    .end local v8    # "valueSet":Lorg/checkerframework/com/google/common/collect/ImmutableSet;, "Lorg/checkerframework/com/google/common/collect/ImmutableSet<Ljava/lang/Object;>;"
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 629
    .restart local v5    # "key":Ljava/lang/Object;
    .restart local v6    # "valueCount":I
    .restart local v7    # "valuesBuilder":Lorg/checkerframework/com/google/common/collect/ImmutableSet$Builder;, "Lorg/checkerframework/com/google/common/collect/ImmutableSet$Builder<Ljava/lang/Object;>;"
    .restart local v8    # "valueSet":Lorg/checkerframework/com/google/common/collect/ImmutableSet;, "Lorg/checkerframework/com/google/common/collect/ImmutableSet<Ljava/lang/Object;>;"
    :cond_1
    new-instance v9, Ljava/io/InvalidObjectException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Duplicate key-value pairs exist for key "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 620
    .end local v7    # "valuesBuilder":Lorg/checkerframework/com/google/common/collect/ImmutableSet$Builder;, "Lorg/checkerframework/com/google/common/collect/ImmutableSet$Builder<Ljava/lang/Object;>;"
    .end local v8    # "valueSet":Lorg/checkerframework/com/google/common/collect/ImmutableSet;, "Lorg/checkerframework/com/google/common/collect/ImmutableSet<Ljava/lang/Object;>;"
    :cond_2
    new-instance v7, Ljava/io/InvalidObjectException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Invalid value count "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 637
    .end local v4    # "i":I
    .end local v5    # "key":Ljava/lang/Object;
    .end local v6    # "valueCount":I
    :cond_3
    :try_start_0
    invoke-virtual {v2}, Lorg/checkerframework/com/google/common/collect/ImmutableMap$Builder;->build()Lorg/checkerframework/com/google/common/collect/ImmutableMap;

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 640
    .local v4, "tmpMap":Lorg/checkerframework/com/google/common/collect/ImmutableMap;, "Lorg/checkerframework/com/google/common/collect/ImmutableMap<Ljava/lang/Object;Lorg/checkerframework/com/google/common/collect/ImmutableSet<Ljava/lang/Object;>;>;"
    nop

    .line 642
    sget-object v5, Lorg/checkerframework/com/google/common/collect/ImmutableMultimap$FieldSettersHolder;->MAP_FIELD_SETTER:Lorg/checkerframework/com/google/common/collect/Serialization$FieldSetter;

    invoke-virtual {v5, p0, v4}, Lorg/checkerframework/com/google/common/collect/Serialization$FieldSetter;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 643
    sget-object v5, Lorg/checkerframework/com/google/common/collect/ImmutableMultimap$FieldSettersHolder;->SIZE_FIELD_SETTER:Lorg/checkerframework/com/google/common/collect/Serialization$FieldSetter;

    invoke-virtual {v5, p0, v3}, Lorg/checkerframework/com/google/common/collect/Serialization$FieldSetter;->set(Ljava/lang/Object;I)V

    .line 644
    sget-object v5, Lorg/checkerframework/com/google/common/collect/ImmutableSetMultimap$SetFieldSettersHolder;->EMPTY_SET_FIELD_SETTER:Lorg/checkerframework/com/google/common/collect/Serialization$FieldSetter;

    invoke-static {v0}, Lorg/checkerframework/com/google/common/collect/ImmutableSetMultimap;->emptySet(Ljava/util/Comparator;)Lorg/checkerframework/com/google/common/collect/ImmutableSet;

    move-result-object v6

    invoke-virtual {v5, p0, v6}, Lorg/checkerframework/com/google/common/collect/Serialization$FieldSetter;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 645
    return-void

    .line 638
    .end local v4    # "tmpMap":Lorg/checkerframework/com/google/common/collect/ImmutableMap;, "Lorg/checkerframework/com/google/common/collect/ImmutableMap<Ljava/lang/Object;Lorg/checkerframework/com/google/common/collect/ImmutableSet<Ljava/lang/Object;>;>;"
    :catch_0
    move-exception v4

    .line 639
    .local v4, "e":Ljava/lang/IllegalArgumentException;
    new-instance v5, Ljava/io/InvalidObjectException;

    invoke-virtual {v4}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/io/InvalidObjectException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v5

    check-cast v5, Ljava/io/InvalidObjectException;

    throw v5

    .line 611
    .end local v2    # "builder":Lorg/checkerframework/com/google/common/collect/ImmutableMap$Builder;, "Lorg/checkerframework/com/google/common/collect/ImmutableMap$Builder<Ljava/lang/Object;Lorg/checkerframework/com/google/common/collect/ImmutableSet<Ljava/lang/Object;>;>;"
    .end local v3    # "tmpSize":I
    .end local v4    # "e":Ljava/lang/IllegalArgumentException;
    :cond_4
    new-instance v2, Ljava/io/InvalidObjectException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid key count "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static toImmutableSetMultimap(Ljava/util/function/Function;Ljava/util/function/Function;)Ljava/util/stream/Collector;
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
            "Lorg/checkerframework/com/google/common/collect/ImmutableSetMultimap<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 89
    .local p0, "keyFunction":Ljava/util/function/Function;, "Ljava/util/function/Function<-TT;+TK;>;"
    .local p1, "valueFunction":Ljava/util/function/Function;, "Ljava/util/function/Function<-TT;+TV;>;"
    const-string v0, "keyFunction"

    invoke-static {p0, v0}, Lorg/checkerframework/com/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    const-string v0, "valueFunction"

    invoke-static {p1, v0}, Lorg/checkerframework/com/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    new-instance v0, Lorg/checkerframework/com/google/common/collect/ImmutableSetMultimap$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lorg/checkerframework/com/google/common/collect/ImmutableSetMultimap$$ExternalSyntheticLambda0;-><init>()V

    new-instance v1, Lorg/checkerframework/com/google/common/collect/ImmutableSetMultimap$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1}, Lorg/checkerframework/com/google/common/collect/ImmutableSetMultimap$$ExternalSyntheticLambda1;-><init>(Ljava/util/function/Function;Ljava/util/function/Function;)V

    new-instance v2, Lorg/checkerframework/com/google/common/collect/ImmutableSetMultimap$$ExternalSyntheticLambda2;

    invoke-direct {v2}, Lorg/checkerframework/com/google/common/collect/ImmutableSetMultimap$$ExternalSyntheticLambda2;-><init>()V

    new-instance v3, Lorg/checkerframework/com/google/common/collect/ImmutableSetMultimap$$ExternalSyntheticLambda3;

    invoke-direct {v3}, Lorg/checkerframework/com/google/common/collect/ImmutableSetMultimap$$ExternalSyntheticLambda3;-><init>()V

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/util/stream/Collector$Characteristics;

    invoke-static {v0, v1, v2, v3, v4}, Ljava/util/stream/Collector;->of(Ljava/util/function/Supplier;Ljava/util/function/BiConsumer;Ljava/util/function/BinaryOperator;Ljava/util/function/Function;[Ljava/util/stream/Collector$Characteristics;)Ljava/util/stream/Collector;

    move-result-object v0

    return-object v0
.end method

.method private static valueSet(Ljava/util/Comparator;Ljava/util/Collection;)Lorg/checkerframework/com/google/common/collect/ImmutableSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Comparator<",
            "-TV;>;",
            "Ljava/util/Collection<",
            "+TV;>;)",
            "Lorg/checkerframework/com/google/common/collect/ImmutableSet<",
            "TV;>;"
        }
    .end annotation

    .line 561
    .local p0, "valueComparator":Ljava/util/Comparator;, "Ljava/util/Comparator<-TV;>;"
    .local p1, "values":Ljava/util/Collection;, "Ljava/util/Collection<+TV;>;"
    if-nez p0, :cond_0

    .line 562
    invoke-static {p1}, Lorg/checkerframework/com/google/common/collect/ImmutableSet;->copyOf(Ljava/util/Collection;)Lorg/checkerframework/com/google/common/collect/ImmutableSet;

    move-result-object v0

    goto :goto_0

    .line 563
    :cond_0
    invoke-static {p0, p1}, Lorg/checkerframework/com/google/common/collect/ImmutableSortedSet;->copyOf(Ljava/util/Comparator;Ljava/util/Collection;)Lorg/checkerframework/com/google/common/collect/ImmutableSortedSet;

    move-result-object v0

    .line 561
    :goto_0
    return-object v0
.end method

.method private static valuesBuilder(Ljava/util/Comparator;)Lorg/checkerframework/com/google/common/collect/ImmutableSet$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Comparator<",
            "-TV;>;)",
            "Lorg/checkerframework/com/google/common/collect/ImmutableSet$Builder<",
            "TV;>;"
        }
    .end annotation

    .line 574
    .local p0, "valueComparator":Ljava/util/Comparator;, "Ljava/util/Comparator<-TV;>;"
    if-nez p0, :cond_0

    new-instance v0, Lorg/checkerframework/com/google/common/collect/ImmutableSet$Builder;

    invoke-direct {v0}, Lorg/checkerframework/com/google/common/collect/ImmutableSet$Builder;-><init>()V

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/checkerframework/com/google/common/collect/ImmutableSortedSet$Builder;

    invoke-direct {v0, p0}, Lorg/checkerframework/com/google/common/collect/ImmutableSortedSet$Builder;-><init>(Ljava/util/Comparator;)V

    :goto_0
    return-object v0
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 1
    .param p1, "stream"    # Ljava/io/ObjectOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 585
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ImmutableSetMultimap;, "Lorg/checkerframework/com/google/common/collect/ImmutableSetMultimap<TK;TV;>;"
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 586
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/ImmutableSetMultimap;->valueComparator()Ljava/util/Comparator;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 587
    invoke-static {p0, p1}, Lorg/checkerframework/com/google/common/collect/Serialization;->writeMultimap(Lorg/checkerframework/com/google/common/collect/Multimap;Ljava/io/ObjectOutputStream;)V

    .line 588
    return-void
.end method


# virtual methods
.method public bridge synthetic entries()Ljava/util/Collection;
    .locals 1

    .line 56
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ImmutableSetMultimap;, "Lorg/checkerframework/com/google/common/collect/ImmutableSetMultimap<TK;TV;>;"
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/ImmutableSetMultimap;->entries()Lorg/checkerframework/com/google/common/collect/ImmutableSet;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic entries()Ljava/util/Set;
    .locals 1

    .line 56
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ImmutableSetMultimap;, "Lorg/checkerframework/com/google/common/collect/ImmutableSetMultimap<TK;TV;>;"
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/ImmutableSetMultimap;->entries()Lorg/checkerframework/com/google/common/collect/ImmutableSet;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic entries()Lorg/checkerframework/com/google/common/collect/ImmutableCollection;
    .locals 1

    .line 56
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ImmutableSetMultimap;, "Lorg/checkerframework/com/google/common/collect/ImmutableSetMultimap<TK;TV;>;"
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/ImmutableSetMultimap;->entries()Lorg/checkerframework/com/google/common/collect/ImmutableSet;

    move-result-object v0

    return-object v0
.end method

.method public entries()Lorg/checkerframework/com/google/common/collect/ImmutableSet;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/checkerframework/com/google/common/collect/ImmutableSet<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 523
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ImmutableSetMultimap;, "Lorg/checkerframework/com/google/common/collect/ImmutableSetMultimap<TK;TV;>;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/ImmutableSetMultimap;->entries:Lorg/checkerframework/com/google/common/collect/ImmutableSet;

    .line 524
    .local v0, "result":Lorg/checkerframework/com/google/common/collect/ImmutableSet;, "Lorg/checkerframework/com/google/common/collect/ImmutableSet<Ljava/util/Map$Entry<TK;TV;>;>;"
    if-nez v0, :cond_0

    new-instance v1, Lorg/checkerframework/com/google/common/collect/ImmutableSetMultimap$EntrySet;

    invoke-direct {v1, p0}, Lorg/checkerframework/com/google/common/collect/ImmutableSetMultimap$EntrySet;-><init>(Lorg/checkerframework/com/google/common/collect/ImmutableSetMultimap;)V

    iput-object v1, p0, Lorg/checkerframework/com/google/common/collect/ImmutableSetMultimap;->entries:Lorg/checkerframework/com/google/common/collect/ImmutableSet;

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    return-object v1
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/util/Collection;
    .locals 0

    .line 56
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ImmutableSetMultimap;, "Lorg/checkerframework/com/google/common/collect/ImmutableSetMultimap<TK;TV;>;"
    invoke-virtual {p0, p1}, Lorg/checkerframework/com/google/common/collect/ImmutableSetMultimap;->get(Ljava/lang/Object;)Lorg/checkerframework/com/google/common/collect/ImmutableSet;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/util/Set;
    .locals 0

    .line 56
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ImmutableSetMultimap;, "Lorg/checkerframework/com/google/common/collect/ImmutableSetMultimap<TK;TV;>;"
    invoke-virtual {p0, p1}, Lorg/checkerframework/com/google/common/collect/ImmutableSetMultimap;->get(Ljava/lang/Object;)Lorg/checkerframework/com/google/common/collect/ImmutableSet;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Lorg/checkerframework/com/google/common/collect/ImmutableCollection;
    .locals 0

    .line 56
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ImmutableSetMultimap;, "Lorg/checkerframework/com/google/common/collect/ImmutableSetMultimap<TK;TV;>;"
    invoke-virtual {p0, p1}, Lorg/checkerframework/com/google/common/collect/ImmutableSetMultimap;->get(Ljava/lang/Object;)Lorg/checkerframework/com/google/common/collect/ImmutableSet;

    move-result-object p1

    return-object p1
.end method

.method public get(Ljava/lang/Object;)Lorg/checkerframework/com/google/common/collect/ImmutableSet;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Lorg/checkerframework/com/google/common/collect/ImmutableSet<",
            "TV;>;"
        }
    .end annotation

    .line 460
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ImmutableSetMultimap;, "Lorg/checkerframework/com/google/common/collect/ImmutableSetMultimap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/ImmutableSetMultimap;->map:Lorg/checkerframework/com/google/common/collect/ImmutableMap;

    invoke-virtual {v0, p1}, Lorg/checkerframework/com/google/common/collect/ImmutableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/google/common/collect/ImmutableSet;

    .line 461
    .local v0, "set":Lorg/checkerframework/com/google/common/collect/ImmutableSet;, "Lorg/checkerframework/com/google/common/collect/ImmutableSet<TV;>;"
    iget-object v1, p0, Lorg/checkerframework/com/google/common/collect/ImmutableSetMultimap;->emptySet:Lorg/checkerframework/com/google/common/collect/ImmutableSet;

    invoke-static {v0, v1}, Lorg/checkerframework/com/google/common/base/MoreObjects;->firstNonNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/checkerframework/com/google/common/collect/ImmutableSet;

    return-object v1
.end method

.method public bridge synthetic inverse()Lorg/checkerframework/com/google/common/collect/ImmutableMultimap;
    .locals 1

    .line 56
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ImmutableSetMultimap;, "Lorg/checkerframework/com/google/common/collect/ImmutableSetMultimap<TK;TV;>;"
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/ImmutableSetMultimap;->inverse()Lorg/checkerframework/com/google/common/collect/ImmutableSetMultimap;

    move-result-object v0

    return-object v0
.end method

.method public inverse()Lorg/checkerframework/com/google/common/collect/ImmutableSetMultimap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/checkerframework/com/google/common/collect/ImmutableSetMultimap<",
            "TV;TK;>;"
        }
    .end annotation

    .line 475
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ImmutableSetMultimap;, "Lorg/checkerframework/com/google/common/collect/ImmutableSetMultimap<TK;TV;>;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/ImmutableSetMultimap;->inverse:Lorg/checkerframework/com/google/common/collect/ImmutableSetMultimap;

    .line 476
    .local v0, "result":Lorg/checkerframework/com/google/common/collect/ImmutableSetMultimap;, "Lorg/checkerframework/com/google/common/collect/ImmutableSetMultimap<TV;TK;>;"
    if-nez v0, :cond_0

    invoke-direct {p0}, Lorg/checkerframework/com/google/common/collect/ImmutableSetMultimap;->invert()Lorg/checkerframework/com/google/common/collect/ImmutableSetMultimap;

    move-result-object v1

    iput-object v1, p0, Lorg/checkerframework/com/google/common/collect/ImmutableSetMultimap;->inverse:Lorg/checkerframework/com/google/common/collect/ImmutableSetMultimap;

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    return-object v1
.end method

.method public bridge synthetic removeAll(Ljava/lang/Object;)Ljava/util/Collection;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 56
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ImmutableSetMultimap;, "Lorg/checkerframework/com/google/common/collect/ImmutableSetMultimap<TK;TV;>;"
    invoke-virtual {p0, p1}, Lorg/checkerframework/com/google/common/collect/ImmutableSetMultimap;->removeAll(Ljava/lang/Object;)Lorg/checkerframework/com/google/common/collect/ImmutableSet;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic removeAll(Ljava/lang/Object;)Ljava/util/Set;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 56
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ImmutableSetMultimap;, "Lorg/checkerframework/com/google/common/collect/ImmutableSetMultimap<TK;TV;>;"
    invoke-virtual {p0, p1}, Lorg/checkerframework/com/google/common/collect/ImmutableSetMultimap;->removeAll(Ljava/lang/Object;)Lorg/checkerframework/com/google/common/collect/ImmutableSet;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic removeAll(Ljava/lang/Object;)Lorg/checkerframework/com/google/common/collect/ImmutableCollection;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 56
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ImmutableSetMultimap;, "Lorg/checkerframework/com/google/common/collect/ImmutableSetMultimap<TK;TV;>;"
    invoke-virtual {p0, p1}, Lorg/checkerframework/com/google/common/collect/ImmutableSetMultimap;->removeAll(Ljava/lang/Object;)Lorg/checkerframework/com/google/common/collect/ImmutableSet;

    move-result-object p1

    return-object p1
.end method

.method public removeAll(Ljava/lang/Object;)Lorg/checkerframework/com/google/common/collect/ImmutableSet;
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lorg/checkerframework/com/google/common/collect/ImmutableSet<",
            "TV;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 499
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ImmutableSetMultimap;, "Lorg/checkerframework/com/google/common/collect/ImmutableSetMultimap<TK;TV;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public bridge synthetic replaceValues(Ljava/lang/Object;Ljava/lang/Iterable;)Ljava/util/Collection;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 56
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ImmutableSetMultimap;, "Lorg/checkerframework/com/google/common/collect/ImmutableSetMultimap<TK;TV;>;"
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/google/common/collect/ImmutableSetMultimap;->replaceValues(Ljava/lang/Object;Ljava/lang/Iterable;)Lorg/checkerframework/com/google/common/collect/ImmutableSet;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic replaceValues(Ljava/lang/Object;Ljava/lang/Iterable;)Ljava/util/Set;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 56
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ImmutableSetMultimap;, "Lorg/checkerframework/com/google/common/collect/ImmutableSetMultimap<TK;TV;>;"
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/google/common/collect/ImmutableSetMultimap;->replaceValues(Ljava/lang/Object;Ljava/lang/Iterable;)Lorg/checkerframework/com/google/common/collect/ImmutableSet;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic replaceValues(Ljava/lang/Object;Ljava/lang/Iterable;)Lorg/checkerframework/com/google/common/collect/ImmutableCollection;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 56
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ImmutableSetMultimap;, "Lorg/checkerframework/com/google/common/collect/ImmutableSetMultimap<TK;TV;>;"
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/google/common/collect/ImmutableSetMultimap;->replaceValues(Ljava/lang/Object;Ljava/lang/Iterable;)Lorg/checkerframework/com/google/common/collect/ImmutableSet;

    move-result-object p1

    return-object p1
.end method

.method public replaceValues(Ljava/lang/Object;Ljava/lang/Iterable;)Lorg/checkerframework/com/google/common/collect/ImmutableSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Ljava/lang/Iterable<",
            "+TV;>;)",
            "Lorg/checkerframework/com/google/common/collect/ImmutableSet<",
            "TV;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 512
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ImmutableSetMultimap;, "Lorg/checkerframework/com/google/common/collect/ImmutableSetMultimap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "values":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+TV;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method valueComparator()Ljava/util/Comparator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator<",
            "-TV;>;"
        }
    .end annotation

    .line 592
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ImmutableSetMultimap;, "Lorg/checkerframework/com/google/common/collect/ImmutableSetMultimap<TK;TV;>;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/ImmutableSetMultimap;->emptySet:Lorg/checkerframework/com/google/common/collect/ImmutableSet;

    instance-of v1, v0, Lorg/checkerframework/com/google/common/collect/ImmutableSortedSet;

    if-eqz v1, :cond_0

    check-cast v0, Lorg/checkerframework/com/google/common/collect/ImmutableSortedSet;

    .line 593
    invoke-virtual {v0}, Lorg/checkerframework/com/google/common/collect/ImmutableSortedSet;->comparator()Ljava/util/Comparator;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 592
    :goto_0
    return-object v0
.end method
