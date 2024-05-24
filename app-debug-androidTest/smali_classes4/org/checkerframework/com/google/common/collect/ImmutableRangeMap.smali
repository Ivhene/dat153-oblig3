.class public Lorg/checkerframework/com/google/common/collect/ImmutableRangeMap;
.super Ljava/lang/Object;
.source "ImmutableRangeMap.java"

# interfaces
.implements Lorg/checkerframework/com/google/common/collect/RangeMap;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/checkerframework/com/google/common/collect/ImmutableRangeMap$SerializedForm;,
        Lorg/checkerframework/com/google/common/collect/ImmutableRangeMap$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K::",
        "Ljava/lang/Comparable<",
        "*>;V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/checkerframework/com/google/common/collect/RangeMap<",
        "TK;TV;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final EMPTY:Lorg/checkerframework/com/google/common/collect/ImmutableRangeMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/checkerframework/com/google/common/collect/ImmutableRangeMap<",
            "Ljava/lang/Comparable<",
            "*>;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J


# instance fields
.field private final transient ranges:Lorg/checkerframework/com/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/checkerframework/com/google/common/collect/ImmutableList<",
            "Lorg/checkerframework/com/google/common/collect/Range<",
            "TK;>;>;"
        }
    .end annotation
.end field

.field private final transient values:Lorg/checkerframework/com/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/checkerframework/com/google/common/collect/ImmutableList<",
            "TV;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 48
    new-instance v0, Lorg/checkerframework/com/google/common/collect/ImmutableRangeMap;

    .line 49
    invoke-static {}, Lorg/checkerframework/com/google/common/collect/ImmutableList;->of()Lorg/checkerframework/com/google/common/collect/ImmutableList;

    move-result-object v1

    invoke-static {}, Lorg/checkerframework/com/google/common/collect/ImmutableList;->of()Lorg/checkerframework/com/google/common/collect/ImmutableList;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/checkerframework/com/google/common/collect/ImmutableRangeMap;-><init>(Lorg/checkerframework/com/google/common/collect/ImmutableList;Lorg/checkerframework/com/google/common/collect/ImmutableList;)V

    sput-object v0, Lorg/checkerframework/com/google/common/collect/ImmutableRangeMap;->EMPTY:Lorg/checkerframework/com/google/common/collect/ImmutableRangeMap;

    .line 48
    return-void
.end method

.method constructor <init>(Lorg/checkerframework/com/google/common/collect/ImmutableList;Lorg/checkerframework/com/google/common/collect/ImmutableList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/google/common/collect/ImmutableList<",
            "Lorg/checkerframework/com/google/common/collect/Range<",
            "TK;>;>;",
            "Lorg/checkerframework/com/google/common/collect/ImmutableList<",
            "TV;>;)V"
        }
    .end annotation

    .line 166
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ImmutableRangeMap;, "Lorg/checkerframework/com/google/common/collect/ImmutableRangeMap<TK;TV;>;"
    .local p1, "ranges":Lorg/checkerframework/com/google/common/collect/ImmutableList;, "Lorg/checkerframework/com/google/common/collect/ImmutableList<Lorg/checkerframework/com/google/common/collect/Range<TK;>;>;"
    .local p2, "values":Lorg/checkerframework/com/google/common/collect/ImmutableList;, "Lorg/checkerframework/com/google/common/collect/ImmutableList<TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 167
    iput-object p1, p0, Lorg/checkerframework/com/google/common/collect/ImmutableRangeMap;->ranges:Lorg/checkerframework/com/google/common/collect/ImmutableList;

    .line 168
    iput-object p2, p0, Lorg/checkerframework/com/google/common/collect/ImmutableRangeMap;->values:Lorg/checkerframework/com/google/common/collect/ImmutableList;

    .line 169
    return-void
.end method

.method static synthetic access$000(Lorg/checkerframework/com/google/common/collect/ImmutableRangeMap;)Lorg/checkerframework/com/google/common/collect/ImmutableList;
    .locals 1
    .param p0, "x0"    # Lorg/checkerframework/com/google/common/collect/ImmutableRangeMap;

    .line 46
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/ImmutableRangeMap;->ranges:Lorg/checkerframework/com/google/common/collect/ImmutableList;

    return-object v0
.end method

.method public static builder()Lorg/checkerframework/com/google/common/collect/ImmutableRangeMap$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K::",
            "Ljava/lang/Comparable<",
            "*>;V:",
            "Ljava/lang/Object;",
            ">()",
            "Lorg/checkerframework/com/google/common/collect/ImmutableRangeMap$Builder<",
            "TK;TV;>;"
        }
    .end annotation

    .line 93
    new-instance v0, Lorg/checkerframework/com/google/common/collect/ImmutableRangeMap$Builder;

    invoke-direct {v0}, Lorg/checkerframework/com/google/common/collect/ImmutableRangeMap$Builder;-><init>()V

    return-object v0
.end method

.method public static copyOf(Lorg/checkerframework/com/google/common/collect/RangeMap;)Lorg/checkerframework/com/google/common/collect/ImmutableRangeMap;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K::",
            "Ljava/lang/Comparable<",
            "*>;V:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/checkerframework/com/google/common/collect/RangeMap<",
            "TK;+TV;>;)",
            "Lorg/checkerframework/com/google/common/collect/ImmutableRangeMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 78
    .local p0, "rangeMap":Lorg/checkerframework/com/google/common/collect/RangeMap;, "Lorg/checkerframework/com/google/common/collect/RangeMap<TK;+TV;>;"
    instance-of v0, p0, Lorg/checkerframework/com/google/common/collect/ImmutableRangeMap;

    if-eqz v0, :cond_0

    .line 79
    move-object v0, p0

    check-cast v0, Lorg/checkerframework/com/google/common/collect/ImmutableRangeMap;

    return-object v0

    .line 81
    :cond_0
    invoke-interface {p0}, Lorg/checkerframework/com/google/common/collect/RangeMap;->asMapOfRanges()Ljava/util/Map;

    move-result-object v0

    .line 82
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Lorg/checkerframework/com/google/common/collect/Range<TK;>;+TV;>;"
    new-instance v1, Lorg/checkerframework/com/google/common/collect/ImmutableList$Builder;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v2

    invoke-direct {v1, v2}, Lorg/checkerframework/com/google/common/collect/ImmutableList$Builder;-><init>(I)V

    .line 83
    .local v1, "rangesBuilder":Lorg/checkerframework/com/google/common/collect/ImmutableList$Builder;, "Lorg/checkerframework/com/google/common/collect/ImmutableList$Builder<Lorg/checkerframework/com/google/common/collect/Range<TK;>;>;"
    new-instance v2, Lorg/checkerframework/com/google/common/collect/ImmutableList$Builder;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v3

    invoke-direct {v2, v3}, Lorg/checkerframework/com/google/common/collect/ImmutableList$Builder;-><init>(I)V

    .line 84
    .local v2, "valuesBuilder":Lorg/checkerframework/com/google/common/collect/ImmutableList$Builder;, "Lorg/checkerframework/com/google/common/collect/ImmutableList$Builder<TV;>;"
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 85
    .local v4, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lorg/checkerframework/com/google/common/collect/Range<TK;>;+TV;>;"
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v1, v5}, Lorg/checkerframework/com/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lorg/checkerframework/com/google/common/collect/ImmutableList$Builder;

    .line 86
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v2, v5}, Lorg/checkerframework/com/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lorg/checkerframework/com/google/common/collect/ImmutableList$Builder;

    .line 87
    .end local v4    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lorg/checkerframework/com/google/common/collect/Range<TK;>;+TV;>;"
    goto :goto_0

    .line 88
    :cond_1
    new-instance v3, Lorg/checkerframework/com/google/common/collect/ImmutableRangeMap;

    invoke-virtual {v1}, Lorg/checkerframework/com/google/common/collect/ImmutableList$Builder;->build()Lorg/checkerframework/com/google/common/collect/ImmutableList;

    move-result-object v4

    invoke-virtual {v2}, Lorg/checkerframework/com/google/common/collect/ImmutableList$Builder;->build()Lorg/checkerframework/com/google/common/collect/ImmutableList;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lorg/checkerframework/com/google/common/collect/ImmutableRangeMap;-><init>(Lorg/checkerframework/com/google/common/collect/ImmutableList;Lorg/checkerframework/com/google/common/collect/ImmutableList;)V

    return-object v3
.end method

.method public static of()Lorg/checkerframework/com/google/common/collect/ImmutableRangeMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K::",
            "Ljava/lang/Comparable<",
            "*>;V:",
            "Ljava/lang/Object;",
            ">()",
            "Lorg/checkerframework/com/google/common/collect/ImmutableRangeMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 67
    sget-object v0, Lorg/checkerframework/com/google/common/collect/ImmutableRangeMap;->EMPTY:Lorg/checkerframework/com/google/common/collect/ImmutableRangeMap;

    return-object v0
.end method

.method public static of(Lorg/checkerframework/com/google/common/collect/Range;Ljava/lang/Object;)Lorg/checkerframework/com/google/common/collect/ImmutableRangeMap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K::",
            "Ljava/lang/Comparable<",
            "*>;V:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/checkerframework/com/google/common/collect/Range<",
            "TK;>;TV;)",
            "Lorg/checkerframework/com/google/common/collect/ImmutableRangeMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 72
    .local p0, "range":Lorg/checkerframework/com/google/common/collect/Range;, "Lorg/checkerframework/com/google/common/collect/Range<TK;>;"
    .local p1, "value":Ljava/lang/Object;, "TV;"
    new-instance v0, Lorg/checkerframework/com/google/common/collect/ImmutableRangeMap;

    invoke-static {p0}, Lorg/checkerframework/com/google/common/collect/ImmutableList;->of(Ljava/lang/Object;)Lorg/checkerframework/com/google/common/collect/ImmutableList;

    move-result-object v1

    invoke-static {p1}, Lorg/checkerframework/com/google/common/collect/ImmutableList;->of(Ljava/lang/Object;)Lorg/checkerframework/com/google/common/collect/ImmutableList;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/checkerframework/com/google/common/collect/ImmutableRangeMap;-><init>(Lorg/checkerframework/com/google/common/collect/ImmutableList;Lorg/checkerframework/com/google/common/collect/ImmutableList;)V

    return-object v0
.end method

.method public static toImmutableRangeMap(Ljava/util/function/Function;Ljava/util/function/Function;)Ljava/util/stream/Collector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "K::",
            "Ljava/lang/Comparable<",
            "-TK;>;V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/Function<",
            "-TT;",
            "Lorg/checkerframework/com/google/common/collect/Range<",
            "TK;>;>;",
            "Ljava/util/function/Function<",
            "-TT;+TV;>;)",
            "Ljava/util/stream/Collector<",
            "TT;*",
            "Lorg/checkerframework/com/google/common/collect/ImmutableRangeMap<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 61
    .local p0, "keyFunction":Ljava/util/function/Function;, "Ljava/util/function/Function<-TT;Lorg/checkerframework/com/google/common/collect/Range<TK;>;>;"
    .local p1, "valueFunction":Ljava/util/function/Function;, "Ljava/util/function/Function<-TT;+TV;>;"
    invoke-static {p0, p1}, Lorg/checkerframework/com/google/common/collect/CollectCollectors;->toImmutableRangeMap(Ljava/util/function/Function;Ljava/util/function/Function;)Ljava/util/stream/Collector;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public bridge synthetic asDescendingMapOfRanges()Ljava/util/Map;
    .locals 1

    .line 44
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ImmutableRangeMap;, "Lorg/checkerframework/com/google/common/collect/ImmutableRangeMap<TK;TV;>;"
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/ImmutableRangeMap;->asDescendingMapOfRanges()Lorg/checkerframework/com/google/common/collect/ImmutableMap;

    move-result-object v0

    return-object v0
.end method

.method public asDescendingMapOfRanges()Lorg/checkerframework/com/google/common/collect/ImmutableMap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/checkerframework/com/google/common/collect/ImmutableMap<",
            "Lorg/checkerframework/com/google/common/collect/Range<",
            "TK;>;TV;>;"
        }
    .end annotation

    .line 302
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ImmutableRangeMap;, "Lorg/checkerframework/com/google/common/collect/ImmutableRangeMap<TK;TV;>;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/ImmutableRangeMap;->ranges:Lorg/checkerframework/com/google/common/collect/ImmutableList;

    invoke-virtual {v0}, Lorg/checkerframework/com/google/common/collect/ImmutableList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 303
    invoke-static {}, Lorg/checkerframework/com/google/common/collect/ImmutableMap;->of()Lorg/checkerframework/com/google/common/collect/ImmutableMap;

    move-result-object v0

    return-object v0

    .line 305
    :cond_0
    new-instance v0, Lorg/checkerframework/com/google/common/collect/RegularImmutableSortedSet;

    iget-object v1, p0, Lorg/checkerframework/com/google/common/collect/ImmutableRangeMap;->ranges:Lorg/checkerframework/com/google/common/collect/ImmutableList;

    .line 306
    invoke-virtual {v1}, Lorg/checkerframework/com/google/common/collect/ImmutableList;->reverse()Lorg/checkerframework/com/google/common/collect/ImmutableList;

    move-result-object v1

    invoke-static {}, Lorg/checkerframework/com/google/common/collect/Range;->rangeLexOrdering()Lorg/checkerframework/com/google/common/collect/Ordering;

    move-result-object v2

    invoke-virtual {v2}, Lorg/checkerframework/com/google/common/collect/Ordering;->reverse()Lorg/checkerframework/com/google/common/collect/Ordering;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/checkerframework/com/google/common/collect/RegularImmutableSortedSet;-><init>(Lorg/checkerframework/com/google/common/collect/ImmutableList;Ljava/util/Comparator;)V

    .line 307
    .local v0, "rangeSet":Lorg/checkerframework/com/google/common/collect/RegularImmutableSortedSet;, "Lorg/checkerframework/com/google/common/collect/RegularImmutableSortedSet<Lorg/checkerframework/com/google/common/collect/Range<TK;>;>;"
    new-instance v1, Lorg/checkerframework/com/google/common/collect/ImmutableSortedMap;

    iget-object v2, p0, Lorg/checkerframework/com/google/common/collect/ImmutableRangeMap;->values:Lorg/checkerframework/com/google/common/collect/ImmutableList;

    invoke-virtual {v2}, Lorg/checkerframework/com/google/common/collect/ImmutableList;->reverse()Lorg/checkerframework/com/google/common/collect/ImmutableList;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lorg/checkerframework/com/google/common/collect/ImmutableSortedMap;-><init>(Lorg/checkerframework/com/google/common/collect/RegularImmutableSortedSet;Lorg/checkerframework/com/google/common/collect/ImmutableList;)V

    return-object v1
.end method

.method public bridge synthetic asMapOfRanges()Ljava/util/Map;
    .locals 1

    .line 44
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ImmutableRangeMap;, "Lorg/checkerframework/com/google/common/collect/ImmutableRangeMap<TK;TV;>;"
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/ImmutableRangeMap;->asMapOfRanges()Lorg/checkerframework/com/google/common/collect/ImmutableMap;

    move-result-object v0

    return-object v0
.end method

.method public asMapOfRanges()Lorg/checkerframework/com/google/common/collect/ImmutableMap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/checkerframework/com/google/common/collect/ImmutableMap<",
            "Lorg/checkerframework/com/google/common/collect/Range<",
            "TK;>;TV;>;"
        }
    .end annotation

    .line 292
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ImmutableRangeMap;, "Lorg/checkerframework/com/google/common/collect/ImmutableRangeMap<TK;TV;>;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/ImmutableRangeMap;->ranges:Lorg/checkerframework/com/google/common/collect/ImmutableList;

    invoke-virtual {v0}, Lorg/checkerframework/com/google/common/collect/ImmutableList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 293
    invoke-static {}, Lorg/checkerframework/com/google/common/collect/ImmutableMap;->of()Lorg/checkerframework/com/google/common/collect/ImmutableMap;

    move-result-object v0

    return-object v0

    .line 295
    :cond_0
    new-instance v0, Lorg/checkerframework/com/google/common/collect/RegularImmutableSortedSet;

    iget-object v1, p0, Lorg/checkerframework/com/google/common/collect/ImmutableRangeMap;->ranges:Lorg/checkerframework/com/google/common/collect/ImmutableList;

    .line 296
    invoke-static {}, Lorg/checkerframework/com/google/common/collect/Range;->rangeLexOrdering()Lorg/checkerframework/com/google/common/collect/Ordering;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/checkerframework/com/google/common/collect/RegularImmutableSortedSet;-><init>(Lorg/checkerframework/com/google/common/collect/ImmutableList;Ljava/util/Comparator;)V

    .line 297
    .local v0, "rangeSet":Lorg/checkerframework/com/google/common/collect/RegularImmutableSortedSet;, "Lorg/checkerframework/com/google/common/collect/RegularImmutableSortedSet<Lorg/checkerframework/com/google/common/collect/Range<TK;>;>;"
    new-instance v1, Lorg/checkerframework/com/google/common/collect/ImmutableSortedMap;

    iget-object v2, p0, Lorg/checkerframework/com/google/common/collect/ImmutableRangeMap;->values:Lorg/checkerframework/com/google/common/collect/ImmutableList;

    invoke-direct {v1, v0, v2}, Lorg/checkerframework/com/google/common/collect/ImmutableSortedMap;-><init>(Lorg/checkerframework/com/google/common/collect/RegularImmutableSortedSet;Lorg/checkerframework/com/google/common/collect/ImmutableList;)V

    return-object v1
.end method

.method public clear()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 260
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ImmutableRangeMap;, "Lorg/checkerframework/com/google/common/collect/ImmutableRangeMap<TK;TV;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;

    .line 378
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ImmutableRangeMap;, "Lorg/checkerframework/com/google/common/collect/ImmutableRangeMap<TK;TV;>;"
    instance-of v0, p1, Lorg/checkerframework/com/google/common/collect/RangeMap;

    if-eqz v0, :cond_0

    .line 379
    move-object v0, p1

    check-cast v0, Lorg/checkerframework/com/google/common/collect/RangeMap;

    .line 380
    .local v0, "rangeMap":Lorg/checkerframework/com/google/common/collect/RangeMap;, "Lorg/checkerframework/com/google/common/collect/RangeMap<**>;"
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/ImmutableRangeMap;->asMapOfRanges()Lorg/checkerframework/com/google/common/collect/ImmutableMap;

    move-result-object v1

    invoke-interface {v0}, Lorg/checkerframework/com/google/common/collect/RangeMap;->asMapOfRanges()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/checkerframework/com/google/common/collect/ImmutableMap;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1

    .line 382
    .end local v0    # "rangeMap":Lorg/checkerframework/com/google/common/collect/RangeMap;, "Lorg/checkerframework/com/google/common/collect/RangeMap<**>;"
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public get(Ljava/lang/Comparable;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TV;"
        }
    .end annotation

    .line 173
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ImmutableRangeMap;, "Lorg/checkerframework/com/google/common/collect/ImmutableRangeMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Comparable;, "TK;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/ImmutableRangeMap;->ranges:Lorg/checkerframework/com/google/common/collect/ImmutableList;

    .line 176
    invoke-static {}, Lorg/checkerframework/com/google/common/collect/Range;->lowerBoundFn()Lorg/checkerframework/com/google/common/base/Function;

    move-result-object v1

    .line 177
    invoke-static {p1}, Lorg/checkerframework/com/google/common/collect/Cut;->belowValue(Ljava/lang/Comparable;)Lorg/checkerframework/com/google/common/collect/Cut;

    move-result-object v2

    sget-object v3, Lorg/checkerframework/com/google/common/collect/SortedLists$KeyPresentBehavior;->ANY_PRESENT:Lorg/checkerframework/com/google/common/collect/SortedLists$KeyPresentBehavior;

    sget-object v4, Lorg/checkerframework/com/google/common/collect/SortedLists$KeyAbsentBehavior;->NEXT_LOWER:Lorg/checkerframework/com/google/common/collect/SortedLists$KeyAbsentBehavior;

    .line 174
    invoke-static {v0, v1, v2, v3, v4}, Lorg/checkerframework/com/google/common/collect/SortedLists;->binarySearch(Ljava/util/List;Lorg/checkerframework/com/google/common/base/Function;Ljava/lang/Comparable;Lorg/checkerframework/com/google/common/collect/SortedLists$KeyPresentBehavior;Lorg/checkerframework/com/google/common/collect/SortedLists$KeyAbsentBehavior;)I

    move-result v0

    .line 180
    .local v0, "index":I
    const/4 v1, -0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    .line 181
    return-object v2

    .line 183
    :cond_0
    iget-object v1, p0, Lorg/checkerframework/com/google/common/collect/ImmutableRangeMap;->ranges:Lorg/checkerframework/com/google/common/collect/ImmutableList;

    invoke-virtual {v1, v0}, Lorg/checkerframework/com/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/checkerframework/com/google/common/collect/Range;

    .line 184
    .local v1, "range":Lorg/checkerframework/com/google/common/collect/Range;, "Lorg/checkerframework/com/google/common/collect/Range<TK;>;"
    invoke-virtual {v1, p1}, Lorg/checkerframework/com/google/common/collect/Range;->contains(Ljava/lang/Comparable;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v2, p0, Lorg/checkerframework/com/google/common/collect/ImmutableRangeMap;->values:Lorg/checkerframework/com/google/common/collect/ImmutableList;

    invoke-virtual {v2, v0}, Lorg/checkerframework/com/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v2

    :cond_1
    return-object v2
.end method

.method public getEntry(Ljava/lang/Comparable;)Ljava/util/Map$Entry;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/Map$Entry<",
            "Lorg/checkerframework/com/google/common/collect/Range<",
            "TK;>;TV;>;"
        }
    .end annotation

    .line 190
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ImmutableRangeMap;, "Lorg/checkerframework/com/google/common/collect/ImmutableRangeMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Comparable;, "TK;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/ImmutableRangeMap;->ranges:Lorg/checkerframework/com/google/common/collect/ImmutableList;

    .line 193
    invoke-static {}, Lorg/checkerframework/com/google/common/collect/Range;->lowerBoundFn()Lorg/checkerframework/com/google/common/base/Function;

    move-result-object v1

    .line 194
    invoke-static {p1}, Lorg/checkerframework/com/google/common/collect/Cut;->belowValue(Ljava/lang/Comparable;)Lorg/checkerframework/com/google/common/collect/Cut;

    move-result-object v2

    sget-object v3, Lorg/checkerframework/com/google/common/collect/SortedLists$KeyPresentBehavior;->ANY_PRESENT:Lorg/checkerframework/com/google/common/collect/SortedLists$KeyPresentBehavior;

    sget-object v4, Lorg/checkerframework/com/google/common/collect/SortedLists$KeyAbsentBehavior;->NEXT_LOWER:Lorg/checkerframework/com/google/common/collect/SortedLists$KeyAbsentBehavior;

    .line 191
    invoke-static {v0, v1, v2, v3, v4}, Lorg/checkerframework/com/google/common/collect/SortedLists;->binarySearch(Ljava/util/List;Lorg/checkerframework/com/google/common/base/Function;Ljava/lang/Comparable;Lorg/checkerframework/com/google/common/collect/SortedLists$KeyPresentBehavior;Lorg/checkerframework/com/google/common/collect/SortedLists$KeyAbsentBehavior;)I

    move-result v0

    .line 197
    .local v0, "index":I
    const/4 v1, -0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    .line 198
    return-object v2

    .line 200
    :cond_0
    iget-object v1, p0, Lorg/checkerframework/com/google/common/collect/ImmutableRangeMap;->ranges:Lorg/checkerframework/com/google/common/collect/ImmutableList;

    invoke-virtual {v1, v0}, Lorg/checkerframework/com/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/checkerframework/com/google/common/collect/Range;

    .line 201
    .local v1, "range":Lorg/checkerframework/com/google/common/collect/Range;, "Lorg/checkerframework/com/google/common/collect/Range<TK;>;"
    invoke-virtual {v1, p1}, Lorg/checkerframework/com/google/common/collect/Range;->contains(Ljava/lang/Comparable;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v2, p0, Lorg/checkerframework/com/google/common/collect/ImmutableRangeMap;->values:Lorg/checkerframework/com/google/common/collect/ImmutableList;

    invoke-virtual {v2, v0}, Lorg/checkerframework/com/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/checkerframework/com/google/common/collect/Maps;->immutableEntry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v2

    :cond_1
    return-object v2
.end method

.method public hashCode()I
    .locals 1

    .line 373
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ImmutableRangeMap;, "Lorg/checkerframework/com/google/common/collect/ImmutableRangeMap<TK;TV;>;"
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/ImmutableRangeMap;->asMapOfRanges()Lorg/checkerframework/com/google/common/collect/ImmutableMap;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/com/google/common/collect/ImmutableMap;->hashCode()I

    move-result v0

    return v0
.end method

.method public merge(Lorg/checkerframework/com/google/common/collect/Range;Ljava/lang/Object;Ljava/util/function/BiFunction;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/google/common/collect/Range<",
            "TK;>;TV;",
            "Ljava/util/function/BiFunction<",
            "-TV;-TV;+TV;>;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 287
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ImmutableRangeMap;, "Lorg/checkerframework/com/google/common/collect/ImmutableRangeMap<TK;TV;>;"
    .local p1, "range":Lorg/checkerframework/com/google/common/collect/Range;, "Lorg/checkerframework/com/google/common/collect/Range<TK;>;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    .local p3, "remappingFunction":Ljava/util/function/BiFunction;, "Ljava/util/function/BiFunction<-TV;-TV;+TV;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public put(Lorg/checkerframework/com/google/common/collect/Range;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/google/common/collect/Range<",
            "TK;>;TV;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 224
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ImmutableRangeMap;, "Lorg/checkerframework/com/google/common/collect/ImmutableRangeMap<TK;TV;>;"
    .local p1, "range":Lorg/checkerframework/com/google/common/collect/Range;, "Lorg/checkerframework/com/google/common/collect/Range<TK;>;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public putAll(Lorg/checkerframework/com/google/common/collect/RangeMap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/google/common/collect/RangeMap<",
            "TK;TV;>;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 248
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ImmutableRangeMap;, "Lorg/checkerframework/com/google/common/collect/ImmutableRangeMap<TK;TV;>;"
    .local p1, "rangeMap":Lorg/checkerframework/com/google/common/collect/RangeMap;, "Lorg/checkerframework/com/google/common/collect/RangeMap<TK;TV;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public putCoalescing(Lorg/checkerframework/com/google/common/collect/Range;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/google/common/collect/Range<",
            "TK;>;TV;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 236
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ImmutableRangeMap;, "Lorg/checkerframework/com/google/common/collect/ImmutableRangeMap<TK;TV;>;"
    .local p1, "range":Lorg/checkerframework/com/google/common/collect/Range;, "Lorg/checkerframework/com/google/common/collect/Range<TK;>;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public remove(Lorg/checkerframework/com/google/common/collect/Range;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/google/common/collect/Range<",
            "TK;>;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 272
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ImmutableRangeMap;, "Lorg/checkerframework/com/google/common/collect/ImmutableRangeMap<TK;TV;>;"
    .local p1, "range":Lorg/checkerframework/com/google/common/collect/Range;, "Lorg/checkerframework/com/google/common/collect/Range<TK;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public span()Lorg/checkerframework/com/google/common/collect/Range;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/checkerframework/com/google/common/collect/Range<",
            "TK;>;"
        }
    .end annotation

    .line 207
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ImmutableRangeMap;, "Lorg/checkerframework/com/google/common/collect/ImmutableRangeMap<TK;TV;>;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/ImmutableRangeMap;->ranges:Lorg/checkerframework/com/google/common/collect/ImmutableList;

    invoke-virtual {v0}, Lorg/checkerframework/com/google/common/collect/ImmutableList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 210
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/ImmutableRangeMap;->ranges:Lorg/checkerframework/com/google/common/collect/ImmutableList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/checkerframework/com/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/google/common/collect/Range;

    .line 211
    .local v0, "firstRange":Lorg/checkerframework/com/google/common/collect/Range;, "Lorg/checkerframework/com/google/common/collect/Range<TK;>;"
    iget-object v1, p0, Lorg/checkerframework/com/google/common/collect/ImmutableRangeMap;->ranges:Lorg/checkerframework/com/google/common/collect/ImmutableList;

    invoke-virtual {v1}, Lorg/checkerframework/com/google/common/collect/ImmutableList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Lorg/checkerframework/com/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/checkerframework/com/google/common/collect/Range;

    .line 212
    .local v1, "lastRange":Lorg/checkerframework/com/google/common/collect/Range;, "Lorg/checkerframework/com/google/common/collect/Range<TK;>;"
    iget-object v2, v0, Lorg/checkerframework/com/google/common/collect/Range;->lowerBound:Lorg/checkerframework/com/google/common/collect/Cut;

    iget-object v3, v1, Lorg/checkerframework/com/google/common/collect/Range;->upperBound:Lorg/checkerframework/com/google/common/collect/Cut;

    invoke-static {v2, v3}, Lorg/checkerframework/com/google/common/collect/Range;->create(Lorg/checkerframework/com/google/common/collect/Cut;Lorg/checkerframework/com/google/common/collect/Cut;)Lorg/checkerframework/com/google/common/collect/Range;

    move-result-object v2

    return-object v2

    .line 208
    .end local v0    # "firstRange":Lorg/checkerframework/com/google/common/collect/Range;, "Lorg/checkerframework/com/google/common/collect/Range<TK;>;"
    .end local v1    # "lastRange":Lorg/checkerframework/com/google/common/collect/Range;, "Lorg/checkerframework/com/google/common/collect/Range<TK;>;"
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public subRangeMap(Lorg/checkerframework/com/google/common/collect/Range;)Lorg/checkerframework/com/google/common/collect/ImmutableRangeMap;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/google/common/collect/Range<",
            "TK;>;)",
            "Lorg/checkerframework/com/google/common/collect/ImmutableRangeMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 312
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ImmutableRangeMap;, "Lorg/checkerframework/com/google/common/collect/ImmutableRangeMap<TK;TV;>;"
    .local p1, "range":Lorg/checkerframework/com/google/common/collect/Range;, "Lorg/checkerframework/com/google/common/collect/Range<TK;>;"
    invoke-static {p1}, Lorg/checkerframework/com/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/google/common/collect/Range;

    invoke-virtual {v0}, Lorg/checkerframework/com/google/common/collect/Range;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 313
    invoke-static {}, Lorg/checkerframework/com/google/common/collect/ImmutableRangeMap;->of()Lorg/checkerframework/com/google/common/collect/ImmutableRangeMap;

    move-result-object v0

    return-object v0

    .line 314
    :cond_0
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/ImmutableRangeMap;->ranges:Lorg/checkerframework/com/google/common/collect/ImmutableList;

    invoke-virtual {v0}, Lorg/checkerframework/com/google/common/collect/ImmutableList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/ImmutableRangeMap;->span()Lorg/checkerframework/com/google/common/collect/Range;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/checkerframework/com/google/common/collect/Range;->encloses(Lorg/checkerframework/com/google/common/collect/Range;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 317
    :cond_1
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/ImmutableRangeMap;->ranges:Lorg/checkerframework/com/google/common/collect/ImmutableList;

    .line 320
    invoke-static {}, Lorg/checkerframework/com/google/common/collect/Range;->upperBoundFn()Lorg/checkerframework/com/google/common/base/Function;

    move-result-object v1

    iget-object v2, p1, Lorg/checkerframework/com/google/common/collect/Range;->lowerBound:Lorg/checkerframework/com/google/common/collect/Cut;

    sget-object v3, Lorg/checkerframework/com/google/common/collect/SortedLists$KeyPresentBehavior;->FIRST_AFTER:Lorg/checkerframework/com/google/common/collect/SortedLists$KeyPresentBehavior;

    sget-object v4, Lorg/checkerframework/com/google/common/collect/SortedLists$KeyAbsentBehavior;->NEXT_HIGHER:Lorg/checkerframework/com/google/common/collect/SortedLists$KeyAbsentBehavior;

    .line 318
    invoke-static {v0, v1, v2, v3, v4}, Lorg/checkerframework/com/google/common/collect/SortedLists;->binarySearch(Ljava/util/List;Lorg/checkerframework/com/google/common/base/Function;Ljava/lang/Comparable;Lorg/checkerframework/com/google/common/collect/SortedLists$KeyPresentBehavior;Lorg/checkerframework/com/google/common/collect/SortedLists$KeyAbsentBehavior;)I

    move-result v0

    .line 324
    .local v0, "lowerIndex":I
    iget-object v1, p0, Lorg/checkerframework/com/google/common/collect/ImmutableRangeMap;->ranges:Lorg/checkerframework/com/google/common/collect/ImmutableList;

    .line 327
    invoke-static {}, Lorg/checkerframework/com/google/common/collect/Range;->lowerBoundFn()Lorg/checkerframework/com/google/common/base/Function;

    move-result-object v2

    iget-object v3, p1, Lorg/checkerframework/com/google/common/collect/Range;->upperBound:Lorg/checkerframework/com/google/common/collect/Cut;

    sget-object v4, Lorg/checkerframework/com/google/common/collect/SortedLists$KeyPresentBehavior;->ANY_PRESENT:Lorg/checkerframework/com/google/common/collect/SortedLists$KeyPresentBehavior;

    sget-object v5, Lorg/checkerframework/com/google/common/collect/SortedLists$KeyAbsentBehavior;->NEXT_HIGHER:Lorg/checkerframework/com/google/common/collect/SortedLists$KeyAbsentBehavior;

    .line 325
    invoke-static {v1, v2, v3, v4, v5}, Lorg/checkerframework/com/google/common/collect/SortedLists;->binarySearch(Ljava/util/List;Lorg/checkerframework/com/google/common/base/Function;Ljava/lang/Comparable;Lorg/checkerframework/com/google/common/collect/SortedLists$KeyPresentBehavior;Lorg/checkerframework/com/google/common/collect/SortedLists$KeyAbsentBehavior;)I

    move-result v1

    .line 331
    .local v1, "upperIndex":I
    if-lt v0, v1, :cond_2

    .line 332
    invoke-static {}, Lorg/checkerframework/com/google/common/collect/ImmutableRangeMap;->of()Lorg/checkerframework/com/google/common/collect/ImmutableRangeMap;

    move-result-object v2

    return-object v2

    .line 334
    :cond_2
    move v2, v0

    .line 335
    .local v2, "off":I
    sub-int v3, v1, v0

    .line 336
    .local v3, "len":I
    new-instance v6, Lorg/checkerframework/com/google/common/collect/ImmutableRangeMap$1;

    invoke-direct {v6, p0, v3, v2, p1}, Lorg/checkerframework/com/google/common/collect/ImmutableRangeMap$1;-><init>(Lorg/checkerframework/com/google/common/collect/ImmutableRangeMap;IILorg/checkerframework/com/google/common/collect/Range;)V

    .line 358
    .local v6, "subRanges":Lorg/checkerframework/com/google/common/collect/ImmutableList;, "Lorg/checkerframework/com/google/common/collect/ImmutableList<Lorg/checkerframework/com/google/common/collect/Range<TK;>;>;"
    move-object v9, p0

    .line 359
    .local v9, "outer":Lorg/checkerframework/com/google/common/collect/ImmutableRangeMap;, "Lorg/checkerframework/com/google/common/collect/ImmutableRangeMap<TK;TV;>;"
    new-instance v10, Lorg/checkerframework/com/google/common/collect/ImmutableRangeMap$2;

    iget-object v4, p0, Lorg/checkerframework/com/google/common/collect/ImmutableRangeMap;->values:Lorg/checkerframework/com/google/common/collect/ImmutableList;

    invoke-virtual {v4, v0, v1}, Lorg/checkerframework/com/google/common/collect/ImmutableList;->subList(II)Lorg/checkerframework/com/google/common/collect/ImmutableList;

    move-result-object v7

    move-object v4, v10

    move-object v5, p0

    move-object v8, p1

    invoke-direct/range {v4 .. v9}, Lorg/checkerframework/com/google/common/collect/ImmutableRangeMap$2;-><init>(Lorg/checkerframework/com/google/common/collect/ImmutableRangeMap;Lorg/checkerframework/com/google/common/collect/ImmutableList;Lorg/checkerframework/com/google/common/collect/ImmutableList;Lorg/checkerframework/com/google/common/collect/Range;Lorg/checkerframework/com/google/common/collect/ImmutableRangeMap;)V

    return-object v10

    .line 315
    .end local v0    # "lowerIndex":I
    .end local v1    # "upperIndex":I
    .end local v2    # "off":I
    .end local v3    # "len":I
    .end local v6    # "subRanges":Lorg/checkerframework/com/google/common/collect/ImmutableList;, "Lorg/checkerframework/com/google/common/collect/ImmutableList<Lorg/checkerframework/com/google/common/collect/Range<TK;>;>;"
    .end local v9    # "outer":Lorg/checkerframework/com/google/common/collect/ImmutableRangeMap;, "Lorg/checkerframework/com/google/common/collect/ImmutableRangeMap<TK;TV;>;"
    :cond_3
    :goto_0
    return-object p0
.end method

.method public bridge synthetic subRangeMap(Lorg/checkerframework/com/google/common/collect/Range;)Lorg/checkerframework/com/google/common/collect/RangeMap;
    .locals 0

    .line 44
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ImmutableRangeMap;, "Lorg/checkerframework/com/google/common/collect/ImmutableRangeMap<TK;TV;>;"
    invoke-virtual {p0, p1}, Lorg/checkerframework/com/google/common/collect/ImmutableRangeMap;->subRangeMap(Lorg/checkerframework/com/google/common/collect/Range;)Lorg/checkerframework/com/google/common/collect/ImmutableRangeMap;

    move-result-object p1

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 387
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ImmutableRangeMap;, "Lorg/checkerframework/com/google/common/collect/ImmutableRangeMap<TK;TV;>;"
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/ImmutableRangeMap;->asMapOfRanges()Lorg/checkerframework/com/google/common/collect/ImmutableMap;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/com/google/common/collect/ImmutableMap;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method writeReplace()Ljava/lang/Object;
    .locals 2

    .line 422
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ImmutableRangeMap;, "Lorg/checkerframework/com/google/common/collect/ImmutableRangeMap<TK;TV;>;"
    new-instance v0, Lorg/checkerframework/com/google/common/collect/ImmutableRangeMap$SerializedForm;

    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/ImmutableRangeMap;->asMapOfRanges()Lorg/checkerframework/com/google/common/collect/ImmutableMap;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/checkerframework/com/google/common/collect/ImmutableRangeMap$SerializedForm;-><init>(Lorg/checkerframework/com/google/common/collect/ImmutableMap;)V

    return-object v0
.end method
