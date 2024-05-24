.class final Lorg/checkerframework/com/google/common/collect/TreeRangeSet$SubRangeSetRangesByLowerBound;
.super Lorg/checkerframework/com/google/common/collect/AbstractNavigableMap;
.source "TreeRangeSet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/com/google/common/collect/TreeRangeSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SubRangeSetRangesByLowerBound"
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
.field private final lowerBoundWindow:Lorg/checkerframework/com/google/common/collect/Range;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/checkerframework/com/google/common/collect/Range<",
            "Lorg/checkerframework/com/google/common/collect/Cut<",
            "TC;>;>;"
        }
    .end annotation
.end field

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

.field private final rangesByUpperBound:Ljava/util/NavigableMap;
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

.field private final restriction:Lorg/checkerframework/com/google/common/collect/Range;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/checkerframework/com/google/common/collect/Range<",
            "TC;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lorg/checkerframework/com/google/common/collect/Range;Lorg/checkerframework/com/google/common/collect/Range;Ljava/util/NavigableMap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/google/common/collect/Range<",
            "Lorg/checkerframework/com/google/common/collect/Cut<",
            "TC;>;>;",
            "Lorg/checkerframework/com/google/common/collect/Range<",
            "TC;>;",
            "Ljava/util/NavigableMap<",
            "Lorg/checkerframework/com/google/common/collect/Cut<",
            "TC;>;",
            "Lorg/checkerframework/com/google/common/collect/Range<",
            "TC;>;>;)V"
        }
    .end annotation

    .line 695
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/TreeRangeSet$SubRangeSetRangesByLowerBound;, "Lorg/checkerframework/com/google/common/collect/TreeRangeSet$SubRangeSetRangesByLowerBound<TC;>;"
    .local p1, "lowerBoundWindow":Lorg/checkerframework/com/google/common/collect/Range;, "Lorg/checkerframework/com/google/common/collect/Range<Lorg/checkerframework/com/google/common/collect/Cut<TC;>;>;"
    .local p2, "restriction":Lorg/checkerframework/com/google/common/collect/Range;, "Lorg/checkerframework/com/google/common/collect/Range<TC;>;"
    .local p3, "rangesByLowerBound":Ljava/util/NavigableMap;, "Ljava/util/NavigableMap<Lorg/checkerframework/com/google/common/collect/Cut<TC;>;Lorg/checkerframework/com/google/common/collect/Range<TC;>;>;"
    invoke-direct {p0}, Lorg/checkerframework/com/google/common/collect/AbstractNavigableMap;-><init>()V

    .line 696
    invoke-static {p1}, Lorg/checkerframework/com/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/google/common/collect/Range;

    iput-object v0, p0, Lorg/checkerframework/com/google/common/collect/TreeRangeSet$SubRangeSetRangesByLowerBound;->lowerBoundWindow:Lorg/checkerframework/com/google/common/collect/Range;

    .line 697
    invoke-static {p2}, Lorg/checkerframework/com/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/google/common/collect/Range;

    iput-object v0, p0, Lorg/checkerframework/com/google/common/collect/TreeRangeSet$SubRangeSetRangesByLowerBound;->restriction:Lorg/checkerframework/com/google/common/collect/Range;

    .line 698
    invoke-static {p3}, Lorg/checkerframework/com/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/NavigableMap;

    iput-object v0, p0, Lorg/checkerframework/com/google/common/collect/TreeRangeSet$SubRangeSetRangesByLowerBound;->rangesByLowerBound:Ljava/util/NavigableMap;

    .line 699
    new-instance v0, Lorg/checkerframework/com/google/common/collect/TreeRangeSet$RangesByUpperBound;

    invoke-direct {v0, p3}, Lorg/checkerframework/com/google/common/collect/TreeRangeSet$RangesByUpperBound;-><init>(Ljava/util/NavigableMap;)V

    iput-object v0, p0, Lorg/checkerframework/com/google/common/collect/TreeRangeSet$SubRangeSetRangesByLowerBound;->rangesByUpperBound:Ljava/util/NavigableMap;

    .line 700
    return-void
.end method

.method synthetic constructor <init>(Lorg/checkerframework/com/google/common/collect/Range;Lorg/checkerframework/com/google/common/collect/Range;Ljava/util/NavigableMap;Lorg/checkerframework/com/google/common/collect/TreeRangeSet$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/checkerframework/com/google/common/collect/Range;
    .param p2, "x1"    # Lorg/checkerframework/com/google/common/collect/Range;
    .param p3, "x2"    # Ljava/util/NavigableMap;
    .param p4, "x3"    # Lorg/checkerframework/com/google/common/collect/TreeRangeSet$1;

    .line 675
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/TreeRangeSet$SubRangeSetRangesByLowerBound;, "Lorg/checkerframework/com/google/common/collect/TreeRangeSet$SubRangeSetRangesByLowerBound<TC;>;"
    invoke-direct {p0, p1, p2, p3}, Lorg/checkerframework/com/google/common/collect/TreeRangeSet$SubRangeSetRangesByLowerBound;-><init>(Lorg/checkerframework/com/google/common/collect/Range;Lorg/checkerframework/com/google/common/collect/Range;Ljava/util/NavigableMap;)V

    return-void
.end method

.method static synthetic access$300(Lorg/checkerframework/com/google/common/collect/TreeRangeSet$SubRangeSetRangesByLowerBound;)Lorg/checkerframework/com/google/common/collect/Range;
    .locals 1
    .param p0, "x0"    # Lorg/checkerframework/com/google/common/collect/TreeRangeSet$SubRangeSetRangesByLowerBound;

    .line 675
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/TreeRangeSet$SubRangeSetRangesByLowerBound;->restriction:Lorg/checkerframework/com/google/common/collect/Range;

    return-object v0
.end method

.method static synthetic access$400(Lorg/checkerframework/com/google/common/collect/TreeRangeSet$SubRangeSetRangesByLowerBound;)Lorg/checkerframework/com/google/common/collect/Range;
    .locals 1
    .param p0, "x0"    # Lorg/checkerframework/com/google/common/collect/TreeRangeSet$SubRangeSetRangesByLowerBound;

    .line 675
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/TreeRangeSet$SubRangeSetRangesByLowerBound;->lowerBoundWindow:Lorg/checkerframework/com/google/common/collect/Range;

    return-object v0
.end method

.method private subMap(Lorg/checkerframework/com/google/common/collect/Range;)Ljava/util/NavigableMap;
    .locals 4
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

    .line 703
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/TreeRangeSet$SubRangeSetRangesByLowerBound;, "Lorg/checkerframework/com/google/common/collect/TreeRangeSet$SubRangeSetRangesByLowerBound<TC;>;"
    .local p1, "window":Lorg/checkerframework/com/google/common/collect/Range;, "Lorg/checkerframework/com/google/common/collect/Range<Lorg/checkerframework/com/google/common/collect/Cut<TC;>;>;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/TreeRangeSet$SubRangeSetRangesByLowerBound;->lowerBoundWindow:Lorg/checkerframework/com/google/common/collect/Range;

    invoke-virtual {p1, v0}, Lorg/checkerframework/com/google/common/collect/Range;->isConnected(Lorg/checkerframework/com/google/common/collect/Range;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 704
    invoke-static {}, Lorg/checkerframework/com/google/common/collect/ImmutableSortedMap;->of()Lorg/checkerframework/com/google/common/collect/ImmutableSortedMap;

    move-result-object v0

    return-object v0

    .line 706
    :cond_0
    new-instance v0, Lorg/checkerframework/com/google/common/collect/TreeRangeSet$SubRangeSetRangesByLowerBound;

    iget-object v1, p0, Lorg/checkerframework/com/google/common/collect/TreeRangeSet$SubRangeSetRangesByLowerBound;->lowerBoundWindow:Lorg/checkerframework/com/google/common/collect/Range;

    .line 707
    invoke-virtual {v1, p1}, Lorg/checkerframework/com/google/common/collect/Range;->intersection(Lorg/checkerframework/com/google/common/collect/Range;)Lorg/checkerframework/com/google/common/collect/Range;

    move-result-object v1

    iget-object v2, p0, Lorg/checkerframework/com/google/common/collect/TreeRangeSet$SubRangeSetRangesByLowerBound;->restriction:Lorg/checkerframework/com/google/common/collect/Range;

    iget-object v3, p0, Lorg/checkerframework/com/google/common/collect/TreeRangeSet$SubRangeSetRangesByLowerBound;->rangesByLowerBound:Ljava/util/NavigableMap;

    invoke-direct {v0, v1, v2, v3}, Lorg/checkerframework/com/google/common/collect/TreeRangeSet$SubRangeSetRangesByLowerBound;-><init>(Lorg/checkerframework/com/google/common/collect/Range;Lorg/checkerframework/com/google/common/collect/Range;Ljava/util/NavigableMap;)V

    .line 706
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

    .line 734
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/TreeRangeSet$SubRangeSetRangesByLowerBound;, "Lorg/checkerframework/com/google/common/collect/TreeRangeSet$SubRangeSetRangesByLowerBound<TC;>;"
    invoke-static {}, Lorg/checkerframework/com/google/common/collect/Ordering;->natural()Lorg/checkerframework/com/google/common/collect/Ordering;

    move-result-object v0

    return-object v0
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;

    .line 739
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/TreeRangeSet$SubRangeSetRangesByLowerBound;, "Lorg/checkerframework/com/google/common/collect/TreeRangeSet$SubRangeSetRangesByLowerBound<TC;>;"
    invoke-virtual {p0, p1}, Lorg/checkerframework/com/google/common/collect/TreeRangeSet$SubRangeSetRangesByLowerBound;->get(Ljava/lang/Object;)Lorg/checkerframework/com/google/common/collect/Range;

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
    .locals 5
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

    .line 815
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/TreeRangeSet$SubRangeSetRangesByLowerBound;, "Lorg/checkerframework/com/google/common/collect/TreeRangeSet$SubRangeSetRangesByLowerBound<TC;>;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/TreeRangeSet$SubRangeSetRangesByLowerBound;->restriction:Lorg/checkerframework/com/google/common/collect/Range;

    invoke-virtual {v0}, Lorg/checkerframework/com/google/common/collect/Range;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 816
    invoke-static {}, Lorg/checkerframework/com/google/common/collect/Iterators;->emptyIterator()Lorg/checkerframework/com/google/common/collect/UnmodifiableIterator;

    move-result-object v0

    return-object v0

    .line 819
    :cond_0
    invoke-static {}, Lorg/checkerframework/com/google/common/collect/Ordering;->natural()Lorg/checkerframework/com/google/common/collect/Ordering;

    move-result-object v0

    iget-object v1, p0, Lorg/checkerframework/com/google/common/collect/TreeRangeSet$SubRangeSetRangesByLowerBound;->lowerBoundWindow:Lorg/checkerframework/com/google/common/collect/Range;

    iget-object v1, v1, Lorg/checkerframework/com/google/common/collect/Range;->upperBound:Lorg/checkerframework/com/google/common/collect/Cut;

    iget-object v2, p0, Lorg/checkerframework/com/google/common/collect/TreeRangeSet$SubRangeSetRangesByLowerBound;->restriction:Lorg/checkerframework/com/google/common/collect/Range;

    iget-object v2, v2, Lorg/checkerframework/com/google/common/collect/Range;->upperBound:Lorg/checkerframework/com/google/common/collect/Cut;

    .line 820
    invoke-static {v2}, Lorg/checkerframework/com/google/common/collect/Cut;->belowValue(Ljava/lang/Comparable;)Lorg/checkerframework/com/google/common/collect/Cut;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/checkerframework/com/google/common/collect/Ordering;->min(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/google/common/collect/Cut;

    .line 821
    .local v0, "upperBoundOnLowerBounds":Lorg/checkerframework/com/google/common/collect/Cut;, "Lorg/checkerframework/com/google/common/collect/Cut<Lorg/checkerframework/com/google/common/collect/Cut<TC;>;>;"
    iget-object v1, p0, Lorg/checkerframework/com/google/common/collect/TreeRangeSet$SubRangeSetRangesByLowerBound;->rangesByLowerBound:Ljava/util/NavigableMap;

    .line 824
    invoke-virtual {v0}, Lorg/checkerframework/com/google/common/collect/Cut;->endpoint()Ljava/lang/Comparable;

    move-result-object v2

    .line 825
    invoke-virtual {v0}, Lorg/checkerframework/com/google/common/collect/Cut;->typeAsUpperBound()Lorg/checkerframework/com/google/common/collect/BoundType;

    move-result-object v3

    sget-object v4, Lorg/checkerframework/com/google/common/collect/BoundType;->CLOSED:Lorg/checkerframework/com/google/common/collect/BoundType;

    if-ne v3, v4, :cond_1

    const/4 v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    .line 823
    :goto_0
    invoke-interface {v1, v2, v3}, Ljava/util/NavigableMap;->headMap(Ljava/lang/Object;Z)Ljava/util/NavigableMap;

    move-result-object v1

    .line 826
    invoke-interface {v1}, Ljava/util/NavigableMap;->descendingMap()Ljava/util/NavigableMap;

    move-result-object v1

    .line 827
    invoke-interface {v1}, Ljava/util/NavigableMap;->values()Ljava/util/Collection;

    move-result-object v1

    .line 828
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 829
    .local v1, "completeRangeItr":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/checkerframework/com/google/common/collect/Range<TC;>;>;"
    new-instance v2, Lorg/checkerframework/com/google/common/collect/TreeRangeSet$SubRangeSetRangesByLowerBound$2;

    invoke-direct {v2, p0, v1}, Lorg/checkerframework/com/google/common/collect/TreeRangeSet$SubRangeSetRangesByLowerBound$2;-><init>(Lorg/checkerframework/com/google/common/collect/TreeRangeSet$SubRangeSetRangesByLowerBound;Ljava/util/Iterator;)V

    return-object v2
.end method

.method entryIterator()Ljava/util/Iterator;
    .locals 5
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

    .line 773
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/TreeRangeSet$SubRangeSetRangesByLowerBound;, "Lorg/checkerframework/com/google/common/collect/TreeRangeSet$SubRangeSetRangesByLowerBound<TC;>;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/TreeRangeSet$SubRangeSetRangesByLowerBound;->restriction:Lorg/checkerframework/com/google/common/collect/Range;

    invoke-virtual {v0}, Lorg/checkerframework/com/google/common/collect/Range;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 774
    invoke-static {}, Lorg/checkerframework/com/google/common/collect/Iterators;->emptyIterator()Lorg/checkerframework/com/google/common/collect/UnmodifiableIterator;

    move-result-object v0

    return-object v0

    .line 777
    :cond_0
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/TreeRangeSet$SubRangeSetRangesByLowerBound;->lowerBoundWindow:Lorg/checkerframework/com/google/common/collect/Range;

    iget-object v0, v0, Lorg/checkerframework/com/google/common/collect/Range;->upperBound:Lorg/checkerframework/com/google/common/collect/Cut;

    iget-object v1, p0, Lorg/checkerframework/com/google/common/collect/TreeRangeSet$SubRangeSetRangesByLowerBound;->restriction:Lorg/checkerframework/com/google/common/collect/Range;

    iget-object v1, v1, Lorg/checkerframework/com/google/common/collect/Range;->lowerBound:Lorg/checkerframework/com/google/common/collect/Cut;

    invoke-virtual {v0, v1}, Lorg/checkerframework/com/google/common/collect/Cut;->isLessThan(Ljava/lang/Comparable;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 778
    invoke-static {}, Lorg/checkerframework/com/google/common/collect/Iterators;->emptyIterator()Lorg/checkerframework/com/google/common/collect/UnmodifiableIterator;

    move-result-object v0

    return-object v0

    .line 779
    :cond_1
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/TreeRangeSet$SubRangeSetRangesByLowerBound;->lowerBoundWindow:Lorg/checkerframework/com/google/common/collect/Range;

    iget-object v0, v0, Lorg/checkerframework/com/google/common/collect/Range;->lowerBound:Lorg/checkerframework/com/google/common/collect/Cut;

    iget-object v1, p0, Lorg/checkerframework/com/google/common/collect/TreeRangeSet$SubRangeSetRangesByLowerBound;->restriction:Lorg/checkerframework/com/google/common/collect/Range;

    iget-object v1, v1, Lorg/checkerframework/com/google/common/collect/Range;->lowerBound:Lorg/checkerframework/com/google/common/collect/Cut;

    invoke-virtual {v0, v1}, Lorg/checkerframework/com/google/common/collect/Cut;->isLessThan(Ljava/lang/Comparable;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 781
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/TreeRangeSet$SubRangeSetRangesByLowerBound;->rangesByUpperBound:Ljava/util/NavigableMap;

    iget-object v2, p0, Lorg/checkerframework/com/google/common/collect/TreeRangeSet$SubRangeSetRangesByLowerBound;->restriction:Lorg/checkerframework/com/google/common/collect/Range;

    iget-object v2, v2, Lorg/checkerframework/com/google/common/collect/Range;->lowerBound:Lorg/checkerframework/com/google/common/collect/Cut;

    .line 782
    invoke-interface {v0, v2, v1}, Ljava/util/NavigableMap;->tailMap(Ljava/lang/Object;Z)Ljava/util/NavigableMap;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/NavigableMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "completeRangeItr":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/checkerframework/com/google/common/collect/Range<TC;>;>;"
    goto :goto_0

    .line 785
    .end local v0    # "completeRangeItr":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/checkerframework/com/google/common/collect/Range<TC;>;>;"
    :cond_2
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/TreeRangeSet$SubRangeSetRangesByLowerBound;->rangesByLowerBound:Ljava/util/NavigableMap;

    iget-object v2, p0, Lorg/checkerframework/com/google/common/collect/TreeRangeSet$SubRangeSetRangesByLowerBound;->lowerBoundWindow:Lorg/checkerframework/com/google/common/collect/Range;

    iget-object v2, v2, Lorg/checkerframework/com/google/common/collect/Range;->lowerBound:Lorg/checkerframework/com/google/common/collect/Cut;

    .line 788
    invoke-virtual {v2}, Lorg/checkerframework/com/google/common/collect/Cut;->endpoint()Ljava/lang/Comparable;

    move-result-object v2

    iget-object v3, p0, Lorg/checkerframework/com/google/common/collect/TreeRangeSet$SubRangeSetRangesByLowerBound;->lowerBoundWindow:Lorg/checkerframework/com/google/common/collect/Range;

    .line 789
    invoke-virtual {v3}, Lorg/checkerframework/com/google/common/collect/Range;->lowerBoundType()Lorg/checkerframework/com/google/common/collect/BoundType;

    move-result-object v3

    sget-object v4, Lorg/checkerframework/com/google/common/collect/BoundType;->CLOSED:Lorg/checkerframework/com/google/common/collect/BoundType;

    if-ne v3, v4, :cond_3

    const/4 v1, 0x1

    .line 787
    :cond_3
    invoke-interface {v0, v2, v1}, Ljava/util/NavigableMap;->tailMap(Ljava/lang/Object;Z)Ljava/util/NavigableMap;

    move-result-object v0

    .line 790
    invoke-interface {v0}, Ljava/util/NavigableMap;->values()Ljava/util/Collection;

    move-result-object v0

    .line 791
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 794
    .restart local v0    # "completeRangeItr":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/checkerframework/com/google/common/collect/Range<TC;>;>;"
    :goto_0
    invoke-static {}, Lorg/checkerframework/com/google/common/collect/Ordering;->natural()Lorg/checkerframework/com/google/common/collect/Ordering;

    move-result-object v1

    iget-object v2, p0, Lorg/checkerframework/com/google/common/collect/TreeRangeSet$SubRangeSetRangesByLowerBound;->lowerBoundWindow:Lorg/checkerframework/com/google/common/collect/Range;

    iget-object v2, v2, Lorg/checkerframework/com/google/common/collect/Range;->upperBound:Lorg/checkerframework/com/google/common/collect/Cut;

    iget-object v3, p0, Lorg/checkerframework/com/google/common/collect/TreeRangeSet$SubRangeSetRangesByLowerBound;->restriction:Lorg/checkerframework/com/google/common/collect/Range;

    iget-object v3, v3, Lorg/checkerframework/com/google/common/collect/Range;->upperBound:Lorg/checkerframework/com/google/common/collect/Cut;

    .line 795
    invoke-static {v3}, Lorg/checkerframework/com/google/common/collect/Cut;->belowValue(Ljava/lang/Comparable;)Lorg/checkerframework/com/google/common/collect/Cut;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/checkerframework/com/google/common/collect/Ordering;->min(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/checkerframework/com/google/common/collect/Cut;

    .line 796
    .local v1, "upperBoundOnLowerBounds":Lorg/checkerframework/com/google/common/collect/Cut;, "Lorg/checkerframework/com/google/common/collect/Cut<Lorg/checkerframework/com/google/common/collect/Cut<TC;>;>;"
    new-instance v2, Lorg/checkerframework/com/google/common/collect/TreeRangeSet$SubRangeSetRangesByLowerBound$1;

    invoke-direct {v2, p0, v0, v1}, Lorg/checkerframework/com/google/common/collect/TreeRangeSet$SubRangeSetRangesByLowerBound$1;-><init>(Lorg/checkerframework/com/google/common/collect/TreeRangeSet$SubRangeSetRangesByLowerBound;Ljava/util/Iterator;Lorg/checkerframework/com/google/common/collect/Cut;)V

    return-object v2
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 675
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/TreeRangeSet$SubRangeSetRangesByLowerBound;, "Lorg/checkerframework/com/google/common/collect/TreeRangeSet$SubRangeSetRangesByLowerBound<TC;>;"
    invoke-virtual {p0, p1}, Lorg/checkerframework/com/google/common/collect/TreeRangeSet$SubRangeSetRangesByLowerBound;->get(Ljava/lang/Object;)Lorg/checkerframework/com/google/common/collect/Range;

    move-result-object p1

    return-object p1
.end method

.method public get(Ljava/lang/Object;)Lorg/checkerframework/com/google/common/collect/Range;
    .locals 5
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

    .line 744
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/TreeRangeSet$SubRangeSetRangesByLowerBound;, "Lorg/checkerframework/com/google/common/collect/TreeRangeSet$SubRangeSetRangesByLowerBound<TC;>;"
    instance-of v0, p1, Lorg/checkerframework/com/google/common/collect/Cut;

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    .line 747
    :try_start_0
    move-object v0, p1

    check-cast v0, Lorg/checkerframework/com/google/common/collect/Cut;

    .line 748
    .local v0, "cut":Lorg/checkerframework/com/google/common/collect/Cut;, "Lorg/checkerframework/com/google/common/collect/Cut<TC;>;"
    iget-object v2, p0, Lorg/checkerframework/com/google/common/collect/TreeRangeSet$SubRangeSetRangesByLowerBound;->lowerBoundWindow:Lorg/checkerframework/com/google/common/collect/Range;

    invoke-virtual {v2, v0}, Lorg/checkerframework/com/google/common/collect/Range;->contains(Ljava/lang/Comparable;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lorg/checkerframework/com/google/common/collect/TreeRangeSet$SubRangeSetRangesByLowerBound;->restriction:Lorg/checkerframework/com/google/common/collect/Range;

    iget-object v2, v2, Lorg/checkerframework/com/google/common/collect/Range;->lowerBound:Lorg/checkerframework/com/google/common/collect/Cut;

    .line 749
    invoke-virtual {v0, v2}, Lorg/checkerframework/com/google/common/collect/Cut;->compareTo(Lorg/checkerframework/com/google/common/collect/Cut;)I

    move-result v2

    if-ltz v2, :cond_4

    iget-object v2, p0, Lorg/checkerframework/com/google/common/collect/TreeRangeSet$SubRangeSetRangesByLowerBound;->restriction:Lorg/checkerframework/com/google/common/collect/Range;

    iget-object v2, v2, Lorg/checkerframework/com/google/common/collect/Range;->upperBound:Lorg/checkerframework/com/google/common/collect/Cut;

    .line 750
    invoke-virtual {v0, v2}, Lorg/checkerframework/com/google/common/collect/Cut;->compareTo(Lorg/checkerframework/com/google/common/collect/Cut;)I

    move-result v2

    if-ltz v2, :cond_0

    goto :goto_1

    .line 752
    :cond_0
    iget-object v2, p0, Lorg/checkerframework/com/google/common/collect/TreeRangeSet$SubRangeSetRangesByLowerBound;->restriction:Lorg/checkerframework/com/google/common/collect/Range;

    iget-object v2, v2, Lorg/checkerframework/com/google/common/collect/Range;->lowerBound:Lorg/checkerframework/com/google/common/collect/Cut;

    invoke-virtual {v0, v2}, Lorg/checkerframework/com/google/common/collect/Cut;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 754
    iget-object v2, p0, Lorg/checkerframework/com/google/common/collect/TreeRangeSet$SubRangeSetRangesByLowerBound;->rangesByLowerBound:Ljava/util/NavigableMap;

    invoke-interface {v2, v0}, Ljava/util/NavigableMap;->floorEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v2

    invoke-static {v2}, Lorg/checkerframework/com/google/common/collect/Maps;->valueOrNull(Ljava/util/Map$Entry;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/checkerframework/com/google/common/collect/Range;

    .line 755
    .local v2, "candidate":Lorg/checkerframework/com/google/common/collect/Range;, "Lorg/checkerframework/com/google/common/collect/Range<TC;>;"
    if-eqz v2, :cond_1

    iget-object v3, v2, Lorg/checkerframework/com/google/common/collect/Range;->upperBound:Lorg/checkerframework/com/google/common/collect/Cut;

    iget-object v4, p0, Lorg/checkerframework/com/google/common/collect/TreeRangeSet$SubRangeSetRangesByLowerBound;->restriction:Lorg/checkerframework/com/google/common/collect/Range;

    iget-object v4, v4, Lorg/checkerframework/com/google/common/collect/Range;->lowerBound:Lorg/checkerframework/com/google/common/collect/Cut;

    invoke-virtual {v3, v4}, Lorg/checkerframework/com/google/common/collect/Cut;->compareTo(Lorg/checkerframework/com/google/common/collect/Cut;)I

    move-result v3

    if-lez v3, :cond_1

    .line 756
    iget-object v3, p0, Lorg/checkerframework/com/google/common/collect/TreeRangeSet$SubRangeSetRangesByLowerBound;->restriction:Lorg/checkerframework/com/google/common/collect/Range;

    invoke-virtual {v2, v3}, Lorg/checkerframework/com/google/common/collect/Range;->intersection(Lorg/checkerframework/com/google/common/collect/Range;)Lorg/checkerframework/com/google/common/collect/Range;

    move-result-object v1

    return-object v1

    .line 758
    .end local v2    # "candidate":Lorg/checkerframework/com/google/common/collect/Range;, "Lorg/checkerframework/com/google/common/collect/Range<TC;>;"
    :cond_1
    goto :goto_0

    .line 759
    :cond_2
    iget-object v2, p0, Lorg/checkerframework/com/google/common/collect/TreeRangeSet$SubRangeSetRangesByLowerBound;->rangesByLowerBound:Ljava/util/NavigableMap;

    invoke-interface {v2, v0}, Ljava/util/NavigableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/checkerframework/com/google/common/collect/Range;

    .line 760
    .local v2, "result":Lorg/checkerframework/com/google/common/collect/Range;, "Lorg/checkerframework/com/google/common/collect/Range<TC;>;"
    if-eqz v2, :cond_3

    .line 761
    iget-object v3, p0, Lorg/checkerframework/com/google/common/collect/TreeRangeSet$SubRangeSetRangesByLowerBound;->restriction:Lorg/checkerframework/com/google/common/collect/Range;

    invoke-virtual {v2, v3}, Lorg/checkerframework/com/google/common/collect/Range;->intersection(Lorg/checkerframework/com/google/common/collect/Range;)Lorg/checkerframework/com/google/common/collect/Range;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 766
    .end local v0    # "cut":Lorg/checkerframework/com/google/common/collect/Cut;, "Lorg/checkerframework/com/google/common/collect/Cut<TC;>;"
    .end local v2    # "result":Lorg/checkerframework/com/google/common/collect/Range;, "Lorg/checkerframework/com/google/common/collect/Range<TC;>;"
    :cond_3
    :goto_0
    goto :goto_2

    .line 751
    .restart local v0    # "cut":Lorg/checkerframework/com/google/common/collect/Cut;, "Lorg/checkerframework/com/google/common/collect/Cut<TC;>;"
    :cond_4
    :goto_1
    return-object v1

    .line 764
    .end local v0    # "cut":Lorg/checkerframework/com/google/common/collect/Cut;, "Lorg/checkerframework/com/google/common/collect/Cut<TC;>;"
    :catch_0
    move-exception v0

    .line 765
    .local v0, "e":Ljava/lang/ClassCastException;
    return-object v1

    .line 768
    .end local v0    # "e":Ljava/lang/ClassCastException;
    :cond_5
    :goto_2
    return-object v1
.end method

.method public bridge synthetic headMap(Ljava/lang/Object;Z)Ljava/util/NavigableMap;
    .locals 0

    .line 675
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/TreeRangeSet$SubRangeSetRangesByLowerBound;, "Lorg/checkerframework/com/google/common/collect/TreeRangeSet$SubRangeSetRangesByLowerBound<TC;>;"
    check-cast p1, Lorg/checkerframework/com/google/common/collect/Cut;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/google/common/collect/TreeRangeSet$SubRangeSetRangesByLowerBound;->headMap(Lorg/checkerframework/com/google/common/collect/Cut;Z)Ljava/util/NavigableMap;

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

    .line 724
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/TreeRangeSet$SubRangeSetRangesByLowerBound;, "Lorg/checkerframework/com/google/common/collect/TreeRangeSet$SubRangeSetRangesByLowerBound<TC;>;"
    .local p1, "toKey":Lorg/checkerframework/com/google/common/collect/Cut;, "Lorg/checkerframework/com/google/common/collect/Cut<TC;>;"
    invoke-static {p2}, Lorg/checkerframework/com/google/common/collect/BoundType;->forBoolean(Z)Lorg/checkerframework/com/google/common/collect/BoundType;

    move-result-object v0

    invoke-static {p1, v0}, Lorg/checkerframework/com/google/common/collect/Range;->upTo(Ljava/lang/Comparable;Lorg/checkerframework/com/google/common/collect/BoundType;)Lorg/checkerframework/com/google/common/collect/Range;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/checkerframework/com/google/common/collect/TreeRangeSet$SubRangeSetRangesByLowerBound;->subMap(Lorg/checkerframework/com/google/common/collect/Range;)Ljava/util/NavigableMap;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .locals 1

    .line 851
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/TreeRangeSet$SubRangeSetRangesByLowerBound;, "Lorg/checkerframework/com/google/common/collect/TreeRangeSet$SubRangeSetRangesByLowerBound<TC;>;"
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/TreeRangeSet$SubRangeSetRangesByLowerBound;->entryIterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0}, Lorg/checkerframework/com/google/common/collect/Iterators;->size(Ljava/util/Iterator;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic subMap(Ljava/lang/Object;ZLjava/lang/Object;Z)Ljava/util/NavigableMap;
    .locals 0

    .line 675
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/TreeRangeSet$SubRangeSetRangesByLowerBound;, "Lorg/checkerframework/com/google/common/collect/TreeRangeSet$SubRangeSetRangesByLowerBound<TC;>;"
    check-cast p1, Lorg/checkerframework/com/google/common/collect/Cut;

    check-cast p3, Lorg/checkerframework/com/google/common/collect/Cut;

    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/checkerframework/com/google/common/collect/TreeRangeSet$SubRangeSetRangesByLowerBound;->subMap(Lorg/checkerframework/com/google/common/collect/Cut;ZLorg/checkerframework/com/google/common/collect/Cut;Z)Ljava/util/NavigableMap;

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

    .line 714
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/TreeRangeSet$SubRangeSetRangesByLowerBound;, "Lorg/checkerframework/com/google/common/collect/TreeRangeSet$SubRangeSetRangesByLowerBound<TC;>;"
    .local p1, "fromKey":Lorg/checkerframework/com/google/common/collect/Cut;, "Lorg/checkerframework/com/google/common/collect/Cut<TC;>;"
    .local p3, "toKey":Lorg/checkerframework/com/google/common/collect/Cut;, "Lorg/checkerframework/com/google/common/collect/Cut<TC;>;"
    nop

    .line 717
    invoke-static {p2}, Lorg/checkerframework/com/google/common/collect/BoundType;->forBoolean(Z)Lorg/checkerframework/com/google/common/collect/BoundType;

    move-result-object v0

    .line 719
    invoke-static {p4}, Lorg/checkerframework/com/google/common/collect/BoundType;->forBoolean(Z)Lorg/checkerframework/com/google/common/collect/BoundType;

    move-result-object v1

    .line 715
    invoke-static {p1, v0, p3, v1}, Lorg/checkerframework/com/google/common/collect/Range;->range(Ljava/lang/Comparable;Lorg/checkerframework/com/google/common/collect/BoundType;Ljava/lang/Comparable;Lorg/checkerframework/com/google/common/collect/BoundType;)Lorg/checkerframework/com/google/common/collect/Range;

    move-result-object v0

    .line 714
    invoke-direct {p0, v0}, Lorg/checkerframework/com/google/common/collect/TreeRangeSet$SubRangeSetRangesByLowerBound;->subMap(Lorg/checkerframework/com/google/common/collect/Range;)Ljava/util/NavigableMap;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic tailMap(Ljava/lang/Object;Z)Ljava/util/NavigableMap;
    .locals 0

    .line 675
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/TreeRangeSet$SubRangeSetRangesByLowerBound;, "Lorg/checkerframework/com/google/common/collect/TreeRangeSet$SubRangeSetRangesByLowerBound<TC;>;"
    check-cast p1, Lorg/checkerframework/com/google/common/collect/Cut;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/google/common/collect/TreeRangeSet$SubRangeSetRangesByLowerBound;->tailMap(Lorg/checkerframework/com/google/common/collect/Cut;Z)Ljava/util/NavigableMap;

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

    .line 729
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/TreeRangeSet$SubRangeSetRangesByLowerBound;, "Lorg/checkerframework/com/google/common/collect/TreeRangeSet$SubRangeSetRangesByLowerBound<TC;>;"
    .local p1, "fromKey":Lorg/checkerframework/com/google/common/collect/Cut;, "Lorg/checkerframework/com/google/common/collect/Cut<TC;>;"
    invoke-static {p2}, Lorg/checkerframework/com/google/common/collect/BoundType;->forBoolean(Z)Lorg/checkerframework/com/google/common/collect/BoundType;

    move-result-object v0

    invoke-static {p1, v0}, Lorg/checkerframework/com/google/common/collect/Range;->downTo(Ljava/lang/Comparable;Lorg/checkerframework/com/google/common/collect/BoundType;)Lorg/checkerframework/com/google/common/collect/Range;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/checkerframework/com/google/common/collect/TreeRangeSet$SubRangeSetRangesByLowerBound;->subMap(Lorg/checkerframework/com/google/common/collect/Range;)Ljava/util/NavigableMap;

    move-result-object v0

    return-object v0
.end method
