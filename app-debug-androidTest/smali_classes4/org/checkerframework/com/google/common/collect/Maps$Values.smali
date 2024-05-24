.class Lorg/checkerframework/com/google/common/collect/Maps$Values;
.super Ljava/util/AbstractCollection;
.source "Maps.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/com/google/common/collect/Maps;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Values"
.end annotation

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
.field final map:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 3873
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/Maps$Values;, "Lorg/checkerframework/com/google/common/collect/Maps$Values<TK;TV;>;"
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    invoke-direct {p0}, Ljava/util/AbstractCollection;-><init>()V

    .line 3874
    invoke-static {p1}, Lorg/checkerframework/com/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    iput-object v0, p0, Lorg/checkerframework/com/google/common/collect/Maps$Values;->map:Ljava/util/Map;

    .line 3875
    return-void
.end method

.method static synthetic lambda$forEach$0(Ljava/util/function/Consumer;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .param p0, "action"    # Ljava/util/function/Consumer;
    .param p1, "k"    # Ljava/lang/Object;
    .param p2, "v"    # Ljava/lang/Object;

    .line 3890
    invoke-interface {p0, p2}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .line 3955
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/Maps$Values;, "Lorg/checkerframework/com/google/common/collect/Maps$Values<TK;TV;>;"
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/Maps$Values;->map()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 3956
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .line 3950
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/Maps$Values;, "Lorg/checkerframework/com/google/common/collect/Maps$Values<TK;TV;>;"
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/Maps$Values;->map()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->containsValue(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public forEach(Ljava/util/function/Consumer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "-TV;>;)V"
        }
    .end annotation

    .line 3888
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/Maps$Values;, "Lorg/checkerframework/com/google/common/collect/Maps$Values<TK;TV;>;"
    .local p1, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TV;>;"
    invoke-static {p1}, Lorg/checkerframework/com/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3890
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/Maps$Values;->map:Ljava/util/Map;

    new-instance v1, Lorg/checkerframework/com/google/common/collect/Maps$Values$$ExternalSyntheticLambda0;

    invoke-direct {v1, p1}, Lorg/checkerframework/com/google/common/collect/Maps$Values$$ExternalSyntheticLambda0;-><init>(Ljava/util/function/Consumer;)V

    invoke-interface {v0, v1}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    .line 3891
    return-void
.end method

.method public isEmpty()Z
    .locals 1

    .line 3945
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/Maps$Values;, "Lorg/checkerframework/com/google/common/collect/Maps$Values<TK;TV;>;"
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/Maps$Values;->map()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

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

    .line 3883
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/Maps$Values;, "Lorg/checkerframework/com/google/common/collect/Maps$Values<TK;TV;>;"
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/Maps$Values;->map()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0}, Lorg/checkerframework/com/google/common/collect/Maps;->valueIterator(Ljava/util/Iterator;)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method final map()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "TK;TV;>;"
        }
    .end annotation

    .line 3878
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/Maps$Values;, "Lorg/checkerframework/com/google/common/collect/Maps$Values<TK;TV;>;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/Maps$Values;->map:Ljava/util/Map;

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    .line 3896
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/Maps$Values;, "Lorg/checkerframework/com/google/common/collect/Maps$Values<TK;TV;>;"
    :try_start_0
    invoke-super {p0, p1}, Ljava/util/AbstractCollection;->remove(Ljava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 3897
    :catch_0
    move-exception v0

    .line 3898
    .local v0, "e":Ljava/lang/UnsupportedOperationException;
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/Maps$Values;->map()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 3899
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-static {p1, v3}, Lorg/checkerframework/com/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 3900
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/Maps$Values;->map()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3901
    const/4 v1, 0x1

    return v1

    .line 3903
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    :cond_0
    goto :goto_0

    .line 3904
    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 3911
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/Maps$Values;, "Lorg/checkerframework/com/google/common/collect/Maps$Values<TK;TV;>;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    :try_start_0
    invoke-static {p1}, Lorg/checkerframework/com/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-super {p0, v0}, Ljava/util/AbstractCollection;->removeAll(Ljava/util/Collection;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 3912
    :catch_0
    move-exception v0

    .line 3913
    .local v0, "e":Ljava/lang/UnsupportedOperationException;
    invoke-static {}, Lorg/checkerframework/com/google/common/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v1

    .line 3914
    .local v1, "toRemove":Ljava/util/Set;, "Ljava/util/Set<TK;>;"
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/Maps$Values;->map()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 3915
    .local v3, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {p1, v4}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 3916
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 3918
    .end local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    :cond_0
    goto :goto_0

    .line 3919
    :cond_1
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/Maps$Values;->map()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    move-result v2

    return v2
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 3926
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/Maps$Values;, "Lorg/checkerframework/com/google/common/collect/Maps$Values<TK;TV;>;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    :try_start_0
    invoke-static {p1}, Lorg/checkerframework/com/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-super {p0, v0}, Ljava/util/AbstractCollection;->retainAll(Ljava/util/Collection;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 3927
    :catch_0
    move-exception v0

    .line 3928
    .local v0, "e":Ljava/lang/UnsupportedOperationException;
    invoke-static {}, Lorg/checkerframework/com/google/common/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v1

    .line 3929
    .local v1, "toRetain":Ljava/util/Set;, "Ljava/util/Set<TK;>;"
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/Maps$Values;->map()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 3930
    .local v3, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {p1, v4}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 3931
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 3933
    .end local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    :cond_0
    goto :goto_0

    .line 3934
    :cond_1
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/Maps$Values;->map()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/Set;->retainAll(Ljava/util/Collection;)Z

    move-result v2

    return v2
.end method

.method public size()I
    .locals 1

    .line 3940
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/Maps$Values;, "Lorg/checkerframework/com/google/common/collect/Maps$Values<TK;TV;>;"
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/Maps$Values;->map()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method
