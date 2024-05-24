.class Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultimap$NavigableKeySet;
.super Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultimap$SortedKeySet;
.source "AbstractMapBasedMultimap.java"

# interfaces
.implements Ljava/util/NavigableSet;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultimap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "NavigableKeySet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultimap<",
        "TK;TV;>.SortedKeySet;",
        "Ljava/util/NavigableSet<",
        "TK;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultimap;


# direct methods
.method constructor <init>(Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultimap;Ljava/util/NavigableMap;)V
    .locals 0
    .param p1, "this$0"    # Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultimap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/NavigableMap<",
            "TK;",
            "Ljava/util/Collection<",
            "TV;>;>;)V"
        }
    .end annotation

    .line 1030
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultimap$NavigableKeySet;, "Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultimap<TK;TV;>.NavigableKeySet;"
    .local p2, "subMap":Ljava/util/NavigableMap;, "Ljava/util/NavigableMap<TK;Ljava/util/Collection<TV;>;>;"
    iput-object p1, p0, Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultimap$NavigableKeySet;->this$0:Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultimap;

    .line 1031
    invoke-direct {p0, p1, p2}, Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultimap$SortedKeySet;-><init>(Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultimap;Ljava/util/SortedMap;)V

    .line 1032
    return-void
.end method


# virtual methods
.method public ceiling(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TK;"
        }
    .end annotation

    .line 1051
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultimap$NavigableKeySet;, "Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultimap<TK;TV;>.NavigableKeySet;"
    .local p1, "k":Ljava/lang/Object;, "TK;"
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultimap$NavigableKeySet;->sortedMap()Ljava/util/NavigableMap;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/NavigableMap;->ceilingKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public descendingIterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TK;>;"
        }
    .end annotation

    .line 1076
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultimap$NavigableKeySet;, "Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultimap<TK;TV;>.NavigableKeySet;"
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultimap$NavigableKeySet;->descendingSet()Ljava/util/NavigableSet;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/NavigableSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public descendingSet()Ljava/util/NavigableSet;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/NavigableSet<",
            "TK;>;"
        }
    .end annotation

    .line 1071
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultimap$NavigableKeySet;, "Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultimap<TK;TV;>.NavigableKeySet;"
    new-instance v0, Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultimap$NavigableKeySet;

    iget-object v1, p0, Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultimap$NavigableKeySet;->this$0:Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultimap;

    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultimap$NavigableKeySet;->sortedMap()Ljava/util/NavigableMap;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/NavigableMap;->descendingMap()Ljava/util/NavigableMap;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultimap$NavigableKeySet;-><init>(Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultimap;Ljava/util/NavigableMap;)V

    return-object v0
.end method

.method public floor(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TK;"
        }
    .end annotation

    .line 1046
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultimap$NavigableKeySet;, "Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultimap<TK;TV;>.NavigableKeySet;"
    .local p1, "k":Ljava/lang/Object;, "TK;"
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultimap$NavigableKeySet;->sortedMap()Ljava/util/NavigableMap;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/NavigableMap;->floorKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public headSet(Ljava/lang/Object;)Ljava/util/NavigableSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/NavigableSet<",
            "TK;>;"
        }
    .end annotation

    .line 1081
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultimap$NavigableKeySet;, "Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultimap<TK;TV;>.NavigableKeySet;"
    .local p1, "toElement":Ljava/lang/Object;, "TK;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultimap$NavigableKeySet;->headSet(Ljava/lang/Object;Z)Ljava/util/NavigableSet;

    move-result-object v0

    return-object v0
.end method

.method public headSet(Ljava/lang/Object;Z)Ljava/util/NavigableSet;
    .locals 3
    .param p2, "inclusive"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;Z)",
            "Ljava/util/NavigableSet<",
            "TK;>;"
        }
    .end annotation

    .line 1086
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultimap$NavigableKeySet;, "Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultimap<TK;TV;>.NavigableKeySet;"
    .local p1, "toElement":Ljava/lang/Object;, "TK;"
    new-instance v0, Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultimap$NavigableKeySet;

    iget-object v1, p0, Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultimap$NavigableKeySet;->this$0:Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultimap;

    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultimap$NavigableKeySet;->sortedMap()Ljava/util/NavigableMap;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Ljava/util/NavigableMap;->headMap(Ljava/lang/Object;Z)Ljava/util/NavigableMap;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultimap$NavigableKeySet;-><init>(Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultimap;Ljava/util/NavigableMap;)V

    return-object v0
.end method

.method public bridge synthetic headSet(Ljava/lang/Object;)Ljava/util/SortedSet;
    .locals 0

    .line 1028
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultimap$NavigableKeySet;, "Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultimap<TK;TV;>.NavigableKeySet;"
    invoke-virtual {p0, p1}, Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultimap$NavigableKeySet;->headSet(Ljava/lang/Object;)Ljava/util/NavigableSet;

    move-result-object p1

    return-object p1
.end method

.method public higher(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TK;"
        }
    .end annotation

    .line 1056
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultimap$NavigableKeySet;, "Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultimap<TK;TV;>.NavigableKeySet;"
    .local p1, "k":Ljava/lang/Object;, "TK;"
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultimap$NavigableKeySet;->sortedMap()Ljava/util/NavigableMap;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/NavigableMap;->higherKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public lower(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TK;"
        }
    .end annotation

    .line 1041
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultimap$NavigableKeySet;, "Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultimap<TK;TV;>.NavigableKeySet;"
    .local p1, "k":Ljava/lang/Object;, "TK;"
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultimap$NavigableKeySet;->sortedMap()Ljava/util/NavigableMap;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/NavigableMap;->lowerKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public pollFirst()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .line 1061
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultimap$NavigableKeySet;, "Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultimap<TK;TV;>.NavigableKeySet;"
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultimap$NavigableKeySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0}, Lorg/checkerframework/com/google/common/collect/Iterators;->pollNext(Ljava/util/Iterator;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public pollLast()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .line 1066
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultimap$NavigableKeySet;, "Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultimap<TK;TV;>.NavigableKeySet;"
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultimap$NavigableKeySet;->descendingIterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0}, Lorg/checkerframework/com/google/common/collect/Iterators;->pollNext(Ljava/util/Iterator;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method sortedMap()Ljava/util/NavigableMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/NavigableMap<",
            "TK;",
            "Ljava/util/Collection<",
            "TV;>;>;"
        }
    .end annotation

    .line 1036
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultimap$NavigableKeySet;, "Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultimap<TK;TV;>.NavigableKeySet;"
    invoke-super {p0}, Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultimap$SortedKeySet;->sortedMap()Ljava/util/SortedMap;

    move-result-object v0

    check-cast v0, Ljava/util/NavigableMap;

    return-object v0
.end method

.method bridge synthetic sortedMap()Ljava/util/SortedMap;
    .locals 1

    .line 1028
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultimap$NavigableKeySet;, "Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultimap<TK;TV;>.NavigableKeySet;"
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultimap$NavigableKeySet;->sortedMap()Ljava/util/NavigableMap;

    move-result-object v0

    return-object v0
.end method

.method public subSet(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/NavigableSet;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TK;)",
            "Ljava/util/NavigableSet<",
            "TK;>;"
        }
    .end annotation

    .line 1091
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultimap$NavigableKeySet;, "Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultimap<TK;TV;>.NavigableKeySet;"
    .local p1, "fromElement":Ljava/lang/Object;, "TK;"
    .local p2, "toElement":Ljava/lang/Object;, "TK;"
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, p2, v1}, Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultimap$NavigableKeySet;->subSet(Ljava/lang/Object;ZLjava/lang/Object;Z)Ljava/util/NavigableSet;

    move-result-object v0

    return-object v0
.end method

.method public subSet(Ljava/lang/Object;ZLjava/lang/Object;Z)Ljava/util/NavigableSet;
    .locals 3
    .param p2, "fromInclusive"    # Z
    .param p4, "toInclusive"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;ZTK;Z)",
            "Ljava/util/NavigableSet<",
            "TK;>;"
        }
    .end annotation

    .line 1097
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultimap$NavigableKeySet;, "Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultimap<TK;TV;>.NavigableKeySet;"
    .local p1, "fromElement":Ljava/lang/Object;, "TK;"
    .local p3, "toElement":Ljava/lang/Object;, "TK;"
    new-instance v0, Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultimap$NavigableKeySet;

    iget-object v1, p0, Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultimap$NavigableKeySet;->this$0:Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultimap;

    .line 1098
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultimap$NavigableKeySet;->sortedMap()Ljava/util/NavigableMap;

    move-result-object v2

    invoke-interface {v2, p1, p2, p3, p4}, Ljava/util/NavigableMap;->subMap(Ljava/lang/Object;ZLjava/lang/Object;Z)Ljava/util/NavigableMap;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultimap$NavigableKeySet;-><init>(Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultimap;Ljava/util/NavigableMap;)V

    .line 1097
    return-object v0
.end method

.method public bridge synthetic subSet(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedSet;
    .locals 0

    .line 1028
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultimap$NavigableKeySet;, "Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultimap<TK;TV;>.NavigableKeySet;"
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultimap$NavigableKeySet;->subSet(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/NavigableSet;

    move-result-object p1

    return-object p1
.end method

.method public tailSet(Ljava/lang/Object;)Ljava/util/NavigableSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/NavigableSet<",
            "TK;>;"
        }
    .end annotation

    .line 1103
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultimap$NavigableKeySet;, "Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultimap<TK;TV;>.NavigableKeySet;"
    .local p1, "fromElement":Ljava/lang/Object;, "TK;"
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultimap$NavigableKeySet;->tailSet(Ljava/lang/Object;Z)Ljava/util/NavigableSet;

    move-result-object v0

    return-object v0
.end method

.method public tailSet(Ljava/lang/Object;Z)Ljava/util/NavigableSet;
    .locals 3
    .param p2, "inclusive"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;Z)",
            "Ljava/util/NavigableSet<",
            "TK;>;"
        }
    .end annotation

    .line 1108
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultimap$NavigableKeySet;, "Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultimap<TK;TV;>.NavigableKeySet;"
    .local p1, "fromElement":Ljava/lang/Object;, "TK;"
    new-instance v0, Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultimap$NavigableKeySet;

    iget-object v1, p0, Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultimap$NavigableKeySet;->this$0:Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultimap;

    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultimap$NavigableKeySet;->sortedMap()Ljava/util/NavigableMap;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Ljava/util/NavigableMap;->tailMap(Ljava/lang/Object;Z)Ljava/util/NavigableMap;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultimap$NavigableKeySet;-><init>(Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultimap;Ljava/util/NavigableMap;)V

    return-object v0
.end method

.method public bridge synthetic tailSet(Ljava/lang/Object;)Ljava/util/SortedSet;
    .locals 0

    .line 1028
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultimap$NavigableKeySet;, "Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultimap<TK;TV;>.NavigableKeySet;"
    invoke-virtual {p0, p1}, Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultimap$NavigableKeySet;->tailSet(Ljava/lang/Object;)Ljava/util/NavigableSet;

    move-result-object p1

    return-object p1
.end method
