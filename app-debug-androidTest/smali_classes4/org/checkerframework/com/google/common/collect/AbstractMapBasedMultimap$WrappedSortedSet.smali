.class Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultimap$WrappedSortedSet;
.super Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultimap$WrappedCollection;
.source "AbstractMapBasedMultimap.java"

# interfaces
.implements Ljava/util/SortedSet;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultimap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "WrappedSortedSet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultimap<",
        "TK;TV;>.WrappedCollection;",
        "Ljava/util/SortedSet<",
        "TV;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultimap;


# direct methods
.method constructor <init>(Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultimap;Ljava/lang/Object;Ljava/util/SortedSet;Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultimap$WrappedCollection;)V
    .locals 0
    .param p1, "this$0"    # Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultimap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Ljava/util/SortedSet<",
            "TV;>;",
            "Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultimap<",
            "TK;TV;>.WrappedCollection;)V"
        }
    .end annotation

    .line 616
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultimap$WrappedSortedSet;, "Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultimap<TK;TV;>.WrappedSortedSet;"
    .local p2, "key":Ljava/lang/Object;, "TK;"
    .local p3, "delegate":Ljava/util/SortedSet;, "Ljava/util/SortedSet<TV;>;"
    .local p4, "ancestor":Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultimap$WrappedCollection;, "Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultimap<TK;TV;>.WrappedCollection;"
    iput-object p1, p0, Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultimap$WrappedSortedSet;->this$0:Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultimap;

    .line 617
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultimap$WrappedCollection;-><init>(Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultimap;Ljava/lang/Object;Ljava/util/Collection;Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultimap$WrappedCollection;)V

    .line 618
    return-void
.end method


# virtual methods
.method public comparator()Ljava/util/Comparator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator<",
            "-TV;>;"
        }
    .end annotation

    .line 626
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultimap$WrappedSortedSet;, "Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultimap<TK;TV;>.WrappedSortedSet;"
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultimap$WrappedSortedSet;->getSortedSetDelegate()Ljava/util/SortedSet;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/SortedSet;->comparator()Ljava/util/Comparator;

    move-result-object v0

    return-object v0
.end method

.method public first()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .line 631
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultimap$WrappedSortedSet;, "Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultimap<TK;TV;>.WrappedSortedSet;"
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultimap$WrappedSortedSet;->refreshIfEmpty()V

    .line 632
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultimap$WrappedSortedSet;->getSortedSetDelegate()Ljava/util/SortedSet;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/SortedSet;->first()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method getSortedSetDelegate()Ljava/util/SortedSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/SortedSet<",
            "TV;>;"
        }
    .end annotation

    .line 621
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultimap$WrappedSortedSet;, "Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultimap<TK;TV;>.WrappedSortedSet;"
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultimap$WrappedSortedSet;->getDelegate()Ljava/util/Collection;

    move-result-object v0

    check-cast v0, Ljava/util/SortedSet;

    return-object v0
.end method

.method public headSet(Ljava/lang/Object;)Ljava/util/SortedSet;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)",
            "Ljava/util/SortedSet<",
            "TV;>;"
        }
    .end annotation

    .line 643
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultimap$WrappedSortedSet;, "Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultimap<TK;TV;>.WrappedSortedSet;"
    .local p1, "toElement":Ljava/lang/Object;, "TV;"
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultimap$WrappedSortedSet;->refreshIfEmpty()V

    .line 644
    new-instance v0, Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultimap$WrappedSortedSet;

    iget-object v1, p0, Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultimap$WrappedSortedSet;->this$0:Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultimap;

    .line 645
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultimap$WrappedSortedSet;->getKey()Ljava/lang/Object;

    move-result-object v2

    .line 646
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultimap$WrappedSortedSet;->getSortedSetDelegate()Ljava/util/SortedSet;

    move-result-object v3

    invoke-interface {v3, p1}, Ljava/util/SortedSet;->headSet(Ljava/lang/Object;)Ljava/util/SortedSet;

    move-result-object v3

    .line 647
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultimap$WrappedSortedSet;->getAncestor()Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultimap$WrappedCollection;

    move-result-object v4

    if-nez v4, :cond_0

    move-object v4, p0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultimap$WrappedSortedSet;->getAncestor()Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultimap$WrappedCollection;

    move-result-object v4

    :goto_0
    invoke-direct {v0, v1, v2, v3, v4}, Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultimap$WrappedSortedSet;-><init>(Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultimap;Ljava/lang/Object;Ljava/util/SortedSet;Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultimap$WrappedCollection;)V

    .line 644
    return-object v0
.end method

.method public last()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .line 637
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultimap$WrappedSortedSet;, "Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultimap<TK;TV;>.WrappedSortedSet;"
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultimap$WrappedSortedSet;->refreshIfEmpty()V

    .line 638
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultimap$WrappedSortedSet;->getSortedSetDelegate()Ljava/util/SortedSet;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/SortedSet;->last()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public subSet(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedSet;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;TV;)",
            "Ljava/util/SortedSet<",
            "TV;>;"
        }
    .end annotation

    .line 652
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultimap$WrappedSortedSet;, "Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultimap<TK;TV;>.WrappedSortedSet;"
    .local p1, "fromElement":Ljava/lang/Object;, "TV;"
    .local p2, "toElement":Ljava/lang/Object;, "TV;"
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultimap$WrappedSortedSet;->refreshIfEmpty()V

    .line 653
    new-instance v0, Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultimap$WrappedSortedSet;

    iget-object v1, p0, Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultimap$WrappedSortedSet;->this$0:Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultimap;

    .line 654
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultimap$WrappedSortedSet;->getKey()Ljava/lang/Object;

    move-result-object v2

    .line 655
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultimap$WrappedSortedSet;->getSortedSetDelegate()Ljava/util/SortedSet;

    move-result-object v3

    invoke-interface {v3, p1, p2}, Ljava/util/SortedSet;->subSet(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedSet;

    move-result-object v3

    .line 656
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultimap$WrappedSortedSet;->getAncestor()Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultimap$WrappedCollection;

    move-result-object v4

    if-nez v4, :cond_0

    move-object v4, p0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultimap$WrappedSortedSet;->getAncestor()Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultimap$WrappedCollection;

    move-result-object v4

    :goto_0
    invoke-direct {v0, v1, v2, v3, v4}, Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultimap$WrappedSortedSet;-><init>(Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultimap;Ljava/lang/Object;Ljava/util/SortedSet;Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultimap$WrappedCollection;)V

    .line 653
    return-object v0
.end method

.method public tailSet(Ljava/lang/Object;)Ljava/util/SortedSet;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)",
            "Ljava/util/SortedSet<",
            "TV;>;"
        }
    .end annotation

    .line 661
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultimap$WrappedSortedSet;, "Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultimap<TK;TV;>.WrappedSortedSet;"
    .local p1, "fromElement":Ljava/lang/Object;, "TV;"
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultimap$WrappedSortedSet;->refreshIfEmpty()V

    .line 662
    new-instance v0, Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultimap$WrappedSortedSet;

    iget-object v1, p0, Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultimap$WrappedSortedSet;->this$0:Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultimap;

    .line 663
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultimap$WrappedSortedSet;->getKey()Ljava/lang/Object;

    move-result-object v2

    .line 664
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultimap$WrappedSortedSet;->getSortedSetDelegate()Ljava/util/SortedSet;

    move-result-object v3

    invoke-interface {v3, p1}, Ljava/util/SortedSet;->tailSet(Ljava/lang/Object;)Ljava/util/SortedSet;

    move-result-object v3

    .line 665
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultimap$WrappedSortedSet;->getAncestor()Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultimap$WrappedCollection;

    move-result-object v4

    if-nez v4, :cond_0

    move-object v4, p0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultimap$WrappedSortedSet;->getAncestor()Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultimap$WrappedCollection;

    move-result-object v4

    :goto_0
    invoke-direct {v0, v1, v2, v3, v4}, Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultimap$WrappedSortedSet;-><init>(Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultimap;Ljava/lang/Object;Ljava/util/SortedSet;Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultimap$WrappedCollection;)V

    .line 662
    return-object v0
.end method
