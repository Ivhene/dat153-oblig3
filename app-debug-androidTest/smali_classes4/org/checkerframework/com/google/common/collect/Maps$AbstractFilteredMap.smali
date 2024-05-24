.class abstract Lorg/checkerframework/com/google/common/collect/Maps$AbstractFilteredMap;
.super Lorg/checkerframework/com/google/common/collect/Maps$ViewCachingAbstractMap;
.source "Maps.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/com/google/common/collect/Maps;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "AbstractFilteredMap"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/checkerframework/com/google/common/collect/Maps$ViewCachingAbstractMap<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field final predicate:Lorg/checkerframework/com/google/common/base/Predicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/checkerframework/com/google/common/base/Predicate<",
            "-",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation
.end field

.field final unfiltered:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/Map;Lorg/checkerframework/com/google/common/base/Predicate;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "TK;TV;>;",
            "Lorg/checkerframework/com/google/common/base/Predicate<",
            "-",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;)V"
        }
    .end annotation

    .line 2698
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/Maps$AbstractFilteredMap;, "Lorg/checkerframework/com/google/common/collect/Maps$AbstractFilteredMap<TK;TV;>;"
    .local p1, "unfiltered":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    .local p2, "predicate":Lorg/checkerframework/com/google/common/base/Predicate;, "Lorg/checkerframework/com/google/common/base/Predicate<-Ljava/util/Map$Entry<TK;TV;>;>;"
    invoke-direct {p0}, Lorg/checkerframework/com/google/common/collect/Maps$ViewCachingAbstractMap;-><init>()V

    .line 2699
    iput-object p1, p0, Lorg/checkerframework/com/google/common/collect/Maps$AbstractFilteredMap;->unfiltered:Ljava/util/Map;

    .line 2700
    iput-object p2, p0, Lorg/checkerframework/com/google/common/collect/Maps$AbstractFilteredMap;->predicate:Lorg/checkerframework/com/google/common/base/Predicate;

    .line 2701
    return-void
.end method


# virtual methods
.method apply(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 3
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "TV;)Z"
        }
    .end annotation

    .line 2707
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/Maps$AbstractFilteredMap;, "Lorg/checkerframework/com/google/common/collect/Maps$AbstractFilteredMap<TK;TV;>;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    move-object v0, p1

    .line 2708
    .local v0, "k":Ljava/lang/Object;, "TK;"
    iget-object v1, p0, Lorg/checkerframework/com/google/common/collect/Maps$AbstractFilteredMap;->predicate:Lorg/checkerframework/com/google/common/base/Predicate;

    invoke-static {v0, p2}, Lorg/checkerframework/com/google/common/collect/Maps;->immutableEntry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/checkerframework/com/google/common/base/Predicate;->apply(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;

    .line 2727
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/Maps$AbstractFilteredMap;, "Lorg/checkerframework/com/google/common/collect/Maps$AbstractFilteredMap<TK;TV;>;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/Maps$AbstractFilteredMap;->unfiltered:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/Maps$AbstractFilteredMap;->unfiltered:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/checkerframework/com/google/common/collect/Maps$AbstractFilteredMap;->apply(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method createValues()Ljava/util/Collection;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "TV;>;"
        }
    .end annotation

    .line 2748
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/Maps$AbstractFilteredMap;, "Lorg/checkerframework/com/google/common/collect/Maps$AbstractFilteredMap<TK;TV;>;"
    new-instance v0, Lorg/checkerframework/com/google/common/collect/Maps$FilteredMapValues;

    iget-object v1, p0, Lorg/checkerframework/com/google/common/collect/Maps$AbstractFilteredMap;->unfiltered:Ljava/util/Map;

    iget-object v2, p0, Lorg/checkerframework/com/google/common/collect/Maps$AbstractFilteredMap;->predicate:Lorg/checkerframework/com/google/common/base/Predicate;

    invoke-direct {v0, p0, v1, v2}, Lorg/checkerframework/com/google/common/collect/Maps$FilteredMapValues;-><init>(Ljava/util/Map;Ljava/util/Map;Lorg/checkerframework/com/google/common/base/Predicate;)V

    return-object v0
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .line 2732
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/Maps$AbstractFilteredMap;, "Lorg/checkerframework/com/google/common/collect/Maps$AbstractFilteredMap<TK;TV;>;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/Maps$AbstractFilteredMap;->unfiltered:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 2733
    .local v0, "value":Ljava/lang/Object;, "TV;"
    if-eqz v0, :cond_0

    invoke-virtual {p0, p1, v0}, Lorg/checkerframework/com/google/common/collect/Maps$AbstractFilteredMap;->apply(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v1, v0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1
.end method

.method public isEmpty()Z
    .locals 1

    .line 2738
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/Maps$AbstractFilteredMap;, "Lorg/checkerframework/com/google/common/collect/Maps$AbstractFilteredMap<TK;TV;>;"
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/Maps$AbstractFilteredMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .line 2713
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/Maps$AbstractFilteredMap;, "Lorg/checkerframework/com/google/common/collect/Maps$AbstractFilteredMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/google/common/collect/Maps$AbstractFilteredMap;->apply(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Lorg/checkerframework/com/google/common/base/Preconditions;->checkArgument(Z)V

    .line 2714
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/Maps$AbstractFilteredMap;->unfiltered:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public putAll(Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "+TK;+TV;>;)V"
        }
    .end annotation

    .line 2719
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/Maps$AbstractFilteredMap;, "Lorg/checkerframework/com/google/common/collect/Maps$AbstractFilteredMap<TK;TV;>;"
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<+TK;+TV;>;"
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 2720
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<+TK;+TV;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lorg/checkerframework/com/google/common/collect/Maps$AbstractFilteredMap;->apply(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    invoke-static {v2}, Lorg/checkerframework/com/google/common/base/Preconditions;->checkArgument(Z)V

    .line 2721
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<+TK;+TV;>;"
    goto :goto_0

    .line 2722
    :cond_0
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/Maps$AbstractFilteredMap;->unfiltered:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 2723
    return-void
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .line 2743
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/Maps$AbstractFilteredMap;, "Lorg/checkerframework/com/google/common/collect/Maps$AbstractFilteredMap<TK;TV;>;"
    invoke-virtual {p0, p1}, Lorg/checkerframework/com/google/common/collect/Maps$AbstractFilteredMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/Maps$AbstractFilteredMap;->unfiltered:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method
