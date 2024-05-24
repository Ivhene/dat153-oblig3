.class public Lorg/checkerframework/com/google/common/collect/TreeRangeSet;
.super Lorg/checkerframework/com/google/common/collect/AbstractRangeSet;
.source "TreeRangeSet.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/checkerframework/com/google/common/collect/TreeRangeSet$SubRangeSet;,
        Lorg/checkerframework/com/google/common/collect/TreeRangeSet$SubRangeSetRangesByLowerBound;,
        Lorg/checkerframework/com/google/common/collect/TreeRangeSet$Complement;,
        Lorg/checkerframework/com/google/common/collect/TreeRangeSet$ComplementRangesByLowerBound;,
        Lorg/checkerframework/com/google/common/collect/TreeRangeSet$RangesByUpperBound;,
        Lorg/checkerframework/com/google/common/collect/TreeRangeSet$AsRanges;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<C::",
        "Ljava/lang/Comparable<",
        "*>;>",
        "Lorg/checkerframework/com/google/common/collect/AbstractRangeSet<",
        "TC;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# instance fields
.field private transient asDescendingSetOfRanges:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lorg/checkerframework/com/google/common/collect/Range<",
            "TC;>;>;"
        }
    .end annotation
.end field

.field private transient asRanges:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lorg/checkerframework/com/google/common/collect/Range<",
            "TC;>;>;"
        }
    .end annotation
.end field

.field private transient complement:Lorg/checkerframework/com/google/common/collect/RangeSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/checkerframework/com/google/common/collect/RangeSet<",
            "TC;>;"
        }
    .end annotation
.end field

.field final rangesByLowerBound:Ljava/util/NavigableMap;
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
.method private constructor <init>(Ljava/util/NavigableMap;)V
    .locals 0
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

    .line 76
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/TreeRangeSet;, "Lorg/checkerframework/com/google/common/collect/TreeRangeSet<TC;>;"
    .local p1, "rangesByLowerCut":Ljava/util/NavigableMap;, "Ljava/util/NavigableMap<Lorg/checkerframework/com/google/common/collect/Cut<TC;>;Lorg/checkerframework/com/google/common/collect/Range<TC;>;>;"
    invoke-direct {p0}, Lorg/checkerframework/com/google/common/collect/AbstractRangeSet;-><init>()V

    .line 77
    iput-object p1, p0, Lorg/checkerframework/com/google/common/collect/TreeRangeSet;->rangesByLowerBound:Ljava/util/NavigableMap;

    .line 78
    return-void
.end method

.method synthetic constructor <init>(Ljava/util/NavigableMap;Lorg/checkerframework/com/google/common/collect/TreeRangeSet$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/util/NavigableMap;
    .param p2, "x1"    # Lorg/checkerframework/com/google/common/collect/TreeRangeSet$1;

    .line 44
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/TreeRangeSet;, "Lorg/checkerframework/com/google/common/collect/TreeRangeSet<TC;>;"
    invoke-direct {p0, p1}, Lorg/checkerframework/com/google/common/collect/TreeRangeSet;-><init>(Ljava/util/NavigableMap;)V

    return-void
.end method

.method static synthetic access$600(Lorg/checkerframework/com/google/common/collect/TreeRangeSet;Lorg/checkerframework/com/google/common/collect/Range;)Lorg/checkerframework/com/google/common/collect/Range;
    .locals 1
    .param p0, "x0"    # Lorg/checkerframework/com/google/common/collect/TreeRangeSet;
    .param p1, "x1"    # Lorg/checkerframework/com/google/common/collect/Range;

    .line 44
    invoke-direct {p0, p1}, Lorg/checkerframework/com/google/common/collect/TreeRangeSet;->rangeEnclosing(Lorg/checkerframework/com/google/common/collect/Range;)Lorg/checkerframework/com/google/common/collect/Range;

    move-result-object v0

    return-object v0
.end method

.method public static create()Lorg/checkerframework/com/google/common/collect/TreeRangeSet;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C::",
            "Ljava/lang/Comparable<",
            "*>;>()",
            "Lorg/checkerframework/com/google/common/collect/TreeRangeSet<",
            "TC;>;"
        }
    .end annotation

    .line 51
    new-instance v0, Lorg/checkerframework/com/google/common/collect/TreeRangeSet;

    new-instance v1, Ljava/util/TreeMap;

    invoke-direct {v1}, Ljava/util/TreeMap;-><init>()V

    invoke-direct {v0, v1}, Lorg/checkerframework/com/google/common/collect/TreeRangeSet;-><init>(Ljava/util/NavigableMap;)V

    return-object v0
.end method

.method public static create(Ljava/lang/Iterable;)Lorg/checkerframework/com/google/common/collect/TreeRangeSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C::",
            "Ljava/lang/Comparable<",
            "*>;>(",
            "Ljava/lang/Iterable<",
            "Lorg/checkerframework/com/google/common/collect/Range<",
            "TC;>;>;)",
            "Lorg/checkerframework/com/google/common/collect/TreeRangeSet<",
            "TC;>;"
        }
    .end annotation

    .line 71
    .local p0, "ranges":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Lorg/checkerframework/com/google/common/collect/Range<TC;>;>;"
    invoke-static {}, Lorg/checkerframework/com/google/common/collect/TreeRangeSet;->create()Lorg/checkerframework/com/google/common/collect/TreeRangeSet;

    move-result-object v0

    .line 72
    .local v0, "result":Lorg/checkerframework/com/google/common/collect/TreeRangeSet;, "Lorg/checkerframework/com/google/common/collect/TreeRangeSet<TC;>;"
    invoke-virtual {v0, p0}, Lorg/checkerframework/com/google/common/collect/TreeRangeSet;->addAll(Ljava/lang/Iterable;)V

    .line 73
    return-object v0
.end method

.method public static create(Lorg/checkerframework/com/google/common/collect/RangeSet;)Lorg/checkerframework/com/google/common/collect/TreeRangeSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C::",
            "Ljava/lang/Comparable<",
            "*>;>(",
            "Lorg/checkerframework/com/google/common/collect/RangeSet<",
            "TC;>;)",
            "Lorg/checkerframework/com/google/common/collect/TreeRangeSet<",
            "TC;>;"
        }
    .end annotation

    .line 56
    .local p0, "rangeSet":Lorg/checkerframework/com/google/common/collect/RangeSet;, "Lorg/checkerframework/com/google/common/collect/RangeSet<TC;>;"
    invoke-static {}, Lorg/checkerframework/com/google/common/collect/TreeRangeSet;->create()Lorg/checkerframework/com/google/common/collect/TreeRangeSet;

    move-result-object v0

    .line 57
    .local v0, "result":Lorg/checkerframework/com/google/common/collect/TreeRangeSet;, "Lorg/checkerframework/com/google/common/collect/TreeRangeSet<TC;>;"
    invoke-virtual {v0, p0}, Lorg/checkerframework/com/google/common/collect/TreeRangeSet;->addAll(Lorg/checkerframework/com/google/common/collect/RangeSet;)V

    .line 58
    return-object v0
.end method

.method private rangeEnclosing(Lorg/checkerframework/com/google/common/collect/Range;)Lorg/checkerframework/com/google/common/collect/Range;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/google/common/collect/Range<",
            "TC;>;)",
            "Lorg/checkerframework/com/google/common/collect/Range<",
            "TC;>;"
        }
    .end annotation

    .line 156
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/TreeRangeSet;, "Lorg/checkerframework/com/google/common/collect/TreeRangeSet<TC;>;"
    .local p1, "range":Lorg/checkerframework/com/google/common/collect/Range;, "Lorg/checkerframework/com/google/common/collect/Range<TC;>;"
    invoke-static {p1}, Lorg/checkerframework/com/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/TreeRangeSet;->rangesByLowerBound:Ljava/util/NavigableMap;

    iget-object v1, p1, Lorg/checkerframework/com/google/common/collect/Range;->lowerBound:Lorg/checkerframework/com/google/common/collect/Cut;

    invoke-interface {v0, v1}, Ljava/util/NavigableMap;->floorEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v0

    .line 158
    .local v0, "floorEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lorg/checkerframework/com/google/common/collect/Cut<TC;>;Lorg/checkerframework/com/google/common/collect/Range<TC;>;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/checkerframework/com/google/common/collect/Range;

    invoke-virtual {v1, p1}, Lorg/checkerframework/com/google/common/collect/Range;->encloses(Lorg/checkerframework/com/google/common/collect/Range;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 159
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/checkerframework/com/google/common/collect/Range;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 158
    :goto_0
    return-object v1
.end method

.method private replaceRangeWithSameLowerBound(Lorg/checkerframework/com/google/common/collect/Range;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/google/common/collect/Range<",
            "TC;>;)V"
        }
    .end annotation

    .line 264
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/TreeRangeSet;, "Lorg/checkerframework/com/google/common/collect/TreeRangeSet<TC;>;"
    .local p1, "range":Lorg/checkerframework/com/google/common/collect/Range;, "Lorg/checkerframework/com/google/common/collect/Range<TC;>;"
    invoke-virtual {p1}, Lorg/checkerframework/com/google/common/collect/Range;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 265
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/TreeRangeSet;->rangesByLowerBound:Ljava/util/NavigableMap;

    iget-object v1, p1, Lorg/checkerframework/com/google/common/collect/Range;->lowerBound:Lorg/checkerframework/com/google/common/collect/Cut;

    invoke-interface {v0, v1}, Ljava/util/NavigableMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 267
    :cond_0
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/TreeRangeSet;->rangesByLowerBound:Ljava/util/NavigableMap;

    iget-object v1, p1, Lorg/checkerframework/com/google/common/collect/Range;->lowerBound:Lorg/checkerframework/com/google/common/collect/Cut;

    invoke-interface {v0, v1, p1}, Ljava/util/NavigableMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 269
    :goto_0
    return-void
.end method


# virtual methods
.method public add(Lorg/checkerframework/com/google/common/collect/Range;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/google/common/collect/Range<",
            "TC;>;)V"
        }
    .end annotation

    .line 175
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/TreeRangeSet;, "Lorg/checkerframework/com/google/common/collect/TreeRangeSet<TC;>;"
    .local p1, "rangeToAdd":Lorg/checkerframework/com/google/common/collect/Range;, "Lorg/checkerframework/com/google/common/collect/Range<TC;>;"
    invoke-static {p1}, Lorg/checkerframework/com/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 177
    invoke-virtual {p1}, Lorg/checkerframework/com/google/common/collect/Range;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 178
    return-void

    .line 183
    :cond_0
    iget-object v0, p1, Lorg/checkerframework/com/google/common/collect/Range;->lowerBound:Lorg/checkerframework/com/google/common/collect/Cut;

    .line 184
    .local v0, "lbToAdd":Lorg/checkerframework/com/google/common/collect/Cut;, "Lorg/checkerframework/com/google/common/collect/Cut<TC;>;"
    iget-object v1, p1, Lorg/checkerframework/com/google/common/collect/Range;->upperBound:Lorg/checkerframework/com/google/common/collect/Cut;

    .line 186
    .local v1, "ubToAdd":Lorg/checkerframework/com/google/common/collect/Cut;, "Lorg/checkerframework/com/google/common/collect/Cut<TC;>;"
    iget-object v2, p0, Lorg/checkerframework/com/google/common/collect/TreeRangeSet;->rangesByLowerBound:Ljava/util/NavigableMap;

    invoke-interface {v2, v0}, Ljava/util/NavigableMap;->lowerEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v2

    .line 187
    .local v2, "entryBelowLB":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lorg/checkerframework/com/google/common/collect/Cut<TC;>;Lorg/checkerframework/com/google/common/collect/Range<TC;>;>;"
    if-eqz v2, :cond_2

    .line 189
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/checkerframework/com/google/common/collect/Range;

    .line 190
    .local v3, "rangeBelowLB":Lorg/checkerframework/com/google/common/collect/Range;, "Lorg/checkerframework/com/google/common/collect/Range<TC;>;"
    iget-object v4, v3, Lorg/checkerframework/com/google/common/collect/Range;->upperBound:Lorg/checkerframework/com/google/common/collect/Cut;

    invoke-virtual {v4, v0}, Lorg/checkerframework/com/google/common/collect/Cut;->compareTo(Lorg/checkerframework/com/google/common/collect/Cut;)I

    move-result v4

    if-ltz v4, :cond_2

    .line 192
    iget-object v4, v3, Lorg/checkerframework/com/google/common/collect/Range;->upperBound:Lorg/checkerframework/com/google/common/collect/Cut;

    invoke-virtual {v4, v1}, Lorg/checkerframework/com/google/common/collect/Cut;->compareTo(Lorg/checkerframework/com/google/common/collect/Cut;)I

    move-result v4

    if-ltz v4, :cond_1

    .line 194
    iget-object v1, v3, Lorg/checkerframework/com/google/common/collect/Range;->upperBound:Lorg/checkerframework/com/google/common/collect/Cut;

    .line 200
    :cond_1
    iget-object v0, v3, Lorg/checkerframework/com/google/common/collect/Range;->lowerBound:Lorg/checkerframework/com/google/common/collect/Cut;

    .line 204
    .end local v3    # "rangeBelowLB":Lorg/checkerframework/com/google/common/collect/Range;, "Lorg/checkerframework/com/google/common/collect/Range<TC;>;"
    :cond_2
    iget-object v3, p0, Lorg/checkerframework/com/google/common/collect/TreeRangeSet;->rangesByLowerBound:Ljava/util/NavigableMap;

    invoke-interface {v3, v1}, Ljava/util/NavigableMap;->floorEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v3

    .line 205
    .local v3, "entryBelowUB":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lorg/checkerframework/com/google/common/collect/Cut<TC;>;Lorg/checkerframework/com/google/common/collect/Range<TC;>;>;"
    if-eqz v3, :cond_3

    .line 207
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/checkerframework/com/google/common/collect/Range;

    .line 208
    .local v4, "rangeBelowUB":Lorg/checkerframework/com/google/common/collect/Range;, "Lorg/checkerframework/com/google/common/collect/Range<TC;>;"
    iget-object v5, v4, Lorg/checkerframework/com/google/common/collect/Range;->upperBound:Lorg/checkerframework/com/google/common/collect/Cut;

    invoke-virtual {v5, v1}, Lorg/checkerframework/com/google/common/collect/Cut;->compareTo(Lorg/checkerframework/com/google/common/collect/Cut;)I

    move-result v5

    if-ltz v5, :cond_3

    .line 210
    iget-object v1, v4, Lorg/checkerframework/com/google/common/collect/Range;->upperBound:Lorg/checkerframework/com/google/common/collect/Cut;

    .line 215
    .end local v4    # "rangeBelowUB":Lorg/checkerframework/com/google/common/collect/Range;, "Lorg/checkerframework/com/google/common/collect/Range<TC;>;"
    :cond_3
    iget-object v4, p0, Lorg/checkerframework/com/google/common/collect/TreeRangeSet;->rangesByLowerBound:Ljava/util/NavigableMap;

    invoke-interface {v4, v0, v1}, Ljava/util/NavigableMap;->subMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedMap;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/SortedMap;->clear()V

    .line 217
    invoke-static {v0, v1}, Lorg/checkerframework/com/google/common/collect/Range;->create(Lorg/checkerframework/com/google/common/collect/Cut;Lorg/checkerframework/com/google/common/collect/Cut;)Lorg/checkerframework/com/google/common/collect/Range;

    move-result-object v4

    invoke-direct {p0, v4}, Lorg/checkerframework/com/google/common/collect/TreeRangeSet;->replaceRangeWithSameLowerBound(Lorg/checkerframework/com/google/common/collect/Range;)V

    .line 218
    return-void
.end method

.method public bridge synthetic addAll(Lorg/checkerframework/com/google/common/collect/RangeSet;)V
    .locals 0

    .line 42
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/TreeRangeSet;, "Lorg/checkerframework/com/google/common/collect/TreeRangeSet<TC;>;"
    invoke-super {p0, p1}, Lorg/checkerframework/com/google/common/collect/AbstractRangeSet;->addAll(Lorg/checkerframework/com/google/common/collect/RangeSet;)V

    return-void
.end method

.method public asDescendingSetOfRanges()Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lorg/checkerframework/com/google/common/collect/Range<",
            "TC;>;>;"
        }
    .end annotation

    .line 91
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/TreeRangeSet;, "Lorg/checkerframework/com/google/common/collect/TreeRangeSet<TC;>;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/TreeRangeSet;->asDescendingSetOfRanges:Ljava/util/Set;

    .line 92
    .local v0, "result":Ljava/util/Set;, "Ljava/util/Set<Lorg/checkerframework/com/google/common/collect/Range<TC;>;>;"
    if-nez v0, :cond_0

    new-instance v1, Lorg/checkerframework/com/google/common/collect/TreeRangeSet$AsRanges;

    iget-object v2, p0, Lorg/checkerframework/com/google/common/collect/TreeRangeSet;->rangesByLowerBound:Ljava/util/NavigableMap;

    .line 93
    invoke-interface {v2}, Ljava/util/NavigableMap;->descendingMap()Ljava/util/NavigableMap;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/NavigableMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lorg/checkerframework/com/google/common/collect/TreeRangeSet$AsRanges;-><init>(Lorg/checkerframework/com/google/common/collect/TreeRangeSet;Ljava/util/Collection;)V

    iput-object v1, p0, Lorg/checkerframework/com/google/common/collect/TreeRangeSet;->asDescendingSetOfRanges:Ljava/util/Set;

    goto :goto_0

    :cond_0
    move-object v1, v0

    .line 92
    :goto_0
    return-object v1
.end method

.method public asRanges()Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lorg/checkerframework/com/google/common/collect/Range<",
            "TC;>;>;"
        }
    .end annotation

    .line 85
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/TreeRangeSet;, "Lorg/checkerframework/com/google/common/collect/TreeRangeSet<TC;>;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/TreeRangeSet;->asRanges:Ljava/util/Set;

    .line 86
    .local v0, "result":Ljava/util/Set;, "Ljava/util/Set<Lorg/checkerframework/com/google/common/collect/Range<TC;>;>;"
    if-nez v0, :cond_0

    new-instance v1, Lorg/checkerframework/com/google/common/collect/TreeRangeSet$AsRanges;

    iget-object v2, p0, Lorg/checkerframework/com/google/common/collect/TreeRangeSet;->rangesByLowerBound:Ljava/util/NavigableMap;

    invoke-interface {v2}, Ljava/util/NavigableMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lorg/checkerframework/com/google/common/collect/TreeRangeSet$AsRanges;-><init>(Lorg/checkerframework/com/google/common/collect/TreeRangeSet;Ljava/util/Collection;)V

    iput-object v1, p0, Lorg/checkerframework/com/google/common/collect/TreeRangeSet;->asRanges:Ljava/util/Set;

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    return-object v1
.end method

.method public bridge synthetic clear()V
    .locals 0

    .line 42
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/TreeRangeSet;, "Lorg/checkerframework/com/google/common/collect/TreeRangeSet<TC;>;"
    invoke-super {p0}, Lorg/checkerframework/com/google/common/collect/AbstractRangeSet;->clear()V

    return-void
.end method

.method public complement()Lorg/checkerframework/com/google/common/collect/RangeSet;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/checkerframework/com/google/common/collect/RangeSet<",
            "TC;>;"
        }
    .end annotation

    .line 275
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/TreeRangeSet;, "Lorg/checkerframework/com/google/common/collect/TreeRangeSet<TC;>;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/TreeRangeSet;->complement:Lorg/checkerframework/com/google/common/collect/RangeSet;

    .line 276
    .local v0, "result":Lorg/checkerframework/com/google/common/collect/RangeSet;, "Lorg/checkerframework/com/google/common/collect/RangeSet<TC;>;"
    if-nez v0, :cond_0

    new-instance v1, Lorg/checkerframework/com/google/common/collect/TreeRangeSet$Complement;

    invoke-direct {v1, p0}, Lorg/checkerframework/com/google/common/collect/TreeRangeSet$Complement;-><init>(Lorg/checkerframework/com/google/common/collect/TreeRangeSet;)V

    iput-object v1, p0, Lorg/checkerframework/com/google/common/collect/TreeRangeSet;->complement:Lorg/checkerframework/com/google/common/collect/RangeSet;

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    return-object v1
.end method

.method public bridge synthetic contains(Ljava/lang/Comparable;)Z
    .locals 0

    .line 42
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/TreeRangeSet;, "Lorg/checkerframework/com/google/common/collect/TreeRangeSet<TC;>;"
    invoke-super {p0, p1}, Lorg/checkerframework/com/google/common/collect/AbstractRangeSet;->contains(Ljava/lang/Comparable;)Z

    move-result p1

    return p1
.end method

.method public encloses(Lorg/checkerframework/com/google/common/collect/Range;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/google/common/collect/Range<",
            "TC;>;)Z"
        }
    .end annotation

    .line 150
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/TreeRangeSet;, "Lorg/checkerframework/com/google/common/collect/TreeRangeSet<TC;>;"
    .local p1, "range":Lorg/checkerframework/com/google/common/collect/Range;, "Lorg/checkerframework/com/google/common/collect/Range<TC;>;"
    invoke-static {p1}, Lorg/checkerframework/com/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/TreeRangeSet;->rangesByLowerBound:Ljava/util/NavigableMap;

    iget-object v1, p1, Lorg/checkerframework/com/google/common/collect/Range;->lowerBound:Lorg/checkerframework/com/google/common/collect/Cut;

    invoke-interface {v0, v1}, Ljava/util/NavigableMap;->floorEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v0

    .line 152
    .local v0, "floorEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lorg/checkerframework/com/google/common/collect/Cut<TC;>;Lorg/checkerframework/com/google/common/collect/Range<TC;>;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/checkerframework/com/google/common/collect/Range;

    invoke-virtual {v1, p1}, Lorg/checkerframework/com/google/common/collect/Range;->encloses(Lorg/checkerframework/com/google/common/collect/Range;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public bridge synthetic enclosesAll(Lorg/checkerframework/com/google/common/collect/RangeSet;)Z
    .locals 0

    .line 42
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/TreeRangeSet;, "Lorg/checkerframework/com/google/common/collect/TreeRangeSet<TC;>;"
    invoke-super {p0, p1}, Lorg/checkerframework/com/google/common/collect/AbstractRangeSet;->enclosesAll(Lorg/checkerframework/com/google/common/collect/RangeSet;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic equals(Ljava/lang/Object;)Z
    .locals 0

    .line 42
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/TreeRangeSet;, "Lorg/checkerframework/com/google/common/collect/TreeRangeSet<TC;>;"
    invoke-super {p0, p1}, Lorg/checkerframework/com/google/common/collect/AbstractRangeSet;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public intersects(Lorg/checkerframework/com/google/common/collect/Range;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/google/common/collect/Range<",
            "TC;>;)Z"
        }
    .end annotation

    .line 135
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/TreeRangeSet;, "Lorg/checkerframework/com/google/common/collect/TreeRangeSet<TC;>;"
    .local p1, "range":Lorg/checkerframework/com/google/common/collect/Range;, "Lorg/checkerframework/com/google/common/collect/Range<TC;>;"
    invoke-static {p1}, Lorg/checkerframework/com/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/TreeRangeSet;->rangesByLowerBound:Ljava/util/NavigableMap;

    iget-object v1, p1, Lorg/checkerframework/com/google/common/collect/Range;->lowerBound:Lorg/checkerframework/com/google/common/collect/Cut;

    invoke-interface {v0, v1}, Ljava/util/NavigableMap;->ceilingEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v0

    .line 137
    .local v0, "ceilingEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lorg/checkerframework/com/google/common/collect/Cut<TC;>;Lorg/checkerframework/com/google/common/collect/Range<TC;>;>;"
    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 138
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/checkerframework/com/google/common/collect/Range;

    invoke-virtual {v2, p1}, Lorg/checkerframework/com/google/common/collect/Range;->isConnected(Lorg/checkerframework/com/google/common/collect/Range;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 139
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/checkerframework/com/google/common/collect/Range;

    invoke-virtual {v2, p1}, Lorg/checkerframework/com/google/common/collect/Range;->intersection(Lorg/checkerframework/com/google/common/collect/Range;)Lorg/checkerframework/com/google/common/collect/Range;

    move-result-object v2

    invoke-virtual {v2}, Lorg/checkerframework/com/google/common/collect/Range;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 140
    return v1

    .line 142
    :cond_0
    iget-object v2, p0, Lorg/checkerframework/com/google/common/collect/TreeRangeSet;->rangesByLowerBound:Ljava/util/NavigableMap;

    iget-object v3, p1, Lorg/checkerframework/com/google/common/collect/Range;->lowerBound:Lorg/checkerframework/com/google/common/collect/Cut;

    invoke-interface {v2, v3}, Ljava/util/NavigableMap;->lowerEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v2

    .line 143
    .local v2, "priorEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lorg/checkerframework/com/google/common/collect/Cut<TC;>;Lorg/checkerframework/com/google/common/collect/Range<TC;>;>;"
    if-eqz v2, :cond_1

    .line 144
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/checkerframework/com/google/common/collect/Range;

    invoke-virtual {v3, p1}, Lorg/checkerframework/com/google/common/collect/Range;->isConnected(Lorg/checkerframework/com/google/common/collect/Range;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 145
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/checkerframework/com/google/common/collect/Range;

    invoke-virtual {v3, p1}, Lorg/checkerframework/com/google/common/collect/Range;->intersection(Lorg/checkerframework/com/google/common/collect/Range;)Lorg/checkerframework/com/google/common/collect/Range;

    move-result-object v3

    invoke-virtual {v3}, Lorg/checkerframework/com/google/common/collect/Range;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 143
    :goto_0
    return v1
.end method

.method public bridge synthetic isEmpty()Z
    .locals 1

    .line 42
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/TreeRangeSet;, "Lorg/checkerframework/com/google/common/collect/TreeRangeSet<TC;>;"
    invoke-super {p0}, Lorg/checkerframework/com/google/common/collect/AbstractRangeSet;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public rangeContaining(Ljava/lang/Comparable;)Lorg/checkerframework/com/google/common/collect/Range;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TC;)",
            "Lorg/checkerframework/com/google/common/collect/Range<",
            "TC;>;"
        }
    .end annotation

    .line 123
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/TreeRangeSet;, "Lorg/checkerframework/com/google/common/collect/TreeRangeSet<TC;>;"
    .local p1, "value":Ljava/lang/Comparable;, "TC;"
    invoke-static {p1}, Lorg/checkerframework/com/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/TreeRangeSet;->rangesByLowerBound:Ljava/util/NavigableMap;

    invoke-static {p1}, Lorg/checkerframework/com/google/common/collect/Cut;->belowValue(Ljava/lang/Comparable;)Lorg/checkerframework/com/google/common/collect/Cut;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/NavigableMap;->floorEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v0

    .line 125
    .local v0, "floorEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lorg/checkerframework/com/google/common/collect/Cut<TC;>;Lorg/checkerframework/com/google/common/collect/Range<TC;>;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/checkerframework/com/google/common/collect/Range;

    invoke-virtual {v1, p1}, Lorg/checkerframework/com/google/common/collect/Range;->contains(Ljava/lang/Comparable;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 126
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/checkerframework/com/google/common/collect/Range;

    return-object v1

    .line 129
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public remove(Lorg/checkerframework/com/google/common/collect/Range;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/google/common/collect/Range<",
            "TC;>;)V"
        }
    .end annotation

    .line 222
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/TreeRangeSet;, "Lorg/checkerframework/com/google/common/collect/TreeRangeSet<TC;>;"
    .local p1, "rangeToRemove":Lorg/checkerframework/com/google/common/collect/Range;, "Lorg/checkerframework/com/google/common/collect/Range<TC;>;"
    invoke-static {p1}, Lorg/checkerframework/com/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 224
    invoke-virtual {p1}, Lorg/checkerframework/com/google/common/collect/Range;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 225
    return-void

    .line 231
    :cond_0
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/TreeRangeSet;->rangesByLowerBound:Ljava/util/NavigableMap;

    iget-object v1, p1, Lorg/checkerframework/com/google/common/collect/Range;->lowerBound:Lorg/checkerframework/com/google/common/collect/Cut;

    invoke-interface {v0, v1}, Ljava/util/NavigableMap;->lowerEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v0

    .line 232
    .local v0, "entryBelowLB":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lorg/checkerframework/com/google/common/collect/Cut<TC;>;Lorg/checkerframework/com/google/common/collect/Range<TC;>;>;"
    if-eqz v0, :cond_2

    .line 234
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/checkerframework/com/google/common/collect/Range;

    .line 235
    .local v1, "rangeBelowLB":Lorg/checkerframework/com/google/common/collect/Range;, "Lorg/checkerframework/com/google/common/collect/Range<TC;>;"
    iget-object v2, v1, Lorg/checkerframework/com/google/common/collect/Range;->upperBound:Lorg/checkerframework/com/google/common/collect/Cut;

    iget-object v3, p1, Lorg/checkerframework/com/google/common/collect/Range;->lowerBound:Lorg/checkerframework/com/google/common/collect/Cut;

    invoke-virtual {v2, v3}, Lorg/checkerframework/com/google/common/collect/Cut;->compareTo(Lorg/checkerframework/com/google/common/collect/Cut;)I

    move-result v2

    if-ltz v2, :cond_2

    .line 237
    invoke-virtual {p1}, Lorg/checkerframework/com/google/common/collect/Range;->hasUpperBound()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, v1, Lorg/checkerframework/com/google/common/collect/Range;->upperBound:Lorg/checkerframework/com/google/common/collect/Cut;

    iget-object v3, p1, Lorg/checkerframework/com/google/common/collect/Range;->upperBound:Lorg/checkerframework/com/google/common/collect/Cut;

    .line 238
    invoke-virtual {v2, v3}, Lorg/checkerframework/com/google/common/collect/Cut;->compareTo(Lorg/checkerframework/com/google/common/collect/Cut;)I

    move-result v2

    if-ltz v2, :cond_1

    .line 240
    iget-object v2, p1, Lorg/checkerframework/com/google/common/collect/Range;->upperBound:Lorg/checkerframework/com/google/common/collect/Cut;

    iget-object v3, v1, Lorg/checkerframework/com/google/common/collect/Range;->upperBound:Lorg/checkerframework/com/google/common/collect/Cut;

    .line 241
    invoke-static {v2, v3}, Lorg/checkerframework/com/google/common/collect/Range;->create(Lorg/checkerframework/com/google/common/collect/Cut;Lorg/checkerframework/com/google/common/collect/Cut;)Lorg/checkerframework/com/google/common/collect/Range;

    move-result-object v2

    .line 240
    invoke-direct {p0, v2}, Lorg/checkerframework/com/google/common/collect/TreeRangeSet;->replaceRangeWithSameLowerBound(Lorg/checkerframework/com/google/common/collect/Range;)V

    .line 243
    :cond_1
    iget-object v2, v1, Lorg/checkerframework/com/google/common/collect/Range;->lowerBound:Lorg/checkerframework/com/google/common/collect/Cut;

    iget-object v3, p1, Lorg/checkerframework/com/google/common/collect/Range;->lowerBound:Lorg/checkerframework/com/google/common/collect/Cut;

    .line 244
    invoke-static {v2, v3}, Lorg/checkerframework/com/google/common/collect/Range;->create(Lorg/checkerframework/com/google/common/collect/Cut;Lorg/checkerframework/com/google/common/collect/Cut;)Lorg/checkerframework/com/google/common/collect/Range;

    move-result-object v2

    .line 243
    invoke-direct {p0, v2}, Lorg/checkerframework/com/google/common/collect/TreeRangeSet;->replaceRangeWithSameLowerBound(Lorg/checkerframework/com/google/common/collect/Range;)V

    .line 248
    .end local v1    # "rangeBelowLB":Lorg/checkerframework/com/google/common/collect/Range;, "Lorg/checkerframework/com/google/common/collect/Range<TC;>;"
    :cond_2
    iget-object v1, p0, Lorg/checkerframework/com/google/common/collect/TreeRangeSet;->rangesByLowerBound:Ljava/util/NavigableMap;

    iget-object v2, p1, Lorg/checkerframework/com/google/common/collect/Range;->upperBound:Lorg/checkerframework/com/google/common/collect/Cut;

    invoke-interface {v1, v2}, Ljava/util/NavigableMap;->floorEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v1

    .line 249
    .local v1, "entryBelowUB":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lorg/checkerframework/com/google/common/collect/Cut<TC;>;Lorg/checkerframework/com/google/common/collect/Range<TC;>;>;"
    if-eqz v1, :cond_3

    .line 251
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/checkerframework/com/google/common/collect/Range;

    .line 252
    .local v2, "rangeBelowUB":Lorg/checkerframework/com/google/common/collect/Range;, "Lorg/checkerframework/com/google/common/collect/Range<TC;>;"
    invoke-virtual {p1}, Lorg/checkerframework/com/google/common/collect/Range;->hasUpperBound()Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, v2, Lorg/checkerframework/com/google/common/collect/Range;->upperBound:Lorg/checkerframework/com/google/common/collect/Cut;

    iget-object v4, p1, Lorg/checkerframework/com/google/common/collect/Range;->upperBound:Lorg/checkerframework/com/google/common/collect/Cut;

    .line 253
    invoke-virtual {v3, v4}, Lorg/checkerframework/com/google/common/collect/Cut;->compareTo(Lorg/checkerframework/com/google/common/collect/Cut;)I

    move-result v3

    if-ltz v3, :cond_3

    .line 255
    iget-object v3, p1, Lorg/checkerframework/com/google/common/collect/Range;->upperBound:Lorg/checkerframework/com/google/common/collect/Cut;

    iget-object v4, v2, Lorg/checkerframework/com/google/common/collect/Range;->upperBound:Lorg/checkerframework/com/google/common/collect/Cut;

    .line 256
    invoke-static {v3, v4}, Lorg/checkerframework/com/google/common/collect/Range;->create(Lorg/checkerframework/com/google/common/collect/Cut;Lorg/checkerframework/com/google/common/collect/Cut;)Lorg/checkerframework/com/google/common/collect/Range;

    move-result-object v3

    .line 255
    invoke-direct {p0, v3}, Lorg/checkerframework/com/google/common/collect/TreeRangeSet;->replaceRangeWithSameLowerBound(Lorg/checkerframework/com/google/common/collect/Range;)V

    .line 260
    .end local v2    # "rangeBelowUB":Lorg/checkerframework/com/google/common/collect/Range;, "Lorg/checkerframework/com/google/common/collect/Range<TC;>;"
    :cond_3
    iget-object v2, p0, Lorg/checkerframework/com/google/common/collect/TreeRangeSet;->rangesByLowerBound:Ljava/util/NavigableMap;

    iget-object v3, p1, Lorg/checkerframework/com/google/common/collect/Range;->lowerBound:Lorg/checkerframework/com/google/common/collect/Cut;

    iget-object v4, p1, Lorg/checkerframework/com/google/common/collect/Range;->upperBound:Lorg/checkerframework/com/google/common/collect/Cut;

    invoke-interface {v2, v3, v4}, Ljava/util/NavigableMap;->subMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedMap;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/SortedMap;->clear()V

    .line 261
    return-void
.end method

.method public bridge synthetic removeAll(Lorg/checkerframework/com/google/common/collect/RangeSet;)V
    .locals 0

    .line 42
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/TreeRangeSet;, "Lorg/checkerframework/com/google/common/collect/TreeRangeSet<TC;>;"
    invoke-super {p0, p1}, Lorg/checkerframework/com/google/common/collect/AbstractRangeSet;->removeAll(Lorg/checkerframework/com/google/common/collect/RangeSet;)V

    return-void
.end method

.method public span()Lorg/checkerframework/com/google/common/collect/Range;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/checkerframework/com/google/common/collect/Range<",
            "TC;>;"
        }
    .end annotation

    .line 165
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/TreeRangeSet;, "Lorg/checkerframework/com/google/common/collect/TreeRangeSet<TC;>;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/TreeRangeSet;->rangesByLowerBound:Ljava/util/NavigableMap;

    invoke-interface {v0}, Ljava/util/NavigableMap;->firstEntry()Ljava/util/Map$Entry;

    move-result-object v0

    .line 166
    .local v0, "firstEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lorg/checkerframework/com/google/common/collect/Cut<TC;>;Lorg/checkerframework/com/google/common/collect/Range<TC;>;>;"
    iget-object v1, p0, Lorg/checkerframework/com/google/common/collect/TreeRangeSet;->rangesByLowerBound:Ljava/util/NavigableMap;

    invoke-interface {v1}, Ljava/util/NavigableMap;->lastEntry()Ljava/util/Map$Entry;

    move-result-object v1

    .line 167
    .local v1, "lastEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lorg/checkerframework/com/google/common/collect/Cut<TC;>;Lorg/checkerframework/com/google/common/collect/Range<TC;>;>;"
    if-eqz v0, :cond_0

    .line 170
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/checkerframework/com/google/common/collect/Range;

    iget-object v2, v2, Lorg/checkerframework/com/google/common/collect/Range;->lowerBound:Lorg/checkerframework/com/google/common/collect/Cut;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/checkerframework/com/google/common/collect/Range;

    iget-object v3, v3, Lorg/checkerframework/com/google/common/collect/Range;->upperBound:Lorg/checkerframework/com/google/common/collect/Cut;

    invoke-static {v2, v3}, Lorg/checkerframework/com/google/common/collect/Range;->create(Lorg/checkerframework/com/google/common/collect/Cut;Lorg/checkerframework/com/google/common/collect/Cut;)Lorg/checkerframework/com/google/common/collect/Range;

    move-result-object v2

    return-object v2

    .line 168
    :cond_0
    new-instance v2, Ljava/util/NoSuchElementException;

    invoke-direct {v2}, Ljava/util/NoSuchElementException;-><init>()V

    throw v2
.end method

.method public subRangeSet(Lorg/checkerframework/com/google/common/collect/Range;)Lorg/checkerframework/com/google/common/collect/RangeSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/google/common/collect/Range<",
            "TC;>;)",
            "Lorg/checkerframework/com/google/common/collect/RangeSet<",
            "TC;>;"
        }
    .end annotation

    .line 857
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/TreeRangeSet;, "Lorg/checkerframework/com/google/common/collect/TreeRangeSet<TC;>;"
    .local p1, "view":Lorg/checkerframework/com/google/common/collect/Range;, "Lorg/checkerframework/com/google/common/collect/Range<TC;>;"
    invoke-static {}, Lorg/checkerframework/com/google/common/collect/Range;->all()Lorg/checkerframework/com/google/common/collect/Range;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/checkerframework/com/google/common/collect/Range;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, p0

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/checkerframework/com/google/common/collect/TreeRangeSet$SubRangeSet;

    invoke-direct {v0, p0, p1}, Lorg/checkerframework/com/google/common/collect/TreeRangeSet$SubRangeSet;-><init>(Lorg/checkerframework/com/google/common/collect/TreeRangeSet;Lorg/checkerframework/com/google/common/collect/Range;)V

    :goto_0
    return-object v0
.end method
