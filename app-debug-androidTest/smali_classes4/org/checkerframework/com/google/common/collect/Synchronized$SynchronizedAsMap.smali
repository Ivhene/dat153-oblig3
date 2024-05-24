.class Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedAsMap;
.super Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedMap;
.source "Synchronized.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/com/google/common/collect/Synchronized;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SynchronizedAsMap"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedMap<",
        "TK;",
        "Ljava/util/Collection<",
        "TV;>;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J


# instance fields
.field transient asMapEntrySet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "TK;",
            "Ljava/util/Collection<",
            "TV;>;>;>;"
        }
    .end annotation
.end field

.field transient asMapValues:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Ljava/util/Collection<",
            "TV;>;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/Map;Ljava/lang/Object;)V
    .locals 0
    .param p2, "mutex"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "TK;",
            "Ljava/util/Collection<",
            "TV;>;>;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 1353
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedAsMap;, "Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedAsMap<TK;TV;>;"
    .local p1, "delegate":Ljava/util/Map;, "Ljava/util/Map<TK;Ljava/util/Collection<TV;>;>;"
    invoke-direct {p0, p1, p2}, Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedMap;-><init>(Ljava/util/Map;Ljava/lang/Object;)V

    .line 1354
    return-void
.end method


# virtual methods
.method public containsValue(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .line 1387
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedAsMap;, "Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedAsMap<TK;TV;>;"
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedAsMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public entrySet()Ljava/util/Set;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "TK;",
            "Ljava/util/Collection<",
            "TV;>;>;>;"
        }
    .end annotation

    .line 1366
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedAsMap;, "Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedAsMap<TK;TV;>;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedAsMap;->mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 1367
    :try_start_0
    iget-object v1, p0, Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedAsMap;->asMapEntrySet:Ljava/util/Set;

    if-nez v1, :cond_0

    .line 1368
    new-instance v1, Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedAsMapEntries;

    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedAsMap;->delegate()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    iget-object v3, p0, Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedAsMap;->mutex:Ljava/lang/Object;

    invoke-direct {v1, v2, v3}, Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedAsMapEntries;-><init>(Ljava/util/Set;Ljava/lang/Object;)V

    iput-object v1, p0, Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedAsMap;->asMapEntrySet:Ljava/util/Set;

    .line 1370
    :cond_0
    iget-object v1, p0, Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedAsMap;->asMapEntrySet:Ljava/util/Set;

    monitor-exit v0

    return-object v1

    .line 1371
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1348
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedAsMap;, "Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedAsMap<TK;TV;>;"
    invoke-virtual {p0, p1}, Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedAsMap;->get(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object p1

    return-object p1
.end method

.method public get(Ljava/lang/Object;)Ljava/util/Collection;
    .locals 3
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

    .line 1358
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedAsMap;, "Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedAsMap<TK;TV;>;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedAsMap;->mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 1359
    :try_start_0
    invoke-super {p0, p1}, Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    .line 1360
    .local v1, "collection":Ljava/util/Collection;, "Ljava/util/Collection<TV;>;"
    if-nez v1, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedAsMap;->mutex:Ljava/lang/Object;

    invoke-static {v1, v2}, Lorg/checkerframework/com/google/common/collect/Synchronized;->access$400(Ljava/util/Collection;Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v2

    :goto_0
    monitor-exit v0

    return-object v2

    .line 1361
    .end local v1    # "collection":Ljava/util/Collection;, "Ljava/util/Collection<TV;>;"
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public values()Ljava/util/Collection;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ljava/util/Collection<",
            "TV;>;>;"
        }
    .end annotation

    .line 1376
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedAsMap;, "Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedAsMap<TK;TV;>;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedAsMap;->mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 1377
    :try_start_0
    iget-object v1, p0, Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedAsMap;->asMapValues:Ljava/util/Collection;

    if-nez v1, :cond_0

    .line 1378
    new-instance v1, Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedAsMapValues;

    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedAsMap;->delegate()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    iget-object v3, p0, Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedAsMap;->mutex:Ljava/lang/Object;

    invoke-direct {v1, v2, v3}, Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedAsMapValues;-><init>(Ljava/util/Collection;Ljava/lang/Object;)V

    iput-object v1, p0, Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedAsMap;->asMapValues:Ljava/util/Collection;

    .line 1380
    :cond_0
    iget-object v1, p0, Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedAsMap;->asMapValues:Ljava/util/Collection;

    monitor-exit v0

    return-object v1

    .line 1381
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
