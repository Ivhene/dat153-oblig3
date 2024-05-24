.class public abstract Lorg/checkerframework/com/google/common/collect/ForwardingMultimap;
.super Lorg/checkerframework/com/google/common/collect/ForwardingObject;
.source "ForwardingMultimap.java"

# interfaces
.implements Lorg/checkerframework/com/google/common/collect/Multimap;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/checkerframework/com/google/common/collect/ForwardingObject;",
        "Lorg/checkerframework/com/google/common/collect/Multimap<",
        "TK;TV;>;"
    }
.end annotation


# direct methods
.method protected constructor <init>()V
    .locals 0

    .line 43
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ForwardingMultimap;, "Lorg/checkerframework/com/google/common/collect/ForwardingMultimap<TK;TV;>;"
    invoke-direct {p0}, Lorg/checkerframework/com/google/common/collect/ForwardingObject;-><init>()V

    return-void
.end method


# virtual methods
.method public asMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "TK;",
            "Ljava/util/Collection<",
            "TV;>;>;"
        }
    .end annotation

    .line 50
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ForwardingMultimap;, "Lorg/checkerframework/com/google/common/collect/ForwardingMultimap<TK;TV;>;"
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/ForwardingMultimap;->delegate()Lorg/checkerframework/com/google/common/collect/Multimap;

    move-result-object v0

    invoke-interface {v0}, Lorg/checkerframework/com/google/common/collect/Multimap;->asMap()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public clear()V
    .locals 1

    .line 55
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ForwardingMultimap;, "Lorg/checkerframework/com/google/common/collect/ForwardingMultimap<TK;TV;>;"
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/ForwardingMultimap;->delegate()Lorg/checkerframework/com/google/common/collect/Multimap;

    move-result-object v0

    invoke-interface {v0}, Lorg/checkerframework/com/google/common/collect/Multimap;->clear()V

    .line 56
    return-void
.end method

.method public containsEntry(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "value"    # Ljava/lang/Object;

    .line 60
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ForwardingMultimap;, "Lorg/checkerframework/com/google/common/collect/ForwardingMultimap<TK;TV;>;"
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/ForwardingMultimap;->delegate()Lorg/checkerframework/com/google/common/collect/Multimap;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lorg/checkerframework/com/google/common/collect/Multimap;->containsEntry(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;

    .line 65
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ForwardingMultimap;, "Lorg/checkerframework/com/google/common/collect/ForwardingMultimap<TK;TV;>;"
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/ForwardingMultimap;->delegate()Lorg/checkerframework/com/google/common/collect/Multimap;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/checkerframework/com/google/common/collect/Multimap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "value"    # Ljava/lang/Object;

    .line 70
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ForwardingMultimap;, "Lorg/checkerframework/com/google/common/collect/ForwardingMultimap<TK;TV;>;"
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/ForwardingMultimap;->delegate()Lorg/checkerframework/com/google/common/collect/Multimap;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/checkerframework/com/google/common/collect/Multimap;->containsValue(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method protected bridge synthetic delegate()Ljava/lang/Object;
    .locals 1

    .line 39
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ForwardingMultimap;, "Lorg/checkerframework/com/google/common/collect/ForwardingMultimap<TK;TV;>;"
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/ForwardingMultimap;->delegate()Lorg/checkerframework/com/google/common/collect/Multimap;

    move-result-object v0

    return-object v0
.end method

.method protected abstract delegate()Lorg/checkerframework/com/google/common/collect/Multimap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/checkerframework/com/google/common/collect/Multimap<",
            "TK;TV;>;"
        }
    .end annotation
.end method

.method public entries()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 75
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ForwardingMultimap;, "Lorg/checkerframework/com/google/common/collect/ForwardingMultimap<TK;TV;>;"
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/ForwardingMultimap;->delegate()Lorg/checkerframework/com/google/common/collect/Multimap;

    move-result-object v0

    invoke-interface {v0}, Lorg/checkerframework/com/google/common/collect/Multimap;->entries()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "object"    # Ljava/lang/Object;

    .line 146
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ForwardingMultimap;, "Lorg/checkerframework/com/google/common/collect/ForwardingMultimap<TK;TV;>;"
    if-eq p1, p0, :cond_1

    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/ForwardingMultimap;->delegate()Lorg/checkerframework/com/google/common/collect/Multimap;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/checkerframework/com/google/common/collect/Multimap;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public get(Ljava/lang/Object;)Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/Collection<",
            "TV;>;"
        }
    .end annotation

    .line 80
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ForwardingMultimap;, "Lorg/checkerframework/com/google/common/collect/ForwardingMultimap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/ForwardingMultimap;->delegate()Lorg/checkerframework/com/google/common/collect/Multimap;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/checkerframework/com/google/common/collect/Multimap;->get(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 151
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ForwardingMultimap;, "Lorg/checkerframework/com/google/common/collect/ForwardingMultimap<TK;TV;>;"
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/ForwardingMultimap;->delegate()Lorg/checkerframework/com/google/common/collect/Multimap;

    move-result-object v0

    invoke-interface {v0}, Lorg/checkerframework/com/google/common/collect/Multimap;->hashCode()I

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .line 85
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ForwardingMultimap;, "Lorg/checkerframework/com/google/common/collect/ForwardingMultimap<TK;TV;>;"
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/ForwardingMultimap;->delegate()Lorg/checkerframework/com/google/common/collect/Multimap;

    move-result-object v0

    invoke-interface {v0}, Lorg/checkerframework/com/google/common/collect/Multimap;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public keySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TK;>;"
        }
    .end annotation

    .line 95
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ForwardingMultimap;, "Lorg/checkerframework/com/google/common/collect/ForwardingMultimap<TK;TV;>;"
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/ForwardingMultimap;->delegate()Lorg/checkerframework/com/google/common/collect/Multimap;

    move-result-object v0

    invoke-interface {v0}, Lorg/checkerframework/com/google/common/collect/Multimap;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public keys()Lorg/checkerframework/com/google/common/collect/Multiset;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/checkerframework/com/google/common/collect/Multiset<",
            "TK;>;"
        }
    .end annotation

    .line 90
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ForwardingMultimap;, "Lorg/checkerframework/com/google/common/collect/ForwardingMultimap<TK;TV;>;"
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/ForwardingMultimap;->delegate()Lorg/checkerframework/com/google/common/collect/Multimap;

    move-result-object v0

    invoke-interface {v0}, Lorg/checkerframework/com/google/common/collect/Multimap;->keys()Lorg/checkerframework/com/google/common/collect/Multiset;

    move-result-object v0

    return-object v0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)Z"
        }
    .end annotation

    .line 101
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ForwardingMultimap;, "Lorg/checkerframework/com/google/common/collect/ForwardingMultimap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/ForwardingMultimap;->delegate()Lorg/checkerframework/com/google/common/collect/Multimap;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lorg/checkerframework/com/google/common/collect/Multimap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public putAll(Ljava/lang/Object;Ljava/lang/Iterable;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Ljava/lang/Iterable<",
            "+TV;>;)Z"
        }
    .end annotation

    .line 107
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ForwardingMultimap;, "Lorg/checkerframework/com/google/common/collect/ForwardingMultimap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "values":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+TV;>;"
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/ForwardingMultimap;->delegate()Lorg/checkerframework/com/google/common/collect/Multimap;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lorg/checkerframework/com/google/common/collect/Multimap;->putAll(Ljava/lang/Object;Ljava/lang/Iterable;)Z

    move-result v0

    return v0
.end method

.method public putAll(Lorg/checkerframework/com/google/common/collect/Multimap;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/google/common/collect/Multimap<",
            "+TK;+TV;>;)Z"
        }
    .end annotation

    .line 113
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ForwardingMultimap;, "Lorg/checkerframework/com/google/common/collect/ForwardingMultimap<TK;TV;>;"
    .local p1, "multimap":Lorg/checkerframework/com/google/common/collect/Multimap;, "Lorg/checkerframework/com/google/common/collect/Multimap<+TK;+TV;>;"
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/ForwardingMultimap;->delegate()Lorg/checkerframework/com/google/common/collect/Multimap;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/checkerframework/com/google/common/collect/Multimap;->putAll(Lorg/checkerframework/com/google/common/collect/Multimap;)Z

    move-result v0

    return v0
.end method

.method public remove(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "value"    # Ljava/lang/Object;

    .line 119
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ForwardingMultimap;, "Lorg/checkerframework/com/google/common/collect/ForwardingMultimap<TK;TV;>;"
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/ForwardingMultimap;->delegate()Lorg/checkerframework/com/google/common/collect/Multimap;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lorg/checkerframework/com/google/common/collect/Multimap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public removeAll(Ljava/lang/Object;)Ljava/util/Collection;
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/Collection<",
            "TV;>;"
        }
    .end annotation

    .line 125
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ForwardingMultimap;, "Lorg/checkerframework/com/google/common/collect/ForwardingMultimap<TK;TV;>;"
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/ForwardingMultimap;->delegate()Lorg/checkerframework/com/google/common/collect/Multimap;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/checkerframework/com/google/common/collect/Multimap;->removeAll(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public replaceValues(Ljava/lang/Object;Ljava/lang/Iterable;)Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Ljava/lang/Iterable<",
            "+TV;>;)",
            "Ljava/util/Collection<",
            "TV;>;"
        }
    .end annotation

    .line 131
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ForwardingMultimap;, "Lorg/checkerframework/com/google/common/collect/ForwardingMultimap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "values":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+TV;>;"
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/ForwardingMultimap;->delegate()Lorg/checkerframework/com/google/common/collect/Multimap;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lorg/checkerframework/com/google/common/collect/Multimap;->replaceValues(Ljava/lang/Object;Ljava/lang/Iterable;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .locals 1

    .line 136
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ForwardingMultimap;, "Lorg/checkerframework/com/google/common/collect/ForwardingMultimap<TK;TV;>;"
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/ForwardingMultimap;->delegate()Lorg/checkerframework/com/google/common/collect/Multimap;

    move-result-object v0

    invoke-interface {v0}, Lorg/checkerframework/com/google/common/collect/Multimap;->size()I

    move-result v0

    return v0
.end method

.method public values()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "TV;>;"
        }
    .end annotation

    .line 141
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ForwardingMultimap;, "Lorg/checkerframework/com/google/common/collect/ForwardingMultimap<TK;TV;>;"
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/ForwardingMultimap;->delegate()Lorg/checkerframework/com/google/common/collect/Multimap;

    move-result-object v0

    invoke-interface {v0}, Lorg/checkerframework/com/google/common/collect/Multimap;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method
