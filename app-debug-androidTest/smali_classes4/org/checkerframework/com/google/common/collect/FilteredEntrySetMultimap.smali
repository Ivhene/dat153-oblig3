.class final Lorg/checkerframework/com/google/common/collect/FilteredEntrySetMultimap;
.super Lorg/checkerframework/com/google/common/collect/FilteredEntryMultimap;
.source "FilteredEntrySetMultimap.java"

# interfaces
.implements Lorg/checkerframework/com/google/common/collect/FilteredSetMultimap;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/checkerframework/com/google/common/collect/FilteredEntryMultimap<",
        "TK;TV;>;",
        "Lorg/checkerframework/com/google/common/collect/FilteredSetMultimap<",
        "TK;TV;>;"
    }
.end annotation


# direct methods
.method constructor <init>(Lorg/checkerframework/com/google/common/collect/SetMultimap;Lorg/checkerframework/com/google/common/base/Predicate;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/google/common/collect/SetMultimap<",
            "TK;TV;>;",
            "Lorg/checkerframework/com/google/common/base/Predicate<",
            "-",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;)V"
        }
    .end annotation

    .line 34
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/FilteredEntrySetMultimap;, "Lorg/checkerframework/com/google/common/collect/FilteredEntrySetMultimap<TK;TV;>;"
    .local p1, "unfiltered":Lorg/checkerframework/com/google/common/collect/SetMultimap;, "Lorg/checkerframework/com/google/common/collect/SetMultimap<TK;TV;>;"
    .local p2, "predicate":Lorg/checkerframework/com/google/common/base/Predicate;, "Lorg/checkerframework/com/google/common/base/Predicate<-Ljava/util/Map$Entry<TK;TV;>;>;"
    invoke-direct {p0, p1, p2}, Lorg/checkerframework/com/google/common/collect/FilteredEntryMultimap;-><init>(Lorg/checkerframework/com/google/common/collect/Multimap;Lorg/checkerframework/com/google/common/base/Predicate;)V

    .line 35
    return-void
.end method


# virtual methods
.method bridge synthetic createEntries()Ljava/util/Collection;
    .locals 1

    .line 29
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/FilteredEntrySetMultimap;, "Lorg/checkerframework/com/google/common/collect/FilteredEntrySetMultimap<TK;TV;>;"
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/FilteredEntrySetMultimap;->createEntries()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method createEntries()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 59
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/FilteredEntrySetMultimap;, "Lorg/checkerframework/com/google/common/collect/FilteredEntrySetMultimap<TK;TV;>;"
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/FilteredEntrySetMultimap;->unfiltered()Lorg/checkerframework/com/google/common/collect/SetMultimap;

    move-result-object v0

    invoke-interface {v0}, Lorg/checkerframework/com/google/common/collect/SetMultimap;->entries()Ljava/util/Set;

    move-result-object v0

    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/FilteredEntrySetMultimap;->entryPredicate()Lorg/checkerframework/com/google/common/base/Predicate;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/checkerframework/com/google/common/collect/Sets;->filter(Ljava/util/Set;Lorg/checkerframework/com/google/common/base/Predicate;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic entries()Ljava/util/Collection;
    .locals 1

    .line 29
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/FilteredEntrySetMultimap;, "Lorg/checkerframework/com/google/common/collect/FilteredEntrySetMultimap<TK;TV;>;"
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/FilteredEntrySetMultimap;->entries()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public entries()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 64
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/FilteredEntrySetMultimap;, "Lorg/checkerframework/com/google/common/collect/FilteredEntrySetMultimap<TK;TV;>;"
    invoke-super {p0}, Lorg/checkerframework/com/google/common/collect/FilteredEntryMultimap;->entries()Ljava/util/Collection;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    return-object v0
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/util/Collection;
    .locals 0

    .line 29
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/FilteredEntrySetMultimap;, "Lorg/checkerframework/com/google/common/collect/FilteredEntrySetMultimap<TK;TV;>;"
    invoke-virtual {p0, p1}, Lorg/checkerframework/com/google/common/collect/FilteredEntrySetMultimap;->get(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method

.method public get(Ljava/lang/Object;)Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/Set<",
            "TV;>;"
        }
    .end annotation

    .line 44
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/FilteredEntrySetMultimap;, "Lorg/checkerframework/com/google/common/collect/FilteredEntrySetMultimap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    invoke-super {p0, p1}, Lorg/checkerframework/com/google/common/collect/FilteredEntryMultimap;->get(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    return-object v0
.end method

.method public bridge synthetic removeAll(Ljava/lang/Object;)Ljava/util/Collection;
    .locals 0

    .line 29
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/FilteredEntrySetMultimap;, "Lorg/checkerframework/com/google/common/collect/FilteredEntrySetMultimap<TK;TV;>;"
    invoke-virtual {p0, p1}, Lorg/checkerframework/com/google/common/collect/FilteredEntrySetMultimap;->removeAll(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method

.method public removeAll(Ljava/lang/Object;)Ljava/util/Set;
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/Set<",
            "TV;>;"
        }
    .end annotation

    .line 49
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/FilteredEntrySetMultimap;, "Lorg/checkerframework/com/google/common/collect/FilteredEntrySetMultimap<TK;TV;>;"
    invoke-super {p0, p1}, Lorg/checkerframework/com/google/common/collect/FilteredEntryMultimap;->removeAll(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    return-object v0
.end method

.method public bridge synthetic replaceValues(Ljava/lang/Object;Ljava/lang/Iterable;)Ljava/util/Collection;
    .locals 0

    .line 29
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/FilteredEntrySetMultimap;, "Lorg/checkerframework/com/google/common/collect/FilteredEntrySetMultimap<TK;TV;>;"
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/google/common/collect/FilteredEntrySetMultimap;->replaceValues(Ljava/lang/Object;Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method

.method public replaceValues(Ljava/lang/Object;Ljava/lang/Iterable;)Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Ljava/lang/Iterable<",
            "+TV;>;)",
            "Ljava/util/Set<",
            "TV;>;"
        }
    .end annotation

    .line 54
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/FilteredEntrySetMultimap;, "Lorg/checkerframework/com/google/common/collect/FilteredEntrySetMultimap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "values":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+TV;>;"
    invoke-super {p0, p1, p2}, Lorg/checkerframework/com/google/common/collect/FilteredEntryMultimap;->replaceValues(Ljava/lang/Object;Ljava/lang/Iterable;)Ljava/util/Collection;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    return-object v0
.end method

.method public bridge synthetic unfiltered()Lorg/checkerframework/com/google/common/collect/Multimap;
    .locals 1

    .line 29
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/FilteredEntrySetMultimap;, "Lorg/checkerframework/com/google/common/collect/FilteredEntrySetMultimap<TK;TV;>;"
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/FilteredEntrySetMultimap;->unfiltered()Lorg/checkerframework/com/google/common/collect/SetMultimap;

    move-result-object v0

    return-object v0
.end method

.method public unfiltered()Lorg/checkerframework/com/google/common/collect/SetMultimap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/checkerframework/com/google/common/collect/SetMultimap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 39
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/FilteredEntrySetMultimap;, "Lorg/checkerframework/com/google/common/collect/FilteredEntrySetMultimap<TK;TV;>;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/FilteredEntrySetMultimap;->unfiltered:Lorg/checkerframework/com/google/common/collect/Multimap;

    check-cast v0, Lorg/checkerframework/com/google/common/collect/SetMultimap;

    return-object v0
.end method
