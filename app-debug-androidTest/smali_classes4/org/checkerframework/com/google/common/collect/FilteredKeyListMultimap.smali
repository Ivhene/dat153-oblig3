.class final Lorg/checkerframework/com/google/common/collect/FilteredKeyListMultimap;
.super Lorg/checkerframework/com/google/common/collect/FilteredKeyMultimap;
.source "FilteredKeyListMultimap.java"

# interfaces
.implements Lorg/checkerframework/com/google/common/collect/ListMultimap;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/checkerframework/com/google/common/collect/FilteredKeyMultimap<",
        "TK;TV;>;",
        "Lorg/checkerframework/com/google/common/collect/ListMultimap<",
        "TK;TV;>;"
    }
.end annotation


# direct methods
.method constructor <init>(Lorg/checkerframework/com/google/common/collect/ListMultimap;Lorg/checkerframework/com/google/common/base/Predicate;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/google/common/collect/ListMultimap<",
            "TK;TV;>;",
            "Lorg/checkerframework/com/google/common/base/Predicate<",
            "-TK;>;)V"
        }
    .end annotation

    .line 33
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/FilteredKeyListMultimap;, "Lorg/checkerframework/com/google/common/collect/FilteredKeyListMultimap<TK;TV;>;"
    .local p1, "unfiltered":Lorg/checkerframework/com/google/common/collect/ListMultimap;, "Lorg/checkerframework/com/google/common/collect/ListMultimap<TK;TV;>;"
    .local p2, "keyPredicate":Lorg/checkerframework/com/google/common/base/Predicate;, "Lorg/checkerframework/com/google/common/base/Predicate<-TK;>;"
    invoke-direct {p0, p1, p2}, Lorg/checkerframework/com/google/common/collect/FilteredKeyMultimap;-><init>(Lorg/checkerframework/com/google/common/collect/Multimap;Lorg/checkerframework/com/google/common/base/Predicate;)V

    .line 34
    return-void
.end method


# virtual methods
.method public bridge synthetic get(Ljava/lang/Object;)Ljava/util/Collection;
    .locals 0

    .line 29
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/FilteredKeyListMultimap;, "Lorg/checkerframework/com/google/common/collect/FilteredKeyListMultimap<TK;TV;>;"
    invoke-virtual {p0, p1}, Lorg/checkerframework/com/google/common/collect/FilteredKeyListMultimap;->get(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public get(Ljava/lang/Object;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/List<",
            "TV;>;"
        }
    .end annotation

    .line 43
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/FilteredKeyListMultimap;, "Lorg/checkerframework/com/google/common/collect/FilteredKeyListMultimap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    invoke-super {p0, p1}, Lorg/checkerframework/com/google/common/collect/FilteredKeyMultimap;->get(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public bridge synthetic removeAll(Ljava/lang/Object;)Ljava/util/Collection;
    .locals 0

    .line 29
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/FilteredKeyListMultimap;, "Lorg/checkerframework/com/google/common/collect/FilteredKeyListMultimap<TK;TV;>;"
    invoke-virtual {p0, p1}, Lorg/checkerframework/com/google/common/collect/FilteredKeyListMultimap;->removeAll(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public removeAll(Ljava/lang/Object;)Ljava/util/List;
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/List<",
            "TV;>;"
        }
    .end annotation

    .line 48
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/FilteredKeyListMultimap;, "Lorg/checkerframework/com/google/common/collect/FilteredKeyListMultimap<TK;TV;>;"
    invoke-super {p0, p1}, Lorg/checkerframework/com/google/common/collect/FilteredKeyMultimap;->removeAll(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public bridge synthetic replaceValues(Ljava/lang/Object;Ljava/lang/Iterable;)Ljava/util/Collection;
    .locals 0

    .line 29
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/FilteredKeyListMultimap;, "Lorg/checkerframework/com/google/common/collect/FilteredKeyListMultimap<TK;TV;>;"
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/google/common/collect/FilteredKeyListMultimap;->replaceValues(Ljava/lang/Object;Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public replaceValues(Ljava/lang/Object;Ljava/lang/Iterable;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Ljava/lang/Iterable<",
            "+TV;>;)",
            "Ljava/util/List<",
            "TV;>;"
        }
    .end annotation

    .line 53
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/FilteredKeyListMultimap;, "Lorg/checkerframework/com/google/common/collect/FilteredKeyListMultimap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "values":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+TV;>;"
    invoke-super {p0, p1, p2}, Lorg/checkerframework/com/google/common/collect/FilteredKeyMultimap;->replaceValues(Ljava/lang/Object;Ljava/lang/Iterable;)Ljava/util/Collection;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public unfiltered()Lorg/checkerframework/com/google/common/collect/ListMultimap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/checkerframework/com/google/common/collect/ListMultimap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 38
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/FilteredKeyListMultimap;, "Lorg/checkerframework/com/google/common/collect/FilteredKeyListMultimap<TK;TV;>;"
    invoke-super {p0}, Lorg/checkerframework/com/google/common/collect/FilteredKeyMultimap;->unfiltered()Lorg/checkerframework/com/google/common/collect/Multimap;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/google/common/collect/ListMultimap;

    return-object v0
.end method

.method public bridge synthetic unfiltered()Lorg/checkerframework/com/google/common/collect/Multimap;
    .locals 1

    .line 29
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/FilteredKeyListMultimap;, "Lorg/checkerframework/com/google/common/collect/FilteredKeyListMultimap<TK;TV;>;"
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/FilteredKeyListMultimap;->unfiltered()Lorg/checkerframework/com/google/common/collect/ListMultimap;

    move-result-object v0

    return-object v0
.end method
