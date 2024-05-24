.class final Lorg/checkerframework/com/google/common/collect/UnmodifiableSortedMultiset;
.super Lorg/checkerframework/com/google/common/collect/Multisets$UnmodifiableMultiset;
.source "UnmodifiableSortedMultiset.java"

# interfaces
.implements Lorg/checkerframework/com/google/common/collect/SortedMultiset;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/checkerframework/com/google/common/collect/Multisets$UnmodifiableMultiset<",
        "TE;>;",
        "Lorg/checkerframework/com/google/common/collect/SortedMultiset<",
        "TE;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J


# instance fields
.field private transient descendingMultiset:Lorg/checkerframework/com/google/common/collect/UnmodifiableSortedMultiset;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/checkerframework/com/google/common/collect/UnmodifiableSortedMultiset<",
            "TE;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lorg/checkerframework/com/google/common/collect/SortedMultiset;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/google/common/collect/SortedMultiset<",
            "TE;>;)V"
        }
    .end annotation

    .line 36
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/UnmodifiableSortedMultiset;, "Lorg/checkerframework/com/google/common/collect/UnmodifiableSortedMultiset<TE;>;"
    .local p1, "delegate":Lorg/checkerframework/com/google/common/collect/SortedMultiset;, "Lorg/checkerframework/com/google/common/collect/SortedMultiset<TE;>;"
    invoke-direct {p0, p1}, Lorg/checkerframework/com/google/common/collect/Multisets$UnmodifiableMultiset;-><init>(Lorg/checkerframework/com/google/common/collect/Multiset;)V

    .line 37
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

    .line 46
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/UnmodifiableSortedMultiset;, "Lorg/checkerframework/com/google/common/collect/UnmodifiableSortedMultiset<TE;>;"
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/UnmodifiableSortedMultiset;->delegate()Lorg/checkerframework/com/google/common/collect/SortedMultiset;

    move-result-object v0

    invoke-interface {v0}, Lorg/checkerframework/com/google/common/collect/SortedMultiset;->comparator()Ljava/util/Comparator;

    move-result-object v0

    return-object v0
.end method

.method createElementSet()Ljava/util/NavigableSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/NavigableSet<",
            "TE;>;"
        }
    .end annotation

    .line 51
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/UnmodifiableSortedMultiset;, "Lorg/checkerframework/com/google/common/collect/UnmodifiableSortedMultiset<TE;>;"
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/UnmodifiableSortedMultiset;->delegate()Lorg/checkerframework/com/google/common/collect/SortedMultiset;

    move-result-object v0

    invoke-interface {v0}, Lorg/checkerframework/com/google/common/collect/SortedMultiset;->elementSet()Ljava/util/NavigableSet;

    move-result-object v0

    invoke-static {v0}, Lorg/checkerframework/com/google/common/collect/Sets;->unmodifiableNavigableSet(Ljava/util/NavigableSet;)Ljava/util/NavigableSet;

    move-result-object v0

    return-object v0
.end method

.method bridge synthetic createElementSet()Ljava/util/Set;
    .locals 1

    .line 32
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/UnmodifiableSortedMultiset;, "Lorg/checkerframework/com/google/common/collect/UnmodifiableSortedMultiset<TE;>;"
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/UnmodifiableSortedMultiset;->createElementSet()Ljava/util/NavigableSet;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic delegate()Ljava/lang/Object;
    .locals 1

    .line 32
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/UnmodifiableSortedMultiset;, "Lorg/checkerframework/com/google/common/collect/UnmodifiableSortedMultiset<TE;>;"
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/UnmodifiableSortedMultiset;->delegate()Lorg/checkerframework/com/google/common/collect/SortedMultiset;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic delegate()Ljava/util/Collection;
    .locals 1

    .line 32
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/UnmodifiableSortedMultiset;, "Lorg/checkerframework/com/google/common/collect/UnmodifiableSortedMultiset<TE;>;"
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/UnmodifiableSortedMultiset;->delegate()Lorg/checkerframework/com/google/common/collect/SortedMultiset;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic delegate()Lorg/checkerframework/com/google/common/collect/Multiset;
    .locals 1

    .line 32
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/UnmodifiableSortedMultiset;, "Lorg/checkerframework/com/google/common/collect/UnmodifiableSortedMultiset<TE;>;"
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/UnmodifiableSortedMultiset;->delegate()Lorg/checkerframework/com/google/common/collect/SortedMultiset;

    move-result-object v0

    return-object v0
.end method

.method protected delegate()Lorg/checkerframework/com/google/common/collect/SortedMultiset;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/checkerframework/com/google/common/collect/SortedMultiset<",
            "TE;>;"
        }
    .end annotation

    .line 41
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/UnmodifiableSortedMultiset;, "Lorg/checkerframework/com/google/common/collect/UnmodifiableSortedMultiset<TE;>;"
    invoke-super {p0}, Lorg/checkerframework/com/google/common/collect/Multisets$UnmodifiableMultiset;->delegate()Lorg/checkerframework/com/google/common/collect/Multiset;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/google/common/collect/SortedMultiset;

    return-object v0
.end method

.method public descendingMultiset()Lorg/checkerframework/com/google/common/collect/SortedMultiset;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/checkerframework/com/google/common/collect/SortedMultiset<",
            "TE;>;"
        }
    .end annotation

    .line 63
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/UnmodifiableSortedMultiset;, "Lorg/checkerframework/com/google/common/collect/UnmodifiableSortedMultiset<TE;>;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/UnmodifiableSortedMultiset;->descendingMultiset:Lorg/checkerframework/com/google/common/collect/UnmodifiableSortedMultiset;

    .line 64
    .local v0, "result":Lorg/checkerframework/com/google/common/collect/UnmodifiableSortedMultiset;, "Lorg/checkerframework/com/google/common/collect/UnmodifiableSortedMultiset<TE;>;"
    if-nez v0, :cond_0

    .line 65
    new-instance v1, Lorg/checkerframework/com/google/common/collect/UnmodifiableSortedMultiset;

    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/UnmodifiableSortedMultiset;->delegate()Lorg/checkerframework/com/google/common/collect/SortedMultiset;

    move-result-object v2

    invoke-interface {v2}, Lorg/checkerframework/com/google/common/collect/SortedMultiset;->descendingMultiset()Lorg/checkerframework/com/google/common/collect/SortedMultiset;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/checkerframework/com/google/common/collect/UnmodifiableSortedMultiset;-><init>(Lorg/checkerframework/com/google/common/collect/SortedMultiset;)V

    move-object v0, v1

    .line 66
    iput-object p0, v0, Lorg/checkerframework/com/google/common/collect/UnmodifiableSortedMultiset;->descendingMultiset:Lorg/checkerframework/com/google/common/collect/UnmodifiableSortedMultiset;

    .line 67
    iput-object v0, p0, Lorg/checkerframework/com/google/common/collect/UnmodifiableSortedMultiset;->descendingMultiset:Lorg/checkerframework/com/google/common/collect/UnmodifiableSortedMultiset;

    return-object v0

    .line 69
    :cond_0
    return-object v0
.end method

.method public elementSet()Ljava/util/NavigableSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/NavigableSet<",
            "TE;>;"
        }
    .end annotation

    .line 56
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/UnmodifiableSortedMultiset;, "Lorg/checkerframework/com/google/common/collect/UnmodifiableSortedMultiset<TE;>;"
    invoke-super {p0}, Lorg/checkerframework/com/google/common/collect/Multisets$UnmodifiableMultiset;->elementSet()Ljava/util/Set;

    move-result-object v0

    check-cast v0, Ljava/util/NavigableSet;

    return-object v0
.end method

.method public bridge synthetic elementSet()Ljava/util/Set;
    .locals 1

    .line 32
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/UnmodifiableSortedMultiset;, "Lorg/checkerframework/com/google/common/collect/UnmodifiableSortedMultiset<TE;>;"
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/UnmodifiableSortedMultiset;->elementSet()Ljava/util/NavigableSet;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic elementSet()Ljava/util/SortedSet;
    .locals 1

    .line 32
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/UnmodifiableSortedMultiset;, "Lorg/checkerframework/com/google/common/collect/UnmodifiableSortedMultiset<TE;>;"
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/UnmodifiableSortedMultiset;->elementSet()Ljava/util/NavigableSet;

    move-result-object v0

    return-object v0
.end method

.method public firstEntry()Lorg/checkerframework/com/google/common/collect/Multiset$Entry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/checkerframework/com/google/common/collect/Multiset$Entry<",
            "TE;>;"
        }
    .end annotation

    .line 74
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/UnmodifiableSortedMultiset;, "Lorg/checkerframework/com/google/common/collect/UnmodifiableSortedMultiset<TE;>;"
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/UnmodifiableSortedMultiset;->delegate()Lorg/checkerframework/com/google/common/collect/SortedMultiset;

    move-result-object v0

    invoke-interface {v0}, Lorg/checkerframework/com/google/common/collect/SortedMultiset;->firstEntry()Lorg/checkerframework/com/google/common/collect/Multiset$Entry;

    move-result-object v0

    return-object v0
.end method

.method public headMultiset(Ljava/lang/Object;Lorg/checkerframework/com/google/common/collect/BoundType;)Lorg/checkerframework/com/google/common/collect/SortedMultiset;
    .locals 1
    .param p2, "boundType"    # Lorg/checkerframework/com/google/common/collect/BoundType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;",
            "Lorg/checkerframework/com/google/common/collect/BoundType;",
            ")",
            "Lorg/checkerframework/com/google/common/collect/SortedMultiset<",
            "TE;>;"
        }
    .end annotation

    .line 94
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/UnmodifiableSortedMultiset;, "Lorg/checkerframework/com/google/common/collect/UnmodifiableSortedMultiset<TE;>;"
    .local p1, "upperBound":Ljava/lang/Object;, "TE;"
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/UnmodifiableSortedMultiset;->delegate()Lorg/checkerframework/com/google/common/collect/SortedMultiset;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lorg/checkerframework/com/google/common/collect/SortedMultiset;->headMultiset(Ljava/lang/Object;Lorg/checkerframework/com/google/common/collect/BoundType;)Lorg/checkerframework/com/google/common/collect/SortedMultiset;

    move-result-object v0

    invoke-static {v0}, Lorg/checkerframework/com/google/common/collect/Multisets;->unmodifiableSortedMultiset(Lorg/checkerframework/com/google/common/collect/SortedMultiset;)Lorg/checkerframework/com/google/common/collect/SortedMultiset;

    move-result-object v0

    return-object v0
.end method

.method public lastEntry()Lorg/checkerframework/com/google/common/collect/Multiset$Entry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/checkerframework/com/google/common/collect/Multiset$Entry<",
            "TE;>;"
        }
    .end annotation

    .line 79
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/UnmodifiableSortedMultiset;, "Lorg/checkerframework/com/google/common/collect/UnmodifiableSortedMultiset<TE;>;"
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/UnmodifiableSortedMultiset;->delegate()Lorg/checkerframework/com/google/common/collect/SortedMultiset;

    move-result-object v0

    invoke-interface {v0}, Lorg/checkerframework/com/google/common/collect/SortedMultiset;->lastEntry()Lorg/checkerframework/com/google/common/collect/Multiset$Entry;

    move-result-object v0

    return-object v0
.end method

.method public pollFirstEntry()Lorg/checkerframework/com/google/common/collect/Multiset$Entry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/checkerframework/com/google/common/collect/Multiset$Entry<",
            "TE;>;"
        }
    .end annotation

    .line 84
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/UnmodifiableSortedMultiset;, "Lorg/checkerframework/com/google/common/collect/UnmodifiableSortedMultiset<TE;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public pollLastEntry()Lorg/checkerframework/com/google/common/collect/Multiset$Entry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/checkerframework/com/google/common/collect/Multiset$Entry<",
            "TE;>;"
        }
    .end annotation

    .line 89
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/UnmodifiableSortedMultiset;, "Lorg/checkerframework/com/google/common/collect/UnmodifiableSortedMultiset<TE;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public subMultiset(Ljava/lang/Object;Lorg/checkerframework/com/google/common/collect/BoundType;Ljava/lang/Object;Lorg/checkerframework/com/google/common/collect/BoundType;)Lorg/checkerframework/com/google/common/collect/SortedMultiset;
    .locals 1
    .param p2, "lowerBoundType"    # Lorg/checkerframework/com/google/common/collect/BoundType;
    .param p4, "upperBoundType"    # Lorg/checkerframework/com/google/common/collect/BoundType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;",
            "Lorg/checkerframework/com/google/common/collect/BoundType;",
            "TE;",
            "Lorg/checkerframework/com/google/common/collect/BoundType;",
            ")",
            "Lorg/checkerframework/com/google/common/collect/SortedMultiset<",
            "TE;>;"
        }
    .end annotation

    .line 100
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/UnmodifiableSortedMultiset;, "Lorg/checkerframework/com/google/common/collect/UnmodifiableSortedMultiset<TE;>;"
    .local p1, "lowerBound":Ljava/lang/Object;, "TE;"
    .local p3, "upperBound":Ljava/lang/Object;, "TE;"
    nop

    .line 101
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/UnmodifiableSortedMultiset;->delegate()Lorg/checkerframework/com/google/common/collect/SortedMultiset;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p4}, Lorg/checkerframework/com/google/common/collect/SortedMultiset;->subMultiset(Ljava/lang/Object;Lorg/checkerframework/com/google/common/collect/BoundType;Ljava/lang/Object;Lorg/checkerframework/com/google/common/collect/BoundType;)Lorg/checkerframework/com/google/common/collect/SortedMultiset;

    move-result-object v0

    .line 100
    invoke-static {v0}, Lorg/checkerframework/com/google/common/collect/Multisets;->unmodifiableSortedMultiset(Lorg/checkerframework/com/google/common/collect/SortedMultiset;)Lorg/checkerframework/com/google/common/collect/SortedMultiset;

    move-result-object v0

    return-object v0
.end method

.method public tailMultiset(Ljava/lang/Object;Lorg/checkerframework/com/google/common/collect/BoundType;)Lorg/checkerframework/com/google/common/collect/SortedMultiset;
    .locals 1
    .param p2, "boundType"    # Lorg/checkerframework/com/google/common/collect/BoundType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;",
            "Lorg/checkerframework/com/google/common/collect/BoundType;",
            ")",
            "Lorg/checkerframework/com/google/common/collect/SortedMultiset<",
            "TE;>;"
        }
    .end annotation

    .line 106
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/UnmodifiableSortedMultiset;, "Lorg/checkerframework/com/google/common/collect/UnmodifiableSortedMultiset<TE;>;"
    .local p1, "lowerBound":Ljava/lang/Object;, "TE;"
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/UnmodifiableSortedMultiset;->delegate()Lorg/checkerframework/com/google/common/collect/SortedMultiset;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lorg/checkerframework/com/google/common/collect/SortedMultiset;->tailMultiset(Ljava/lang/Object;Lorg/checkerframework/com/google/common/collect/BoundType;)Lorg/checkerframework/com/google/common/collect/SortedMultiset;

    move-result-object v0

    invoke-static {v0}, Lorg/checkerframework/com/google/common/collect/Multisets;->unmodifiableSortedMultiset(Lorg/checkerframework/com/google/common/collect/SortedMultiset;)Lorg/checkerframework/com/google/common/collect/SortedMultiset;

    move-result-object v0

    return-object v0
.end method
