.class final Lorg/checkerframework/com/google/common/collect/FilteredMultimapValues;
.super Ljava/util/AbstractCollection;
.source "FilteredMultimapValues.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractCollection<",
        "TV;>;"
    }
.end annotation


# instance fields
.field private final multimap:Lorg/checkerframework/com/google/common/collect/FilteredMultimap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/checkerframework/com/google/common/collect/FilteredMultimap<",
            "TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lorg/checkerframework/com/google/common/collect/FilteredMultimap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/google/common/collect/FilteredMultimap<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 39
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/FilteredMultimapValues;, "Lorg/checkerframework/com/google/common/collect/FilteredMultimapValues<TK;TV;>;"
    .local p1, "multimap":Lorg/checkerframework/com/google/common/collect/FilteredMultimap;, "Lorg/checkerframework/com/google/common/collect/FilteredMultimap<TK;TV;>;"
    invoke-direct {p0}, Ljava/util/AbstractCollection;-><init>()V

    .line 40
    invoke-static {p1}, Lorg/checkerframework/com/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/google/common/collect/FilteredMultimap;

    iput-object v0, p0, Lorg/checkerframework/com/google/common/collect/FilteredMultimapValues;->multimap:Lorg/checkerframework/com/google/common/collect/FilteredMultimap;

    .line 41
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .line 93
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/FilteredMultimapValues;, "Lorg/checkerframework/com/google/common/collect/FilteredMultimapValues<TK;TV;>;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/FilteredMultimapValues;->multimap:Lorg/checkerframework/com/google/common/collect/FilteredMultimap;

    invoke-interface {v0}, Lorg/checkerframework/com/google/common/collect/FilteredMultimap;->clear()V

    .line 94
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .line 50
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/FilteredMultimapValues;, "Lorg/checkerframework/com/google/common/collect/FilteredMultimapValues<TK;TV;>;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/FilteredMultimapValues;->multimap:Lorg/checkerframework/com/google/common/collect/FilteredMultimap;

    invoke-interface {v0, p1}, Lorg/checkerframework/com/google/common/collect/FilteredMultimap;->containsValue(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TV;>;"
        }
    .end annotation

    .line 45
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/FilteredMultimapValues;, "Lorg/checkerframework/com/google/common/collect/FilteredMultimapValues<TK;TV;>;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/FilteredMultimapValues;->multimap:Lorg/checkerframework/com/google/common/collect/FilteredMultimap;

    invoke-interface {v0}, Lorg/checkerframework/com/google/common/collect/FilteredMultimap;->entries()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0}, Lorg/checkerframework/com/google/common/collect/Maps;->valueIterator(Ljava/util/Iterator;)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    .line 60
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/FilteredMultimapValues;, "Lorg/checkerframework/com/google/common/collect/FilteredMultimapValues<TK;TV;>;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/FilteredMultimapValues;->multimap:Lorg/checkerframework/com/google/common/collect/FilteredMultimap;

    invoke-interface {v0}, Lorg/checkerframework/com/google/common/collect/FilteredMultimap;->entryPredicate()Lorg/checkerframework/com/google/common/base/Predicate;

    move-result-object v0

    .line 61
    .local v0, "entryPredicate":Lorg/checkerframework/com/google/common/base/Predicate;, "Lorg/checkerframework/com/google/common/base/Predicate<-Ljava/util/Map$Entry<TK;TV;>;>;"
    iget-object v1, p0, Lorg/checkerframework/com/google/common/collect/FilteredMultimapValues;->multimap:Lorg/checkerframework/com/google/common/collect/FilteredMultimap;

    invoke-interface {v1}, Lorg/checkerframework/com/google/common/collect/FilteredMultimap;->unfiltered()Lorg/checkerframework/com/google/common/collect/Multimap;

    move-result-object v1

    invoke-interface {v1}, Lorg/checkerframework/com/google/common/collect/Multimap;->entries()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 62
    .local v1, "unfilteredItr":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<TK;TV;>;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 63
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 64
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    invoke-interface {v0, v2}, Lorg/checkerframework/com/google/common/base/Predicate;->apply(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3, p1}, Lorg/checkerframework/com/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 65
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 66
    const/4 v3, 0x1

    return v3

    .line 68
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    :cond_0
    goto :goto_0

    .line 69
    .end local v1    # "unfilteredItr":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<TK;TV;>;>;"
    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 74
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/FilteredMultimapValues;, "Lorg/checkerframework/com/google/common/collect/FilteredMultimapValues<TK;TV;>;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/FilteredMultimapValues;->multimap:Lorg/checkerframework/com/google/common/collect/FilteredMultimap;

    .line 75
    invoke-interface {v0}, Lorg/checkerframework/com/google/common/collect/FilteredMultimap;->unfiltered()Lorg/checkerframework/com/google/common/collect/Multimap;

    move-result-object v0

    invoke-interface {v0}, Lorg/checkerframework/com/google/common/collect/Multimap;->entries()Ljava/util/Collection;

    move-result-object v0

    iget-object v1, p0, Lorg/checkerframework/com/google/common/collect/FilteredMultimapValues;->multimap:Lorg/checkerframework/com/google/common/collect/FilteredMultimap;

    .line 78
    invoke-interface {v1}, Lorg/checkerframework/com/google/common/collect/FilteredMultimap;->entryPredicate()Lorg/checkerframework/com/google/common/base/Predicate;

    move-result-object v1

    invoke-static {p1}, Lorg/checkerframework/com/google/common/base/Predicates;->in(Ljava/util/Collection;)Lorg/checkerframework/com/google/common/base/Predicate;

    move-result-object v2

    invoke-static {v2}, Lorg/checkerframework/com/google/common/collect/Maps;->valuePredicateOnEntries(Lorg/checkerframework/com/google/common/base/Predicate;)Lorg/checkerframework/com/google/common/base/Predicate;

    move-result-object v2

    .line 77
    invoke-static {v1, v2}, Lorg/checkerframework/com/google/common/base/Predicates;->and(Lorg/checkerframework/com/google/common/base/Predicate;Lorg/checkerframework/com/google/common/base/Predicate;)Lorg/checkerframework/com/google/common/base/Predicate;

    move-result-object v1

    .line 74
    invoke-static {v0, v1}, Lorg/checkerframework/com/google/common/collect/Iterables;->removeIf(Ljava/lang/Iterable;Lorg/checkerframework/com/google/common/base/Predicate;)Z

    move-result v0

    return v0
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 83
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/FilteredMultimapValues;, "Lorg/checkerframework/com/google/common/collect/FilteredMultimapValues<TK;TV;>;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/FilteredMultimapValues;->multimap:Lorg/checkerframework/com/google/common/collect/FilteredMultimap;

    .line 84
    invoke-interface {v0}, Lorg/checkerframework/com/google/common/collect/FilteredMultimap;->unfiltered()Lorg/checkerframework/com/google/common/collect/Multimap;

    move-result-object v0

    invoke-interface {v0}, Lorg/checkerframework/com/google/common/collect/Multimap;->entries()Ljava/util/Collection;

    move-result-object v0

    iget-object v1, p0, Lorg/checkerframework/com/google/common/collect/FilteredMultimapValues;->multimap:Lorg/checkerframework/com/google/common/collect/FilteredMultimap;

    .line 87
    invoke-interface {v1}, Lorg/checkerframework/com/google/common/collect/FilteredMultimap;->entryPredicate()Lorg/checkerframework/com/google/common/base/Predicate;

    move-result-object v1

    .line 88
    invoke-static {p1}, Lorg/checkerframework/com/google/common/base/Predicates;->in(Ljava/util/Collection;)Lorg/checkerframework/com/google/common/base/Predicate;

    move-result-object v2

    invoke-static {v2}, Lorg/checkerframework/com/google/common/base/Predicates;->not(Lorg/checkerframework/com/google/common/base/Predicate;)Lorg/checkerframework/com/google/common/base/Predicate;

    move-result-object v2

    invoke-static {v2}, Lorg/checkerframework/com/google/common/collect/Maps;->valuePredicateOnEntries(Lorg/checkerframework/com/google/common/base/Predicate;)Lorg/checkerframework/com/google/common/base/Predicate;

    move-result-object v2

    .line 86
    invoke-static {v1, v2}, Lorg/checkerframework/com/google/common/base/Predicates;->and(Lorg/checkerframework/com/google/common/base/Predicate;Lorg/checkerframework/com/google/common/base/Predicate;)Lorg/checkerframework/com/google/common/base/Predicate;

    move-result-object v1

    .line 83
    invoke-static {v0, v1}, Lorg/checkerframework/com/google/common/collect/Iterables;->removeIf(Ljava/lang/Iterable;Lorg/checkerframework/com/google/common/base/Predicate;)Z

    move-result v0

    return v0
.end method

.method public size()I
    .locals 1

    .line 55
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/FilteredMultimapValues;, "Lorg/checkerframework/com/google/common/collect/FilteredMultimapValues<TK;TV;>;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/FilteredMultimapValues;->multimap:Lorg/checkerframework/com/google/common/collect/FilteredMultimap;

    invoke-interface {v0}, Lorg/checkerframework/com/google/common/collect/FilteredMultimap;->size()I

    move-result v0

    return v0
.end method
