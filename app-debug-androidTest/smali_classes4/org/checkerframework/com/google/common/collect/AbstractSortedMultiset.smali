.class abstract Lorg/checkerframework/com/google/common/collect/AbstractSortedMultiset;
.super Lorg/checkerframework/com/google/common/collect/AbstractMultiset;
.source "AbstractSortedMultiset.java"

# interfaces
.implements Lorg/checkerframework/com/google/common/collect/SortedMultiset;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/checkerframework/com/google/common/collect/AbstractMultiset<",
        "TE;>;",
        "Lorg/checkerframework/com/google/common/collect/SortedMultiset<",
        "TE;>;"
    }
.end annotation


# instance fields
.field final comparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "-TE;>;"
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/com/google/common/collect/GwtTransient;
    .end annotation
.end field

.field private transient descendingMultiset:Lorg/checkerframework/com/google/common/collect/SortedMultiset;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/checkerframework/com/google/common/collect/SortedMultiset<",
            "TE;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .line 43
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/AbstractSortedMultiset;, "Lorg/checkerframework/com/google/common/collect/AbstractSortedMultiset<TE;>;"
    invoke-static {}, Lorg/checkerframework/com/google/common/collect/Ordering;->natural()Lorg/checkerframework/com/google/common/collect/Ordering;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/checkerframework/com/google/common/collect/AbstractSortedMultiset;-><init>(Ljava/util/Comparator;)V

    .line 44
    return-void
.end method

.method constructor <init>(Ljava/util/Comparator;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator<",
            "-TE;>;)V"
        }
    .end annotation

    .line 46
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/AbstractSortedMultiset;, "Lorg/checkerframework/com/google/common/collect/AbstractSortedMultiset<TE;>;"
    .local p1, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<-TE;>;"
    invoke-direct {p0}, Lorg/checkerframework/com/google/common/collect/AbstractMultiset;-><init>()V

    .line 47
    invoke-static {p1}, Lorg/checkerframework/com/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Comparator;

    iput-object v0, p0, Lorg/checkerframework/com/google/common/collect/AbstractSortedMultiset;->comparator:Ljava/util/Comparator;

    .line 48
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

    .line 62
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/AbstractSortedMultiset;, "Lorg/checkerframework/com/google/common/collect/AbstractSortedMultiset<TE;>;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/AbstractSortedMultiset;->comparator:Ljava/util/Comparator;

    return-object v0
.end method

.method createDescendingMultiset()Lorg/checkerframework/com/google/common/collect/SortedMultiset;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/checkerframework/com/google/common/collect/SortedMultiset<",
            "TE;>;"
        }
    .end annotation

    .line 145
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/AbstractSortedMultiset;, "Lorg/checkerframework/com/google/common/collect/AbstractSortedMultiset<TE;>;"
    new-instance v0, Lorg/checkerframework/com/google/common/collect/AbstractSortedMultiset$1DescendingMultisetImpl;

    invoke-direct {v0, p0}, Lorg/checkerframework/com/google/common/collect/AbstractSortedMultiset$1DescendingMultisetImpl;-><init>(Lorg/checkerframework/com/google/common/collect/AbstractSortedMultiset;)V

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

    .line 57
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/AbstractSortedMultiset;, "Lorg/checkerframework/com/google/common/collect/AbstractSortedMultiset<TE;>;"
    new-instance v0, Lorg/checkerframework/com/google/common/collect/SortedMultisets$NavigableElementSet;

    invoke-direct {v0, p0}, Lorg/checkerframework/com/google/common/collect/SortedMultisets$NavigableElementSet;-><init>(Lorg/checkerframework/com/google/common/collect/SortedMultiset;)V

    return-object v0
.end method

.method bridge synthetic createElementSet()Ljava/util/Set;
    .locals 1

    .line 36
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/AbstractSortedMultiset;, "Lorg/checkerframework/com/google/common/collect/AbstractSortedMultiset<TE;>;"
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/AbstractSortedMultiset;->createElementSet()Ljava/util/NavigableSet;

    move-result-object v0

    return-object v0
.end method

.method abstract descendingEntryIterator()Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lorg/checkerframework/com/google/common/collect/Multiset$Entry<",
            "TE;>;>;"
        }
    .end annotation
.end method

.method descendingIterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TE;>;"
        }
    .end annotation

    .line 116
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/AbstractSortedMultiset;, "Lorg/checkerframework/com/google/common/collect/AbstractSortedMultiset<TE;>;"
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/AbstractSortedMultiset;->descendingMultiset()Lorg/checkerframework/com/google/common/collect/SortedMultiset;

    move-result-object v0

    invoke-static {v0}, Lorg/checkerframework/com/google/common/collect/Multisets;->iteratorImpl(Lorg/checkerframework/com/google/common/collect/Multiset;)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public descendingMultiset()Lorg/checkerframework/com/google/common/collect/SortedMultiset;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/checkerframework/com/google/common/collect/SortedMultiset<",
            "TE;>;"
        }
    .end annotation

    .line 123
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/AbstractSortedMultiset;, "Lorg/checkerframework/com/google/common/collect/AbstractSortedMultiset<TE;>;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/AbstractSortedMultiset;->descendingMultiset:Lorg/checkerframework/com/google/common/collect/SortedMultiset;

    .line 124
    .local v0, "result":Lorg/checkerframework/com/google/common/collect/SortedMultiset;, "Lorg/checkerframework/com/google/common/collect/SortedMultiset<TE;>;"
    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/AbstractSortedMultiset;->createDescendingMultiset()Lorg/checkerframework/com/google/common/collect/SortedMultiset;

    move-result-object v1

    iput-object v1, p0, Lorg/checkerframework/com/google/common/collect/AbstractSortedMultiset;->descendingMultiset:Lorg/checkerframework/com/google/common/collect/SortedMultiset;

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    return-object v1
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

    .line 52
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/AbstractSortedMultiset;, "Lorg/checkerframework/com/google/common/collect/AbstractSortedMultiset<TE;>;"
    invoke-super {p0}, Lorg/checkerframework/com/google/common/collect/AbstractMultiset;->elementSet()Ljava/util/Set;

    move-result-object v0

    check-cast v0, Ljava/util/NavigableSet;

    return-object v0
.end method

.method public bridge synthetic elementSet()Ljava/util/Set;
    .locals 1

    .line 36
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/AbstractSortedMultiset;, "Lorg/checkerframework/com/google/common/collect/AbstractSortedMultiset<TE;>;"
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/AbstractSortedMultiset;->elementSet()Ljava/util/NavigableSet;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic elementSet()Ljava/util/SortedSet;
    .locals 1

    .line 36
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/AbstractSortedMultiset;, "Lorg/checkerframework/com/google/common/collect/AbstractSortedMultiset<TE;>;"
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/AbstractSortedMultiset;->elementSet()Ljava/util/NavigableSet;

    move-result-object v0

    return-object v0
.end method

.method public firstEntry()Lorg/checkerframework/com/google/common/collect/Multiset$Entry;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/checkerframework/com/google/common/collect/Multiset$Entry<",
            "TE;>;"
        }
    .end annotation

    .line 67
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/AbstractSortedMultiset;, "Lorg/checkerframework/com/google/common/collect/AbstractSortedMultiset<TE;>;"
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/AbstractSortedMultiset;->entryIterator()Ljava/util/Iterator;

    move-result-object v0

    .line 68
    .local v0, "entryIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/checkerframework/com/google/common/collect/Multiset$Entry<TE;>;>;"
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/checkerframework/com/google/common/collect/Multiset$Entry;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1
.end method

.method public lastEntry()Lorg/checkerframework/com/google/common/collect/Multiset$Entry;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/checkerframework/com/google/common/collect/Multiset$Entry<",
            "TE;>;"
        }
    .end annotation

    .line 73
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/AbstractSortedMultiset;, "Lorg/checkerframework/com/google/common/collect/AbstractSortedMultiset<TE;>;"
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/AbstractSortedMultiset;->descendingEntryIterator()Ljava/util/Iterator;

    move-result-object v0

    .line 74
    .local v0, "entryIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/checkerframework/com/google/common/collect/Multiset$Entry<TE;>;>;"
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/checkerframework/com/google/common/collect/Multiset$Entry;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1
.end method

.method public pollFirstEntry()Lorg/checkerframework/com/google/common/collect/Multiset$Entry;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/checkerframework/com/google/common/collect/Multiset$Entry<",
            "TE;>;"
        }
    .end annotation

    .line 79
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/AbstractSortedMultiset;, "Lorg/checkerframework/com/google/common/collect/AbstractSortedMultiset<TE;>;"
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/AbstractSortedMultiset;->entryIterator()Ljava/util/Iterator;

    move-result-object v0

    .line 80
    .local v0, "entryIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/checkerframework/com/google/common/collect/Multiset$Entry<TE;>;>;"
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 81
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/checkerframework/com/google/common/collect/Multiset$Entry;

    .line 82
    .local v1, "result":Lorg/checkerframework/com/google/common/collect/Multiset$Entry;, "Lorg/checkerframework/com/google/common/collect/Multiset$Entry<TE;>;"
    invoke-interface {v1}, Lorg/checkerframework/com/google/common/collect/Multiset$Entry;->getElement()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1}, Lorg/checkerframework/com/google/common/collect/Multiset$Entry;->getCount()I

    move-result v3

    invoke-static {v2, v3}, Lorg/checkerframework/com/google/common/collect/Multisets;->immutableEntry(Ljava/lang/Object;I)Lorg/checkerframework/com/google/common/collect/Multiset$Entry;

    move-result-object v1

    .line 83
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 84
    return-object v1

    .line 86
    .end local v1    # "result":Lorg/checkerframework/com/google/common/collect/Multiset$Entry;, "Lorg/checkerframework/com/google/common/collect/Multiset$Entry<TE;>;"
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public pollLastEntry()Lorg/checkerframework/com/google/common/collect/Multiset$Entry;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/checkerframework/com/google/common/collect/Multiset$Entry<",
            "TE;>;"
        }
    .end annotation

    .line 91
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/AbstractSortedMultiset;, "Lorg/checkerframework/com/google/common/collect/AbstractSortedMultiset<TE;>;"
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/AbstractSortedMultiset;->descendingEntryIterator()Ljava/util/Iterator;

    move-result-object v0

    .line 92
    .local v0, "entryIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/checkerframework/com/google/common/collect/Multiset$Entry<TE;>;>;"
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 93
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/checkerframework/com/google/common/collect/Multiset$Entry;

    .line 94
    .local v1, "result":Lorg/checkerframework/com/google/common/collect/Multiset$Entry;, "Lorg/checkerframework/com/google/common/collect/Multiset$Entry<TE;>;"
    invoke-interface {v1}, Lorg/checkerframework/com/google/common/collect/Multiset$Entry;->getElement()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1}, Lorg/checkerframework/com/google/common/collect/Multiset$Entry;->getCount()I

    move-result v3

    invoke-static {v2, v3}, Lorg/checkerframework/com/google/common/collect/Multisets;->immutableEntry(Ljava/lang/Object;I)Lorg/checkerframework/com/google/common/collect/Multiset$Entry;

    move-result-object v1

    .line 95
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 96
    return-object v1

    .line 98
    .end local v1    # "result":Lorg/checkerframework/com/google/common/collect/Multiset$Entry;, "Lorg/checkerframework/com/google/common/collect/Multiset$Entry<TE;>;"
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public subMultiset(Ljava/lang/Object;Lorg/checkerframework/com/google/common/collect/BoundType;Ljava/lang/Object;Lorg/checkerframework/com/google/common/collect/BoundType;)Lorg/checkerframework/com/google/common/collect/SortedMultiset;
    .locals 1
    .param p2, "fromBoundType"    # Lorg/checkerframework/com/google/common/collect/BoundType;
    .param p4, "toBoundType"    # Lorg/checkerframework/com/google/common/collect/BoundType;
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

    .line 108
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/AbstractSortedMultiset;, "Lorg/checkerframework/com/google/common/collect/AbstractSortedMultiset<TE;>;"
    .local p1, "fromElement":Ljava/lang/Object;, "TE;"
    .local p3, "toElement":Ljava/lang/Object;, "TE;"
    invoke-static {p2}, Lorg/checkerframework/com/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    invoke-static {p4}, Lorg/checkerframework/com/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/google/common/collect/AbstractSortedMultiset;->tailMultiset(Ljava/lang/Object;Lorg/checkerframework/com/google/common/collect/BoundType;)Lorg/checkerframework/com/google/common/collect/SortedMultiset;

    move-result-object v0

    invoke-interface {v0, p3, p4}, Lorg/checkerframework/com/google/common/collect/SortedMultiset;->headMultiset(Ljava/lang/Object;Lorg/checkerframework/com/google/common/collect/BoundType;)Lorg/checkerframework/com/google/common/collect/SortedMultiset;

    move-result-object v0

    return-object v0
.end method
