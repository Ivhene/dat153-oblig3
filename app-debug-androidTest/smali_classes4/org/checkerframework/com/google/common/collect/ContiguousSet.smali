.class public abstract Lorg/checkerframework/com/google/common/collect/ContiguousSet;
.super Lorg/checkerframework/com/google/common/collect/ImmutableSortedSet;
.source "ContiguousSet.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<C::",
        "Ljava/lang/Comparable;",
        ">",
        "Lorg/checkerframework/com/google/common/collect/ImmutableSortedSet<",
        "TC;>;"
    }
.end annotation


# instance fields
.field final domain:Lorg/checkerframework/com/google/common/collect/DiscreteDomain;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/checkerframework/com/google/common/collect/DiscreteDomain<",
            "TC;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lorg/checkerframework/com/google/common/collect/DiscreteDomain;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/google/common/collect/DiscreteDomain<",
            "TC;>;)V"
        }
    .end annotation

    .line 144
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ContiguousSet;, "Lorg/checkerframework/com/google/common/collect/ContiguousSet<TC;>;"
    .local p1, "domain":Lorg/checkerframework/com/google/common/collect/DiscreteDomain;, "Lorg/checkerframework/com/google/common/collect/DiscreteDomain<TC;>;"
    invoke-static {}, Lorg/checkerframework/com/google/common/collect/Ordering;->natural()Lorg/checkerframework/com/google/common/collect/Ordering;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/checkerframework/com/google/common/collect/ImmutableSortedSet;-><init>(Ljava/util/Comparator;)V

    .line 145
    iput-object p1, p0, Lorg/checkerframework/com/google/common/collect/ContiguousSet;->domain:Lorg/checkerframework/com/google/common/collect/DiscreteDomain;

    .line 146
    return-void
.end method

.method public static builder()Lorg/checkerframework/com/google/common/collect/ImmutableSortedSet$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">()",
            "Lorg/checkerframework/com/google/common/collect/ImmutableSortedSet$Builder<",
            "TE;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 256
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public static closed(II)Lorg/checkerframework/com/google/common/collect/ContiguousSet;
    .locals 2
    .param p0, "lower"    # I
    .param p1, "upper"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lorg/checkerframework/com/google/common/collect/ContiguousSet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 99
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/checkerframework/com/google/common/collect/Range;->closed(Ljava/lang/Comparable;Ljava/lang/Comparable;)Lorg/checkerframework/com/google/common/collect/Range;

    move-result-object v0

    invoke-static {}, Lorg/checkerframework/com/google/common/collect/DiscreteDomain;->integers()Lorg/checkerframework/com/google/common/collect/DiscreteDomain;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/checkerframework/com/google/common/collect/ContiguousSet;->create(Lorg/checkerframework/com/google/common/collect/Range;Lorg/checkerframework/com/google/common/collect/DiscreteDomain;)Lorg/checkerframework/com/google/common/collect/ContiguousSet;

    move-result-object v0

    return-object v0
.end method

.method public static closed(JJ)Lorg/checkerframework/com/google/common/collect/ContiguousSet;
    .locals 2
    .param p0, "lower"    # J
    .param p2, "upper"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ)",
            "Lorg/checkerframework/com/google/common/collect/ContiguousSet<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 112
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/checkerframework/com/google/common/collect/Range;->closed(Ljava/lang/Comparable;Ljava/lang/Comparable;)Lorg/checkerframework/com/google/common/collect/Range;

    move-result-object v0

    invoke-static {}, Lorg/checkerframework/com/google/common/collect/DiscreteDomain;->longs()Lorg/checkerframework/com/google/common/collect/DiscreteDomain;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/checkerframework/com/google/common/collect/ContiguousSet;->create(Lorg/checkerframework/com/google/common/collect/Range;Lorg/checkerframework/com/google/common/collect/DiscreteDomain;)Lorg/checkerframework/com/google/common/collect/ContiguousSet;

    move-result-object v0

    return-object v0
.end method

.method public static closedOpen(II)Lorg/checkerframework/com/google/common/collect/ContiguousSet;
    .locals 2
    .param p0, "lower"    # I
    .param p1, "upper"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lorg/checkerframework/com/google/common/collect/ContiguousSet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 125
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/checkerframework/com/google/common/collect/Range;->closedOpen(Ljava/lang/Comparable;Ljava/lang/Comparable;)Lorg/checkerframework/com/google/common/collect/Range;

    move-result-object v0

    invoke-static {}, Lorg/checkerframework/com/google/common/collect/DiscreteDomain;->integers()Lorg/checkerframework/com/google/common/collect/DiscreteDomain;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/checkerframework/com/google/common/collect/ContiguousSet;->create(Lorg/checkerframework/com/google/common/collect/Range;Lorg/checkerframework/com/google/common/collect/DiscreteDomain;)Lorg/checkerframework/com/google/common/collect/ContiguousSet;

    move-result-object v0

    return-object v0
.end method

.method public static closedOpen(JJ)Lorg/checkerframework/com/google/common/collect/ContiguousSet;
    .locals 2
    .param p0, "lower"    # J
    .param p2, "upper"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ)",
            "Lorg/checkerframework/com/google/common/collect/ContiguousSet<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 138
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/checkerframework/com/google/common/collect/Range;->closedOpen(Ljava/lang/Comparable;Ljava/lang/Comparable;)Lorg/checkerframework/com/google/common/collect/Range;

    move-result-object v0

    invoke-static {}, Lorg/checkerframework/com/google/common/collect/DiscreteDomain;->longs()Lorg/checkerframework/com/google/common/collect/DiscreteDomain;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/checkerframework/com/google/common/collect/ContiguousSet;->create(Lorg/checkerframework/com/google/common/collect/Range;Lorg/checkerframework/com/google/common/collect/DiscreteDomain;)Lorg/checkerframework/com/google/common/collect/ContiguousSet;

    move-result-object v0

    return-object v0
.end method

.method public static create(Lorg/checkerframework/com/google/common/collect/Range;Lorg/checkerframework/com/google/common/collect/DiscreteDomain;)Lorg/checkerframework/com/google/common/collect/ContiguousSet;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C::",
            "Ljava/lang/Comparable;",
            ">(",
            "Lorg/checkerframework/com/google/common/collect/Range<",
            "TC;>;",
            "Lorg/checkerframework/com/google/common/collect/DiscreteDomain<",
            "TC;>;)",
            "Lorg/checkerframework/com/google/common/collect/ContiguousSet<",
            "TC;>;"
        }
    .end annotation

    .line 62
    .local p0, "range":Lorg/checkerframework/com/google/common/collect/Range;, "Lorg/checkerframework/com/google/common/collect/Range<TC;>;"
    .local p1, "domain":Lorg/checkerframework/com/google/common/collect/DiscreteDomain;, "Lorg/checkerframework/com/google/common/collect/DiscreteDomain<TC;>;"
    invoke-static {p0}, Lorg/checkerframework/com/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    invoke-static {p1}, Lorg/checkerframework/com/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    move-object v0, p0

    .line 66
    .local v0, "effectiveRange":Lorg/checkerframework/com/google/common/collect/Range;, "Lorg/checkerframework/com/google/common/collect/Range<TC;>;"
    :try_start_0
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/Range;->hasLowerBound()Z

    move-result v1

    if-nez v1, :cond_0

    .line 67
    invoke-virtual {p1}, Lorg/checkerframework/com/google/common/collect/DiscreteDomain;->minValue()Ljava/lang/Comparable;

    move-result-object v1

    invoke-static {v1}, Lorg/checkerframework/com/google/common/collect/Range;->atLeast(Ljava/lang/Comparable;)Lorg/checkerframework/com/google/common/collect/Range;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/checkerframework/com/google/common/collect/Range;->intersection(Lorg/checkerframework/com/google/common/collect/Range;)Lorg/checkerframework/com/google/common/collect/Range;

    move-result-object v1

    move-object v0, v1

    .line 69
    :cond_0
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/Range;->hasUpperBound()Z

    move-result v1

    if-nez v1, :cond_1

    .line 70
    invoke-virtual {p1}, Lorg/checkerframework/com/google/common/collect/DiscreteDomain;->maxValue()Ljava/lang/Comparable;

    move-result-object v1

    invoke-static {v1}, Lorg/checkerframework/com/google/common/collect/Range;->atMost(Ljava/lang/Comparable;)Lorg/checkerframework/com/google/common/collect/Range;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/checkerframework/com/google/common/collect/Range;->intersection(Lorg/checkerframework/com/google/common/collect/Range;)Lorg/checkerframework/com/google/common/collect/Range;

    move-result-object v1
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 74
    :cond_1
    nop

    .line 77
    nop

    .line 78
    invoke-virtual {v0}, Lorg/checkerframework/com/google/common/collect/Range;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lorg/checkerframework/com/google/common/collect/Range;->lowerBound:Lorg/checkerframework/com/google/common/collect/Cut;

    .line 80
    invoke-virtual {v1, p1}, Lorg/checkerframework/com/google/common/collect/Cut;->leastValueAbove(Lorg/checkerframework/com/google/common/collect/DiscreteDomain;)Ljava/lang/Comparable;

    move-result-object v1

    iget-object v2, p0, Lorg/checkerframework/com/google/common/collect/Range;->upperBound:Lorg/checkerframework/com/google/common/collect/Cut;

    .line 81
    invoke-virtual {v2, p1}, Lorg/checkerframework/com/google/common/collect/Cut;->greatestValueBelow(Lorg/checkerframework/com/google/common/collect/DiscreteDomain;)Ljava/lang/Comparable;

    move-result-object v2

    .line 79
    invoke-static {v1, v2}, Lorg/checkerframework/com/google/common/collect/Range;->compareOrThrow(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result v1

    if-lez v1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    goto :goto_1

    :cond_3
    :goto_0
    const/4 v1, 0x1

    .line 84
    .local v1, "empty":Z
    :goto_1
    if-eqz v1, :cond_4

    new-instance v2, Lorg/checkerframework/com/google/common/collect/EmptyContiguousSet;

    invoke-direct {v2, p1}, Lorg/checkerframework/com/google/common/collect/EmptyContiguousSet;-><init>(Lorg/checkerframework/com/google/common/collect/DiscreteDomain;)V

    goto :goto_2

    :cond_4
    new-instance v2, Lorg/checkerframework/com/google/common/collect/RegularContiguousSet;

    invoke-direct {v2, v0, p1}, Lorg/checkerframework/com/google/common/collect/RegularContiguousSet;-><init>(Lorg/checkerframework/com/google/common/collect/Range;Lorg/checkerframework/com/google/common/collect/DiscreteDomain;)V

    :goto_2
    return-object v2

    .line 72
    .end local v1    # "empty":Z
    :catch_0
    move-exception v1

    .line 73
    .local v1, "e":Ljava/util/NoSuchElementException;
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method


# virtual methods
.method createDescendingSet()Lorg/checkerframework/com/google/common/collect/ImmutableSortedSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/checkerframework/com/google/common/collect/ImmutableSortedSet<",
            "TC;>;"
        }
    .end annotation

    .line 237
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ContiguousSet;, "Lorg/checkerframework/com/google/common/collect/ContiguousSet<TC;>;"
    new-instance v0, Lorg/checkerframework/com/google/common/collect/DescendingImmutableSortedSet;

    invoke-direct {v0, p0}, Lorg/checkerframework/com/google/common/collect/DescendingImmutableSortedSet;-><init>(Lorg/checkerframework/com/google/common/collect/ImmutableSortedSet;)V

    return-object v0
.end method

.method public bridge synthetic headSet(Ljava/lang/Object;Z)Ljava/util/NavigableSet;
    .locals 0

    .line 49
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ContiguousSet;, "Lorg/checkerframework/com/google/common/collect/ContiguousSet<TC;>;"
    check-cast p1, Ljava/lang/Comparable;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/google/common/collect/ContiguousSet;->headSet(Ljava/lang/Comparable;Z)Lorg/checkerframework/com/google/common/collect/ContiguousSet;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic headSet(Ljava/lang/Object;)Ljava/util/SortedSet;
    .locals 0

    .line 49
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ContiguousSet;, "Lorg/checkerframework/com/google/common/collect/ContiguousSet<TC;>;"
    check-cast p1, Ljava/lang/Comparable;

    invoke-virtual {p0, p1}, Lorg/checkerframework/com/google/common/collect/ContiguousSet;->headSet(Ljava/lang/Comparable;)Lorg/checkerframework/com/google/common/collect/ContiguousSet;

    move-result-object p1

    return-object p1
.end method

.method public headSet(Ljava/lang/Comparable;)Lorg/checkerframework/com/google/common/collect/ContiguousSet;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TC;)",
            "Lorg/checkerframework/com/google/common/collect/ContiguousSet<",
            "TC;>;"
        }
    .end annotation

    .line 150
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ContiguousSet;, "Lorg/checkerframework/com/google/common/collect/ContiguousSet<TC;>;"
    .local p1, "toElement":Ljava/lang/Comparable;, "TC;"
    invoke-static {p1}, Lorg/checkerframework/com/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Comparable;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lorg/checkerframework/com/google/common/collect/ContiguousSet;->headSetImpl(Ljava/lang/Comparable;Z)Lorg/checkerframework/com/google/common/collect/ContiguousSet;

    move-result-object v0

    return-object v0
.end method

.method public headSet(Ljava/lang/Comparable;Z)Lorg/checkerframework/com/google/common/collect/ContiguousSet;
    .locals 1
    .param p2, "inclusive"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TC;Z)",
            "Lorg/checkerframework/com/google/common/collect/ContiguousSet<",
            "TC;>;"
        }
    .end annotation

    .line 157
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ContiguousSet;, "Lorg/checkerframework/com/google/common/collect/ContiguousSet<TC;>;"
    .local p1, "toElement":Ljava/lang/Comparable;, "TC;"
    invoke-static {p1}, Lorg/checkerframework/com/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Comparable;

    invoke-virtual {p0, v0, p2}, Lorg/checkerframework/com/google/common/collect/ContiguousSet;->headSetImpl(Ljava/lang/Comparable;Z)Lorg/checkerframework/com/google/common/collect/ContiguousSet;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic headSet(Ljava/lang/Object;)Lorg/checkerframework/com/google/common/collect/ImmutableSortedSet;
    .locals 0

    .line 49
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ContiguousSet;, "Lorg/checkerframework/com/google/common/collect/ContiguousSet<TC;>;"
    check-cast p1, Ljava/lang/Comparable;

    invoke-virtual {p0, p1}, Lorg/checkerframework/com/google/common/collect/ContiguousSet;->headSet(Ljava/lang/Comparable;)Lorg/checkerframework/com/google/common/collect/ContiguousSet;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic headSet(Ljava/lang/Object;Z)Lorg/checkerframework/com/google/common/collect/ImmutableSortedSet;
    .locals 0

    .line 49
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ContiguousSet;, "Lorg/checkerframework/com/google/common/collect/ContiguousSet<TC;>;"
    check-cast p1, Ljava/lang/Comparable;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/google/common/collect/ContiguousSet;->headSet(Ljava/lang/Comparable;Z)Lorg/checkerframework/com/google/common/collect/ContiguousSet;

    move-result-object p1

    return-object p1
.end method

.method abstract headSetImpl(Ljava/lang/Comparable;Z)Lorg/checkerframework/com/google/common/collect/ContiguousSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TC;Z)",
            "Lorg/checkerframework/com/google/common/collect/ContiguousSet<",
            "TC;>;"
        }
    .end annotation
.end method

.method bridge synthetic headSetImpl(Ljava/lang/Object;Z)Lorg/checkerframework/com/google/common/collect/ImmutableSortedSet;
    .locals 0

    .line 49
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ContiguousSet;, "Lorg/checkerframework/com/google/common/collect/ContiguousSet<TC;>;"
    check-cast p1, Ljava/lang/Comparable;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/google/common/collect/ContiguousSet;->headSetImpl(Ljava/lang/Comparable;Z)Lorg/checkerframework/com/google/common/collect/ContiguousSet;

    move-result-object p1

    return-object p1
.end method

.method public abstract intersection(Lorg/checkerframework/com/google/common/collect/ContiguousSet;)Lorg/checkerframework/com/google/common/collect/ContiguousSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/google/common/collect/ContiguousSet<",
            "TC;>;)",
            "Lorg/checkerframework/com/google/common/collect/ContiguousSet<",
            "TC;>;"
        }
    .end annotation
.end method

.method public abstract range()Lorg/checkerframework/com/google/common/collect/Range;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/checkerframework/com/google/common/collect/Range<",
            "TC;>;"
        }
    .end annotation
.end method

.method public abstract range(Lorg/checkerframework/com/google/common/collect/BoundType;Lorg/checkerframework/com/google/common/collect/BoundType;)Lorg/checkerframework/com/google/common/collect/Range;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/google/common/collect/BoundType;",
            "Lorg/checkerframework/com/google/common/collect/BoundType;",
            ")",
            "Lorg/checkerframework/com/google/common/collect/Range<",
            "TC;>;"
        }
    .end annotation
.end method

.method public bridge synthetic subSet(Ljava/lang/Object;ZLjava/lang/Object;Z)Ljava/util/NavigableSet;
    .locals 0

    .line 49
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ContiguousSet;, "Lorg/checkerframework/com/google/common/collect/ContiguousSet<TC;>;"
    check-cast p1, Ljava/lang/Comparable;

    check-cast p3, Ljava/lang/Comparable;

    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/checkerframework/com/google/common/collect/ContiguousSet;->subSet(Ljava/lang/Comparable;ZLjava/lang/Comparable;Z)Lorg/checkerframework/com/google/common/collect/ContiguousSet;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic subSet(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedSet;
    .locals 0

    .line 49
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ContiguousSet;, "Lorg/checkerframework/com/google/common/collect/ContiguousSet<TC;>;"
    check-cast p1, Ljava/lang/Comparable;

    check-cast p2, Ljava/lang/Comparable;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/google/common/collect/ContiguousSet;->subSet(Ljava/lang/Comparable;Ljava/lang/Comparable;)Lorg/checkerframework/com/google/common/collect/ContiguousSet;

    move-result-object p1

    return-object p1
.end method

.method public subSet(Ljava/lang/Comparable;Ljava/lang/Comparable;)Lorg/checkerframework/com/google/common/collect/ContiguousSet;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TC;TC;)",
            "Lorg/checkerframework/com/google/common/collect/ContiguousSet<",
            "TC;>;"
        }
    .end annotation

    .line 162
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ContiguousSet;, "Lorg/checkerframework/com/google/common/collect/ContiguousSet<TC;>;"
    .local p1, "fromElement":Ljava/lang/Comparable;, "TC;"
    .local p2, "toElement":Ljava/lang/Comparable;, "TC;"
    invoke-static {p1}, Lorg/checkerframework/com/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    invoke-static {p2}, Lorg/checkerframework/com/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/ContiguousSet;->comparator()Ljava/util/Comparator;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-gtz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    invoke-static {v0}, Lorg/checkerframework/com/google/common/base/Preconditions;->checkArgument(Z)V

    .line 165
    invoke-virtual {p0, p1, v1, p2, v2}, Lorg/checkerframework/com/google/common/collect/ContiguousSet;->subSetImpl(Ljava/lang/Comparable;ZLjava/lang/Comparable;Z)Lorg/checkerframework/com/google/common/collect/ContiguousSet;

    move-result-object v0

    return-object v0
.end method

.method public subSet(Ljava/lang/Comparable;ZLjava/lang/Comparable;Z)Lorg/checkerframework/com/google/common/collect/ContiguousSet;
    .locals 1
    .param p2, "fromInclusive"    # Z
    .param p4, "toInclusive"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TC;ZTC;Z)",
            "Lorg/checkerframework/com/google/common/collect/ContiguousSet<",
            "TC;>;"
        }
    .end annotation

    .line 173
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ContiguousSet;, "Lorg/checkerframework/com/google/common/collect/ContiguousSet<TC;>;"
    .local p1, "fromElement":Ljava/lang/Comparable;, "TC;"
    .local p3, "toElement":Ljava/lang/Comparable;, "TC;"
    invoke-static {p1}, Lorg/checkerframework/com/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 174
    invoke-static {p3}, Lorg/checkerframework/com/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 175
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/ContiguousSet;->comparator()Ljava/util/Comparator;

    move-result-object v0

    invoke-interface {v0, p1, p3}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lorg/checkerframework/com/google/common/base/Preconditions;->checkArgument(Z)V

    .line 176
    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/checkerframework/com/google/common/collect/ContiguousSet;->subSetImpl(Ljava/lang/Comparable;ZLjava/lang/Comparable;Z)Lorg/checkerframework/com/google/common/collect/ContiguousSet;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic subSet(Ljava/lang/Object;Ljava/lang/Object;)Lorg/checkerframework/com/google/common/collect/ImmutableSortedSet;
    .locals 0

    .line 49
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ContiguousSet;, "Lorg/checkerframework/com/google/common/collect/ContiguousSet<TC;>;"
    check-cast p1, Ljava/lang/Comparable;

    check-cast p2, Ljava/lang/Comparable;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/google/common/collect/ContiguousSet;->subSet(Ljava/lang/Comparable;Ljava/lang/Comparable;)Lorg/checkerframework/com/google/common/collect/ContiguousSet;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic subSet(Ljava/lang/Object;ZLjava/lang/Object;Z)Lorg/checkerframework/com/google/common/collect/ImmutableSortedSet;
    .locals 0

    .line 49
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ContiguousSet;, "Lorg/checkerframework/com/google/common/collect/ContiguousSet<TC;>;"
    check-cast p1, Ljava/lang/Comparable;

    check-cast p3, Ljava/lang/Comparable;

    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/checkerframework/com/google/common/collect/ContiguousSet;->subSet(Ljava/lang/Comparable;ZLjava/lang/Comparable;Z)Lorg/checkerframework/com/google/common/collect/ContiguousSet;

    move-result-object p1

    return-object p1
.end method

.method abstract subSetImpl(Ljava/lang/Comparable;ZLjava/lang/Comparable;Z)Lorg/checkerframework/com/google/common/collect/ContiguousSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TC;ZTC;Z)",
            "Lorg/checkerframework/com/google/common/collect/ContiguousSet<",
            "TC;>;"
        }
    .end annotation
.end method

.method bridge synthetic subSetImpl(Ljava/lang/Object;ZLjava/lang/Object;Z)Lorg/checkerframework/com/google/common/collect/ImmutableSortedSet;
    .locals 0

    .line 49
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ContiguousSet;, "Lorg/checkerframework/com/google/common/collect/ContiguousSet<TC;>;"
    check-cast p1, Ljava/lang/Comparable;

    check-cast p3, Ljava/lang/Comparable;

    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/checkerframework/com/google/common/collect/ContiguousSet;->subSetImpl(Ljava/lang/Comparable;ZLjava/lang/Comparable;Z)Lorg/checkerframework/com/google/common/collect/ContiguousSet;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic tailSet(Ljava/lang/Object;Z)Ljava/util/NavigableSet;
    .locals 0

    .line 49
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ContiguousSet;, "Lorg/checkerframework/com/google/common/collect/ContiguousSet<TC;>;"
    check-cast p1, Ljava/lang/Comparable;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/google/common/collect/ContiguousSet;->tailSet(Ljava/lang/Comparable;Z)Lorg/checkerframework/com/google/common/collect/ContiguousSet;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic tailSet(Ljava/lang/Object;)Ljava/util/SortedSet;
    .locals 0

    .line 49
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ContiguousSet;, "Lorg/checkerframework/com/google/common/collect/ContiguousSet<TC;>;"
    check-cast p1, Ljava/lang/Comparable;

    invoke-virtual {p0, p1}, Lorg/checkerframework/com/google/common/collect/ContiguousSet;->tailSet(Ljava/lang/Comparable;)Lorg/checkerframework/com/google/common/collect/ContiguousSet;

    move-result-object p1

    return-object p1
.end method

.method public tailSet(Ljava/lang/Comparable;)Lorg/checkerframework/com/google/common/collect/ContiguousSet;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TC;)",
            "Lorg/checkerframework/com/google/common/collect/ContiguousSet<",
            "TC;>;"
        }
    .end annotation

    .line 181
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ContiguousSet;, "Lorg/checkerframework/com/google/common/collect/ContiguousSet<TC;>;"
    .local p1, "fromElement":Ljava/lang/Comparable;, "TC;"
    invoke-static {p1}, Lorg/checkerframework/com/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Comparable;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lorg/checkerframework/com/google/common/collect/ContiguousSet;->tailSetImpl(Ljava/lang/Comparable;Z)Lorg/checkerframework/com/google/common/collect/ContiguousSet;

    move-result-object v0

    return-object v0
.end method

.method public tailSet(Ljava/lang/Comparable;Z)Lorg/checkerframework/com/google/common/collect/ContiguousSet;
    .locals 1
    .param p2, "inclusive"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TC;Z)",
            "Lorg/checkerframework/com/google/common/collect/ContiguousSet<",
            "TC;>;"
        }
    .end annotation

    .line 188
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ContiguousSet;, "Lorg/checkerframework/com/google/common/collect/ContiguousSet<TC;>;"
    .local p1, "fromElement":Ljava/lang/Comparable;, "TC;"
    invoke-static {p1}, Lorg/checkerframework/com/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Comparable;

    invoke-virtual {p0, v0, p2}, Lorg/checkerframework/com/google/common/collect/ContiguousSet;->tailSetImpl(Ljava/lang/Comparable;Z)Lorg/checkerframework/com/google/common/collect/ContiguousSet;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic tailSet(Ljava/lang/Object;)Lorg/checkerframework/com/google/common/collect/ImmutableSortedSet;
    .locals 0

    .line 49
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ContiguousSet;, "Lorg/checkerframework/com/google/common/collect/ContiguousSet<TC;>;"
    check-cast p1, Ljava/lang/Comparable;

    invoke-virtual {p0, p1}, Lorg/checkerframework/com/google/common/collect/ContiguousSet;->tailSet(Ljava/lang/Comparable;)Lorg/checkerframework/com/google/common/collect/ContiguousSet;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic tailSet(Ljava/lang/Object;Z)Lorg/checkerframework/com/google/common/collect/ImmutableSortedSet;
    .locals 0

    .line 49
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ContiguousSet;, "Lorg/checkerframework/com/google/common/collect/ContiguousSet<TC;>;"
    check-cast p1, Ljava/lang/Comparable;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/google/common/collect/ContiguousSet;->tailSet(Ljava/lang/Comparable;Z)Lorg/checkerframework/com/google/common/collect/ContiguousSet;

    move-result-object p1

    return-object p1
.end method

.method abstract tailSetImpl(Ljava/lang/Comparable;Z)Lorg/checkerframework/com/google/common/collect/ContiguousSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TC;Z)",
            "Lorg/checkerframework/com/google/common/collect/ContiguousSet<",
            "TC;>;"
        }
    .end annotation
.end method

.method bridge synthetic tailSetImpl(Ljava/lang/Object;Z)Lorg/checkerframework/com/google/common/collect/ImmutableSortedSet;
    .locals 0

    .line 49
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ContiguousSet;, "Lorg/checkerframework/com/google/common/collect/ContiguousSet<TC;>;"
    check-cast p1, Ljava/lang/Comparable;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/google/common/collect/ContiguousSet;->tailSetImpl(Ljava/lang/Comparable;Z)Lorg/checkerframework/com/google/common/collect/ContiguousSet;

    move-result-object p1

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 243
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ContiguousSet;, "Lorg/checkerframework/com/google/common/collect/ContiguousSet<TC;>;"
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/ContiguousSet;->range()Lorg/checkerframework/com/google/common/collect/Range;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/com/google/common/collect/Range;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
