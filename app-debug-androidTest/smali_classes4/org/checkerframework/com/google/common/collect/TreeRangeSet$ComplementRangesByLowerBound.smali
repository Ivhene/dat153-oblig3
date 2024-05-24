.class final Lorg/checkerframework/com/google/common/collect/TreeRangeSet$ComplementRangesByLowerBound;
.super Lorg/checkerframework/com/google/common/collect/AbstractNavigableMap;
.source "TreeRangeSet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/com/google/common/collect/TreeRangeSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ComplementRangesByLowerBound"
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
.field private final complementLowerBoundWindow:Lorg/checkerframework/com/google/common/collect/Range;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/checkerframework/com/google/common/collect/Range<",
            "Lorg/checkerframework/com/google/common/collect/Cut<",
            "TC;>;>;"
        }
    .end annotation
.end field

.field private final positiveRangesByLowerBound:Ljava/util/NavigableMap;
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

.field private final positiveRangesByUpperBound:Ljava/util/NavigableMap;
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

    .line 458
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/TreeRangeSet$ComplementRangesByLowerBound;, "Lorg/checkerframework/com/google/common/collect/TreeRangeSet$ComplementRangesByLowerBound<TC;>;"
    .local p1, "positiveRangesByLowerBound":Ljava/util/NavigableMap;, "Ljava/util/NavigableMap<Lorg/checkerframework/com/google/common/collect/Cut<TC;>;Lorg/checkerframework/com/google/common/collect/Range<TC;>;>;"
    invoke-static {}, Lorg/checkerframework/com/google/common/collect/Range;->all()Lorg/checkerframework/com/google/common/collect/Range;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/checkerframework/com/google/common/collect/TreeRangeSet$ComplementRangesByLowerBound;-><init>(Ljava/util/NavigableMap;Lorg/checkerframework/com/google/common/collect/Range;)V

    .line 459
    return-void
.end method

.method private constructor <init>(Ljava/util/NavigableMap;Lorg/checkerframework/com/google/common/collect/Range;)V
    .locals 1
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

    .line 462
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/TreeRangeSet$ComplementRangesByLowerBound;, "Lorg/checkerframework/com/google/common/collect/TreeRangeSet$ComplementRangesByLowerBound<TC;>;"
    .local p1, "positiveRangesByLowerBound":Ljava/util/NavigableMap;, "Ljava/util/NavigableMap<Lorg/checkerframework/com/google/common/collect/Cut<TC;>;Lorg/checkerframework/com/google/common/collect/Range<TC;>;>;"
    .local p2, "window":Lorg/checkerframework/com/google/common/collect/Range;, "Lorg/checkerframework/com/google/common/collect/Range<Lorg/checkerframework/com/google/common/collect/Cut<TC;>;>;"
    invoke-direct {p0}, Lorg/checkerframework/com/google/common/collect/AbstractNavigableMap;-><init>()V

    .line 463
    iput-object p1, p0, Lorg/checkerframework/com/google/common/collect/TreeRangeSet$ComplementRangesByLowerBound;->positiveRangesByLowerBound:Ljava/util/NavigableMap;

    .line 464
    new-instance v0, Lorg/checkerframework/com/google/common/collect/TreeRangeSet$RangesByUpperBound;

    invoke-direct {v0, p1}, Lorg/checkerframework/com/google/common/collect/TreeRangeSet$RangesByUpperBound;-><init>(Ljava/util/NavigableMap;)V

    iput-object v0, p0, Lorg/checkerframework/com/google/common/collect/TreeRangeSet$ComplementRangesByLowerBound;->positiveRangesByUpperBound:Ljava/util/NavigableMap;

    .line 465
    iput-object p2, p0, Lorg/checkerframework/com/google/common/collect/TreeRangeSet$ComplementRangesByLowerBound;->complementLowerBoundWindow:Lorg/checkerframework/com/google/common/collect/Range;

    .line 466
    return-void
.end method

.method static synthetic access$100(Lorg/checkerframework/com/google/common/collect/TreeRangeSet$ComplementRangesByLowerBound;)Lorg/checkerframework/com/google/common/collect/Range;
    .locals 1
    .param p0, "x0"    # Lorg/checkerframework/com/google/common/collect/TreeRangeSet$ComplementRangesByLowerBound;

    .line 445
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/TreeRangeSet$ComplementRangesByLowerBound;->complementLowerBoundWindow:Lorg/checkerframework/com/google/common/collect/Range;

    return-object v0
.end method

.method private subMap(Lorg/checkerframework/com/google/common/collect/Range;)Ljava/util/NavigableMap;
    .locals 2
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

    .line 469
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/TreeRangeSet$ComplementRangesByLowerBound;, "Lorg/checkerframework/com/google/common/collect/TreeRangeSet$ComplementRangesByLowerBound<TC;>;"
    .local p1, "subWindow":Lorg/checkerframework/com/google/common/collect/Range;, "Lorg/checkerframework/com/google/common/collect/Range<Lorg/checkerframework/com/google/common/collect/Cut<TC;>;>;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/TreeRangeSet$ComplementRangesByLowerBound;->complementLowerBoundWindow:Lorg/checkerframework/com/google/common/collect/Range;

    invoke-virtual {v0, p1}, Lorg/checkerframework/com/google/common/collect/Range;->isConnected(Lorg/checkerframework/com/google/common/collect/Range;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 470
    invoke-static {}, Lorg/checkerframework/com/google/common/collect/ImmutableSortedMap;->of()Lorg/checkerframework/com/google/common/collect/ImmutableSortedMap;

    move-result-object v0

    return-object v0

    .line 472
    :cond_0
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/TreeRangeSet$ComplementRangesByLowerBound;->complementLowerBoundWindow:Lorg/checkerframework/com/google/common/collect/Range;

    invoke-virtual {p1, v0}, Lorg/checkerframework/com/google/common/collect/Range;->intersection(Lorg/checkerframework/com/google/common/collect/Range;)Lorg/checkerframework/com/google/common/collect/Range;

    move-result-object p1

    .line 473
    new-instance v0, Lorg/checkerframework/com/google/common/collect/TreeRangeSet$ComplementRangesByLowerBound;

    iget-object v1, p0, Lorg/checkerframework/com/google/common/collect/TreeRangeSet$ComplementRangesByLowerBound;->positiveRangesByLowerBound:Ljava/util/NavigableMap;

    invoke-direct {v0, v1, p1}, Lorg/checkerframework/com/google/common/collect/TreeRangeSet$ComplementRangesByLowerBound;-><init>(Ljava/util/NavigableMap;Lorg/checkerframework/com/google/common/collect/Range;)V

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

    .line 498
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/TreeRangeSet$ComplementRangesByLowerBound;, "Lorg/checkerframework/com/google/common/collect/TreeRangeSet$ComplementRangesByLowerBound<TC;>;"
    invoke-static {}, Lorg/checkerframework/com/google/common/collect/Ordering;->natural()Lorg/checkerframework/com/google/common/collect/Ordering;

    move-result-object v0

    return-object v0
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;

    .line 645
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/TreeRangeSet$ComplementRangesByLowerBound;, "Lorg/checkerframework/com/google/common/collect/TreeRangeSet$ComplementRangesByLowerBound<TC;>;"
    invoke-virtual {p0, p1}, Lorg/checkerframework/com/google/common/collect/TreeRangeSet$ComplementRangesByLowerBound;->get(Ljava/lang/Object;)Lorg/checkerframework/com/google/common/collect/Range;

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
    .locals 6
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

    .line 567
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/TreeRangeSet$ComplementRangesByLowerBound;, "Lorg/checkerframework/com/google/common/collect/TreeRangeSet$ComplementRangesByLowerBound<TC;>;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/TreeRangeSet$ComplementRangesByLowerBound;->complementLowerBoundWindow:Lorg/checkerframework/com/google/common/collect/Range;

    .line 568
    invoke-virtual {v0}, Lorg/checkerframework/com/google/common/collect/Range;->hasUpperBound()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/TreeRangeSet$ComplementRangesByLowerBound;->complementLowerBoundWindow:Lorg/checkerframework/com/google/common/collect/Range;

    .line 569
    invoke-virtual {v0}, Lorg/checkerframework/com/google/common/collect/Range;->upperEndpoint()Ljava/lang/Comparable;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/google/common/collect/Cut;

    goto :goto_0

    .line 570
    :cond_0
    invoke-static {}, Lorg/checkerframework/com/google/common/collect/Cut;->aboveAll()Lorg/checkerframework/com/google/common/collect/Cut;

    move-result-object v0

    :goto_0
    nop

    .line 571
    .local v0, "startingPoint":Lorg/checkerframework/com/google/common/collect/Cut;, "Lorg/checkerframework/com/google/common/collect/Cut<TC;>;"
    iget-object v1, p0, Lorg/checkerframework/com/google/common/collect/TreeRangeSet$ComplementRangesByLowerBound;->complementLowerBoundWindow:Lorg/checkerframework/com/google/common/collect/Range;

    .line 572
    invoke-virtual {v1}, Lorg/checkerframework/com/google/common/collect/Range;->hasUpperBound()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/checkerframework/com/google/common/collect/TreeRangeSet$ComplementRangesByLowerBound;->complementLowerBoundWindow:Lorg/checkerframework/com/google/common/collect/Range;

    .line 573
    invoke-virtual {v1}, Lorg/checkerframework/com/google/common/collect/Range;->upperBoundType()Lorg/checkerframework/com/google/common/collect/BoundType;

    move-result-object v1

    sget-object v2, Lorg/checkerframework/com/google/common/collect/BoundType;->CLOSED:Lorg/checkerframework/com/google/common/collect/BoundType;

    if-ne v1, v2, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    .line 574
    .local v1, "inclusive":Z
    :goto_1
    iget-object v2, p0, Lorg/checkerframework/com/google/common/collect/TreeRangeSet$ComplementRangesByLowerBound;->positiveRangesByUpperBound:Ljava/util/NavigableMap;

    .line 577
    invoke-interface {v2, v0, v1}, Ljava/util/NavigableMap;->headMap(Ljava/lang/Object;Z)Ljava/util/NavigableMap;

    move-result-object v2

    .line 578
    invoke-interface {v2}, Ljava/util/NavigableMap;->descendingMap()Ljava/util/NavigableMap;

    move-result-object v2

    .line 579
    invoke-interface {v2}, Ljava/util/NavigableMap;->values()Ljava/util/Collection;

    move-result-object v2

    .line 580
    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 575
    invoke-static {v2}, Lorg/checkerframework/com/google/common/collect/Iterators;->peekingIterator(Ljava/util/Iterator;)Lorg/checkerframework/com/google/common/collect/PeekingIterator;

    move-result-object v2

    .line 582
    .local v2, "positiveItr":Lorg/checkerframework/com/google/common/collect/PeekingIterator;, "Lorg/checkerframework/com/google/common/collect/PeekingIterator<Lorg/checkerframework/com/google/common/collect/Range<TC;>;>;"
    invoke-interface {v2}, Lorg/checkerframework/com/google/common/collect/PeekingIterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 583
    nop

    .line 584
    invoke-interface {v2}, Lorg/checkerframework/com/google/common/collect/PeekingIterator;->peek()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/checkerframework/com/google/common/collect/Range;

    iget-object v3, v3, Lorg/checkerframework/com/google/common/collect/Range;->upperBound:Lorg/checkerframework/com/google/common/collect/Cut;

    invoke-static {}, Lorg/checkerframework/com/google/common/collect/Cut;->aboveAll()Lorg/checkerframework/com/google/common/collect/Cut;

    move-result-object v4

    if-ne v3, v4, :cond_2

    .line 585
    invoke-interface {v2}, Lorg/checkerframework/com/google/common/collect/PeekingIterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/checkerframework/com/google/common/collect/Range;

    iget-object v3, v3, Lorg/checkerframework/com/google/common/collect/Range;->lowerBound:Lorg/checkerframework/com/google/common/collect/Cut;

    goto :goto_2

    :cond_2
    iget-object v3, p0, Lorg/checkerframework/com/google/common/collect/TreeRangeSet$ComplementRangesByLowerBound;->positiveRangesByLowerBound:Ljava/util/NavigableMap;

    .line 586
    invoke-interface {v2}, Lorg/checkerframework/com/google/common/collect/PeekingIterator;->peek()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/checkerframework/com/google/common/collect/Range;

    iget-object v4, v4, Lorg/checkerframework/com/google/common/collect/Range;->upperBound:Lorg/checkerframework/com/google/common/collect/Cut;

    invoke-interface {v3, v4}, Ljava/util/NavigableMap;->higherKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/checkerframework/com/google/common/collect/Cut;

    :goto_2
    nop

    .local v3, "cut":Lorg/checkerframework/com/google/common/collect/Cut;, "Lorg/checkerframework/com/google/common/collect/Cut<TC;>;"
    goto :goto_3

    .line 587
    .end local v3    # "cut":Lorg/checkerframework/com/google/common/collect/Cut;, "Lorg/checkerframework/com/google/common/collect/Cut<TC;>;"
    :cond_3
    iget-object v3, p0, Lorg/checkerframework/com/google/common/collect/TreeRangeSet$ComplementRangesByLowerBound;->complementLowerBoundWindow:Lorg/checkerframework/com/google/common/collect/Range;

    invoke-static {}, Lorg/checkerframework/com/google/common/collect/Cut;->belowAll()Lorg/checkerframework/com/google/common/collect/Cut;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/checkerframework/com/google/common/collect/Range;->contains(Ljava/lang/Comparable;)Z

    move-result v3

    if-eqz v3, :cond_5

    iget-object v3, p0, Lorg/checkerframework/com/google/common/collect/TreeRangeSet$ComplementRangesByLowerBound;->positiveRangesByLowerBound:Ljava/util/NavigableMap;

    .line 588
    invoke-static {}, Lorg/checkerframework/com/google/common/collect/Cut;->belowAll()Lorg/checkerframework/com/google/common/collect/Cut;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/NavigableMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    goto :goto_4

    .line 591
    :cond_4
    iget-object v3, p0, Lorg/checkerframework/com/google/common/collect/TreeRangeSet$ComplementRangesByLowerBound;->positiveRangesByLowerBound:Ljava/util/NavigableMap;

    invoke-static {}, Lorg/checkerframework/com/google/common/collect/Cut;->belowAll()Lorg/checkerframework/com/google/common/collect/Cut;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/NavigableMap;->higherKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/checkerframework/com/google/common/collect/Cut;

    .line 593
    .restart local v3    # "cut":Lorg/checkerframework/com/google/common/collect/Cut;, "Lorg/checkerframework/com/google/common/collect/Cut<TC;>;"
    :goto_3
    nop

    .line 594
    invoke-static {}, Lorg/checkerframework/com/google/common/collect/Cut;->aboveAll()Lorg/checkerframework/com/google/common/collect/Cut;

    move-result-object v4

    invoke-static {v3, v4}, Lorg/checkerframework/com/google/common/base/MoreObjects;->firstNonNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/checkerframework/com/google/common/collect/Cut;

    .line 595
    .local v4, "firstComplementRangeUpperBound":Lorg/checkerframework/com/google/common/collect/Cut;, "Lorg/checkerframework/com/google/common/collect/Cut<TC;>;"
    new-instance v5, Lorg/checkerframework/com/google/common/collect/TreeRangeSet$ComplementRangesByLowerBound$2;

    invoke-direct {v5, p0, v4, v2}, Lorg/checkerframework/com/google/common/collect/TreeRangeSet$ComplementRangesByLowerBound$2;-><init>(Lorg/checkerframework/com/google/common/collect/TreeRangeSet$ComplementRangesByLowerBound;Lorg/checkerframework/com/google/common/collect/Cut;Lorg/checkerframework/com/google/common/collect/PeekingIterator;)V

    return-object v5

    .line 589
    .end local v3    # "cut":Lorg/checkerframework/com/google/common/collect/Cut;, "Lorg/checkerframework/com/google/common/collect/Cut<TC;>;"
    .end local v4    # "firstComplementRangeUpperBound":Lorg/checkerframework/com/google/common/collect/Cut;, "Lorg/checkerframework/com/google/common/collect/Cut<TC;>;"
    :cond_5
    :goto_4
    invoke-static {}, Lorg/checkerframework/com/google/common/collect/Iterators;->emptyIterator()Lorg/checkerframework/com/google/common/collect/UnmodifiableIterator;

    move-result-object v3

    return-object v3
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

    .line 513
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/TreeRangeSet$ComplementRangesByLowerBound;, "Lorg/checkerframework/com/google/common/collect/TreeRangeSet$ComplementRangesByLowerBound<TC;>;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/TreeRangeSet$ComplementRangesByLowerBound;->complementLowerBoundWindow:Lorg/checkerframework/com/google/common/collect/Range;

    invoke-virtual {v0}, Lorg/checkerframework/com/google/common/collect/Range;->hasLowerBound()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 514
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/TreeRangeSet$ComplementRangesByLowerBound;->positiveRangesByUpperBound:Ljava/util/NavigableMap;

    iget-object v1, p0, Lorg/checkerframework/com/google/common/collect/TreeRangeSet$ComplementRangesByLowerBound;->complementLowerBoundWindow:Lorg/checkerframework/com/google/common/collect/Range;

    .line 517
    invoke-virtual {v1}, Lorg/checkerframework/com/google/common/collect/Range;->lowerEndpoint()Ljava/lang/Comparable;

    move-result-object v1

    iget-object v2, p0, Lorg/checkerframework/com/google/common/collect/TreeRangeSet$ComplementRangesByLowerBound;->complementLowerBoundWindow:Lorg/checkerframework/com/google/common/collect/Range;

    .line 518
    invoke-virtual {v2}, Lorg/checkerframework/com/google/common/collect/Range;->lowerBoundType()Lorg/checkerframework/com/google/common/collect/BoundType;

    move-result-object v2

    sget-object v3, Lorg/checkerframework/com/google/common/collect/BoundType;->CLOSED:Lorg/checkerframework/com/google/common/collect/BoundType;

    if-ne v2, v3, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 516
    :goto_0
    invoke-interface {v0, v1, v2}, Ljava/util/NavigableMap;->tailMap(Ljava/lang/Object;Z)Ljava/util/NavigableMap;

    move-result-object v0

    .line 519
    invoke-interface {v0}, Ljava/util/NavigableMap;->values()Ljava/util/Collection;

    move-result-object v0

    .local v0, "positiveRanges":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/checkerframework/com/google/common/collect/Range<TC;>;>;"
    goto :goto_1

    .line 521
    .end local v0    # "positiveRanges":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/checkerframework/com/google/common/collect/Range<TC;>;>;"
    :cond_1
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/TreeRangeSet$ComplementRangesByLowerBound;->positiveRangesByUpperBound:Ljava/util/NavigableMap;

    invoke-interface {v0}, Ljava/util/NavigableMap;->values()Ljava/util/Collection;

    move-result-object v0

    .line 523
    .restart local v0    # "positiveRanges":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/checkerframework/com/google/common/collect/Range<TC;>;>;"
    :goto_1
    nop

    .line 524
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-static {v1}, Lorg/checkerframework/com/google/common/collect/Iterators;->peekingIterator(Ljava/util/Iterator;)Lorg/checkerframework/com/google/common/collect/PeekingIterator;

    move-result-object v1

    .line 526
    .local v1, "positiveItr":Lorg/checkerframework/com/google/common/collect/PeekingIterator;, "Lorg/checkerframework/com/google/common/collect/PeekingIterator<Lorg/checkerframework/com/google/common/collect/Range<TC;>;>;"
    iget-object v2, p0, Lorg/checkerframework/com/google/common/collect/TreeRangeSet$ComplementRangesByLowerBound;->complementLowerBoundWindow:Lorg/checkerframework/com/google/common/collect/Range;

    invoke-static {}, Lorg/checkerframework/com/google/common/collect/Cut;->belowAll()Lorg/checkerframework/com/google/common/collect/Cut;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/checkerframework/com/google/common/collect/Range;->contains(Ljava/lang/Comparable;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 527
    invoke-interface {v1}, Lorg/checkerframework/com/google/common/collect/PeekingIterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Lorg/checkerframework/com/google/common/collect/PeekingIterator;->peek()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/checkerframework/com/google/common/collect/Range;

    iget-object v2, v2, Lorg/checkerframework/com/google/common/collect/Range;->lowerBound:Lorg/checkerframework/com/google/common/collect/Cut;

    invoke-static {}, Lorg/checkerframework/com/google/common/collect/Cut;->belowAll()Lorg/checkerframework/com/google/common/collect/Cut;

    move-result-object v3

    if-eq v2, v3, :cond_3

    .line 528
    :cond_2
    invoke-static {}, Lorg/checkerframework/com/google/common/collect/Cut;->belowAll()Lorg/checkerframework/com/google/common/collect/Cut;

    move-result-object v2

    .local v2, "firstComplementRangeLowerBound":Lorg/checkerframework/com/google/common/collect/Cut;, "Lorg/checkerframework/com/google/common/collect/Cut<TC;>;"
    goto :goto_2

    .line 529
    .end local v2    # "firstComplementRangeLowerBound":Lorg/checkerframework/com/google/common/collect/Cut;, "Lorg/checkerframework/com/google/common/collect/Cut<TC;>;"
    :cond_3
    invoke-interface {v1}, Lorg/checkerframework/com/google/common/collect/PeekingIterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 530
    invoke-interface {v1}, Lorg/checkerframework/com/google/common/collect/PeekingIterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/checkerframework/com/google/common/collect/Range;

    iget-object v2, v2, Lorg/checkerframework/com/google/common/collect/Range;->upperBound:Lorg/checkerframework/com/google/common/collect/Cut;

    .line 534
    .restart local v2    # "firstComplementRangeLowerBound":Lorg/checkerframework/com/google/common/collect/Cut;, "Lorg/checkerframework/com/google/common/collect/Cut<TC;>;"
    :goto_2
    new-instance v3, Lorg/checkerframework/com/google/common/collect/TreeRangeSet$ComplementRangesByLowerBound$1;

    invoke-direct {v3, p0, v2, v1}, Lorg/checkerframework/com/google/common/collect/TreeRangeSet$ComplementRangesByLowerBound$1;-><init>(Lorg/checkerframework/com/google/common/collect/TreeRangeSet$ComplementRangesByLowerBound;Lorg/checkerframework/com/google/common/collect/Cut;Lorg/checkerframework/com/google/common/collect/PeekingIterator;)V

    return-object v3

    .line 532
    .end local v2    # "firstComplementRangeLowerBound":Lorg/checkerframework/com/google/common/collect/Cut;, "Lorg/checkerframework/com/google/common/collect/Cut<TC;>;"
    :cond_4
    invoke-static {}, Lorg/checkerframework/com/google/common/collect/Iterators;->emptyIterator()Lorg/checkerframework/com/google/common/collect/UnmodifiableIterator;

    move-result-object v2

    return-object v2
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 445
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/TreeRangeSet$ComplementRangesByLowerBound;, "Lorg/checkerframework/com/google/common/collect/TreeRangeSet$ComplementRangesByLowerBound<TC;>;"
    invoke-virtual {p0, p1}, Lorg/checkerframework/com/google/common/collect/TreeRangeSet$ComplementRangesByLowerBound;->get(Ljava/lang/Object;)Lorg/checkerframework/com/google/common/collect/Range;

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

    .line 627
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/TreeRangeSet$ComplementRangesByLowerBound;, "Lorg/checkerframework/com/google/common/collect/TreeRangeSet$ComplementRangesByLowerBound<TC;>;"
    instance-of v0, p1, Lorg/checkerframework/com/google/common/collect/Cut;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 630
    :try_start_0
    move-object v0, p1

    check-cast v0, Lorg/checkerframework/com/google/common/collect/Cut;

    .line 632
    .local v0, "cut":Lorg/checkerframework/com/google/common/collect/Cut;, "Lorg/checkerframework/com/google/common/collect/Cut<TC;>;"
    const/4 v2, 0x1

    invoke-virtual {p0, v0, v2}, Lorg/checkerframework/com/google/common/collect/TreeRangeSet$ComplementRangesByLowerBound;->tailMap(Lorg/checkerframework/com/google/common/collect/Cut;Z)Ljava/util/NavigableMap;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/NavigableMap;->firstEntry()Ljava/util/Map$Entry;

    move-result-object v2

    .line 633
    .local v2, "firstEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lorg/checkerframework/com/google/common/collect/Cut<TC;>;Lorg/checkerframework/com/google/common/collect/Range<TC;>;>;"
    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/checkerframework/com/google/common/collect/Cut;

    invoke-virtual {v3, v0}, Lorg/checkerframework/com/google/common/collect/Cut;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 634
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/checkerframework/com/google/common/collect/Range;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    .line 638
    .end local v0    # "cut":Lorg/checkerframework/com/google/common/collect/Cut;, "Lorg/checkerframework/com/google/common/collect/Cut<TC;>;"
    .end local v2    # "firstEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lorg/checkerframework/com/google/common/collect/Cut<TC;>;Lorg/checkerframework/com/google/common/collect/Range<TC;>;>;"
    :cond_0
    goto :goto_0

    .line 636
    :catch_0
    move-exception v0

    .line 637
    .local v0, "e":Ljava/lang/ClassCastException;
    return-object v1

    .line 640
    .end local v0    # "e":Ljava/lang/ClassCastException;
    :cond_1
    :goto_0
    return-object v1
.end method

.method public bridge synthetic headMap(Ljava/lang/Object;Z)Ljava/util/NavigableMap;
    .locals 0

    .line 445
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/TreeRangeSet$ComplementRangesByLowerBound;, "Lorg/checkerframework/com/google/common/collect/TreeRangeSet$ComplementRangesByLowerBound<TC;>;"
    check-cast p1, Lorg/checkerframework/com/google/common/collect/Cut;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/google/common/collect/TreeRangeSet$ComplementRangesByLowerBound;->headMap(Lorg/checkerframework/com/google/common/collect/Cut;Z)Ljava/util/NavigableMap;

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

    .line 488
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/TreeRangeSet$ComplementRangesByLowerBound;, "Lorg/checkerframework/com/google/common/collect/TreeRangeSet$ComplementRangesByLowerBound<TC;>;"
    .local p1, "toKey":Lorg/checkerframework/com/google/common/collect/Cut;, "Lorg/checkerframework/com/google/common/collect/Cut<TC;>;"
    invoke-static {p2}, Lorg/checkerframework/com/google/common/collect/BoundType;->forBoolean(Z)Lorg/checkerframework/com/google/common/collect/BoundType;

    move-result-object v0

    invoke-static {p1, v0}, Lorg/checkerframework/com/google/common/collect/Range;->upTo(Ljava/lang/Comparable;Lorg/checkerframework/com/google/common/collect/BoundType;)Lorg/checkerframework/com/google/common/collect/Range;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/checkerframework/com/google/common/collect/TreeRangeSet$ComplementRangesByLowerBound;->subMap(Lorg/checkerframework/com/google/common/collect/Range;)Ljava/util/NavigableMap;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .locals 1

    .line 622
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/TreeRangeSet$ComplementRangesByLowerBound;, "Lorg/checkerframework/com/google/common/collect/TreeRangeSet$ComplementRangesByLowerBound<TC;>;"
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/TreeRangeSet$ComplementRangesByLowerBound;->entryIterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0}, Lorg/checkerframework/com/google/common/collect/Iterators;->size(Ljava/util/Iterator;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic subMap(Ljava/lang/Object;ZLjava/lang/Object;Z)Ljava/util/NavigableMap;
    .locals 0

    .line 445
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/TreeRangeSet$ComplementRangesByLowerBound;, "Lorg/checkerframework/com/google/common/collect/TreeRangeSet$ComplementRangesByLowerBound<TC;>;"
    check-cast p1, Lorg/checkerframework/com/google/common/collect/Cut;

    check-cast p3, Lorg/checkerframework/com/google/common/collect/Cut;

    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/checkerframework/com/google/common/collect/TreeRangeSet$ComplementRangesByLowerBound;->subMap(Lorg/checkerframework/com/google/common/collect/Cut;ZLorg/checkerframework/com/google/common/collect/Cut;Z)Ljava/util/NavigableMap;

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

    .line 480
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/TreeRangeSet$ComplementRangesByLowerBound;, "Lorg/checkerframework/com/google/common/collect/TreeRangeSet$ComplementRangesByLowerBound<TC;>;"
    .local p1, "fromKey":Lorg/checkerframework/com/google/common/collect/Cut;, "Lorg/checkerframework/com/google/common/collect/Cut<TC;>;"
    .local p3, "toKey":Lorg/checkerframework/com/google/common/collect/Cut;, "Lorg/checkerframework/com/google/common/collect/Cut<TC;>;"
    nop

    .line 482
    invoke-static {p2}, Lorg/checkerframework/com/google/common/collect/BoundType;->forBoolean(Z)Lorg/checkerframework/com/google/common/collect/BoundType;

    move-result-object v0

    .line 483
    invoke-static {p4}, Lorg/checkerframework/com/google/common/collect/BoundType;->forBoolean(Z)Lorg/checkerframework/com/google/common/collect/BoundType;

    move-result-object v1

    .line 481
    invoke-static {p1, v0, p3, v1}, Lorg/checkerframework/com/google/common/collect/Range;->range(Ljava/lang/Comparable;Lorg/checkerframework/com/google/common/collect/BoundType;Ljava/lang/Comparable;Lorg/checkerframework/com/google/common/collect/BoundType;)Lorg/checkerframework/com/google/common/collect/Range;

    move-result-object v0

    .line 480
    invoke-direct {p0, v0}, Lorg/checkerframework/com/google/common/collect/TreeRangeSet$ComplementRangesByLowerBound;->subMap(Lorg/checkerframework/com/google/common/collect/Range;)Ljava/util/NavigableMap;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic tailMap(Ljava/lang/Object;Z)Ljava/util/NavigableMap;
    .locals 0

    .line 445
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/TreeRangeSet$ComplementRangesByLowerBound;, "Lorg/checkerframework/com/google/common/collect/TreeRangeSet$ComplementRangesByLowerBound<TC;>;"
    check-cast p1, Lorg/checkerframework/com/google/common/collect/Cut;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/google/common/collect/TreeRangeSet$ComplementRangesByLowerBound;->tailMap(Lorg/checkerframework/com/google/common/collect/Cut;Z)Ljava/util/NavigableMap;

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

    .line 493
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/TreeRangeSet$ComplementRangesByLowerBound;, "Lorg/checkerframework/com/google/common/collect/TreeRangeSet$ComplementRangesByLowerBound<TC;>;"
    .local p1, "fromKey":Lorg/checkerframework/com/google/common/collect/Cut;, "Lorg/checkerframework/com/google/common/collect/Cut<TC;>;"
    invoke-static {p2}, Lorg/checkerframework/com/google/common/collect/BoundType;->forBoolean(Z)Lorg/checkerframework/com/google/common/collect/BoundType;

    move-result-object v0

    invoke-static {p1, v0}, Lorg/checkerframework/com/google/common/collect/Range;->downTo(Ljava/lang/Comparable;Lorg/checkerframework/com/google/common/collect/BoundType;)Lorg/checkerframework/com/google/common/collect/Range;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/checkerframework/com/google/common/collect/TreeRangeSet$ComplementRangesByLowerBound;->subMap(Lorg/checkerframework/com/google/common/collect/Range;)Ljava/util/NavigableMap;

    move-result-object v0

    return-object v0
.end method
