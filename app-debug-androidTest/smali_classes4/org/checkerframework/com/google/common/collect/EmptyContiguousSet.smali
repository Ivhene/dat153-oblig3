.class final Lorg/checkerframework/com/google/common/collect/EmptyContiguousSet;
.super Lorg/checkerframework/com/google/common/collect/ContiguousSet;
.source "EmptyContiguousSet.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/checkerframework/com/google/common/collect/EmptyContiguousSet$SerializedForm;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<C::",
        "Ljava/lang/Comparable;",
        ">",
        "Lorg/checkerframework/com/google/common/collect/ContiguousSet<",
        "TC;>;"
    }
.end annotation


# direct methods
.method constructor <init>(Lorg/checkerframework/com/google/common/collect/DiscreteDomain;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/google/common/collect/DiscreteDomain<",
            "TC;>;)V"
        }
    .end annotation

    .line 32
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/EmptyContiguousSet;, "Lorg/checkerframework/com/google/common/collect/EmptyContiguousSet<TC;>;"
    .local p1, "domain":Lorg/checkerframework/com/google/common/collect/DiscreteDomain;, "Lorg/checkerframework/com/google/common/collect/DiscreteDomain<TC;>;"
    invoke-direct {p0, p1}, Lorg/checkerframework/com/google/common/collect/ContiguousSet;-><init>(Lorg/checkerframework/com/google/common/collect/DiscreteDomain;)V

    .line 33
    return-void
.end method


# virtual methods
.method public asList()Lorg/checkerframework/com/google/common/collect/ImmutableList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/checkerframework/com/google/common/collect/ImmutableList<",
            "TC;>;"
        }
    .end annotation

    .line 115
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/EmptyContiguousSet;, "Lorg/checkerframework/com/google/common/collect/EmptyContiguousSet<TC;>;"
    invoke-static {}, Lorg/checkerframework/com/google/common/collect/ImmutableList;->of()Lorg/checkerframework/com/google/common/collect/ImmutableList;

    move-result-object v0

    return-object v0
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "object"    # Ljava/lang/Object;

    .line 83
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/EmptyContiguousSet;, "Lorg/checkerframework/com/google/common/collect/EmptyContiguousSet<TC;>;"
    const/4 v0, 0x0

    return v0
.end method

.method createDescendingSet()Lorg/checkerframework/com/google/common/collect/ImmutableSortedSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/checkerframework/com/google/common/collect/ImmutableSortedSet<",
            "TC;>;"
        }
    .end annotation

    .line 167
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/EmptyContiguousSet;, "Lorg/checkerframework/com/google/common/collect/EmptyContiguousSet<TC;>;"
    invoke-static {}, Lorg/checkerframework/com/google/common/collect/Ordering;->natural()Lorg/checkerframework/com/google/common/collect/Ordering;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/com/google/common/collect/Ordering;->reverse()Lorg/checkerframework/com/google/common/collect/Ordering;

    move-result-object v0

    invoke-static {v0}, Lorg/checkerframework/com/google/common/collect/ImmutableSortedSet;->emptySet(Ljava/util/Comparator;)Lorg/checkerframework/com/google/common/collect/RegularImmutableSortedSet;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic descendingIterator()Ljava/util/Iterator;
    .locals 1

    .line 28
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/EmptyContiguousSet;, "Lorg/checkerframework/com/google/common/collect/EmptyContiguousSet<TC;>;"
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/EmptyContiguousSet;->descendingIterator()Lorg/checkerframework/com/google/common/collect/UnmodifiableIterator;

    move-result-object v0

    return-object v0
.end method

.method public descendingIterator()Lorg/checkerframework/com/google/common/collect/UnmodifiableIterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/checkerframework/com/google/common/collect/UnmodifiableIterator<",
            "TC;>;"
        }
    .end annotation

    .line 100
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/EmptyContiguousSet;, "Lorg/checkerframework/com/google/common/collect/EmptyContiguousSet<TC;>;"
    invoke-static {}, Lorg/checkerframework/com/google/common/collect/Iterators;->emptyIterator()Lorg/checkerframework/com/google/common/collect/UnmodifiableIterator;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "object"    # Ljava/lang/Object;

    .line 125
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/EmptyContiguousSet;, "Lorg/checkerframework/com/google/common/collect/EmptyContiguousSet<TC;>;"
    instance-of v0, p1, Ljava/util/Set;

    if-eqz v0, :cond_0

    .line 126
    move-object v0, p1

    check-cast v0, Ljava/util/Set;

    .line 127
    .local v0, "that":Ljava/util/Set;, "Ljava/util/Set<*>;"
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    return v1

    .line 129
    .end local v0    # "that":Ljava/util/Set;, "Ljava/util/Set<*>;"
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public first()Ljava/lang/Comparable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TC;"
        }
    .end annotation

    .line 37
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/EmptyContiguousSet;, "Lorg/checkerframework/com/google/common/collect/EmptyContiguousSet<TC;>;"
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public bridge synthetic first()Ljava/lang/Object;
    .locals 1

    .line 28
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/EmptyContiguousSet;, "Lorg/checkerframework/com/google/common/collect/EmptyContiguousSet<TC;>;"
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/EmptyContiguousSet;->first()Ljava/lang/Comparable;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 140
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/EmptyContiguousSet;, "Lorg/checkerframework/com/google/common/collect/EmptyContiguousSet<TC;>;"
    const/4 v0, 0x0

    return v0
.end method

.method headSetImpl(Ljava/lang/Comparable;Z)Lorg/checkerframework/com/google/common/collect/ContiguousSet;
    .locals 0
    .param p2, "inclusive"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TC;Z)",
            "Lorg/checkerframework/com/google/common/collect/ContiguousSet<",
            "TC;>;"
        }
    .end annotation

    .line 67
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/EmptyContiguousSet;, "Lorg/checkerframework/com/google/common/collect/EmptyContiguousSet<TC;>;"
    .local p1, "toElement":Ljava/lang/Comparable;, "TC;"
    return-object p0
.end method

.method bridge synthetic headSetImpl(Ljava/lang/Object;Z)Lorg/checkerframework/com/google/common/collect/ImmutableSortedSet;
    .locals 0

    .line 28
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/EmptyContiguousSet;, "Lorg/checkerframework/com/google/common/collect/EmptyContiguousSet<TC;>;"
    check-cast p1, Ljava/lang/Comparable;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/google/common/collect/EmptyContiguousSet;->headSetImpl(Ljava/lang/Comparable;Z)Lorg/checkerframework/com/google/common/collect/ContiguousSet;

    move-result-object p1

    return-object p1
.end method

.method indexOf(Ljava/lang/Object;)I
    .locals 1
    .param p1, "target"    # Ljava/lang/Object;

    .line 89
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/EmptyContiguousSet;, "Lorg/checkerframework/com/google/common/collect/EmptyContiguousSet<TC;>;"
    const/4 v0, -0x1

    return v0
.end method

.method public intersection(Lorg/checkerframework/com/google/common/collect/ContiguousSet;)Lorg/checkerframework/com/google/common/collect/ContiguousSet;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/google/common/collect/ContiguousSet<",
            "TC;>;)",
            "Lorg/checkerframework/com/google/common/collect/ContiguousSet<",
            "TC;>;"
        }
    .end annotation

    .line 52
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/EmptyContiguousSet;, "Lorg/checkerframework/com/google/common/collect/EmptyContiguousSet<TC;>;"
    .local p1, "other":Lorg/checkerframework/com/google/common/collect/ContiguousSet;, "Lorg/checkerframework/com/google/common/collect/ContiguousSet<TC;>;"
    return-object p0
.end method

.method public isEmpty()Z
    .locals 1

    .line 110
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/EmptyContiguousSet;, "Lorg/checkerframework/com/google/common/collect/EmptyContiguousSet<TC;>;"
    const/4 v0, 0x1

    return v0
.end method

.method isHashCodeFast()Z
    .locals 1

    .line 135
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/EmptyContiguousSet;, "Lorg/checkerframework/com/google/common/collect/EmptyContiguousSet<TC;>;"
    const/4 v0, 0x1

    return v0
.end method

.method isPartialView()Z
    .locals 1

    .line 105
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/EmptyContiguousSet;, "Lorg/checkerframework/com/google/common/collect/EmptyContiguousSet<TC;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .line 28
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/EmptyContiguousSet;, "Lorg/checkerframework/com/google/common/collect/EmptyContiguousSet<TC;>;"
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/EmptyContiguousSet;->iterator()Lorg/checkerframework/com/google/common/collect/UnmodifiableIterator;

    move-result-object v0

    return-object v0
.end method

.method public iterator()Lorg/checkerframework/com/google/common/collect/UnmodifiableIterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/checkerframework/com/google/common/collect/UnmodifiableIterator<",
            "TC;>;"
        }
    .end annotation

    .line 94
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/EmptyContiguousSet;, "Lorg/checkerframework/com/google/common/collect/EmptyContiguousSet<TC;>;"
    invoke-static {}, Lorg/checkerframework/com/google/common/collect/Iterators;->emptyIterator()Lorg/checkerframework/com/google/common/collect/UnmodifiableIterator;

    move-result-object v0

    return-object v0
.end method

.method public last()Ljava/lang/Comparable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TC;"
        }
    .end annotation

    .line 42
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/EmptyContiguousSet;, "Lorg/checkerframework/com/google/common/collect/EmptyContiguousSet<TC;>;"
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public bridge synthetic last()Ljava/lang/Object;
    .locals 1

    .line 28
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/EmptyContiguousSet;, "Lorg/checkerframework/com/google/common/collect/EmptyContiguousSet<TC;>;"
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/EmptyContiguousSet;->last()Ljava/lang/Comparable;

    move-result-object v0

    return-object v0
.end method

.method public range()Lorg/checkerframework/com/google/common/collect/Range;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/checkerframework/com/google/common/collect/Range<",
            "TC;>;"
        }
    .end annotation

    .line 57
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/EmptyContiguousSet;, "Lorg/checkerframework/com/google/common/collect/EmptyContiguousSet<TC;>;"
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public range(Lorg/checkerframework/com/google/common/collect/BoundType;Lorg/checkerframework/com/google/common/collect/BoundType;)Lorg/checkerframework/com/google/common/collect/Range;
    .locals 1
    .param p1, "lowerBoundType"    # Lorg/checkerframework/com/google/common/collect/BoundType;
    .param p2, "upperBoundType"    # Lorg/checkerframework/com/google/common/collect/BoundType;
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

    .line 62
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/EmptyContiguousSet;, "Lorg/checkerframework/com/google/common/collect/EmptyContiguousSet<TC;>;"
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public size()I
    .locals 1

    .line 47
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/EmptyContiguousSet;, "Lorg/checkerframework/com/google/common/collect/EmptyContiguousSet<TC;>;"
    const/4 v0, 0x0

    return v0
.end method

.method subSetImpl(Ljava/lang/Comparable;ZLjava/lang/Comparable;Z)Lorg/checkerframework/com/google/common/collect/ContiguousSet;
    .locals 0
    .param p2, "fromInclusive"    # Z
    .param p4, "toInclusive"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TC;ZTC;Z)",
            "Lorg/checkerframework/com/google/common/collect/ContiguousSet<",
            "TC;>;"
        }
    .end annotation

    .line 73
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/EmptyContiguousSet;, "Lorg/checkerframework/com/google/common/collect/EmptyContiguousSet<TC;>;"
    .local p1, "fromElement":Ljava/lang/Comparable;, "TC;"
    .local p3, "toElement":Ljava/lang/Comparable;, "TC;"
    return-object p0
.end method

.method bridge synthetic subSetImpl(Ljava/lang/Object;ZLjava/lang/Object;Z)Lorg/checkerframework/com/google/common/collect/ImmutableSortedSet;
    .locals 0

    .line 28
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/EmptyContiguousSet;, "Lorg/checkerframework/com/google/common/collect/EmptyContiguousSet<TC;>;"
    check-cast p1, Ljava/lang/Comparable;

    check-cast p3, Ljava/lang/Comparable;

    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/checkerframework/com/google/common/collect/EmptyContiguousSet;->subSetImpl(Ljava/lang/Comparable;ZLjava/lang/Comparable;Z)Lorg/checkerframework/com/google/common/collect/ContiguousSet;

    move-result-object p1

    return-object p1
.end method

.method tailSetImpl(Ljava/lang/Comparable;Z)Lorg/checkerframework/com/google/common/collect/ContiguousSet;
    .locals 0
    .param p2, "fromInclusive"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TC;Z)",
            "Lorg/checkerframework/com/google/common/collect/ContiguousSet<",
            "TC;>;"
        }
    .end annotation

    .line 78
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/EmptyContiguousSet;, "Lorg/checkerframework/com/google/common/collect/EmptyContiguousSet<TC;>;"
    .local p1, "fromElement":Ljava/lang/Comparable;, "TC;"
    return-object p0
.end method

.method bridge synthetic tailSetImpl(Ljava/lang/Object;Z)Lorg/checkerframework/com/google/common/collect/ImmutableSortedSet;
    .locals 0

    .line 28
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/EmptyContiguousSet;, "Lorg/checkerframework/com/google/common/collect/EmptyContiguousSet<TC;>;"
    check-cast p1, Ljava/lang/Comparable;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/google/common/collect/EmptyContiguousSet;->tailSetImpl(Ljava/lang/Comparable;Z)Lorg/checkerframework/com/google/common/collect/ContiguousSet;

    move-result-object p1

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 120
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/EmptyContiguousSet;, "Lorg/checkerframework/com/google/common/collect/EmptyContiguousSet<TC;>;"
    const-string v0, "[]"

    return-object v0
.end method

.method writeReplace()Ljava/lang/Object;
    .locals 3

    .line 161
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/EmptyContiguousSet;, "Lorg/checkerframework/com/google/common/collect/EmptyContiguousSet<TC;>;"
    new-instance v0, Lorg/checkerframework/com/google/common/collect/EmptyContiguousSet$SerializedForm;

    iget-object v1, p0, Lorg/checkerframework/com/google/common/collect/EmptyContiguousSet;->domain:Lorg/checkerframework/com/google/common/collect/DiscreteDomain;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/checkerframework/com/google/common/collect/EmptyContiguousSet$SerializedForm;-><init>(Lorg/checkerframework/com/google/common/collect/DiscreteDomain;Lorg/checkerframework/com/google/common/collect/EmptyContiguousSet$1;)V

    return-object v0
.end method
