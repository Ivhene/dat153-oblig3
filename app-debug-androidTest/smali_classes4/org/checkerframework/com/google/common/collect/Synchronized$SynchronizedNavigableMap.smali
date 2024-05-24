.class Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedNavigableMap;
.super Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedSortedMap;
.source "Synchronized.java"

# interfaces
.implements Ljava/util/NavigableMap;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/com/google/common/collect/Synchronized;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SynchronizedNavigableMap"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedSortedMap<",
        "TK;TV;>;",
        "Ljava/util/NavigableMap<",
        "TK;TV;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J


# instance fields
.field transient descendingKeySet:Ljava/util/NavigableSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/NavigableSet<",
            "TK;>;"
        }
    .end annotation
.end field

.field transient descendingMap:Ljava/util/NavigableMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/NavigableMap<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field transient navigableKeySet:Ljava/util/NavigableSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/NavigableSet<",
            "TK;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/NavigableMap;Ljava/lang/Object;)V
    .locals 0
    .param p2, "mutex"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/NavigableMap<",
            "TK;TV;>;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 1554
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedNavigableMap;, "Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedNavigableMap<TK;TV;>;"
    .local p1, "delegate":Ljava/util/NavigableMap;, "Ljava/util/NavigableMap<TK;TV;>;"
    invoke-direct {p0, p1, p2}, Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedSortedMap;-><init>(Ljava/util/SortedMap;Ljava/lang/Object;)V

    .line 1555
    return-void
.end method


# virtual methods
.method public ceilingEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1564
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedNavigableMap;, "Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedNavigableMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedNavigableMap;->mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 1565
    :try_start_0
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedNavigableMap;->delegate()Ljava/util/NavigableMap;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/NavigableMap;->ceilingEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v1

    iget-object v2, p0, Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedNavigableMap;->mutex:Ljava/lang/Object;

    invoke-static {v1, v2}, Lorg/checkerframework/com/google/common/collect/Synchronized;->access$700(Ljava/util/Map$Entry;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 1566
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public ceilingKey(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TK;"
        }
    .end annotation

    .line 1571
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedNavigableMap;, "Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedNavigableMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedNavigableMap;->mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 1572
    :try_start_0
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedNavigableMap;->delegate()Ljava/util/NavigableMap;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/NavigableMap;->ceilingKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 1573
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method bridge synthetic delegate()Ljava/lang/Object;
    .locals 1

    .line 1548
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedNavigableMap;, "Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedNavigableMap<TK;TV;>;"
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedNavigableMap;->delegate()Ljava/util/NavigableMap;

    move-result-object v0

    return-object v0
.end method

.method bridge synthetic delegate()Ljava/util/Map;
    .locals 1

    .line 1548
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedNavigableMap;, "Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedNavigableMap<TK;TV;>;"
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedNavigableMap;->delegate()Ljava/util/NavigableMap;

    move-result-object v0

    return-object v0
.end method

.method delegate()Ljava/util/NavigableMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/NavigableMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1559
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedNavigableMap;, "Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedNavigableMap<TK;TV;>;"
    invoke-super {p0}, Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedSortedMap;->delegate()Ljava/util/SortedMap;

    move-result-object v0

    check-cast v0, Ljava/util/NavigableMap;

    return-object v0
.end method

.method bridge synthetic delegate()Ljava/util/SortedMap;
    .locals 1

    .line 1548
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedNavigableMap;, "Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedNavigableMap<TK;TV;>;"
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedNavigableMap;->delegate()Ljava/util/NavigableMap;

    move-result-object v0

    return-object v0
.end method

.method public descendingKeySet()Ljava/util/NavigableSet;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/NavigableSet<",
            "TK;>;"
        }
    .end annotation

    .line 1580
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedNavigableMap;, "Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedNavigableMap<TK;TV;>;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedNavigableMap;->mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 1581
    :try_start_0
    iget-object v1, p0, Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedNavigableMap;->descendingKeySet:Ljava/util/NavigableSet;

    if-nez v1, :cond_0

    .line 1582
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedNavigableMap;->delegate()Ljava/util/NavigableMap;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/NavigableMap;->descendingKeySet()Ljava/util/NavigableSet;

    move-result-object v1

    iget-object v2, p0, Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedNavigableMap;->mutex:Ljava/lang/Object;

    invoke-static {v1, v2}, Lorg/checkerframework/com/google/common/collect/Synchronized;->navigableSet(Ljava/util/NavigableSet;Ljava/lang/Object;)Ljava/util/NavigableSet;

    move-result-object v1

    iput-object v1, p0, Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedNavigableMap;->descendingKeySet:Ljava/util/NavigableSet;

    monitor-exit v0

    return-object v1

    .line 1584
    :cond_0
    monitor-exit v0

    return-object v1

    .line 1585
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public descendingMap()Ljava/util/NavigableMap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/NavigableMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1592
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedNavigableMap;, "Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedNavigableMap<TK;TV;>;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedNavigableMap;->mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 1593
    :try_start_0
    iget-object v1, p0, Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedNavigableMap;->descendingMap:Ljava/util/NavigableMap;

    if-nez v1, :cond_0

    .line 1594
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedNavigableMap;->delegate()Ljava/util/NavigableMap;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/NavigableMap;->descendingMap()Ljava/util/NavigableMap;

    move-result-object v1

    iget-object v2, p0, Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedNavigableMap;->mutex:Ljava/lang/Object;

    invoke-static {v1, v2}, Lorg/checkerframework/com/google/common/collect/Synchronized;->navigableMap(Ljava/util/NavigableMap;Ljava/lang/Object;)Ljava/util/NavigableMap;

    move-result-object v1

    iput-object v1, p0, Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedNavigableMap;->descendingMap:Ljava/util/NavigableMap;

    monitor-exit v0

    return-object v1

    .line 1596
    :cond_0
    monitor-exit v0

    return-object v1

    .line 1597
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public firstEntry()Ljava/util/Map$Entry;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1602
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedNavigableMap;, "Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedNavigableMap<TK;TV;>;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedNavigableMap;->mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 1603
    :try_start_0
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedNavigableMap;->delegate()Ljava/util/NavigableMap;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/NavigableMap;->firstEntry()Ljava/util/Map$Entry;

    move-result-object v1

    iget-object v2, p0, Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedNavigableMap;->mutex:Ljava/lang/Object;

    invoke-static {v1, v2}, Lorg/checkerframework/com/google/common/collect/Synchronized;->access$700(Ljava/util/Map$Entry;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 1604
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public floorEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1609
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedNavigableMap;, "Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedNavigableMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedNavigableMap;->mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 1610
    :try_start_0
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedNavigableMap;->delegate()Ljava/util/NavigableMap;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/NavigableMap;->floorEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v1

    iget-object v2, p0, Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedNavigableMap;->mutex:Ljava/lang/Object;

    invoke-static {v1, v2}, Lorg/checkerframework/com/google/common/collect/Synchronized;->access$700(Ljava/util/Map$Entry;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 1611
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public floorKey(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TK;"
        }
    .end annotation

    .line 1616
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedNavigableMap;, "Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedNavigableMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedNavigableMap;->mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 1617
    :try_start_0
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedNavigableMap;->delegate()Ljava/util/NavigableMap;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/NavigableMap;->floorKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 1618
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public headMap(Ljava/lang/Object;Z)Ljava/util/NavigableMap;
    .locals 3
    .param p2, "inclusive"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;Z)",
            "Ljava/util/NavigableMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1623
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedNavigableMap;, "Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedNavigableMap<TK;TV;>;"
    .local p1, "toKey":Ljava/lang/Object;, "TK;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedNavigableMap;->mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 1624
    :try_start_0
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedNavigableMap;->delegate()Ljava/util/NavigableMap;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Ljava/util/NavigableMap;->headMap(Ljava/lang/Object;Z)Ljava/util/NavigableMap;

    move-result-object v1

    iget-object v2, p0, Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedNavigableMap;->mutex:Ljava/lang/Object;

    invoke-static {v1, v2}, Lorg/checkerframework/com/google/common/collect/Synchronized;->navigableMap(Ljava/util/NavigableMap;Ljava/lang/Object;)Ljava/util/NavigableMap;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 1625
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public headMap(Ljava/lang/Object;)Ljava/util/SortedMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/SortedMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1630
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedNavigableMap;, "Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedNavigableMap<TK;TV;>;"
    .local p1, "toKey":Ljava/lang/Object;, "TK;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedNavigableMap;->headMap(Ljava/lang/Object;Z)Ljava/util/NavigableMap;

    move-result-object v0

    return-object v0
.end method

.method public higherEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1635
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedNavigableMap;, "Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedNavigableMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedNavigableMap;->mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 1636
    :try_start_0
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedNavigableMap;->delegate()Ljava/util/NavigableMap;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/NavigableMap;->higherEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v1

    iget-object v2, p0, Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedNavigableMap;->mutex:Ljava/lang/Object;

    invoke-static {v1, v2}, Lorg/checkerframework/com/google/common/collect/Synchronized;->access$700(Ljava/util/Map$Entry;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 1637
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public higherKey(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TK;"
        }
    .end annotation

    .line 1642
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedNavigableMap;, "Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedNavigableMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedNavigableMap;->mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 1643
    :try_start_0
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedNavigableMap;->delegate()Ljava/util/NavigableMap;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/NavigableMap;->higherKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 1644
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
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

    .line 1670
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedNavigableMap;, "Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedNavigableMap<TK;TV;>;"
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedNavigableMap;->navigableKeySet()Ljava/util/NavigableSet;

    move-result-object v0

    return-object v0
.end method

.method public lastEntry()Ljava/util/Map$Entry;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1649
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedNavigableMap;, "Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedNavigableMap<TK;TV;>;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedNavigableMap;->mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 1650
    :try_start_0
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedNavigableMap;->delegate()Ljava/util/NavigableMap;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/NavigableMap;->lastEntry()Ljava/util/Map$Entry;

    move-result-object v1

    iget-object v2, p0, Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedNavigableMap;->mutex:Ljava/lang/Object;

    invoke-static {v1, v2}, Lorg/checkerframework/com/google/common/collect/Synchronized;->access$700(Ljava/util/Map$Entry;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 1651
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public lowerEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1656
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedNavigableMap;, "Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedNavigableMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedNavigableMap;->mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 1657
    :try_start_0
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedNavigableMap;->delegate()Ljava/util/NavigableMap;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/NavigableMap;->lowerEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v1

    iget-object v2, p0, Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedNavigableMap;->mutex:Ljava/lang/Object;

    invoke-static {v1, v2}, Lorg/checkerframework/com/google/common/collect/Synchronized;->access$700(Ljava/util/Map$Entry;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 1658
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public lowerKey(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TK;"
        }
    .end annotation

    .line 1663
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedNavigableMap;, "Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedNavigableMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedNavigableMap;->mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 1664
    :try_start_0
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedNavigableMap;->delegate()Ljava/util/NavigableMap;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/NavigableMap;->lowerKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 1665
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public navigableKeySet()Ljava/util/NavigableSet;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/NavigableSet<",
            "TK;>;"
        }
    .end annotation

    .line 1677
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedNavigableMap;, "Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedNavigableMap<TK;TV;>;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedNavigableMap;->mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 1678
    :try_start_0
    iget-object v1, p0, Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedNavigableMap;->navigableKeySet:Ljava/util/NavigableSet;

    if-nez v1, :cond_0

    .line 1679
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedNavigableMap;->delegate()Ljava/util/NavigableMap;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/NavigableMap;->navigableKeySet()Ljava/util/NavigableSet;

    move-result-object v1

    iget-object v2, p0, Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedNavigableMap;->mutex:Ljava/lang/Object;

    invoke-static {v1, v2}, Lorg/checkerframework/com/google/common/collect/Synchronized;->navigableSet(Ljava/util/NavigableSet;Ljava/lang/Object;)Ljava/util/NavigableSet;

    move-result-object v1

    iput-object v1, p0, Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedNavigableMap;->navigableKeySet:Ljava/util/NavigableSet;

    monitor-exit v0

    return-object v1

    .line 1681
    :cond_0
    monitor-exit v0

    return-object v1

    .line 1682
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public pollFirstEntry()Ljava/util/Map$Entry;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1687
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedNavigableMap;, "Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedNavigableMap<TK;TV;>;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedNavigableMap;->mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 1688
    :try_start_0
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedNavigableMap;->delegate()Ljava/util/NavigableMap;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/NavigableMap;->pollFirstEntry()Ljava/util/Map$Entry;

    move-result-object v1

    iget-object v2, p0, Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedNavigableMap;->mutex:Ljava/lang/Object;

    invoke-static {v1, v2}, Lorg/checkerframework/com/google/common/collect/Synchronized;->access$700(Ljava/util/Map$Entry;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 1689
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public pollLastEntry()Ljava/util/Map$Entry;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1694
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedNavigableMap;, "Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedNavigableMap<TK;TV;>;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedNavigableMap;->mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 1695
    :try_start_0
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedNavigableMap;->delegate()Ljava/util/NavigableMap;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/NavigableMap;->pollLastEntry()Ljava/util/Map$Entry;

    move-result-object v1

    iget-object v2, p0, Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedNavigableMap;->mutex:Ljava/lang/Object;

    invoke-static {v1, v2}, Lorg/checkerframework/com/google/common/collect/Synchronized;->access$700(Ljava/util/Map$Entry;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 1696
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public subMap(Ljava/lang/Object;ZLjava/lang/Object;Z)Ljava/util/NavigableMap;
    .locals 3
    .param p2, "fromInclusive"    # Z
    .param p4, "toInclusive"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;ZTK;Z)",
            "Ljava/util/NavigableMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1702
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedNavigableMap;, "Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedNavigableMap<TK;TV;>;"
    .local p1, "fromKey":Ljava/lang/Object;, "TK;"
    .local p3, "toKey":Ljava/lang/Object;, "TK;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedNavigableMap;->mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 1703
    :try_start_0
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedNavigableMap;->delegate()Ljava/util/NavigableMap;

    move-result-object v1

    invoke-interface {v1, p1, p2, p3, p4}, Ljava/util/NavigableMap;->subMap(Ljava/lang/Object;ZLjava/lang/Object;Z)Ljava/util/NavigableMap;

    move-result-object v1

    iget-object v2, p0, Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedNavigableMap;->mutex:Ljava/lang/Object;

    invoke-static {v1, v2}, Lorg/checkerframework/com/google/common/collect/Synchronized;->navigableMap(Ljava/util/NavigableMap;Ljava/lang/Object;)Ljava/util/NavigableMap;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 1704
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public subMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TK;)",
            "Ljava/util/SortedMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1709
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedNavigableMap;, "Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedNavigableMap<TK;TV;>;"
    .local p1, "fromKey":Ljava/lang/Object;, "TK;"
    .local p2, "toKey":Ljava/lang/Object;, "TK;"
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, p2, v1}, Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedNavigableMap;->subMap(Ljava/lang/Object;ZLjava/lang/Object;Z)Ljava/util/NavigableMap;

    move-result-object v0

    return-object v0
.end method

.method public tailMap(Ljava/lang/Object;Z)Ljava/util/NavigableMap;
    .locals 3
    .param p2, "inclusive"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;Z)",
            "Ljava/util/NavigableMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1714
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedNavigableMap;, "Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedNavigableMap<TK;TV;>;"
    .local p1, "fromKey":Ljava/lang/Object;, "TK;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedNavigableMap;->mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 1715
    :try_start_0
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedNavigableMap;->delegate()Ljava/util/NavigableMap;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Ljava/util/NavigableMap;->tailMap(Ljava/lang/Object;Z)Ljava/util/NavigableMap;

    move-result-object v1

    iget-object v2, p0, Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedNavigableMap;->mutex:Ljava/lang/Object;

    invoke-static {v1, v2}, Lorg/checkerframework/com/google/common/collect/Synchronized;->navigableMap(Ljava/util/NavigableMap;Ljava/lang/Object;)Ljava/util/NavigableMap;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 1716
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public tailMap(Ljava/lang/Object;)Ljava/util/SortedMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/SortedMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1721
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedNavigableMap;, "Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedNavigableMap<TK;TV;>;"
    .local p1, "fromKey":Ljava/lang/Object;, "TK;"
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedNavigableMap;->tailMap(Ljava/lang/Object;Z)Ljava/util/NavigableMap;

    move-result-object v0

    return-object v0
.end method
