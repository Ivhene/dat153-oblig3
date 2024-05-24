.class Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultimap$WrappedNavigableSet;
.super Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultimap$WrappedSortedSet;
.source "AbstractMapBasedMultimap.java"

# interfaces
.implements Ljava/util/NavigableSet;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultimap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "WrappedNavigableSet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultimap<",
        "TK;TV;>.WrappedSortedSet;",
        "Ljava/util/NavigableSet<",
        "TV;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultimap;


# direct methods
.method constructor <init>(Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultimap;Ljava/lang/Object;Ljava/util/NavigableSet;Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultimap$WrappedCollection;)V
    .locals 0
    .param p1, "this$0"    # Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultimap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Ljava/util/NavigableSet<",
            "TV;>;",
            "Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultimap<",
            "TK;TV;>.WrappedCollection;)V"
        }
    .end annotation

    .line 672
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultimap$WrappedNavigableSet;, "Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultimap<TK;TV;>.WrappedNavigableSet;"
    .local p2, "key":Ljava/lang/Object;, "TK;"
    .local p3, "delegate":Ljava/util/NavigableSet;, "Ljava/util/NavigableSet<TV;>;"
    .local p4, "ancestor":Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultimap$WrappedCollection;, "Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultimap<TK;TV;>.WrappedCollection;"
    iput-object p1, p0, Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultimap$WrappedNavigableSet;->this$0:Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultimap;

    .line 673
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultimap$WrappedSortedSet;-><init>(Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultimap;Ljava/lang/Object;Ljava/util/SortedSet;Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultimap$WrappedCollection;)V

    .line 674
    return-void
.end method

.method private wrap(Ljava/util/NavigableSet;)Ljava/util/NavigableSet;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/NavigableSet<",
            "TV;>;)",
            "Ljava/util/NavigableSet<",
            "TV;>;"
        }
    .end annotation

    .line 712
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultimap$WrappedNavigableSet;, "Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultimap<TK;TV;>.WrappedNavigableSet;"
    .local p1, "wrapped":Ljava/util/NavigableSet;, "Ljava/util/NavigableSet<TV;>;"
    new-instance v0, Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultimap$WrappedNavigableSet;

    iget-object v1, p0, Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultimap$WrappedNavigableSet;->this$0:Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultimap;

    iget-object v2, p0, Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultimap$WrappedNavigableSet;->key:Ljava/lang/Object;

    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultimap$WrappedNavigableSet;->getAncestor()Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultimap$WrappedCollection;

    move-result-object v3

    if-nez v3, :cond_0

    move-object v3, p0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultimap$WrappedNavigableSet;->getAncestor()Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultimap$WrappedCollection;

    move-result-object v3

    :goto_0
    invoke-direct {v0, v1, v2, p1, v3}, Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultimap$WrappedNavigableSet;-><init>(Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultimap;Ljava/lang/Object;Ljava/util/NavigableSet;Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultimap$WrappedCollection;)V

    return-object v0
.end method


# virtual methods
.method public ceiling(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)TV;"
        }
    .end annotation

    .line 693
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultimap$WrappedNavigableSet;, "Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultimap<TK;TV;>.WrappedNavigableSet;"
    .local p1, "v":Ljava/lang/Object;, "TV;"
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultimap$WrappedNavigableSet;->getSortedSetDelegate()Ljava/util/NavigableSet;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/NavigableSet;->ceiling(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public descendingIterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TV;>;"
        }
    .end annotation

    .line 722
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultimap$WrappedNavigableSet;, "Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultimap<TK;TV;>.WrappedNavigableSet;"
    new-instance v0, Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultimap$WrappedCollection$WrappedIterator;

    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultimap$WrappedNavigableSet;->getSortedSetDelegate()Ljava/util/NavigableSet;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/NavigableSet;->descendingIterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultimap$WrappedCollection$WrappedIterator;-><init>(Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultimap$WrappedCollection;Ljava/util/Iterator;)V

    return-object v0
.end method

.method public descendingSet()Ljava/util/NavigableSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/NavigableSet<",
            "TV;>;"
        }
    .end annotation

    .line 717
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultimap$WrappedNavigableSet;, "Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultimap<TK;TV;>.WrappedNavigableSet;"
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultimap$WrappedNavigableSet;->getSortedSetDelegate()Ljava/util/NavigableSet;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/NavigableSet;->descendingSet()Ljava/util/NavigableSet;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultimap$WrappedNavigableSet;->wrap(Ljava/util/NavigableSet;)Ljava/util/NavigableSet;

    move-result-object v0

    return-object v0
.end method

.method public floor(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)TV;"
        }
    .end annotation

    .line 688
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultimap$WrappedNavigableSet;, "Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultimap<TK;TV;>.WrappedNavigableSet;"
    .local p1, "v":Ljava/lang/Object;, "TV;"
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultimap$WrappedNavigableSet;->getSortedSetDelegate()Ljava/util/NavigableSet;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/NavigableSet;->floor(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method getSortedSetDelegate()Ljava/util/NavigableSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/NavigableSet<",
            "TV;>;"
        }
    .end annotation

    .line 678
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultimap$WrappedNavigableSet;, "Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultimap<TK;TV;>.WrappedNavigableSet;"
    invoke-super {p0}, Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultimap$WrappedSortedSet;->getSortedSetDelegate()Ljava/util/SortedSet;

    move-result-object v0

    check-cast v0, Ljava/util/NavigableSet;

    return-object v0
.end method

.method bridge synthetic getSortedSetDelegate()Ljava/util/SortedSet;
    .locals 1

    .line 669
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultimap$WrappedNavigableSet;, "Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultimap<TK;TV;>.WrappedNavigableSet;"
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultimap$WrappedNavigableSet;->getSortedSetDelegate()Ljava/util/NavigableSet;

    move-result-object v0

    return-object v0
.end method

.method public headSet(Ljava/lang/Object;Z)Ljava/util/NavigableSet;
    .locals 1
    .param p2, "inclusive"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;Z)",
            "Ljava/util/NavigableSet<",
            "TV;>;"
        }
    .end annotation

    .line 734
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultimap$WrappedNavigableSet;, "Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultimap<TK;TV;>.WrappedNavigableSet;"
    .local p1, "toElement":Ljava/lang/Object;, "TV;"
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultimap$WrappedNavigableSet;->getSortedSetDelegate()Ljava/util/NavigableSet;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/NavigableSet;->headSet(Ljava/lang/Object;Z)Ljava/util/NavigableSet;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultimap$WrappedNavigableSet;->wrap(Ljava/util/NavigableSet;)Ljava/util/NavigableSet;

    move-result-object v0

    return-object v0
.end method

.method public higher(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)TV;"
        }
    .end annotation

    .line 698
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultimap$WrappedNavigableSet;, "Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultimap<TK;TV;>.WrappedNavigableSet;"
    .local p1, "v":Ljava/lang/Object;, "TV;"
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultimap$WrappedNavigableSet;->getSortedSetDelegate()Ljava/util/NavigableSet;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/NavigableSet;->higher(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public lower(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)TV;"
        }
    .end annotation

    .line 683
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultimap$WrappedNavigableSet;, "Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultimap<TK;TV;>.WrappedNavigableSet;"
    .local p1, "v":Ljava/lang/Object;, "TV;"
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultimap$WrappedNavigableSet;->getSortedSetDelegate()Ljava/util/NavigableSet;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/NavigableSet;->lower(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public pollFirst()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .line 703
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultimap$WrappedNavigableSet;, "Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultimap<TK;TV;>.WrappedNavigableSet;"
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultimap$WrappedNavigableSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0}, Lorg/checkerframework/com/google/common/collect/Iterators;->pollNext(Ljava/util/Iterator;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public pollLast()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .line 708
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultimap$WrappedNavigableSet;, "Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultimap<TK;TV;>.WrappedNavigableSet;"
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultimap$WrappedNavigableSet;->descendingIterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0}, Lorg/checkerframework/com/google/common/collect/Iterators;->pollNext(Ljava/util/Iterator;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public subSet(Ljava/lang/Object;ZLjava/lang/Object;Z)Ljava/util/NavigableSet;
    .locals 1
    .param p2, "fromInclusive"    # Z
    .param p4, "toInclusive"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;ZTV;Z)",
            "Ljava/util/NavigableSet<",
            "TV;>;"
        }
    .end annotation

    .line 728
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultimap$WrappedNavigableSet;, "Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultimap<TK;TV;>.WrappedNavigableSet;"
    .local p1, "fromElement":Ljava/lang/Object;, "TV;"
    .local p3, "toElement":Ljava/lang/Object;, "TV;"
    nop

    .line 729
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultimap$WrappedNavigableSet;->getSortedSetDelegate()Ljava/util/NavigableSet;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p4}, Ljava/util/NavigableSet;->subSet(Ljava/lang/Object;ZLjava/lang/Object;Z)Ljava/util/NavigableSet;

    move-result-object v0

    .line 728
    invoke-direct {p0, v0}, Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultimap$WrappedNavigableSet;->wrap(Ljava/util/NavigableSet;)Ljava/util/NavigableSet;

    move-result-object v0

    return-object v0
.end method

.method public tailSet(Ljava/lang/Object;Z)Ljava/util/NavigableSet;
    .locals 1
    .param p2, "inclusive"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;Z)",
            "Ljava/util/NavigableSet<",
            "TV;>;"
        }
    .end annotation

    .line 739
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultimap$WrappedNavigableSet;, "Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultimap<TK;TV;>.WrappedNavigableSet;"
    .local p1, "fromElement":Ljava/lang/Object;, "TV;"
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultimap$WrappedNavigableSet;->getSortedSetDelegate()Ljava/util/NavigableSet;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/NavigableSet;->tailSet(Ljava/lang/Object;Z)Ljava/util/NavigableSet;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultimap$WrappedNavigableSet;->wrap(Ljava/util/NavigableSet;)Ljava/util/NavigableSet;

    move-result-object v0

    return-object v0
.end method
