.class public interface abstract Lorg/checkerframework/com/google/common/collect/SortedMapDifference;
.super Ljava/lang/Object;
.source "SortedMapDifference.java"

# interfaces
.implements Lorg/checkerframework/com/google/common/collect/MapDifference;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/checkerframework/com/google/common/collect/MapDifference<",
        "TK;TV;>;"
    }
.end annotation


# virtual methods
.method public bridge synthetic entriesDiffering()Ljava/util/Map;
    .locals 1

    .line 28
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/SortedMapDifference;, "Lorg/checkerframework/com/google/common/collect/SortedMapDifference<TK;TV;>;"
    invoke-interface {p0}, Lorg/checkerframework/com/google/common/collect/SortedMapDifference;->entriesDiffering()Ljava/util/SortedMap;

    move-result-object v0

    return-object v0
.end method

.method public abstract entriesDiffering()Ljava/util/SortedMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/SortedMap<",
            "TK;",
            "Lorg/checkerframework/com/google/common/collect/MapDifference$ValueDifference<",
            "TV;>;>;"
        }
    .end annotation
.end method

.method public bridge synthetic entriesInCommon()Ljava/util/Map;
    .locals 1

    .line 28
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/SortedMapDifference;, "Lorg/checkerframework/com/google/common/collect/SortedMapDifference<TK;TV;>;"
    invoke-interface {p0}, Lorg/checkerframework/com/google/common/collect/SortedMapDifference;->entriesInCommon()Ljava/util/SortedMap;

    move-result-object v0

    return-object v0
.end method

.method public abstract entriesInCommon()Ljava/util/SortedMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/SortedMap<",
            "TK;TV;>;"
        }
    .end annotation
.end method

.method public bridge synthetic entriesOnlyOnLeft()Ljava/util/Map;
    .locals 1

    .line 28
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/SortedMapDifference;, "Lorg/checkerframework/com/google/common/collect/SortedMapDifference<TK;TV;>;"
    invoke-interface {p0}, Lorg/checkerframework/com/google/common/collect/SortedMapDifference;->entriesOnlyOnLeft()Ljava/util/SortedMap;

    move-result-object v0

    return-object v0
.end method

.method public abstract entriesOnlyOnLeft()Ljava/util/SortedMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/SortedMap<",
            "TK;TV;>;"
        }
    .end annotation
.end method

.method public bridge synthetic entriesOnlyOnRight()Ljava/util/Map;
    .locals 1

    .line 28
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/SortedMapDifference;, "Lorg/checkerframework/com/google/common/collect/SortedMapDifference<TK;TV;>;"
    invoke-interface {p0}, Lorg/checkerframework/com/google/common/collect/SortedMapDifference;->entriesOnlyOnRight()Ljava/util/SortedMap;

    move-result-object v0

    return-object v0
.end method

.method public abstract entriesOnlyOnRight()Ljava/util/SortedMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/SortedMap<",
            "TK;TV;>;"
        }
    .end annotation
.end method
