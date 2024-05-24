.class Lorg/checkerframework/com/google/common/collect/Maps$FilteredEntrySortedMap;
.super Lorg/checkerframework/com/google/common/collect/Maps$FilteredEntryMap;
.source "Maps.java"

# interfaces
.implements Ljava/util/SortedMap;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/com/google/common/collect/Maps;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FilteredEntrySortedMap"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/checkerframework/com/google/common/collect/Maps$FilteredEntrySortedMap$SortedKeySet;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/checkerframework/com/google/common/collect/Maps$FilteredEntryMap<",
        "TK;TV;>;",
        "Ljava/util/SortedMap<",
        "TK;TV;>;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/util/SortedMap;Lorg/checkerframework/com/google/common/base/Predicate;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/SortedMap<",
            "TK;TV;>;",
            "Lorg/checkerframework/com/google/common/base/Predicate<",
            "-",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;)V"
        }
    .end annotation

    .line 2968
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/Maps$FilteredEntrySortedMap;, "Lorg/checkerframework/com/google/common/collect/Maps$FilteredEntrySortedMap<TK;TV;>;"
    .local p1, "unfiltered":Ljava/util/SortedMap;, "Ljava/util/SortedMap<TK;TV;>;"
    .local p2, "entryPredicate":Lorg/checkerframework/com/google/common/base/Predicate;, "Lorg/checkerframework/com/google/common/base/Predicate<-Ljava/util/Map$Entry<TK;TV;>;>;"
    invoke-direct {p0, p1, p2}, Lorg/checkerframework/com/google/common/collect/Maps$FilteredEntryMap;-><init>(Ljava/util/Map;Lorg/checkerframework/com/google/common/base/Predicate;)V

    .line 2969
    return-void
.end method


# virtual methods
.method public comparator()Ljava/util/Comparator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator<",
            "-TK;>;"
        }
    .end annotation

    .line 3020
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/Maps$FilteredEntrySortedMap;, "Lorg/checkerframework/com/google/common/collect/Maps$FilteredEntrySortedMap<TK;TV;>;"
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/Maps$FilteredEntrySortedMap;->sortedMap()Ljava/util/SortedMap;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/SortedMap;->comparator()Ljava/util/Comparator;

    move-result-object v0

    return-object v0
.end method

.method bridge synthetic createKeySet()Ljava/util/Set;
    .locals 1

    .line 2963
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/Maps$FilteredEntrySortedMap;, "Lorg/checkerframework/com/google/common/collect/Maps$FilteredEntrySortedMap<TK;TV;>;"
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/Maps$FilteredEntrySortedMap;->createKeySet()Ljava/util/SortedSet;

    move-result-object v0

    return-object v0
.end method

.method createKeySet()Ljava/util/SortedSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/SortedSet<",
            "TK;>;"
        }
    .end annotation

    .line 2982
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/Maps$FilteredEntrySortedMap;, "Lorg/checkerframework/com/google/common/collect/Maps$FilteredEntrySortedMap<TK;TV;>;"
    new-instance v0, Lorg/checkerframework/com/google/common/collect/Maps$FilteredEntrySortedMap$SortedKeySet;

    invoke-direct {v0, p0}, Lorg/checkerframework/com/google/common/collect/Maps$FilteredEntrySortedMap$SortedKeySet;-><init>(Lorg/checkerframework/com/google/common/collect/Maps$FilteredEntrySortedMap;)V

    return-object v0
.end method

.method public firstKey()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .line 3026
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/Maps$FilteredEntrySortedMap;, "Lorg/checkerframework/com/google/common/collect/Maps$FilteredEntrySortedMap<TK;TV;>;"
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/Maps$FilteredEntrySortedMap;->keySet()Ljava/util/SortedSet;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/SortedSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public headMap(Ljava/lang/Object;)Ljava/util/SortedMap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/SortedMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 3044
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/Maps$FilteredEntrySortedMap;, "Lorg/checkerframework/com/google/common/collect/Maps$FilteredEntrySortedMap<TK;TV;>;"
    .local p1, "toKey":Ljava/lang/Object;, "TK;"
    new-instance v0, Lorg/checkerframework/com/google/common/collect/Maps$FilteredEntrySortedMap;

    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/Maps$FilteredEntrySortedMap;->sortedMap()Ljava/util/SortedMap;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/SortedMap;->headMap(Ljava/lang/Object;)Ljava/util/SortedMap;

    move-result-object v1

    iget-object v2, p0, Lorg/checkerframework/com/google/common/collect/Maps$FilteredEntrySortedMap;->predicate:Lorg/checkerframework/com/google/common/base/Predicate;

    invoke-direct {v0, v1, v2}, Lorg/checkerframework/com/google/common/collect/Maps$FilteredEntrySortedMap;-><init>(Ljava/util/SortedMap;Lorg/checkerframework/com/google/common/base/Predicate;)V

    return-object v0
.end method

.method public bridge synthetic keySet()Ljava/util/Set;
    .locals 1

    .line 2963
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/Maps$FilteredEntrySortedMap;, "Lorg/checkerframework/com/google/common/collect/Maps$FilteredEntrySortedMap<TK;TV;>;"
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/Maps$FilteredEntrySortedMap;->keySet()Ljava/util/SortedSet;

    move-result-object v0

    return-object v0
.end method

.method public keySet()Ljava/util/SortedSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/SortedSet<",
            "TK;>;"
        }
    .end annotation

    .line 2977
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/Maps$FilteredEntrySortedMap;, "Lorg/checkerframework/com/google/common/collect/Maps$FilteredEntrySortedMap<TK;TV;>;"
    invoke-super {p0}, Lorg/checkerframework/com/google/common/collect/Maps$FilteredEntryMap;->keySet()Ljava/util/Set;

    move-result-object v0

    check-cast v0, Ljava/util/SortedSet;

    return-object v0
.end method

.method public lastKey()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .line 3031
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/Maps$FilteredEntrySortedMap;, "Lorg/checkerframework/com/google/common/collect/Maps$FilteredEntrySortedMap<TK;TV;>;"
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/Maps$FilteredEntrySortedMap;->sortedMap()Ljava/util/SortedMap;

    move-result-object v0

    .line 3034
    .local v0, "headMap":Ljava/util/SortedMap;, "Ljava/util/SortedMap<TK;TV;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/SortedMap;->lastKey()Ljava/lang/Object;

    move-result-object v1

    .line 3035
    .local v1, "key":Ljava/lang/Object;, "TK;"
    iget-object v2, p0, Lorg/checkerframework/com/google/common/collect/Maps$FilteredEntrySortedMap;->unfiltered:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lorg/checkerframework/com/google/common/collect/Maps$FilteredEntrySortedMap;->apply(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3036
    return-object v1

    .line 3038
    :cond_0
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/Maps$FilteredEntrySortedMap;->sortedMap()Ljava/util/SortedMap;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/SortedMap;->headMap(Ljava/lang/Object;)Ljava/util/SortedMap;

    move-result-object v0

    .line 3039
    .end local v1    # "key":Ljava/lang/Object;, "TK;"
    goto :goto_0
.end method

.method sortedMap()Ljava/util/SortedMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/SortedMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 2972
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/Maps$FilteredEntrySortedMap;, "Lorg/checkerframework/com/google/common/collect/Maps$FilteredEntrySortedMap<TK;TV;>;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/Maps$FilteredEntrySortedMap;->unfiltered:Ljava/util/Map;

    check-cast v0, Ljava/util/SortedMap;

    return-object v0
.end method

.method public subMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedMap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TK;)",
            "Ljava/util/SortedMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 3049
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/Maps$FilteredEntrySortedMap;, "Lorg/checkerframework/com/google/common/collect/Maps$FilteredEntrySortedMap<TK;TV;>;"
    .local p1, "fromKey":Ljava/lang/Object;, "TK;"
    .local p2, "toKey":Ljava/lang/Object;, "TK;"
    new-instance v0, Lorg/checkerframework/com/google/common/collect/Maps$FilteredEntrySortedMap;

    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/Maps$FilteredEntrySortedMap;->sortedMap()Ljava/util/SortedMap;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Ljava/util/SortedMap;->subMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedMap;

    move-result-object v1

    iget-object v2, p0, Lorg/checkerframework/com/google/common/collect/Maps$FilteredEntrySortedMap;->predicate:Lorg/checkerframework/com/google/common/base/Predicate;

    invoke-direct {v0, v1, v2}, Lorg/checkerframework/com/google/common/collect/Maps$FilteredEntrySortedMap;-><init>(Ljava/util/SortedMap;Lorg/checkerframework/com/google/common/base/Predicate;)V

    return-object v0
.end method

.method public tailMap(Ljava/lang/Object;)Ljava/util/SortedMap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/SortedMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 3054
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/Maps$FilteredEntrySortedMap;, "Lorg/checkerframework/com/google/common/collect/Maps$FilteredEntrySortedMap<TK;TV;>;"
    .local p1, "fromKey":Ljava/lang/Object;, "TK;"
    new-instance v0, Lorg/checkerframework/com/google/common/collect/Maps$FilteredEntrySortedMap;

    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/Maps$FilteredEntrySortedMap;->sortedMap()Ljava/util/SortedMap;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/SortedMap;->tailMap(Ljava/lang/Object;)Ljava/util/SortedMap;

    move-result-object v1

    iget-object v2, p0, Lorg/checkerframework/com/google/common/collect/Maps$FilteredEntrySortedMap;->predicate:Lorg/checkerframework/com/google/common/base/Predicate;

    invoke-direct {v0, v1, v2}, Lorg/checkerframework/com/google/common/collect/Maps$FilteredEntrySortedMap;-><init>(Ljava/util/SortedMap;Lorg/checkerframework/com/google/common/base/Predicate;)V

    return-object v0
.end method