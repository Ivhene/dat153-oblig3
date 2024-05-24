.class final Lorg/checkerframework/com/google/common/collect/TreeRangeSet$RangesByUpperBound;
.super Lorg/checkerframework/com/google/common/collect/AbstractNavigableMap;
.source "TreeRangeSet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/com/google/common/collect/TreeRangeSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "RangesByUpperBound"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<C::",
        "Ljava/lang/Comparable<",
        "*>;>",
        "Lorg/checkerframework/com/google/common/collect/AbstractNavigableMap<",
        "Lorg/checkerframework/com/google/common/collect/Cut<",
        "TC;>;",
        "Lorg/checkerframework/com/google/common/collect/Range<",
        "TC;>;>;"
    }
.end annotation


# instance fields
.field private final rangesByLowerBound:Ljava/util/NavigableMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/NavigableMap<",
            "Lorg/checkerframework/com/google/common/collect/Cut<",
            "TC;>;",
            "Lorg/checkerframework/com/google/common/collect/Range<",
            "TC;>;>;"
        }
    .end annotation
.end field

.field private final upperBoundWindow:Lorg/checkerframework/com/google/common/collect/Range;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/checkerframework/com/google/common/collect/Range<",
            "Lorg/checkerframework/com/google/common/collect/Cut<",
            "TC;>;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/NavigableMap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/NavigableMap<",
            "Lorg/checkerframework/com/google/common/collect/Cut<",
            "TC;>;",
            "Lorg/checkerframework/com/google/common/collect/Range<",
            "TC;>;>;)V"
        }
    .end annotation

    .line 290
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/TreeRangeSet$RangesByUpperBound;, "Lorg/checkerframework/com/google/common/collect/TreeRangeSet$RangesByUpperBound<TC;>;"
    .local p1, "rangesByLowerBound":Ljava/util/NavigableMap;, "Ljava/util/NavigableMap<Lorg/checkerframework/com/google/common/collect/Cut<TC;>;Lorg/checkerframework/com/google/common/collect/Range<TC;>;>;"
    invoke-direct {p0}, Lorg/checkerframework/com/google/common/collect/AbstractNavigableMap;-><init>()V

    .line 291
    iput-object p1, p0, Lorg/checkerframework/com/google/common/collect/TreeRangeSet$RangesByUpperBound;->rangesByLowerBound:Ljava/util/NavigableMap;

    .line 292
    invoke-static {}, Lorg/checkerframework/com/google/common/collect/Range;->all()Lorg/checkerframework/com/google/common/collect/Range;

    move-result-object v0

    iput-object v0, p0, Lorg/checkerframework/com/google/common/collect/TreeRangeSet$RangesByUpperBound;->upperBoundWindow:Lorg/checkerframework/com/google/common/collect/Range;

    .line 293
    return-void
.end method

.method private constructor <init>(Ljava/util/NavigableMap;Lorg/checkerframework/com/google/common/collect/Range;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/NavigableMap<",
            "Lorg/checkerframework/com/google/common/collect/Cut<",
            "TC;>;",
            "Lorg/checkerframework/com/google/common/collect/Range<",
            "TC;>;>;",
            "Lorg/checkerframework/com/google/common/collect/Range<",
            "Lorg/checkerframework/com/google/common/collect/Cut<",
            "TC;>;>;)V"
        }
    .end annotation

    .line 296
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/TreeRangeSet$RangesByUpperBound;, "Lorg/checkerframework/com/google/common/collect/TreeRangeSet$RangesByUpperBound<TC;>;"
    .local p1, "rangesByLowerBound":Ljava/util/NavigableMap;, "Ljava/util/NavigableMap<Lorg/checkerframework/com/google/common/collect/Cut<TC;>;Lorg/checkerframework/com/google/common/collect/Range<TC;>;>;"
    .local p2, "upperBoundWindow":Lorg/checkerframework/com/google/common/collect/Range;, "Lorg/checkerframework/com/google/common/collect/Range<Lorg/checkerframework/com/google/common/collect/Cut<TC;>;>;"
    invoke-direct {p0}, Lorg/checkerframework/com/google/common/collect/AbstractNavigableMap;-><init>()V

    .line 297
    iput-object p1, p0, Lorg/checkerframework/com/google/common/collect/TreeRangeSet$RangesByUpperBound;->rangesByLowerBound:Ljava/util/NavigableMap;

    .line 298
    iput-object p2, p0, Lorg/checkerframework/com/google/common/collect/TreeRangeSet$RangesByUpperBound;->upperBoundWindow:Lorg/checkerframework/com/google/common/collect/Range;

    .line 299
    return-void
.end method

.method static synthetic access$000(Lorg/checkerframework/com/google/common/collect/TreeRangeSet$RangesByUpperBound;)Lorg/checkerframework/com/google/common/collect/Range;
    .locals 1
    .param p0, "x0"    # Lorg/checkerframework/com/google/common/collect/TreeRangeSet$RangesByUpperBound;

    .line 280
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/TreeRangeSet$RangesByUpperBound;->upperBoundWindow:Lorg/checkerframework/com/google/common/collect/Range;

    return-object v0
.end method

.method private subMap(Lorg/checkerframework/com/google/common/collect/Range;)Ljava/util/NavigableMap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/google/common/collect/Range<",
            "Lorg/checkerframework/com/google/common/collect/Cut<",
            "TC;>;>;)",
            "Ljava/util/NavigableMap<",
            "Lorg/checkerframework/com/google/common/collect/Cut<",
            "TC;>;",
            "Lorg/checkerframework/com/google/common/collect/Range<",
            "TC;>;>;"
        }
    .end annotation

    .line 302
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/TreeRangeSet$RangesByUpperBound;, "Lorg/checkerframework/com/google/common/collect/TreeRangeSet$RangesByUpperBound<TC;>;"
    .local p1, "window":Lorg/checkerframework/com/google/common/collect/Range;, "Lorg/checkerframework/com/google/common/collect/Range<Lorg/checkerframework/com/google/common/collect/Cut<TC;>;>;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/TreeRangeSet$RangesByUpperBound;->upperBoundWindow:Lorg/checkerframework/com/google/common/collect/Range;

    invoke-virtual {p1, v0}, Lorg/checkerframework/com/google/common/collect/Range;->isConnected(Lorg/checkerframework/com/google/common/collect/Range;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 303
    new-instance v0, Lorg/checkerframework/com/google/common/collect/TreeRangeSet$RangesByUpperBound;

    iget-object v1, p0, Lorg/checkerframework/com/google/common/collect/TreeRangeSet$RangesByUpperBound;->rangesByLowerBound:Ljava/util/NavigableMap;

    iget-object v2, p0, Lorg/checkerframework/com/google/common/collect/TreeRangeSet$RangesByUpperBound;->upperBoundWindow:Lorg/checkerframework/com/google/common/collect/Range;

    invoke-virtual {p1, v2}, Lorg/checkerframework/com/google/common/collect/Range;->intersection(Lorg/checkerframework/com/google/common/collect/Range;)Lorg/checkerframework/com/google/common/collect/Range;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/checkerframework/com/google/common/collect/TreeRangeSet$RangesByUpperBound;-><init>(Ljava/util/NavigableMap;Lorg/checkerframework/com/google/common/collect/Range;)V

    return-object v0

    .line 305
    :cond_0
    invoke-static {}, Lorg/checkerframework/com/google/common/collect/ImmutableSortedMap;->of()Lorg/checkerframework/com/google/common/collect/ImmutableSortedMap;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public comparator()Ljava/util/Comparator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator<",
            "-",
            "Lorg/checkerframework/com/google/common/collect/Cut<",
            "TC;>;>;"
        }
    .end annotation

    .line 330
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/TreeRangeSet$RangesByUpperBound;, "Lorg/checkerframework/com/google/common/collect/TreeRangeSet$RangesByUpperBound<TC;>;"
    invoke-static {}, Lorg/checkerframework/com/google/common/collect/Ordering;->natural()Lorg/checkerframework/com/google/common/collect/Ordering;

    move-result-object v0

    return-object v0
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;

    .line 335
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/TreeRangeSet$RangesByUpperBound;, "Lorg/checkerframework/com/google/common/collect/TreeRangeSet$RangesByUpperBound<TC;>;"
    invoke-virtual {p0, p1}, Lorg/checkerframework/com/google/common/collect/TreeRangeSet$RangesByUpperBound;->get(Ljava/lang/Object;)Lorg/checkerframework/com/google/common/collect/Range;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method descendingEntryIterator()Ljava/util/Iterator;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "Lorg/checkerframework/com/google/common/collect/Cut<",
            "TC;>;",
            "Lorg/checkerframework/com/google/common/collect/Range<",
            "TC;>;>;>;"
        }
    .end annotation

    .line 401
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/TreeRangeSet$RangesByUpperBound;, "Lorg/checkerframework/com/google/common/collect/TreeRangeSet$RangesByUpperBound<TC;>;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/TreeRangeSet$RangesByUpperBound;->upperBoundWindow:Lorg/checkerframework/com/google/common/collect/Range;

    invoke-virtual {v0}, Lorg/checkerframework/com/google/common/collect/Range;->hasUpperBound()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 402
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/TreeRangeSet$RangesByUpperBound;->rangesByLowerBound:Ljava/util/NavigableMap;

    iget-object v1, p0, Lorg/checkerframework/com/google/common/collect/TreeRangeSet$RangesByUpperBound;->upperBoundWindow:Lorg/checkerframework/com/google/common/collect/Range;

    .line 404
    invoke-virtual {v1}, Lorg/checkerframework/com/google/common/collect/Range;->upperEndpoint()Ljava/lang/Comparable;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Ljava/util/NavigableMap;->headMap(Ljava/lang/Object;Z)Ljava/util/NavigableMap;

    move-result-object v0

    .line 405
    invoke-interface {v0}, Ljava/util/NavigableMap;->descendingMap()Ljava/util/NavigableMap;

    move-result-object v0

    .line 406
    invoke-interface {v0}, Ljava/util/NavigableMap;->values()Ljava/util/Collection;

    move-result-object v0

    .local v0, "candidates":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/checkerframework/com/google/common/collect/Range<TC;>;>;"
    goto :goto_0

    .line 408
    .end local v0    # "candidates":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/checkerframework/com/google/common/collect/Range<TC;>;>;"
    :cond_0
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/TreeRangeSet$RangesByUpperBound;->rangesByLowerBound:Ljava/util/NavigableMap;

    invoke-interface {v0}, Ljava/util/NavigableMap;->descendingMap()Ljava/util/NavigableMap;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/NavigableMap;->values()Ljava/util/Collection;

    move-result-object v0

    .line 410
    .restart local v0    # "candidates":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/checkerframework/com/google/common/collect/Range<TC;>;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-static {v1}, Lorg/checkerframework/com/google/common/collect/Iterators;->peekingIterator(Ljava/util/Iterator;)Lorg/checkerframework/com/google/common/collect/PeekingIterator;

    move-result-object v1

    .line 411
    .local v1, "backingItr":Lorg/checkerframework/com/google/common/collect/PeekingIterator;, "Lorg/checkerframework/com/google/common/collect/PeekingIterator<Lorg/checkerframework/com/google/common/collect/Range<TC;>;>;"
    invoke-interface {v1}, Lorg/checkerframework/com/google/common/collect/PeekingIterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lorg/checkerframework/com/google/common/collect/TreeRangeSet$RangesByUpperBound;->upperBoundWindow:Lorg/checkerframework/com/google/common/collect/Range;

    iget-object v2, v2, Lorg/checkerframework/com/google/common/collect/Range;->upperBound:Lorg/checkerframework/com/google/common/collect/Cut;

    .line 412
    invoke-interface {v1}, Lorg/checkerframework/com/google/common/collect/PeekingIterator;->peek()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/checkerframework/com/google/common/collect/Range;

    iget-object v3, v3, Lorg/checkerframework/com/google/common/collect/Range;->upperBound:Lorg/checkerframework/com/google/common/collect/Cut;

    invoke-virtual {v2, v3}, Lorg/checkerframework/com/google/common/collect/Cut;->isLessThan(Ljava/lang/Comparable;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 413
    invoke-interface {v1}, Lorg/checkerframework/com/google/common/collect/PeekingIterator;->next()Ljava/lang/Object;

    .line 415
    :cond_1
    new-instance v2, Lorg/checkerframework/com/google/common/collect/TreeRangeSet$RangesByUpperBound$2;

    invoke-direct {v2, p0, v1}, Lorg/checkerframework/com/google/common/collect/TreeRangeSet$RangesByUpperBound$2;-><init>(Lorg/checkerframework/com/google/common/collect/TreeRangeSet$RangesByUpperBound;Lorg/checkerframework/com/google/common/collect/PeekingIterator;)V

    return-object v2
.end method

.method entryIterator()Ljava/util/Iterator;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "Lorg/checkerframework/com/google/common/collect/Cut<",
            "TC;>;",
            "Lorg/checkerframework/com/google/common/collect/Range<",
            "TC;>;>;>;"
        }
    .end annotation

    .line 365
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/TreeRangeSet$RangesByUpperBound;, "Lorg/checkerframework/com/google/common/collect/TreeRangeSet$RangesByUpperBound<TC;>;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/TreeRangeSet$RangesByUpperBound;->upperBoundWindow:Lorg/checkerframework/com/google/common/collect/Range;

    invoke-virtual {v0}, Lorg/checkerframework/com/google/common/collect/Range;->hasLowerBound()Z

    move-result v0

    if-nez v0, :cond_0

    .line 366
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/TreeRangeSet$RangesByUpperBound;->rangesByLowerBound:Ljava/util/NavigableMap;

    invoke-interface {v0}, Ljava/util/NavigableMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "backingItr":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/checkerframework/com/google/common/collect/Range<TC;>;>;"
    goto :goto_0

    .line 368
    .end local v0    # "backingItr":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/checkerframework/com/google/common/collect/Range<TC;>;>;"
    :cond_0
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/TreeRangeSet$RangesByUpperBound;->rangesByLowerBound:Ljava/util/NavigableMap;

    iget-object v1, p0, Lorg/checkerframework/com/google/common/collect/TreeRangeSet$RangesByUpperBound;->upperBoundWindow:Lorg/checkerframework/com/google/common/collect/Range;

    .line 369
    invoke-virtual {v1}, Lorg/checkerframework/com/google/common/collect/Range;->lowerEndpoint()Ljava/lang/Comparable;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/NavigableMap;->lowerEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v0

    .line 370
    .local v0, "lowerEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lorg/checkerframework/com/google/common/collect/Cut<TC;>;Lorg/checkerframework/com/google/common/collect/Range<TC;>;>;"
    if-nez v0, :cond_1

    .line 371
    iget-object v1, p0, Lorg/checkerframework/com/google/common/collect/TreeRangeSet$RangesByUpperBound;->rangesByLowerBound:Ljava/util/NavigableMap;

    invoke-interface {v1}, Ljava/util/NavigableMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move-object v0, v1

    .local v1, "backingItr":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/checkerframework/com/google/common/collect/Range<TC;>;>;"
    goto :goto_0

    .line 372
    .end local v1    # "backingItr":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/checkerframework/com/google/common/collect/Range<TC;>;>;"
    :cond_1
    iget-object v1, p0, Lorg/checkerframework/com/google/common/collect/TreeRangeSet$RangesByUpperBound;->upperBoundWindow:Lorg/checkerframework/com/google/common/collect/Range;

    iget-object v1, v1, Lorg/checkerframework/com/google/common/collect/Range;->lowerBound:Lorg/checkerframework/com/google/common/collect/Cut;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/checkerframework/com/google/common/collect/Range;

    iget-object v2, v2, Lorg/checkerframework/com/google/common/collect/Range;->upperBound:Lorg/checkerframework/com/google/common/collect/Cut;

    invoke-virtual {v1, v2}, Lorg/checkerframework/com/google/common/collect/Cut;->isLessThan(Ljava/lang/Comparable;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    .line 373
    iget-object v1, p0, Lorg/checkerframework/com/google/common/collect/TreeRangeSet$RangesByUpperBound;->rangesByLowerBound:Ljava/util/NavigableMap;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v1, v3, v2}, Ljava/util/NavigableMap;->tailMap(Ljava/lang/Object;Z)Ljava/util/NavigableMap;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/NavigableMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move-object v0, v1

    .restart local v1    # "backingItr":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/checkerframework/com/google/common/collect/Range<TC;>;>;"
    goto :goto_0

    .line 375
    .end local v1    # "backingItr":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/checkerframework/com/google/common/collect/Range<TC;>;>;"
    :cond_2
    iget-object v1, p0, Lorg/checkerframework/com/google/common/collect/TreeRangeSet$RangesByUpperBound;->rangesByLowerBound:Ljava/util/NavigableMap;

    iget-object v3, p0, Lorg/checkerframework/com/google/common/collect/TreeRangeSet$RangesByUpperBound;->upperBoundWindow:Lorg/checkerframework/com/google/common/collect/Range;

    .line 377
    invoke-virtual {v3}, Lorg/checkerframework/com/google/common/collect/Range;->lowerEndpoint()Ljava/lang/Comparable;

    move-result-object v3

    invoke-interface {v1, v3, v2}, Ljava/util/NavigableMap;->tailMap(Ljava/lang/Object;Z)Ljava/util/NavigableMap;

    move-result-object v1

    .line 378
    invoke-interface {v1}, Ljava/util/NavigableMap;->values()Ljava/util/Collection;

    move-result-object v1

    .line 379
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move-object v0, v1

    .line 382
    .local v0, "backingItr":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/checkerframework/com/google/common/collect/Range<TC;>;>;"
    :goto_0
    new-instance v1, Lorg/checkerframework/com/google/common/collect/TreeRangeSet$RangesByUpperBound$1;

    invoke-direct {v1, p0, v0}, Lorg/checkerframework/com/google/common/collect/TreeRangeSet$RangesByUpperBound$1;-><init>(Lorg/checkerframework/com/google/common/collect/TreeRangeSet$RangesByUpperBound;Ljava/util/Iterator;)V

    return-object v1
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 279
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/TreeRangeSet$RangesByUpperBound;, "Lorg/checkerframework/com/google/common/collect/TreeRangeSet$RangesByUpperBound<TC;>;"
    invoke-virtual {p0, p1}, Lorg/checkerframework/com/google/common/collect/TreeRangeSet$RangesByUpperBound;->get(Ljava/lang/Object;)Lorg/checkerframework/com/google/common/collect/Range;

    move-result-object p1

    return-object p1
.end method

.method public get(Ljava/lang/Object;)Lorg/checkerframework/com/google/common/collect/Range;
    .locals 4
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lorg/checkerframework/com/google/common/collect/Range<",
            "TC;>;"
        }
    .end annotation

    .line 340
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/TreeRangeSet$RangesByUpperBound;, "Lorg/checkerframework/com/google/common/collect/TreeRangeSet$RangesByUpperBound<TC;>;"
    instance-of v0, p1, Lorg/checkerframework/com/google/common/collect/Cut;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 343
    :try_start_0
    move-object v0, p1

    check-cast v0, Lorg/checkerframework/com/google/common/collect/Cut;

    .line 344
    .local v0, "cut":Lorg/checkerframework/com/google/common/collect/Cut;, "Lorg/checkerframework/com/google/common/collect/Cut<TC;>;"
    iget-object v2, p0, Lorg/checkerframework/com/google/common/collect/TreeRangeSet$RangesByUpperBound;->upperBoundWindow:Lorg/checkerframework/com/google/common/collect/Range;

    invoke-virtual {v2, v0}, Lorg/checkerframework/com/google/common/collect/Range;->contains(Ljava/lang/Comparable;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 345
    return-object v1

    .line 347
    :cond_0
    iget-object v2, p0, Lorg/checkerframework/com/google/common/collect/TreeRangeSet$RangesByUpperBound;->rangesByLowerBound:Ljava/util/NavigableMap;

    invoke-interface {v2, v0}, Ljava/util/NavigableMap;->lowerEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v2

    .line 348
    .local v2, "candidate":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lorg/checkerframework/com/google/common/collect/Cut<TC;>;Lorg/checkerframework/com/google/common/collect/Range<TC;>;>;"
    if-eqz v2, :cond_1

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/checkerframework/com/google/common/collect/Range;

    iget-object v3, v3, Lorg/checkerframework/com/google/common/collect/Range;->upperBound:Lorg/checkerframework/com/google/common/collect/Cut;

    invoke-virtual {v3, v0}, Lorg/checkerframework/com/google/common/collect/Cut;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 349
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/checkerframework/com/google/common/collect/Range;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    .line 353
    .end local v0    # "cut":Lorg/checkerframework/com/google/common/collect/Cut;, "Lorg/checkerframework/com/google/common/collect/Cut<TC;>;"
    .end local v2    # "candidate":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lorg/checkerframework/com/google/common/collect/Cut<TC;>;Lorg/checkerframework/com/google/common/collect/Range<TC;>;>;"
    :cond_1
    goto :goto_0

    .line 351
    :catch_0
    move-exception v0

    .line 352
    .local v0, "e":Ljava/lang/ClassCastException;
    return-object v1

    .line 355
    .end local v0    # "e":Ljava/lang/ClassCastException;
    :cond_2
    :goto_0
    return-object v1
.end method

.method public bridge synthetic headMap(Ljava/lang/Object;Z)Ljava/util/NavigableMap;
    .locals 0

    .line 279
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/TreeRangeSet$RangesByUpperBound;, "Lorg/checkerframework/com/google/common/collect/TreeRangeSet$RangesByUpperBound<TC;>;"
    check-cast p1, Lorg/checkerframework/com/google/common/collect/Cut;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/google/common/collect/TreeRangeSet$RangesByUpperBound;->headMap(Lorg/checkerframework/com/google/common/collect/Cut;Z)Ljava/util/NavigableMap;

    move-result-object p1

    return-object p1
.end method

.method public headMap(Lorg/checkerframework/com/google/common/collect/Cut;Z)Ljava/util/NavigableMap;
    .locals 1
    .param p2, "inclusive"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/google/common/collect/Cut<",
            "TC;>;Z)",
            "Ljava/util/NavigableMap<",
            "Lorg/checkerframework/com/google/common/collect/Cut<",
            "TC;>;",
            "Lorg/checkerframework/com/google/common/collect/Range<",
            "TC;>;>;"
        }
    .end annotation

    .line 320
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/TreeRangeSet$RangesByUpperBound;, "Lorg/checkerframework/com/google/common/collect/TreeRangeSet$RangesByUpperBound<TC;>;"
    .local p1, "toKey":Lorg/checkerframework/com/google/common/collect/Cut;, "Lorg/checkerframework/com/google/common/collect/Cut<TC;>;"
    invoke-static {p2}, Lorg/checkerframework/com/google/common/collect/BoundType;->forBoolean(Z)Lorg/checkerframework/com/google/common/collect/BoundType;

    move-result-object v0

    invoke-static {p1, v0}, Lorg/checkerframework/com/google/common/collect/Range;->upTo(Ljava/lang/Comparable;Lorg/checkerframework/com/google/common/collect/BoundType;)Lorg/checkerframework/com/google/common/collect/Range;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/checkerframework/com/google/common/collect/TreeRangeSet$RangesByUpperBound;->subMap(Lorg/checkerframework/com/google/common/collect/Range;)Ljava/util/NavigableMap;

    move-result-object v0

    return-object v0
.end method

.method public isEmpty()Z
    .locals 2

    .line 439
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/TreeRangeSet$RangesByUpperBound;, "Lorg/checkerframework/com/google/common/collect/TreeRangeSet$RangesByUpperBound<TC;>;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/TreeRangeSet$RangesByUpperBound;->upperBoundWindow:Lorg/checkerframework/com/google/common/collect/Range;

    invoke-static {}, Lorg/checkerframework/com/google/common/collect/Range;->all()Lorg/checkerframework/com/google/common/collect/Range;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/checkerframework/com/google/common/collect/Range;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/TreeRangeSet$RangesByUpperBound;->rangesByLowerBound:Ljava/util/NavigableMap;

    .line 440
    invoke-interface {v0}, Ljava/util/NavigableMap;->isEmpty()Z

    move-result v0

    goto :goto_0

    .line 441
    :cond_0
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/TreeRangeSet$RangesByUpperBound;->entryIterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 439
    :goto_0
    return v0
.end method

.method public size()I
    .locals 2

    .line 431
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/TreeRangeSet$RangesByUpperBound;, "Lorg/checkerframework/com/google/common/collect/TreeRangeSet$RangesByUpperBound<TC;>;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/TreeRangeSet$RangesByUpperBound;->upperBoundWindow:Lorg/checkerframework/com/google/common/collect/Range;

    invoke-static {}, Lorg/checkerframework/com/google/common/collect/Range;->all()Lorg/checkerframework/com/google/common/collect/Range;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/checkerframework/com/google/common/collect/Range;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 432
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/TreeRangeSet$RangesByUpperBound;->rangesByLowerBound:Ljava/util/NavigableMap;

    invoke-interface {v0}, Ljava/util/NavigableMap;->size()I

    move-result v0

    return v0

    .line 434
    :cond_0
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/TreeRangeSet$RangesByUpperBound;->entryIterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0}, Lorg/checkerframework/com/google/common/collect/Iterators;->size(Ljava/util/Iterator;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic subMap(Ljava/lang/Object;ZLjava/lang/Object;Z)Ljava/util/NavigableMap;
    .locals 0

    .line 279
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/TreeRangeSet$RangesByUpperBound;, "Lorg/checkerframework/com/google/common/collect/TreeRangeSet$RangesByUpperBound<TC;>;"
    check-cast p1, Lorg/checkerframework/com/google/common/collect/Cut;

    check-cast p3, Lorg/checkerframework/com/google/common/collect/Cut;

    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/checkerframework/com/google/common/collect/TreeRangeSet$RangesByUpperBound;->subMap(Lorg/checkerframework/com/google/common/collect/Cut;ZLorg/checkerframework/com/google/common/collect/Cut;Z)Ljava/util/NavigableMap;

    move-result-object p1

    return-object p1
.end method

.method public subMap(Lorg/checkerframework/com/google/common/collect/Cut;ZLorg/checkerframework/com/google/common/collect/Cut;Z)Ljava/util/NavigableMap;
    .locals 2
    .param p2, "fromInclusive"    # Z
    .param p4, "toInclusive"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/google/common/collect/Cut<",
            "TC;>;Z",
            "Lorg/checkerframework/com/google/common/collect/Cut<",
            "TC;>;Z)",
            "Ljava/util/NavigableMap<",
            "Lorg/checkerframework/com/google/common/collect/Cut<",
            "TC;>;",
            "Lorg/checkerframework/com/google/common/collect/Range<",
            "TC;>;>;"
        }
    .end annotation

    .line 312
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/TreeRangeSet$RangesByUpperBound;, "Lorg/checkerframework/com/google/common/collect/TreeRangeSet$RangesByUpperBound<TC;>;"
    .local p1, "fromKey":Lorg/checkerframework/com/google/common/collect/Cut;, "Lorg/checkerframework/com/google/common/collect/Cut<TC;>;"
    .local p3, "toKey":Lorg/checkerframework/com/google/common/collect/Cut;, "Lorg/checkerframework/com/google/common/collect/Cut<TC;>;"
    nop

    .line 314
    invoke-static {p2}, Lorg/checkerframework/com/google/common/collect/BoundType;->forBoolean(Z)Lorg/checkerframework/com/google/common/collect/BoundType;

    move-result-object v0

    .line 315
    invoke-static {p4}, Lorg/checkerframework/com/google/common/collect/BoundType;->forBoolean(Z)Lorg/checkerframework/com/google/common/collect/BoundType;

    move-result-object v1

    .line 313
    invoke-static {p1, v0, p3, v1}, Lorg/checkerframework/com/google/common/collect/Range;->range(Ljava/lang/Comparable;Lorg/checkerframework/com/google/common/collect/BoundType;Ljava/lang/Comparable;Lorg/checkerframework/com/google/common/collect/BoundType;)Lorg/checkerframework/com/google/common/collect/Range;

    move-result-object v0

    .line 312
    invoke-direct {p0, v0}, Lorg/checkerframework/com/google/common/collect/TreeRangeSet$RangesByUpperBound;->subMap(Lorg/checkerframework/com/google/common/collect/Range;)Ljava/util/NavigableMap;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic tailMap(Ljava/lang/Object;Z)Ljava/util/NavigableMap;
    .locals 0

    .line 279
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/TreeRangeSet$RangesByUpperBound;, "Lorg/checkerframework/com/google/common/collect/TreeRangeSet$RangesByUpperBound<TC;>;"
    check-cast p1, Lorg/checkerframework/com/google/common/collect/Cut;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/google/common/collect/TreeRangeSet$RangesByUpperBound;->tailMap(Lorg/checkerframework/com/google/common/collect/Cut;Z)Ljava/util/NavigableMap;

    move-result-object p1

    return-object p1
.end method

.method public tailMap(Lorg/checkerframework/com/google/common/collect/Cut;Z)Ljava/util/NavigableMap;
    .locals 1
    .param p2, "inclusive"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/google/common/collect/Cut<",
            "TC;>;Z)",
            "Ljava/util/NavigableMap<",
            "Lorg/checkerframework/com/google/common/collect/Cut<",
            "TC;>;",
            "Lorg/checkerframework/com/google/common/collect/Range<",
            "TC;>;>;"
        }
    .end annotation

    .line 325
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/TreeRangeSet$RangesByUpperBound;, "Lorg/checkerframework/com/google/common/collect/TreeRangeSet$RangesByUpperBound<TC;>;"
    .local p1, "fromKey":Lorg/checkerframework/com/google/common/collect/Cut;, "Lorg/checkerframework/com/google/common/collect/Cut<TC;>;"
    invoke-static {p2}, Lorg/checkerframework/com/google/common/collect/BoundType;->forBoolean(Z)Lorg/checkerframework/com/google/common/collect/BoundType;

    move-result-object v0

    invoke-static {p1, v0}, Lorg/checkerframework/com/google/common/collect/Range;->downTo(Ljava/lang/Comparable;Lorg/checkerframework/com/google/common/collect/BoundType;)Lorg/checkerframework/com/google/common/collect/Range;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/checkerframework/com/google/common/collect/TreeRangeSet$RangesByUpperBound;->subMap(Lorg/checkerframework/com/google/common/collect/Range;)Ljava/util/NavigableMap;

    move-result-object v0

    return-object v0
.end method
