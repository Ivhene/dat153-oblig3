.class public Lscenelib/annotations/util/coll/WrapperMap;
.super Ljava/lang/Object;
.source "WrapperMap.java"

# interfaces
.implements Ljava/util/Map;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Map<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field protected final back:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 21
    .local p0, "this":Lscenelib/annotations/util/coll/WrapperMap;, "Lscenelib/annotations/util/coll/WrapperMap<TK;TV;>;"
    .local p1, "back":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lscenelib/annotations/util/coll/WrapperMap;->back:Ljava/util/Map;

    .line 23
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .line 27
    .local p0, "this":Lscenelib/annotations/util/coll/WrapperMap;, "Lscenelib/annotations/util/coll/WrapperMap<TK;TV;>;"
    iget-object v0, p0, Lscenelib/annotations/util/coll/WrapperMap;->back:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 28
    return-void
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;

    .line 32
    .local p0, "this":Lscenelib/annotations/util/coll/WrapperMap;, "Lscenelib/annotations/util/coll/WrapperMap<TK;TV;>;"
    iget-object v0, p0, Lscenelib/annotations/util/coll/WrapperMap;->back:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "value"    # Ljava/lang/Object;

    .line 37
    .local p0, "this":Lscenelib/annotations/util/coll/WrapperMap;, "Lscenelib/annotations/util/coll/WrapperMap<TK;TV;>;"
    iget-object v0, p0, Lscenelib/annotations/util/coll/WrapperMap;->back:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsValue(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public entrySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 43
    .local p0, "this":Lscenelib/annotations/util/coll/WrapperMap;, "Lscenelib/annotations/util/coll/WrapperMap<TK;TV;>;"
    iget-object v0, p0, Lscenelib/annotations/util/coll/WrapperMap;->back:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .line 88
    .local p0, "this":Lscenelib/annotations/util/coll/WrapperMap;, "Lscenelib/annotations/util/coll/WrapperMap<TK;TV;>;"
    iget-object v0, p0, Lscenelib/annotations/util/coll/WrapperMap;->back:Ljava/util/Map;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .line 48
    .local p0, "this":Lscenelib/annotations/util/coll/WrapperMap;, "Lscenelib/annotations/util/coll/WrapperMap<TK;TV;>;"
    iget-object v0, p0, Lscenelib/annotations/util/coll/WrapperMap;->back:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 93
    .local p0, "this":Lscenelib/annotations/util/coll/WrapperMap;, "Lscenelib/annotations/util/coll/WrapperMap<TK;TV;>;"
    iget-object v0, p0, Lscenelib/annotations/util/coll/WrapperMap;->back:Ljava/util/Map;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .line 53
    .local p0, "this":Lscenelib/annotations/util/coll/WrapperMap;, "Lscenelib/annotations/util/coll/WrapperMap<TK;TV;>;"
    iget-object v0, p0, Lscenelib/annotations/util/coll/WrapperMap;->back:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

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

    .line 58
    .local p0, "this":Lscenelib/annotations/util/coll/WrapperMap;, "Lscenelib/annotations/util/coll/WrapperMap<TK;TV;>;"
    iget-object v0, p0, Lscenelib/annotations/util/coll/WrapperMap;->back:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .line 63
    .local p0, "this":Lscenelib/annotations/util/coll/WrapperMap;, "Lscenelib/annotations/util/coll/WrapperMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    iget-object v0, p0, Lscenelib/annotations/util/coll/WrapperMap;->back:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public putAll(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "+TK;+TV;>;)V"
        }
    .end annotation

    .line 68
    .local p0, "this":Lscenelib/annotations/util/coll/WrapperMap;, "Lscenelib/annotations/util/coll/WrapperMap<TK;TV;>;"
    .local p1, "m":Ljava/util/Map;, "Ljava/util/Map<+TK;+TV;>;"
    iget-object v0, p0, Lscenelib/annotations/util/coll/WrapperMap;->back:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 69
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

    .line 73
    .local p0, "this":Lscenelib/annotations/util/coll/WrapperMap;, "Lscenelib/annotations/util/coll/WrapperMap<TK;TV;>;"
    iget-object v0, p0, Lscenelib/annotations/util/coll/WrapperMap;->back:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .locals 1

    .line 78
    .local p0, "this":Lscenelib/annotations/util/coll/WrapperMap;, "Lscenelib/annotations/util/coll/WrapperMap<TK;TV;>;"
    iget-object v0, p0, Lscenelib/annotations/util/coll/WrapperMap;->back:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

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

    .line 83
    .local p0, "this":Lscenelib/annotations/util/coll/WrapperMap;, "Lscenelib/annotations/util/coll/WrapperMap<TK;TV;>;"
    iget-object v0, p0, Lscenelib/annotations/util/coll/WrapperMap;->back:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method
