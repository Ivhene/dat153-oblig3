.class public interface abstract Lorg/checkerframework/com/google/common/collect/SortedSetMultimap;
.super Ljava/lang/Object;
.source "SortedSetMultimap.java"

# interfaces
.implements Lorg/checkerframework/com/google/common/collect/SetMultimap;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/checkerframework/com/google/common/collect/SetMultimap<",
        "TK;TV;>;"
    }
.end annotation


# virtual methods
.method public abstract asMap()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "TK;",
            "Ljava/util/Collection<",
            "TV;>;>;"
        }
    .end annotation
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/util/Collection;
    .locals 0

    .line 47
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/SortedSetMultimap;, "Lorg/checkerframework/com/google/common/collect/SortedSetMultimap<TK;TV;>;"
    invoke-interface {p0, p1}, Lorg/checkerframework/com/google/common/collect/SortedSetMultimap;->get(Ljava/lang/Object;)Ljava/util/SortedSet;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/util/Set;
    .locals 0

    .line 47
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/SortedSetMultimap;, "Lorg/checkerframework/com/google/common/collect/SortedSetMultimap<TK;TV;>;"
    invoke-interface {p0, p1}, Lorg/checkerframework/com/google/common/collect/SortedSetMultimap;->get(Ljava/lang/Object;)Ljava/util/SortedSet;

    move-result-object p1

    return-object p1
.end method

.method public abstract get(Ljava/lang/Object;)Ljava/util/SortedSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/SortedSet<",
            "TV;>;"
        }
    .end annotation
.end method

.method public bridge synthetic removeAll(Ljava/lang/Object;)Ljava/util/Collection;
    .locals 0

    .line 47
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/SortedSetMultimap;, "Lorg/checkerframework/com/google/common/collect/SortedSetMultimap<TK;TV;>;"
    invoke-interface {p0, p1}, Lorg/checkerframework/com/google/common/collect/SortedSetMultimap;->removeAll(Ljava/lang/Object;)Ljava/util/SortedSet;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic removeAll(Ljava/lang/Object;)Ljava/util/Set;
    .locals 0

    .line 47
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/SortedSetMultimap;, "Lorg/checkerframework/com/google/common/collect/SortedSetMultimap<TK;TV;>;"
    invoke-interface {p0, p1}, Lorg/checkerframework/com/google/common/collect/SortedSetMultimap;->removeAll(Ljava/lang/Object;)Ljava/util/SortedSet;

    move-result-object p1

    return-object p1
.end method

.method public abstract removeAll(Ljava/lang/Object;)Ljava/util/SortedSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/SortedSet<",
            "TV;>;"
        }
    .end annotation
.end method

.method public bridge synthetic replaceValues(Ljava/lang/Object;Ljava/lang/Iterable;)Ljava/util/Collection;
    .locals 0

    .line 47
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/SortedSetMultimap;, "Lorg/checkerframework/com/google/common/collect/SortedSetMultimap<TK;TV;>;"
    invoke-interface {p0, p1, p2}, Lorg/checkerframework/com/google/common/collect/SortedSetMultimap;->replaceValues(Ljava/lang/Object;Ljava/lang/Iterable;)Ljava/util/SortedSet;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic replaceValues(Ljava/lang/Object;Ljava/lang/Iterable;)Ljava/util/Set;
    .locals 0

    .line 47
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/SortedSetMultimap;, "Lorg/checkerframework/com/google/common/collect/SortedSetMultimap<TK;TV;>;"
    invoke-interface {p0, p1, p2}, Lorg/checkerframework/com/google/common/collect/SortedSetMultimap;->replaceValues(Ljava/lang/Object;Ljava/lang/Iterable;)Ljava/util/SortedSet;

    move-result-object p1

    return-object p1
.end method

.method public abstract replaceValues(Ljava/lang/Object;Ljava/lang/Iterable;)Ljava/util/SortedSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Ljava/lang/Iterable<",
            "+TV;>;)",
            "Ljava/util/SortedSet<",
            "TV;>;"
        }
    .end annotation
.end method

.method public abstract valueComparator()Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator<",
            "-TV;>;"
        }
    .end annotation
.end method
