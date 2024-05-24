.class Lorg/checkerframework/com/google/common/collect/Sets$FilteredNavigableSet;
.super Lorg/checkerframework/com/google/common/collect/Sets$FilteredSortedSet;
.source "Sets.java"

# interfaces
.implements Ljava/util/NavigableSet;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/com/google/common/collect/Sets;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FilteredNavigableSet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/checkerframework/com/google/common/collect/Sets$FilteredSortedSet<",
        "TE;>;",
        "Ljava/util/NavigableSet<",
        "TE;>;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/util/NavigableSet;Lorg/checkerframework/com/google/common/base/Predicate;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/NavigableSet<",
            "TE;>;",
            "Lorg/checkerframework/com/google/common/base/Predicate<",
            "-TE;>;)V"
        }
    .end annotation

    .line 1202
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/Sets$FilteredNavigableSet;, "Lorg/checkerframework/com/google/common/collect/Sets$FilteredNavigableSet<TE;>;"
    .local p1, "unfiltered":Ljava/util/NavigableSet;, "Ljava/util/NavigableSet<TE;>;"
    .local p2, "predicate":Lorg/checkerframework/com/google/common/base/Predicate;, "Lorg/checkerframework/com/google/common/base/Predicate<-TE;>;"
    invoke-direct {p0, p1, p2}, Lorg/checkerframework/com/google/common/collect/Sets$FilteredSortedSet;-><init>(Ljava/util/SortedSet;Lorg/checkerframework/com/google/common/base/Predicate;)V

    .line 1203
    return-void
.end method


# virtual methods
.method public ceiling(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)TE;"
        }
    .end annotation

    .line 1221
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/Sets$FilteredNavigableSet;, "Lorg/checkerframework/com/google/common/collect/Sets$FilteredNavigableSet<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/Sets$FilteredNavigableSet;->unfiltered()Ljava/util/NavigableSet;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, p1, v1}, Ljava/util/NavigableSet;->tailSet(Ljava/lang/Object;Z)Ljava/util/NavigableSet;

    move-result-object v0

    iget-object v1, p0, Lorg/checkerframework/com/google/common/collect/Sets$FilteredNavigableSet;->predicate:Lorg/checkerframework/com/google/common/base/Predicate;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lorg/checkerframework/com/google/common/collect/Iterables;->find(Ljava/lang/Iterable;Lorg/checkerframework/com/google/common/base/Predicate;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public descendingIterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TE;>;"
        }
    .end annotation

    .line 1246
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/Sets$FilteredNavigableSet;, "Lorg/checkerframework/com/google/common/collect/Sets$FilteredNavigableSet<TE;>;"
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/Sets$FilteredNavigableSet;->unfiltered()Ljava/util/NavigableSet;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/NavigableSet;->descendingIterator()Ljava/util/Iterator;

    move-result-object v0

    iget-object v1, p0, Lorg/checkerframework/com/google/common/collect/Sets$FilteredNavigableSet;->predicate:Lorg/checkerframework/com/google/common/base/Predicate;

    invoke-static {v0, v1}, Lorg/checkerframework/com/google/common/collect/Iterators;->filter(Ljava/util/Iterator;Lorg/checkerframework/com/google/common/base/Predicate;)Lorg/checkerframework/com/google/common/collect/UnmodifiableIterator;

    move-result-object v0

    return-object v0
.end method

.method public descendingSet()Ljava/util/NavigableSet;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/NavigableSet<",
            "TE;>;"
        }
    .end annotation

    .line 1241
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/Sets$FilteredNavigableSet;, "Lorg/checkerframework/com/google/common/collect/Sets$FilteredNavigableSet<TE;>;"
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/Sets$FilteredNavigableSet;->unfiltered()Ljava/util/NavigableSet;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/NavigableSet;->descendingSet()Ljava/util/NavigableSet;

    move-result-object v0

    iget-object v1, p0, Lorg/checkerframework/com/google/common/collect/Sets$FilteredNavigableSet;->predicate:Lorg/checkerframework/com/google/common/base/Predicate;

    invoke-static {v0, v1}, Lorg/checkerframework/com/google/common/collect/Sets;->filter(Ljava/util/NavigableSet;Lorg/checkerframework/com/google/common/base/Predicate;)Ljava/util/NavigableSet;

    move-result-object v0

    return-object v0
.end method

.method public floor(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)TE;"
        }
    .end annotation

    .line 1216
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/Sets$FilteredNavigableSet;, "Lorg/checkerframework/com/google/common/collect/Sets$FilteredNavigableSet<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/Sets$FilteredNavigableSet;->unfiltered()Ljava/util/NavigableSet;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, p1, v1}, Ljava/util/NavigableSet;->headSet(Ljava/lang/Object;Z)Ljava/util/NavigableSet;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/NavigableSet;->descendingIterator()Ljava/util/Iterator;

    move-result-object v0

    iget-object v1, p0, Lorg/checkerframework/com/google/common/collect/Sets$FilteredNavigableSet;->predicate:Lorg/checkerframework/com/google/common/base/Predicate;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lorg/checkerframework/com/google/common/collect/Iterators;->find(Ljava/util/Iterator;Lorg/checkerframework/com/google/common/base/Predicate;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public headSet(Ljava/lang/Object;Z)Ljava/util/NavigableSet;
    .locals 2
    .param p2, "inclusive"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;Z)",
            "Ljava/util/NavigableSet<",
            "TE;>;"
        }
    .end annotation

    .line 1263
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/Sets$FilteredNavigableSet;, "Lorg/checkerframework/com/google/common/collect/Sets$FilteredNavigableSet<TE;>;"
    .local p1, "toElement":Ljava/lang/Object;, "TE;"
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/Sets$FilteredNavigableSet;->unfiltered()Ljava/util/NavigableSet;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/NavigableSet;->headSet(Ljava/lang/Object;Z)Ljava/util/NavigableSet;

    move-result-object v0

    iget-object v1, p0, Lorg/checkerframework/com/google/common/collect/Sets$FilteredNavigableSet;->predicate:Lorg/checkerframework/com/google/common/base/Predicate;

    invoke-static {v0, v1}, Lorg/checkerframework/com/google/common/collect/Sets;->filter(Ljava/util/NavigableSet;Lorg/checkerframework/com/google/common/base/Predicate;)Ljava/util/NavigableSet;

    move-result-object v0

    return-object v0
.end method

.method public higher(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)TE;"
        }
    .end annotation

    .line 1226
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/Sets$FilteredNavigableSet;, "Lorg/checkerframework/com/google/common/collect/Sets$FilteredNavigableSet<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/Sets$FilteredNavigableSet;->unfiltered()Ljava/util/NavigableSet;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Ljava/util/NavigableSet;->tailSet(Ljava/lang/Object;Z)Ljava/util/NavigableSet;

    move-result-object v0

    iget-object v1, p0, Lorg/checkerframework/com/google/common/collect/Sets$FilteredNavigableSet;->predicate:Lorg/checkerframework/com/google/common/base/Predicate;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lorg/checkerframework/com/google/common/collect/Iterables;->find(Ljava/lang/Iterable;Lorg/checkerframework/com/google/common/base/Predicate;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public last()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 1251
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/Sets$FilteredNavigableSet;, "Lorg/checkerframework/com/google/common/collect/Sets$FilteredNavigableSet<TE;>;"
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/Sets$FilteredNavigableSet;->unfiltered()Ljava/util/NavigableSet;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/NavigableSet;->descendingIterator()Ljava/util/Iterator;

    move-result-object v0

    iget-object v1, p0, Lorg/checkerframework/com/google/common/collect/Sets$FilteredNavigableSet;->predicate:Lorg/checkerframework/com/google/common/base/Predicate;

    invoke-static {v0, v1}, Lorg/checkerframework/com/google/common/collect/Iterators;->find(Ljava/util/Iterator;Lorg/checkerframework/com/google/common/base/Predicate;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public lower(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)TE;"
        }
    .end annotation

    .line 1211
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/Sets$FilteredNavigableSet;, "Lorg/checkerframework/com/google/common/collect/Sets$FilteredNavigableSet<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/Sets$FilteredNavigableSet;->unfiltered()Ljava/util/NavigableSet;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Ljava/util/NavigableSet;->headSet(Ljava/lang/Object;Z)Ljava/util/NavigableSet;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/NavigableSet;->descendingIterator()Ljava/util/Iterator;

    move-result-object v0

    iget-object v1, p0, Lorg/checkerframework/com/google/common/collect/Sets$FilteredNavigableSet;->predicate:Lorg/checkerframework/com/google/common/base/Predicate;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lorg/checkerframework/com/google/common/collect/Iterators;->find(Ljava/util/Iterator;Lorg/checkerframework/com/google/common/base/Predicate;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public pollFirst()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 1231
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/Sets$FilteredNavigableSet;, "Lorg/checkerframework/com/google/common/collect/Sets$FilteredNavigableSet<TE;>;"
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/Sets$FilteredNavigableSet;->unfiltered()Ljava/util/NavigableSet;

    move-result-object v0

    iget-object v1, p0, Lorg/checkerframework/com/google/common/collect/Sets$FilteredNavigableSet;->predicate:Lorg/checkerframework/com/google/common/base/Predicate;

    invoke-static {v0, v1}, Lorg/checkerframework/com/google/common/collect/Iterables;->removeFirstMatching(Ljava/lang/Iterable;Lorg/checkerframework/com/google/common/base/Predicate;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public pollLast()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 1236
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/Sets$FilteredNavigableSet;, "Lorg/checkerframework/com/google/common/collect/Sets$FilteredNavigableSet<TE;>;"
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/Sets$FilteredNavigableSet;->unfiltered()Ljava/util/NavigableSet;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/NavigableSet;->descendingSet()Ljava/util/NavigableSet;

    move-result-object v0

    iget-object v1, p0, Lorg/checkerframework/com/google/common/collect/Sets$FilteredNavigableSet;->predicate:Lorg/checkerframework/com/google/common/base/Predicate;

    invoke-static {v0, v1}, Lorg/checkerframework/com/google/common/collect/Iterables;->removeFirstMatching(Ljava/lang/Iterable;Lorg/checkerframework/com/google/common/base/Predicate;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public subSet(Ljava/lang/Object;ZLjava/lang/Object;Z)Ljava/util/NavigableSet;
    .locals 2
    .param p2, "fromInclusive"    # Z
    .param p4, "toInclusive"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;ZTE;Z)",
            "Ljava/util/NavigableSet<",
            "TE;>;"
        }
    .end annotation

    .line 1257
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/Sets$FilteredNavigableSet;, "Lorg/checkerframework/com/google/common/collect/Sets$FilteredNavigableSet<TE;>;"
    .local p1, "fromElement":Ljava/lang/Object;, "TE;"
    .local p3, "toElement":Ljava/lang/Object;, "TE;"
    nop

    .line 1258
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/Sets$FilteredNavigableSet;->unfiltered()Ljava/util/NavigableSet;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p4}, Ljava/util/NavigableSet;->subSet(Ljava/lang/Object;ZLjava/lang/Object;Z)Ljava/util/NavigableSet;

    move-result-object v0

    iget-object v1, p0, Lorg/checkerframework/com/google/common/collect/Sets$FilteredNavigableSet;->predicate:Lorg/checkerframework/com/google/common/base/Predicate;

    .line 1257
    invoke-static {v0, v1}, Lorg/checkerframework/com/google/common/collect/Sets;->filter(Ljava/util/NavigableSet;Lorg/checkerframework/com/google/common/base/Predicate;)Ljava/util/NavigableSet;

    move-result-object v0

    return-object v0
.end method

.method public tailSet(Ljava/lang/Object;Z)Ljava/util/NavigableSet;
    .locals 2
    .param p2, "inclusive"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;Z)",
            "Ljava/util/NavigableSet<",
            "TE;>;"
        }
    .end annotation

    .line 1268
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/Sets$FilteredNavigableSet;, "Lorg/checkerframework/com/google/common/collect/Sets$FilteredNavigableSet<TE;>;"
    .local p1, "fromElement":Ljava/lang/Object;, "TE;"
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/Sets$FilteredNavigableSet;->unfiltered()Ljava/util/NavigableSet;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/NavigableSet;->tailSet(Ljava/lang/Object;Z)Ljava/util/NavigableSet;

    move-result-object v0

    iget-object v1, p0, Lorg/checkerframework/com/google/common/collect/Sets$FilteredNavigableSet;->predicate:Lorg/checkerframework/com/google/common/base/Predicate;

    invoke-static {v0, v1}, Lorg/checkerframework/com/google/common/collect/Sets;->filter(Ljava/util/NavigableSet;Lorg/checkerframework/com/google/common/base/Predicate;)Ljava/util/NavigableSet;

    move-result-object v0

    return-object v0
.end method

.method unfiltered()Ljava/util/NavigableSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/NavigableSet<",
            "TE;>;"
        }
    .end annotation

    .line 1206
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/Sets$FilteredNavigableSet;, "Lorg/checkerframework/com/google/common/collect/Sets$FilteredNavigableSet<TE;>;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/Sets$FilteredNavigableSet;->unfiltered:Ljava/util/Collection;

    check-cast v0, Ljava/util/NavigableSet;

    return-object v0
.end method
