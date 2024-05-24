.class Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedBiMap;
.super Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedMap;
.source "Synchronized.java"

# interfaces
.implements Lorg/checkerframework/com/google/common/collect/BiMap;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/com/google/common/collect/Synchronized;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SynchronizedBiMap"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedMap<",
        "TK;TV;>;",
        "Lorg/checkerframework/com/google/common/collect/BiMap<",
        "TK;TV;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J


# instance fields
.field private transient inverse:Lorg/checkerframework/com/google/common/collect/BiMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/checkerframework/com/google/common/collect/BiMap<",
            "TV;TK;>;"
        }
    .end annotation
.end field

.field private transient valueSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "TV;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lorg/checkerframework/com/google/common/collect/BiMap;Ljava/lang/Object;Lorg/checkerframework/com/google/common/collect/BiMap;)V
    .locals 0
    .param p2, "mutex"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/google/common/collect/BiMap<",
            "TK;TV;>;",
            "Ljava/lang/Object;",
            "Lorg/checkerframework/com/google/common/collect/BiMap<",
            "TV;TK;>;)V"
        }
    .end annotation

    .line 1309
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedBiMap;, "Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedBiMap<TK;TV;>;"
    .local p1, "delegate":Lorg/checkerframework/com/google/common/collect/BiMap;, "Lorg/checkerframework/com/google/common/collect/BiMap<TK;TV;>;"
    .local p3, "inverse":Lorg/checkerframework/com/google/common/collect/BiMap;, "Lorg/checkerframework/com/google/common/collect/BiMap<TV;TK;>;"
    invoke-direct {p0, p1, p2}, Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedMap;-><init>(Ljava/util/Map;Ljava/lang/Object;)V

    .line 1310
    iput-object p3, p0, Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedBiMap;->inverse:Lorg/checkerframework/com/google/common/collect/BiMap;

    .line 1311
    return-void
.end method

.method synthetic constructor <init>(Lorg/checkerframework/com/google/common/collect/BiMap;Ljava/lang/Object;Lorg/checkerframework/com/google/common/collect/BiMap;Lorg/checkerframework/com/google/common/collect/Synchronized$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/checkerframework/com/google/common/collect/BiMap;
    .param p2, "x1"    # Ljava/lang/Object;
    .param p3, "x2"    # Lorg/checkerframework/com/google/common/collect/BiMap;
    .param p4, "x3"    # Lorg/checkerframework/com/google/common/collect/Synchronized$1;

    .line 1302
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedBiMap;, "Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedBiMap<TK;TV;>;"
    invoke-direct {p0, p1, p2, p3}, Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedBiMap;-><init>(Lorg/checkerframework/com/google/common/collect/BiMap;Ljava/lang/Object;Lorg/checkerframework/com/google/common/collect/BiMap;)V

    return-void
.end method


# virtual methods
.method bridge synthetic delegate()Ljava/lang/Object;
    .locals 1

    .line 1301
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedBiMap;, "Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedBiMap<TK;TV;>;"
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedBiMap;->delegate()Lorg/checkerframework/com/google/common/collect/BiMap;

    move-result-object v0

    return-object v0
.end method

.method bridge synthetic delegate()Ljava/util/Map;
    .locals 1

    .line 1301
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedBiMap;, "Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedBiMap<TK;TV;>;"
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedBiMap;->delegate()Lorg/checkerframework/com/google/common/collect/BiMap;

    move-result-object v0

    return-object v0
.end method

.method delegate()Lorg/checkerframework/com/google/common/collect/BiMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/checkerframework/com/google/common/collect/BiMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1315
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedBiMap;, "Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedBiMap<TK;TV;>;"
    invoke-super {p0}, Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedMap;->delegate()Ljava/util/Map;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/google/common/collect/BiMap;

    return-object v0
.end method

.method public forcePut(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .line 1330
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedBiMap;, "Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedBiMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedBiMap;->mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 1331
    :try_start_0
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedBiMap;->delegate()Lorg/checkerframework/com/google/common/collect/BiMap;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lorg/checkerframework/com/google/common/collect/BiMap;->forcePut(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 1332
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public inverse()Lorg/checkerframework/com/google/common/collect/BiMap;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/checkerframework/com/google/common/collect/BiMap<",
            "TV;TK;>;"
        }
    .end annotation

    .line 1337
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedBiMap;, "Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedBiMap<TK;TV;>;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedBiMap;->mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 1338
    :try_start_0
    iget-object v1, p0, Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedBiMap;->inverse:Lorg/checkerframework/com/google/common/collect/BiMap;

    if-nez v1, :cond_0

    .line 1339
    new-instance v1, Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedBiMap;

    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedBiMap;->delegate()Lorg/checkerframework/com/google/common/collect/BiMap;

    move-result-object v2

    invoke-interface {v2}, Lorg/checkerframework/com/google/common/collect/BiMap;->inverse()Lorg/checkerframework/com/google/common/collect/BiMap;

    move-result-object v2

    iget-object v3, p0, Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedBiMap;->mutex:Ljava/lang/Object;

    invoke-direct {v1, v2, v3, p0}, Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedBiMap;-><init>(Lorg/checkerframework/com/google/common/collect/BiMap;Ljava/lang/Object;Lorg/checkerframework/com/google/common/collect/BiMap;)V

    iput-object v1, p0, Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedBiMap;->inverse:Lorg/checkerframework/com/google/common/collect/BiMap;

    .line 1341
    :cond_0
    iget-object v1, p0, Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedBiMap;->inverse:Lorg/checkerframework/com/google/common/collect/BiMap;

    monitor-exit v0

    return-object v1

    .line 1342
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public bridge synthetic values()Ljava/util/Collection;
    .locals 1

    .line 1301
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedBiMap;, "Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedBiMap<TK;TV;>;"
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedBiMap;->values()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public values()Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TV;>;"
        }
    .end annotation

    .line 1320
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedBiMap;, "Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedBiMap<TK;TV;>;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedBiMap;->mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 1321
    :try_start_0
    iget-object v1, p0, Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedBiMap;->valueSet:Ljava/util/Set;

    if-nez v1, :cond_0

    .line 1322
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedBiMap;->delegate()Lorg/checkerframework/com/google/common/collect/BiMap;

    move-result-object v1

    invoke-interface {v1}, Lorg/checkerframework/com/google/common/collect/BiMap;->values()Ljava/util/Set;

    move-result-object v1

    iget-object v2, p0, Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedBiMap;->mutex:Ljava/lang/Object;

    invoke-static {v1, v2}, Lorg/checkerframework/com/google/common/collect/Synchronized;->set(Ljava/util/Set;Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v1

    iput-object v1, p0, Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedBiMap;->valueSet:Ljava/util/Set;

    .line 1324
    :cond_0
    iget-object v1, p0, Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedBiMap;->valueSet:Ljava/util/Set;

    monitor-exit v0

    return-object v1

    .line 1325
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
