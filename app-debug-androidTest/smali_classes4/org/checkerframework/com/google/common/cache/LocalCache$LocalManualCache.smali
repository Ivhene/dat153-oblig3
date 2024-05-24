.class Lorg/checkerframework/com/google/common/cache/LocalCache$LocalManualCache;
.super Ljava/lang/Object;
.source "LocalCache.java"

# interfaces
.implements Lorg/checkerframework/com/google/common/cache/Cache;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/com/google/common/cache/LocalCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "LocalManualCache"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/checkerframework/com/google/common/cache/Cache<",
        "TK;TV;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field final localCache:Lorg/checkerframework/com/google/common/cache/LocalCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/checkerframework/com/google/common/cache/LocalCache<",
            "TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lorg/checkerframework/com/google/common/cache/CacheBuilder;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/google/common/cache/CacheBuilder<",
            "-TK;-TV;>;)V"
        }
    .end annotation

    .line 4856
    .local p0, "this":Lorg/checkerframework/com/google/common/cache/LocalCache$LocalManualCache;, "Lorg/checkerframework/com/google/common/cache/LocalCache$LocalManualCache<TK;TV;>;"
    .local p1, "builder":Lorg/checkerframework/com/google/common/cache/CacheBuilder;, "Lorg/checkerframework/com/google/common/cache/CacheBuilder<-TK;-TV;>;"
    new-instance v0, Lorg/checkerframework/com/google/common/cache/LocalCache;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lorg/checkerframework/com/google/common/cache/LocalCache;-><init>(Lorg/checkerframework/com/google/common/cache/CacheBuilder;Lorg/checkerframework/com/google/common/cache/CacheLoader;)V

    invoke-direct {p0, v0}, Lorg/checkerframework/com/google/common/cache/LocalCache$LocalManualCache;-><init>(Lorg/checkerframework/com/google/common/cache/LocalCache;)V

    .line 4857
    return-void
.end method

.method private constructor <init>(Lorg/checkerframework/com/google/common/cache/LocalCache;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/google/common/cache/LocalCache<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 4859
    .local p0, "this":Lorg/checkerframework/com/google/common/cache/LocalCache$LocalManualCache;, "Lorg/checkerframework/com/google/common/cache/LocalCache$LocalManualCache<TK;TV;>;"
    .local p1, "localCache":Lorg/checkerframework/com/google/common/cache/LocalCache;, "Lorg/checkerframework/com/google/common/cache/LocalCache<TK;TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4860
    iput-object p1, p0, Lorg/checkerframework/com/google/common/cache/LocalCache$LocalManualCache;->localCache:Lorg/checkerframework/com/google/common/cache/LocalCache;

    .line 4861
    return-void
.end method

.method synthetic constructor <init>(Lorg/checkerframework/com/google/common/cache/LocalCache;Lorg/checkerframework/com/google/common/cache/LocalCache$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/checkerframework/com/google/common/cache/LocalCache;
    .param p2, "x1"    # Lorg/checkerframework/com/google/common/cache/LocalCache$1;

    .line 4852
    .local p0, "this":Lorg/checkerframework/com/google/common/cache/LocalCache$LocalManualCache;, "Lorg/checkerframework/com/google/common/cache/LocalCache$LocalManualCache<TK;TV;>;"
    invoke-direct {p0, p1}, Lorg/checkerframework/com/google/common/cache/LocalCache$LocalManualCache;-><init>(Lorg/checkerframework/com/google/common/cache/LocalCache;)V

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

    .line 4921
    .local p0, "this":Lorg/checkerframework/com/google/common/cache/LocalCache$LocalManualCache;, "Lorg/checkerframework/com/google/common/cache/LocalCache$LocalManualCache<TK;TV;>;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/cache/LocalCache$LocalManualCache;->localCache:Lorg/checkerframework/com/google/common/cache/LocalCache;

    return-object v0
.end method

.method public cleanUp()V
    .locals 1

    .line 4936
    .local p0, "this":Lorg/checkerframework/com/google/common/cache/LocalCache$LocalManualCache;, "Lorg/checkerframework/com/google/common/cache/LocalCache$LocalManualCache<TK;TV;>;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/cache/LocalCache$LocalManualCache;->localCache:Lorg/checkerframework/com/google/common/cache/LocalCache;

    invoke-virtual {v0}, Lorg/checkerframework/com/google/common/cache/LocalCache;->cleanUp()V

    .line 4937
    return-void
.end method

.method public get(Ljava/lang/Object;Ljava/util/concurrent/Callable;)Ljava/lang/Object;
    .locals 2
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

    .line 4872
    .local p0, "this":Lorg/checkerframework/com/google/common/cache/LocalCache$LocalManualCache;, "Lorg/checkerframework/com/google/common/cache/LocalCache$LocalManualCache<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "valueLoader":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<+TV;>;"
    invoke-static {p2}, Lorg/checkerframework/com/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4873
    iget-object v0, p0, Lorg/checkerframework/com/google/common/cache/LocalCache$LocalManualCache;->localCache:Lorg/checkerframework/com/google/common/cache/LocalCache;

    new-instance v1, Lorg/checkerframework/com/google/common/cache/LocalCache$LocalManualCache$1;

    invoke-direct {v1, p0, p2}, Lorg/checkerframework/com/google/common/cache/LocalCache$LocalManualCache$1;-><init>(Lorg/checkerframework/com/google/common/cache/LocalCache$LocalManualCache;Ljava/util/concurrent/Callable;)V

    invoke-virtual {v0, p1, v1}, Lorg/checkerframework/com/google/common/cache/LocalCache;->get(Ljava/lang/Object;Lorg/checkerframework/com/google/common/cache/CacheLoader;)Ljava/lang/Object;

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

    .line 4885
    .local p0, "this":Lorg/checkerframework/com/google/common/cache/LocalCache$LocalManualCache;, "Lorg/checkerframework/com/google/common/cache/LocalCache$LocalManualCache<TK;TV;>;"
    .local p1, "keys":Ljava/lang/Iterable;, "Ljava/lang/Iterable<*>;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/cache/LocalCache$LocalManualCache;->localCache:Lorg/checkerframework/com/google/common/cache/LocalCache;

    invoke-virtual {v0, p1}, Lorg/checkerframework/com/google/common/cache/LocalCache;->getAllPresent(Ljava/lang/Iterable;)Lorg/checkerframework/com/google/common/collect/ImmutableMap;

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

    .line 4867
    .local p0, "this":Lorg/checkerframework/com/google/common/cache/LocalCache$LocalManualCache;, "Lorg/checkerframework/com/google/common/cache/LocalCache$LocalManualCache<TK;TV;>;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/cache/LocalCache$LocalManualCache;->localCache:Lorg/checkerframework/com/google/common/cache/LocalCache;

    invoke-virtual {v0, p1}, Lorg/checkerframework/com/google/common/cache/LocalCache;->getIfPresent(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public invalidate(Ljava/lang/Object;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;

    .line 4900
    .local p0, "this":Lorg/checkerframework/com/google/common/cache/LocalCache$LocalManualCache;, "Lorg/checkerframework/com/google/common/cache/LocalCache$LocalManualCache<TK;TV;>;"
    invoke-static {p1}, Lorg/checkerframework/com/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4901
    iget-object v0, p0, Lorg/checkerframework/com/google/common/cache/LocalCache$LocalManualCache;->localCache:Lorg/checkerframework/com/google/common/cache/LocalCache;

    invoke-virtual {v0, p1}, Lorg/checkerframework/com/google/common/cache/LocalCache;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4902
    return-void
.end method

.method public invalidateAll()V
    .locals 1

    .line 4911
    .local p0, "this":Lorg/checkerframework/com/google/common/cache/LocalCache$LocalManualCache;, "Lorg/checkerframework/com/google/common/cache/LocalCache$LocalManualCache<TK;TV;>;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/cache/LocalCache$LocalManualCache;->localCache:Lorg/checkerframework/com/google/common/cache/LocalCache;

    invoke-virtual {v0}, Lorg/checkerframework/com/google/common/cache/LocalCache;->clear()V

    .line 4912
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

    .line 4906
    .local p0, "this":Lorg/checkerframework/com/google/common/cache/LocalCache$LocalManualCache;, "Lorg/checkerframework/com/google/common/cache/LocalCache$LocalManualCache<TK;TV;>;"
    .local p1, "keys":Ljava/lang/Iterable;, "Ljava/lang/Iterable<*>;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/cache/LocalCache$LocalManualCache;->localCache:Lorg/checkerframework/com/google/common/cache/LocalCache;

    invoke-virtual {v0, p1}, Lorg/checkerframework/com/google/common/cache/LocalCache;->invalidateAll(Ljava/lang/Iterable;)V

    .line 4907
    return-void
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)V"
        }
    .end annotation

    .line 4890
    .local p0, "this":Lorg/checkerframework/com/google/common/cache/LocalCache$LocalManualCache;, "Lorg/checkerframework/com/google/common/cache/LocalCache$LocalManualCache<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/cache/LocalCache$LocalManualCache;->localCache:Lorg/checkerframework/com/google/common/cache/LocalCache;

    invoke-virtual {v0, p1, p2}, Lorg/checkerframework/com/google/common/cache/LocalCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4891
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

    .line 4895
    .local p0, "this":Lorg/checkerframework/com/google/common/cache/LocalCache$LocalManualCache;, "Lorg/checkerframework/com/google/common/cache/LocalCache$LocalManualCache<TK;TV;>;"
    .local p1, "m":Ljava/util/Map;, "Ljava/util/Map<+TK;+TV;>;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/cache/LocalCache$LocalManualCache;->localCache:Lorg/checkerframework/com/google/common/cache/LocalCache;

    invoke-virtual {v0, p1}, Lorg/checkerframework/com/google/common/cache/LocalCache;->putAll(Ljava/util/Map;)V

    .line 4896
    return-void
.end method

.method public size()J
    .locals 2

    .line 4916
    .local p0, "this":Lorg/checkerframework/com/google/common/cache/LocalCache$LocalManualCache;, "Lorg/checkerframework/com/google/common/cache/LocalCache$LocalManualCache<TK;TV;>;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/cache/LocalCache$LocalManualCache;->localCache:Lorg/checkerframework/com/google/common/cache/LocalCache;

    invoke-virtual {v0}, Lorg/checkerframework/com/google/common/cache/LocalCache;->longSize()J

    move-result-wide v0

    return-wide v0
.end method

.method public stats()Lorg/checkerframework/com/google/common/cache/CacheStats;
    .locals 6

    .line 4926
    .local p0, "this":Lorg/checkerframework/com/google/common/cache/LocalCache$LocalManualCache;, "Lorg/checkerframework/com/google/common/cache/LocalCache$LocalManualCache<TK;TV;>;"
    new-instance v0, Lorg/checkerframework/com/google/common/cache/AbstractCache$SimpleStatsCounter;

    invoke-direct {v0}, Lorg/checkerframework/com/google/common/cache/AbstractCache$SimpleStatsCounter;-><init>()V

    .line 4927
    .local v0, "aggregator":Lorg/checkerframework/com/google/common/cache/AbstractCache$SimpleStatsCounter;
    iget-object v1, p0, Lorg/checkerframework/com/google/common/cache/LocalCache$LocalManualCache;->localCache:Lorg/checkerframework/com/google/common/cache/LocalCache;

    iget-object v1, v1, Lorg/checkerframework/com/google/common/cache/LocalCache;->globalStatsCounter:Lorg/checkerframework/com/google/common/cache/AbstractCache$StatsCounter;

    invoke-virtual {v0, v1}, Lorg/checkerframework/com/google/common/cache/AbstractCache$SimpleStatsCounter;->incrementBy(Lorg/checkerframework/com/google/common/cache/AbstractCache$StatsCounter;)V

    .line 4928
    iget-object v1, p0, Lorg/checkerframework/com/google/common/cache/LocalCache$LocalManualCache;->localCache:Lorg/checkerframework/com/google/common/cache/LocalCache;

    iget-object v1, v1, Lorg/checkerframework/com/google/common/cache/LocalCache;->segments:[Lorg/checkerframework/com/google/common/cache/LocalCache$Segment;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v1, v3

    .line 4929
    .local v4, "segment":Lorg/checkerframework/com/google/common/cache/LocalCache$Segment;, "Lorg/checkerframework/com/google/common/cache/LocalCache$Segment<TK;TV;>;"
    iget-object v5, v4, Lorg/checkerframework/com/google/common/cache/LocalCache$Segment;->statsCounter:Lorg/checkerframework/com/google/common/cache/AbstractCache$StatsCounter;

    invoke-virtual {v0, v5}, Lorg/checkerframework/com/google/common/cache/AbstractCache$SimpleStatsCounter;->incrementBy(Lorg/checkerframework/com/google/common/cache/AbstractCache$StatsCounter;)V

    .line 4928
    .end local v4    # "segment":Lorg/checkerframework/com/google/common/cache/LocalCache$Segment;, "Lorg/checkerframework/com/google/common/cache/LocalCache$Segment<TK;TV;>;"
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 4931
    :cond_0
    invoke-virtual {v0}, Lorg/checkerframework/com/google/common/cache/AbstractCache$SimpleStatsCounter;->snapshot()Lorg/checkerframework/com/google/common/cache/CacheStats;

    move-result-object v1

    return-object v1
.end method

.method writeReplace()Ljava/lang/Object;
    .locals 2

    .line 4944
    .local p0, "this":Lorg/checkerframework/com/google/common/cache/LocalCache$LocalManualCache;, "Lorg/checkerframework/com/google/common/cache/LocalCache$LocalManualCache<TK;TV;>;"
    new-instance v0, Lorg/checkerframework/com/google/common/cache/LocalCache$ManualSerializationProxy;

    iget-object v1, p0, Lorg/checkerframework/com/google/common/cache/LocalCache$LocalManualCache;->localCache:Lorg/checkerframework/com/google/common/cache/LocalCache;

    invoke-direct {v0, v1}, Lorg/checkerframework/com/google/common/cache/LocalCache$ManualSerializationProxy;-><init>(Lorg/checkerframework/com/google/common/cache/LocalCache;)V

    return-object v0
.end method
