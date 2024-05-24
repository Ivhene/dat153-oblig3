.class final Lorg/checkerframework/com/google/common/collect/ImmutableSortedAsList;
.super Lorg/checkerframework/com/google/common/collect/RegularImmutableAsList;
.source "ImmutableSortedAsList.java"

# interfaces
.implements Lorg/checkerframework/com/google/common/collect/SortedIterable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/checkerframework/com/google/common/collect/RegularImmutableAsList<",
        "TE;>;",
        "Lorg/checkerframework/com/google/common/collect/SortedIterable<",
        "TE;>;"
    }
.end annotation


# direct methods
.method constructor <init>(Lorg/checkerframework/com/google/common/collect/ImmutableSortedSet;Lorg/checkerframework/com/google/common/collect/ImmutableList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/google/common/collect/ImmutableSortedSet<",
            "TE;>;",
            "Lorg/checkerframework/com/google/common/collect/ImmutableList<",
            "TE;>;)V"
        }
    .end annotation

    .line 34
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ImmutableSortedAsList;, "Lorg/checkerframework/com/google/common/collect/ImmutableSortedAsList<TE;>;"
    .local p1, "backingSet":Lorg/checkerframework/com/google/common/collect/ImmutableSortedSet;, "Lorg/checkerframework/com/google/common/collect/ImmutableSortedSet<TE;>;"
    .local p2, "backingList":Lorg/checkerframework/com/google/common/collect/ImmutableList;, "Lorg/checkerframework/com/google/common/collect/ImmutableList<TE;>;"
    invoke-direct {p0, p1, p2}, Lorg/checkerframework/com/google/common/collect/RegularImmutableAsList;-><init>(Lorg/checkerframework/com/google/common/collect/ImmutableCollection;Lorg/checkerframework/com/google/common/collect/ImmutableList;)V

    .line 35
    return-void
.end method


# virtual methods
.method public comparator()Ljava/util/Comparator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator<",
            "-TE;>;"
        }
    .end annotation

    .line 44
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ImmutableSortedAsList;, "Lorg/checkerframework/com/google/common/collect/ImmutableSortedAsList<TE;>;"
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/ImmutableSortedAsList;->delegateCollection()Lorg/checkerframework/com/google/common/collect/ImmutableSortedSet;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/com/google/common/collect/ImmutableSortedSet;->comparator()Ljava/util/Comparator;

    move-result-object v0

    return-object v0
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "target"    # Ljava/lang/Object;

    .line 72
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ImmutableSortedAsList;, "Lorg/checkerframework/com/google/common/collect/ImmutableSortedAsList<TE;>;"
    invoke-virtual {p0, p1}, Lorg/checkerframework/com/google/common/collect/ImmutableSortedAsList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method bridge synthetic delegateCollection()Lorg/checkerframework/com/google/common/collect/ImmutableCollection;
    .locals 1

    .line 29
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ImmutableSortedAsList;, "Lorg/checkerframework/com/google/common/collect/ImmutableSortedAsList<TE;>;"
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/ImmutableSortedAsList;->delegateCollection()Lorg/checkerframework/com/google/common/collect/ImmutableSortedSet;

    move-result-object v0

    return-object v0
.end method

.method delegateCollection()Lorg/checkerframework/com/google/common/collect/ImmutableSortedSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/checkerframework/com/google/common/collect/ImmutableSortedSet<",
            "TE;>;"
        }
    .end annotation

    .line 39
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ImmutableSortedAsList;, "Lorg/checkerframework/com/google/common/collect/ImmutableSortedAsList<TE;>;"
    invoke-super {p0}, Lorg/checkerframework/com/google/common/collect/RegularImmutableAsList;->delegateCollection()Lorg/checkerframework/com/google/common/collect/ImmutableCollection;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/google/common/collect/ImmutableSortedSet;

    return-object v0
.end method

.method public indexOf(Ljava/lang/Object;)I
    .locals 2
    .param p1, "target"    # Ljava/lang/Object;

    .line 53
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ImmutableSortedAsList;, "Lorg/checkerframework/com/google/common/collect/ImmutableSortedAsList<TE;>;"
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/ImmutableSortedAsList;->delegateCollection()Lorg/checkerframework/com/google/common/collect/ImmutableSortedSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/checkerframework/com/google/common/collect/ImmutableSortedSet;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 60
    .local v0, "index":I
    if-ltz v0, :cond_0

    invoke-virtual {p0, v0}, Lorg/checkerframework/com/google/common/collect/ImmutableSortedAsList;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    const/4 v1, -0x1

    :goto_0
    return v1
.end method

.method public lastIndexOf(Ljava/lang/Object;)I
    .locals 1
    .param p1, "target"    # Ljava/lang/Object;

    .line 66
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ImmutableSortedAsList;, "Lorg/checkerframework/com/google/common/collect/ImmutableSortedAsList<TE;>;"
    invoke-virtual {p0, p1}, Lorg/checkerframework/com/google/common/collect/ImmutableSortedAsList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public spliterator()Ljava/util/Spliterator;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Spliterator<",
            "TE;>;"
        }
    .end annotation

    .line 89
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ImmutableSortedAsList;, "Lorg/checkerframework/com/google/common/collect/ImmutableSortedAsList<TE;>;"
    nop

    .line 90
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/ImmutableSortedAsList;->size()I

    move-result v0

    .line 92
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/ImmutableSortedAsList;->delegateList()Lorg/checkerframework/com/google/common/collect/ImmutableList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lorg/checkerframework/com/google/common/collect/ImmutableList$$ExternalSyntheticLambda0;

    invoke-direct {v2, v1}, Lorg/checkerframework/com/google/common/collect/ImmutableList$$ExternalSyntheticLambda0;-><init>(Lorg/checkerframework/com/google/common/collect/ImmutableList;)V

    .line 93
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/ImmutableSortedAsList;->comparator()Ljava/util/Comparator;

    move-result-object v1

    .line 89
    const/16 v3, 0x515

    invoke-static {v0, v3, v2, v1}, Lorg/checkerframework/com/google/common/collect/CollectSpliterators;->indexed(IILjava/util/function/IntFunction;Ljava/util/Comparator;)Ljava/util/Spliterator;

    move-result-object v0

    return-object v0
.end method

.method subListUnchecked(II)Lorg/checkerframework/com/google/common/collect/ImmutableList;
    .locals 3
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lorg/checkerframework/com/google/common/collect/ImmutableList<",
            "TE;>;"
        }
    .end annotation

    .line 83
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ImmutableSortedAsList;, "Lorg/checkerframework/com/google/common/collect/ImmutableSortedAsList<TE;>;"
    invoke-super {p0, p1, p2}, Lorg/checkerframework/com/google/common/collect/RegularImmutableAsList;->subListUnchecked(II)Lorg/checkerframework/com/google/common/collect/ImmutableList;

    move-result-object v0

    .line 84
    .local v0, "parentSubList":Lorg/checkerframework/com/google/common/collect/ImmutableList;, "Lorg/checkerframework/com/google/common/collect/ImmutableList<TE;>;"
    new-instance v1, Lorg/checkerframework/com/google/common/collect/RegularImmutableSortedSet;

    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/ImmutableSortedAsList;->comparator()Ljava/util/Comparator;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lorg/checkerframework/com/google/common/collect/RegularImmutableSortedSet;-><init>(Lorg/checkerframework/com/google/common/collect/ImmutableList;Ljava/util/Comparator;)V

    invoke-virtual {v1}, Lorg/checkerframework/com/google/common/collect/RegularImmutableSortedSet;->asList()Lorg/checkerframework/com/google/common/collect/ImmutableList;

    move-result-object v1

    return-object v1
.end method
