.class interface abstract Lorg/checkerframework/com/google/common/collect/FilteredSetMultimap;
.super Ljava/lang/Object;
.source "FilteredSetMultimap.java"

# interfaces
.implements Lorg/checkerframework/com/google/common/collect/FilteredMultimap;
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
        "Lorg/checkerframework/com/google/common/collect/FilteredMultimap<",
        "TK;TV;>;",
        "Lorg/checkerframework/com/google/common/collect/SetMultimap<",
        "TK;TV;>;"
    }
.end annotation


# virtual methods
.method public bridge synthetic unfiltered()Lorg/checkerframework/com/google/common/collect/Multimap;
    .locals 1

    .line 26
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/FilteredSetMultimap;, "Lorg/checkerframework/com/google/common/collect/FilteredSetMultimap<TK;TV;>;"
    invoke-interface {p0}, Lorg/checkerframework/com/google/common/collect/FilteredSetMultimap;->unfiltered()Lorg/checkerframework/com/google/common/collect/SetMultimap;

    move-result-object v0

    return-object v0
.end method

.method public abstract unfiltered()Lorg/checkerframework/com/google/common/collect/SetMultimap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/checkerframework/com/google/common/collect/SetMultimap<",
            "TK;TV;>;"
        }
    .end annotation
.end method
