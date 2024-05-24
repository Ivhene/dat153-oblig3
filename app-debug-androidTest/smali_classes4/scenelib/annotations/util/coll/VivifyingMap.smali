.class public abstract Lscenelib/annotations/util/coll/VivifyingMap;
.super Lscenelib/annotations/util/coll/WrapperMap;
.source "VivifyingMap.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lscenelib/annotations/util/coll/WrapperMap<",
        "TK;TV;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 25
    .local p0, "this":Lscenelib/annotations/util/coll/VivifyingMap;, "Lscenelib/annotations/util/coll/VivifyingMap<TK;TV;>;"
    .local p1, "back":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    invoke-direct {p0, p1}, Lscenelib/annotations/util/coll/WrapperMap;-><init>(Ljava/util/Map;)V

    .line 26
    return-void
.end method


# virtual methods
.method protected abstract createValueFor(Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TV;"
        }
    .end annotation
.end method

.method public getVivify(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TV;"
        }
    .end annotation

    .line 34
    .local p0, "this":Lscenelib/annotations/util/coll/VivifyingMap;, "Lscenelib/annotations/util/coll/VivifyingMap<TK;TV;>;"
    .local p1, "k":Ljava/lang/Object;, "TK;"
    invoke-virtual {p0, p1}, Lscenelib/annotations/util/coll/VivifyingMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 35
    invoke-virtual {p0, p1}, Lscenelib/annotations/util/coll/VivifyingMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 37
    :cond_0
    invoke-virtual {p0, p1}, Lscenelib/annotations/util/coll/VivifyingMap;->createValueFor(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 38
    .local v0, "v":Ljava/lang/Object;, "TV;"
    invoke-virtual {p0, p1, v0}, Lscenelib/annotations/util/coll/VivifyingMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    return-object v0
.end method

.method protected abstract isEmptyValue(Ljava/lang/Object;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)Z"
        }
    .end annotation
.end method

.method public prune()V
    .locals 3

    .line 56
    .local p0, "this":Lscenelib/annotations/util/coll/VivifyingMap;, "Lscenelib/annotations/util/coll/VivifyingMap<TK;TV;>;"
    nop

    .line 57
    invoke-virtual {p0}, Lscenelib/annotations/util/coll/VivifyingMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "ei":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<TK;TV;>;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 58
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    .line 59
    .local v1, "value":Ljava/lang/Object;, "TV;"
    instance-of v2, v1, Lscenelib/annotations/util/coll/VivifyingMap;

    if-eqz v2, :cond_0

    .line 60
    move-object v2, v1

    check-cast v2, Lscenelib/annotations/util/coll/VivifyingMap;

    invoke-virtual {v2}, Lscenelib/annotations/util/coll/VivifyingMap;->prune()V

    .line 62
    :cond_0
    invoke-virtual {p0, v1}, Lscenelib/annotations/util/coll/VivifyingMap;->isEmptyValue(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 63
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 65
    .end local v1    # "value":Ljava/lang/Object;, "TV;"
    :cond_1
    goto :goto_0

    .line 66
    .end local v0    # "ei":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<TK;TV;>;>;"
    :cond_2
    return-void
.end method
