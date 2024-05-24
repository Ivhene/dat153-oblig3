.class public abstract Lorg/checkerframework/com/google/common/cache/ForwardingCache;
.super Lorg/checkerframework/com/google/common/collect/ForwardingObject;
.source "ForwardingCache.java"

# interfaces
.implements Lorg/checkerframework/com/google/common/cache/Cache;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/checkerframework/com/google/common/cache/ForwardingCache$SimpleForwardingCache;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/checkerframework/com/google/common/collect/ForwardingObject;",
        "Lorg/checkerframework/com/google/common/cache/Cache<",
        "TK;TV;>;"
    }
.end annotation


# direct methods
.method protected constructor <init>()V
    .locals 0

    .line 39
    .local p0, "this":Lorg/checkerframework/com/google/common/cache/ForwardingCache;, "Lorg/checkerframework/com/google/common/cache/ForwardingCache<TK;TV;>;"
    invoke-direct {p0}, Lorg/checkerframework/com/google/common/collect/ForwardingObject;-><init>()V

    return-void
.end method


# virtual methods
.method public asMap()Ljava/util/concurrent/ConcurrentMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/ConcurrentMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 102
    .local p0, "this":Lorg/checkerframework/com/google/common/cache/ForwardingCache;, "Lorg/checkerframework/com/google/common/cache/ForwardingCache<TK;TV;>;"
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/cache/ForwardingCache;->delegate()Lorg/checkerframework/com/google/common/cache/Cache;

    move-result-object v0

    invoke-interface {v0}, Lorg/checkerframework/com/google/common/cache/Cache;->asMap()Ljava/util/concurrent/ConcurrentMap;

    move-result-object v0

    return-object v0
.end method

.method public cleanUp()V
    .locals 1

    .line 107
    .local p0, "this":Lorg/checkerframework/com/google/common/cache/ForwardingCache;, "Lorg/checkerframework/com/google/common/cache/ForwardingCache<TK;TV;>;"
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/cache/ForwardingCache;->delegate()Lorg/checkerframework/com/google/common/cache/Cache;

    move-result-object v0

    invoke-interface {v0}, Lorg/checkerframework/com/google/common/cache/Cache;->cleanUp()V

    .line 108
    return-void
.end method

.method protected bridge synthetic delegate()Ljava/lang/Object;
    .locals 1

    .line 35
    .local p0, "this":Lorg/checkerframework/com/google/common/cache/ForwardingCache;, "Lorg/checkerframework/com/google/common/cache/ForwardingCache<TK;TV;>;"
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/cache/ForwardingCache;->delegate()Lorg/checkerframework/com/google/common/cache/Cache;

    move-result-object v0

    return-object v0
.end method

.method protected abstract delegate()Lorg/checkerframework/com/google/common/cache/Cache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/checkerframework/com/google/common/cache/Cache<",
            "TK;TV;>;"
        }
    .end annotation
.end method

.method public get(Ljava/lang/Object;Ljava/util/concurrent/Callable;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Ljava/util/concurrent/Callable<",
            "+TV;>;)TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    .line 53
    .local p0, "this":Lorg/checkerframework/com/google/common/cache/ForwardingCache;, "Lorg/checkerframework/com/google/common/cache/ForwardingCache<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "valueLoader":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<+TV;>;"
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/cache/ForwardingCache;->delegate()Lorg/checkerframework/com/google/common/cache/Cache;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lorg/checkerframework/com/google/common/cache/Cache;->get(Ljava/lang/Object;Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getAllPresent(Ljava/lang/Iterable;)Lorg/checkerframework/com/google/common/collect/ImmutableMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "*>;)",
            "Lorg/checkerframework/com/google/common/collect/ImmutableMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 59
    .local p0, "this":Lorg/checkerframework/com/google/common/cache/ForwardingCache;, "Lorg/checkerframework/com/google/common/cache/ForwardingCache<TK;TV;>;"
    .local p1, "keys":Ljava/lang/Iterable;, "Ljava/lang/Iterable<*>;"
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/cache/ForwardingCache;->delegate()Lorg/checkerframework/com/google/common/cache/Cache;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/checkerframework/com/google/common/cache/Cache;->getAllPresent(Ljava/lang/Iterable;)Lorg/checkerframework/com/google/common/collect/ImmutableMap;

    move-result-object v0

    return-object v0
.end method

.method public getIfPresent(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .line 47
    .local p0, "this":Lorg/checkerframework/com/google/common/cache/ForwardingCache;, "Lorg/checkerframework/com/google/common/cache/ForwardingCache<TK;TV;>;"
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/cache/ForwardingCache;->delegate()Lorg/checkerframework/com/google/common/cache/Cache;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/checkerframework/com/google/common/cache/Cache;->getIfPresent(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public invalidate(Ljava/lang/Object;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;

    .line 76
    .local p0, "this":Lorg/checkerframework/com/google/common/cache/ForwardingCache;, "Lorg/checkerframework/com/google/common/cache/ForwardingCache<TK;TV;>;"
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/cache/ForwardingCache;->delegate()Lorg/checkerframework/com/google/common/cache/Cache;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/checkerframework/com/google/common/cache/Cache;->invalidate(Ljava/lang/Object;)V

    .line 77
    return-void
.end method

.method public invalidateAll()V
    .locals 1

    .line 87
    .local p0, "this":Lorg/checkerframework/com/google/common/cache/ForwardingCache;, "Lorg/checkerframework/com/google/common/cache/ForwardingCache<TK;TV;>;"
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/cache/ForwardingCache;->delegate()Lorg/checkerframework/com/google/common/cache/Cache;

    move-result-object v0

    invoke-interface {v0}, Lorg/checkerframework/com/google/common/cache/Cache;->invalidateAll()V

    .line 88
    return-void
.end method

.method public invalidateAll(Ljava/lang/Iterable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "*>;)V"
        }
    .end annotation

    .line 82
    .local p0, "this":Lorg/checkerframework/com/google/common/cache/ForwardingCache;, "Lorg/checkerframework/com/google/common/cache/ForwardingCache<TK;TV;>;"
    .local p1, "keys":Ljava/lang/Iterable;, "Ljava/lang/Iterable<*>;"
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/cache/ForwardingCache;->delegate()Lorg/checkerframework/com/google/common/cache/Cache;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/checkerframework/com/google/common/cache/Cache;->invalidateAll(Ljava/lang/Iterable;)V

    .line 83
    return-void
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)V"
        }
    .end annotation

    .line 65
    .local p0, "this":Lorg/checkerframework/com/google/common/cache/ForwardingCache;, "Lorg/checkerframework/com/google/common/cache/ForwardingCache<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/cache/ForwardingCache;->delegate()Lorg/checkerframework/com/google/common/cache/Cache;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lorg/checkerframework/com/google/common/cache/Cache;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 66
    return-void
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

    .line 71
    .local p0, "this":Lorg/checkerframework/com/google/common/cache/ForwardingCache;, "Lorg/checkerframework/com/google/common/cache/ForwardingCache<TK;TV;>;"
    .local p1, "m":Ljava/util/Map;, "Ljava/util/Map<+TK;+TV;>;"
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/cache/ForwardingCache;->delegate()Lorg/checkerframework/com/google/common/cache/Cache;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/checkerframework/com/google/common/cache/Cache;->putAll(Ljava/util/Map;)V

    .line 72
    return-void
.end method

.method public size()J
    .locals 2

    .line 92
    .local p0, "this":Lorg/checkerframework/com/google/common/cache/ForwardingCache;, "Lorg/checkerframework/com/google/common/cache/ForwardingCache<TK;TV;>;"
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/cache/ForwardingCache;->delegate()Lorg/checkerframework/com/google/common/cache/Cache;

    move-result-object v0

    invoke-interface {v0}, Lorg/checkerframework/com/google/common/cache/Cache;->size()J

    move-result-wide v0

    return-wide v0
.end method

.method public stats()Lorg/checkerframework/com/google/common/cache/CacheStats;
    .locals 1

    .line 97
    .local p0, "this":Lorg/checkerframework/com/google/common/cache/ForwardingCache;, "Lorg/checkerframework/com/google/common/cache/ForwardingCache<TK;TV;>;"
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/cache/ForwardingCache;->delegate()Lorg/checkerframework/com/google/common/cache/Cache;

    move-result-object v0

    invoke-interface {v0}, Lorg/checkerframework/com/google/common/cache/Cache;->stats()Lorg/checkerframework/com/google/common/cache/CacheStats;

    move-result-object v0

    return-object v0
.end method
