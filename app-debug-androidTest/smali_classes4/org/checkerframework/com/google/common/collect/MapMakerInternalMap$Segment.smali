.class abstract Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$Segment;
.super Ljava/util/concurrent/locks/ReentrantLock;
.source "MapMakerInternalMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "Segment"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        "E::",
        "Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$InternalEntry<",
        "TK;TV;TE;>;S:",
        "Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$Segment<",
        "TK;TV;TE;TS;>;>",
        "Ljava/util/concurrent/locks/ReentrantLock;"
    }
.end annotation


# instance fields
.field volatile count:I

.field final map:Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap<",
            "TK;TV;TE;TS;>;"
        }
    .end annotation
.end field

.field final maxSegmentSize:I

.field modCount:I

.field final readCount:Ljava/util/concurrent/atomic/AtomicInteger;

.field volatile table:Ljava/util/concurrent/atomic/AtomicReferenceArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReferenceArray<",
            "TE;>;"
        }
    .end annotation
.end field

.field threshold:I


# direct methods
.method constructor <init>(Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap;II)V
    .locals 1
    .param p2, "initialCapacity"    # I
    .param p3, "maxSegmentSize"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap<",
            "TK;TV;TE;TS;>;II)V"
        }
    .end annotation

    .line 1203
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$Segment;, "Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$Segment<TK;TV;TE;TS;>;"
    .local p1, "map":Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap;, "Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap<TK;TV;TE;TS;>;"
    invoke-direct {p0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    .line 1201
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$Segment;->readCount:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 1204
    iput-object p1, p0, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$Segment;->map:Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap;

    .line 1205
    iput p3, p0, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$Segment;->maxSegmentSize:I

    .line 1206
    invoke-virtual {p0, p2}, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$Segment;->newEntryArray(I)Ljava/util/concurrent/atomic/AtomicReferenceArray;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$Segment;->initTable(Ljava/util/concurrent/atomic/AtomicReferenceArray;)V

    .line 1207
    return-void
.end method

.method static isCollected(Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$InternalEntry;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            "E::",
            "Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$InternalEntry<",
            "TK;TV;TE;>;>(TE;)Z"
        }
    .end annotation

    .line 1936
    .local p0, "entry":Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$InternalEntry;, "TE;"
    invoke-interface {p0}, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$InternalEntry;->getValue()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method abstract castForTesting(Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$InternalEntry;)Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$InternalEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$InternalEntry<",
            "TK;TV;*>;)TE;"
        }
    .end annotation
.end method

.method clear()V
    .locals 3

    .line 1769
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$Segment;, "Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$Segment<TK;TV;TE;TS;>;"
    iget v0, p0, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$Segment;->count:I

    if-eqz v0, :cond_1

    .line 1770
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$Segment;->lock()V

    .line 1772
    :try_start_0
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$Segment;->table:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 1773
    .local v0, "table":Ljava/util/concurrent/atomic/AtomicReferenceArray;, "Ljava/util/concurrent/atomic/AtomicReferenceArray<TE;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 1774
    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    .line 1773
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1776
    .end local v1    # "i":I
    :cond_0
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$Segment;->maybeClearReferenceQueues()V

    .line 1777
    iget-object v1, p0, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$Segment;->readCount:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 1779
    iget v1, p0, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$Segment;->modCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$Segment;->modCount:I

    .line 1780
    iput v2, p0, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$Segment;->count:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1782
    .end local v0    # "table":Ljava/util/concurrent/atomic/AtomicReferenceArray;, "Ljava/util/concurrent/atomic/AtomicReferenceArray<TE;>;"
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$Segment;->unlock()V

    .line 1783
    goto :goto_1

    .line 1782
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$Segment;->unlock()V

    .line 1783
    throw v0

    .line 1785
    :cond_1
    :goto_1
    return-void
.end method

.method clearReferenceQueue(Ljava/lang/ref/ReferenceQueue;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/ref/ReferenceQueue<",
            "TT;>;)V"
        }
    .end annotation

    .line 1375
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$Segment;, "Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$Segment<TK;TV;TE;TS;>;"
    .local p1, "referenceQueue":Ljava/lang/ref/ReferenceQueue;, "Ljava/lang/ref/ReferenceQueue<TT;>;"
    :goto_0
    invoke-virtual {p1}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1376
    :cond_0
    return-void
.end method

.method clearValueForTesting(Ljava/lang/Object;ILorg/checkerframework/com/google/common/collect/MapMakerInternalMap$WeakValueReference;)Z
    .locals 8
    .param p2, "hash"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;I",
            "Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$WeakValueReference<",
            "TK;TV;+",
            "Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$InternalEntry<",
            "TK;TV;*>;>;)Z"
        }
    .end annotation

    .line 1882
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$Segment;, "Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$Segment<TK;TV;TE;TS;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p3, "valueReference":Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$WeakValueReference;, "Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$WeakValueReference<TK;TV;+Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$InternalEntry<TK;TV;*>;>;"
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$Segment;->lock()V

    .line 1884
    :try_start_0
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$Segment;->table:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 1885
    .local v0, "table":Ljava/util/concurrent/atomic/AtomicReferenceArray;, "Ljava/util/concurrent/atomic/AtomicReferenceArray<TE;>;"
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    and-int/2addr v1, p2

    .line 1886
    .local v1, "index":I
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$InternalEntry;

    .line 1888
    .local v3, "first":Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$InternalEntry;, "TE;"
    move-object v4, v3

    .local v4, "e":Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$InternalEntry;, "TE;"
    :goto_0
    const/4 v5, 0x0

    if-eqz v4, :cond_2

    .line 1889
    invoke-interface {v4}, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$InternalEntry;->getKey()Ljava/lang/Object;

    move-result-object v6

    .line 1890
    .local v6, "entryKey":Ljava/lang/Object;, "TK;"
    invoke-interface {v4}, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$InternalEntry;->getHash()I

    move-result v7

    if-ne v7, p2, :cond_1

    if-eqz v6, :cond_1

    iget-object v7, p0, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$Segment;->map:Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap;

    iget-object v7, v7, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap;->keyEquivalence:Lorg/checkerframework/com/google/common/base/Equivalence;

    .line 1892
    invoke-virtual {v7, p1, v6}, Lorg/checkerframework/com/google/common/base/Equivalence;->equivalent(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 1893
    move-object v7, v4

    check-cast v7, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$WeakValueEntry;

    invoke-interface {v7}, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$WeakValueEntry;->getValueReference()Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$WeakValueReference;

    move-result-object v7

    .line 1894
    .local v7, "v":Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$WeakValueReference;, "Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$WeakValueReference<TK;TV;TE;>;"
    if-ne v7, p3, :cond_0

    .line 1895
    invoke-virtual {p0, v3, v4}, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$Segment;->removeFromChain(Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$InternalEntry;Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$InternalEntry;)Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$InternalEntry;

    move-result-object v5

    .line 1896
    .local v5, "newFirst":Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$InternalEntry;, "TE;"
    invoke-virtual {v0, v1, v5}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1897
    nop

    .line 1905
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$Segment;->unlock()V

    .line 1897
    return v2

    .line 1899
    .end local v5    # "newFirst":Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$InternalEntry;, "TE;"
    :cond_0
    nop

    .line 1905
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$Segment;->unlock()V

    .line 1899
    return v5

    .line 1888
    .end local v6    # "entryKey":Ljava/lang/Object;, "TK;"
    .end local v7    # "v":Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$WeakValueReference;, "Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$WeakValueReference<TK;TV;TE;>;"
    :cond_1
    :try_start_1
    invoke-interface {v4}, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$InternalEntry;->getNext()Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$InternalEntry;

    move-result-object v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v4, v5

    goto :goto_0

    .line 1903
    .end local v4    # "e":Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$InternalEntry;, "TE;"
    :cond_2
    nop

    .line 1905
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$Segment;->unlock()V

    .line 1903
    return v5

    .line 1905
    .end local v0    # "table":Ljava/util/concurrent/atomic/AtomicReferenceArray;, "Ljava/util/concurrent/atomic/AtomicReferenceArray<TE;>;"
    .end local v1    # "index":I
    .end local v3    # "first":Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$InternalEntry;, "TE;"
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$Segment;->unlock()V

    .line 1906
    throw v0
.end method

.method containsKey(Ljava/lang/Object;I)Z
    .locals 3
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "hash"    # I

    .line 1432
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$Segment;, "Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$Segment<TK;TV;TE;TS;>;"
    :try_start_0
    iget v0, p0, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$Segment;->count:I

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 1433
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$Segment;->getLiveEntry(Ljava/lang/Object;I)Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$InternalEntry;

    move-result-object v0

    .line 1434
    .local v0, "e":Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$InternalEntry;, "TE;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$InternalEntry;->getValue()Ljava/lang/Object;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    .line 1439
    :cond_0
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$Segment;->postReadCleanup()V

    .line 1434
    return v1

    .line 1437
    .end local v0    # "e":Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$InternalEntry;, "TE;"
    :cond_1
    nop

    .line 1439
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$Segment;->postReadCleanup()V

    .line 1437
    return v1

    .line 1439
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$Segment;->postReadCleanup()V

    .line 1440
    throw v0
.end method

.method containsValue(Ljava/lang/Object;)Z
    .locals 6
    .param p1, "value"    # Ljava/lang/Object;

    .line 1450
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$Segment;, "Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$Segment<TK;TV;TE;TS;>;"
    :try_start_0
    iget v0, p0, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$Segment;->count:I

    if-eqz v0, :cond_3

    .line 1451
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$Segment;->table:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 1452
    .local v0, "table":Ljava/util/concurrent/atomic/AtomicReferenceArray;, "Ljava/util/concurrent/atomic/AtomicReferenceArray<TE;>;"
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v1

    .line 1453
    .local v1, "length":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_3

    .line 1454
    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$InternalEntry;

    .local v3, "e":Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$InternalEntry;, "TE;"
    :goto_1
    if-eqz v3, :cond_2

    .line 1455
    invoke-virtual {p0, v3}, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$Segment;->getLiveValue(Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$InternalEntry;)Ljava/lang/Object;

    move-result-object v4

    .line 1456
    .local v4, "entryValue":Ljava/lang/Object;, "TV;"
    if-nez v4, :cond_0

    .line 1457
    goto :goto_2

    .line 1459
    :cond_0
    iget-object v5, p0, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$Segment;->map:Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap;

    invoke-virtual {v5}, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap;->valueEquivalence()Lorg/checkerframework/com/google/common/base/Equivalence;

    move-result-object v5

    invoke-virtual {v5, p1, v4}, Lorg/checkerframework/com/google/common/base/Equivalence;->equivalent(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v5, :cond_1

    .line 1460
    nop

    .line 1468
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$Segment;->postReadCleanup()V

    .line 1460
    const/4 v5, 0x1

    return v5

    .line 1454
    .end local v4    # "entryValue":Ljava/lang/Object;, "TV;"
    :cond_1
    :goto_2
    :try_start_1
    invoke-interface {v3}, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$InternalEntry;->getNext()Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$InternalEntry;

    move-result-object v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v3, v4

    goto :goto_1

    .line 1453
    .end local v3    # "e":Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$InternalEntry;, "TE;"
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1466
    .end local v0    # "table":Ljava/util/concurrent/atomic/AtomicReferenceArray;, "Ljava/util/concurrent/atomic/AtomicReferenceArray<TE;>;"
    .end local v1    # "length":I
    .end local v2    # "i":I
    :cond_3
    nop

    .line 1468
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$Segment;->postReadCleanup()V

    .line 1466
    const/4 v0, 0x0

    return v0

    .line 1468
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$Segment;->postReadCleanup()V

    .line 1469
    throw v0
.end method

.method copyEntry(Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$InternalEntry;Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$InternalEntry;)Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$InternalEntry;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;TE;)TE;"
        }
    .end annotation

    .line 1231
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$Segment;, "Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$Segment<TK;TV;TE;TS;>;"
    .local p1, "original":Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$InternalEntry;, "TE;"
    .local p2, "newNext":Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$InternalEntry;, "TE;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$Segment;->map:Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap;

    iget-object v0, v0, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap;->entryHelper:Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$InternalEntryHelper;

    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$Segment;->self()Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$Segment;

    move-result-object v1

    invoke-interface {v0, v1, p1, p2}, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$InternalEntryHelper;->copy(Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$Segment;Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$InternalEntry;Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$InternalEntry;)Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$InternalEntry;

    move-result-object v0

    return-object v0
.end method

.method copyForTesting(Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$InternalEntry;Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$InternalEntry;)Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$InternalEntry;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$InternalEntry<",
            "TK;TV;*>;",
            "Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$InternalEntry<",
            "TK;TV;*>;)TE;"
        }
    .end annotation

    .line 1301
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$Segment;, "Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$Segment<TK;TV;TE;TS;>;"
    .local p1, "entry":Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$InternalEntry;, "Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$InternalEntry<TK;TV;*>;"
    .local p2, "newNext":Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$InternalEntry;, "Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$InternalEntry<TK;TV;*>;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$Segment;->map:Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap;

    iget-object v0, v0, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap;->entryHelper:Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$InternalEntryHelper;

    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$Segment;->self()Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$Segment;

    move-result-object v1

    invoke-virtual {p0, p1}, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$Segment;->castForTesting(Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$InternalEntry;)Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$InternalEntry;

    move-result-object v2

    invoke-virtual {p0, p2}, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$Segment;->castForTesting(Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$InternalEntry;)Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$InternalEntry;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3}, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$InternalEntryHelper;->copy(Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$Segment;Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$InternalEntry;Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$InternalEntry;)Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$InternalEntry;

    move-result-object v0

    return-object v0
.end method

.method drainKeyReferenceQueue(Ljava/lang/ref/ReferenceQueue;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/ReferenceQueue<",
            "TK;>;)V"
        }
    .end annotation

    .line 1349
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$Segment;, "Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$Segment<TK;TV;TE;TS;>;"
    .local p1, "keyReferenceQueue":Ljava/lang/ref/ReferenceQueue;, "Ljava/lang/ref/ReferenceQueue<TK;>;"
    const/4 v0, 0x0

    .line 1350
    .local v0, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    move-result-object v1

    move-object v2, v1

    .local v2, "ref":Ljava/lang/ref/Reference;, "Ljava/lang/ref/Reference<+TK;>;"
    if-eqz v1, :cond_1

    .line 1352
    move-object v1, v2

    check-cast v1, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$InternalEntry;

    .line 1353
    .local v1, "entry":Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$InternalEntry;, "TE;"
    iget-object v3, p0, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$Segment;->map:Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap;

    invoke-virtual {v3, v1}, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap;->reclaimKey(Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$InternalEntry;)V

    .line 1354
    add-int/lit8 v0, v0, 0x1

    const/16 v3, 0x10

    if-ne v0, v3, :cond_0

    .line 1355
    goto :goto_1

    .line 1357
    .end local v1    # "entry":Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$InternalEntry;, "TE;"
    :cond_0
    goto :goto_0

    .line 1358
    :cond_1
    :goto_1
    return-void
.end method

.method drainValueReferenceQueue(Ljava/lang/ref/ReferenceQueue;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/ReferenceQueue<",
            "TV;>;)V"
        }
    .end annotation

    .line 1363
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$Segment;, "Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$Segment<TK;TV;TE;TS;>;"
    .local p1, "valueReferenceQueue":Ljava/lang/ref/ReferenceQueue;, "Ljava/lang/ref/ReferenceQueue<TV;>;"
    const/4 v0, 0x0

    .line 1364
    .local v0, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    move-result-object v1

    move-object v2, v1

    .local v2, "ref":Ljava/lang/ref/Reference;, "Ljava/lang/ref/Reference<+TV;>;"
    if-eqz v1, :cond_1

    .line 1366
    move-object v1, v2

    check-cast v1, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$WeakValueReference;

    .line 1367
    .local v1, "valueReference":Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$WeakValueReference;, "Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$WeakValueReference<TK;TV;TE;>;"
    iget-object v3, p0, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$Segment;->map:Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap;

    invoke-virtual {v3, v1}, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap;->reclaimValue(Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$WeakValueReference;)V

    .line 1368
    add-int/lit8 v0, v0, 0x1

    const/16 v3, 0x10

    if-ne v0, v3, :cond_0

    .line 1369
    goto :goto_1

    .line 1371
    .end local v1    # "valueReference":Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$WeakValueReference;, "Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$WeakValueReference<TK;TV;TE;>;"
    :cond_0
    goto :goto_0

    .line 1372
    :cond_1
    :goto_1
    return-void
.end method

.method expand()V
    .locals 15

    .line 1532
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$Segment;, "Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$Segment<TK;TV;TE;TS;>;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$Segment;->table:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 1533
    .local v0, "oldTable":Ljava/util/concurrent/atomic/AtomicReferenceArray;, "Ljava/util/concurrent/atomic/AtomicReferenceArray<TE;>;"
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v1

    .line 1534
    .local v1, "oldCapacity":I
    const/high16 v2, 0x40000000    # 2.0f

    if-lt v1, v2, :cond_0

    .line 1535
    return-void

    .line 1548
    :cond_0
    iget v2, p0, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$Segment;->count:I

    .line 1549
    .local v2, "newCount":I
    shl-int/lit8 v3, v1, 0x1

    invoke-virtual {p0, v3}, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$Segment;->newEntryArray(I)Ljava/util/concurrent/atomic/AtomicReferenceArray;

    move-result-object v3

    .line 1550
    .local v3, "newTable":Ljava/util/concurrent/atomic/AtomicReferenceArray;, "Ljava/util/concurrent/atomic/AtomicReferenceArray<TE;>;"
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v4

    mul-int/lit8 v4, v4, 0x3

    div-int/lit8 v4, v4, 0x4

    iput v4, p0, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$Segment;->threshold:I

    .line 1551
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    .line 1552
    .local v4, "newMask":I
    const/4 v5, 0x0

    .local v5, "oldIndex":I
    :goto_0
    if-ge v5, v1, :cond_6

    .line 1555
    invoke-virtual {v0, v5}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$InternalEntry;

    .line 1557
    .local v6, "head":Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$InternalEntry;, "TE;"
    if-eqz v6, :cond_5

    .line 1558
    invoke-interface {v6}, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$InternalEntry;->getNext()Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$InternalEntry;

    move-result-object v7

    .line 1559
    .local v7, "next":Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$InternalEntry;, "TE;"
    invoke-interface {v6}, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$InternalEntry;->getHash()I

    move-result v8

    and-int/2addr v8, v4

    .line 1562
    .local v8, "headIndex":I
    if-nez v7, :cond_1

    .line 1563
    invoke-virtual {v3, v8, v6}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    goto :goto_4

    .line 1568
    :cond_1
    move-object v9, v6

    .line 1569
    .local v9, "tail":Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$InternalEntry;, "TE;"
    move v10, v8

    .line 1570
    .local v10, "tailIndex":I
    move-object v11, v7

    .local v11, "e":Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$InternalEntry;, "TE;"
    :goto_1
    if-eqz v11, :cond_3

    .line 1571
    invoke-interface {v11}, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$InternalEntry;->getHash()I

    move-result v12

    and-int/2addr v12, v4

    .line 1572
    .local v12, "newIndex":I
    if-eq v12, v10, :cond_2

    .line 1574
    move v10, v12

    .line 1575
    move-object v9, v11

    .line 1570
    .end local v12    # "newIndex":I
    :cond_2
    invoke-interface {v11}, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$InternalEntry;->getNext()Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$InternalEntry;

    move-result-object v11

    goto :goto_1

    .line 1578
    .end local v11    # "e":Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$InternalEntry;, "TE;"
    :cond_3
    invoke-virtual {v3, v10, v9}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    .line 1581
    move-object v11, v6

    .restart local v11    # "e":Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$InternalEntry;, "TE;"
    :goto_2
    if-eq v11, v9, :cond_5

    .line 1582
    invoke-interface {v11}, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$InternalEntry;->getHash()I

    move-result v12

    and-int/2addr v12, v4

    .line 1583
    .restart local v12    # "newIndex":I
    invoke-virtual {v3, v12}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$InternalEntry;

    .line 1584
    .local v13, "newNext":Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$InternalEntry;, "TE;"
    invoke-virtual {p0, v11, v13}, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$Segment;->copyEntry(Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$InternalEntry;Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$InternalEntry;)Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$InternalEntry;

    move-result-object v14

    .line 1585
    .local v14, "newFirst":Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$InternalEntry;, "TE;"
    if-eqz v14, :cond_4

    .line 1586
    invoke-virtual {v3, v12, v14}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    goto :goto_3

    .line 1588
    :cond_4
    add-int/lit8 v2, v2, -0x1

    .line 1581
    .end local v12    # "newIndex":I
    .end local v13    # "newNext":Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$InternalEntry;, "TE;"
    .end local v14    # "newFirst":Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$InternalEntry;, "TE;"
    :goto_3
    invoke-interface {v11}, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$InternalEntry;->getNext()Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$InternalEntry;

    move-result-object v11

    goto :goto_2

    .line 1552
    .end local v6    # "head":Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$InternalEntry;, "TE;"
    .end local v7    # "next":Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$InternalEntry;, "TE;"
    .end local v8    # "headIndex":I
    .end local v9    # "tail":Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$InternalEntry;, "TE;"
    .end local v10    # "tailIndex":I
    .end local v11    # "e":Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$InternalEntry;, "TE;"
    :cond_5
    :goto_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 1594
    .end local v5    # "oldIndex":I
    :cond_6
    iput-object v3, p0, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$Segment;->table:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 1595
    iput v2, p0, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$Segment;->count:I

    .line 1596
    return-void
.end method

.method get(Ljava/lang/Object;I)Ljava/lang/Object;
    .locals 2
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "hash"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "I)TV;"
        }
    .end annotation

    .line 1415
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$Segment;, "Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$Segment<TK;TV;TE;TS;>;"
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$Segment;->getLiveEntry(Ljava/lang/Object;I)Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$InternalEntry;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1416
    .local v0, "e":Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$InternalEntry;, "TE;"
    if-nez v0, :cond_0

    .line 1417
    nop

    .line 1426
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$Segment;->postReadCleanup()V

    .line 1417
    const/4 v1, 0x0

    return-object v1

    .line 1420
    :cond_0
    :try_start_1
    invoke-interface {v0}, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$InternalEntry;->getValue()Ljava/lang/Object;

    move-result-object v1

    .line 1421
    .local v1, "value":Ljava/lang/Object;, "TV;"
    if-nez v1, :cond_1

    .line 1422
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$Segment;->tryDrainReferenceQueues()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1424
    :cond_1
    nop

    .line 1426
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$Segment;->postReadCleanup()V

    .line 1424
    return-object v1

    .line 1426
    .end local v0    # "e":Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$InternalEntry;, "TE;"
    .end local v1    # "value":Ljava/lang/Object;, "TV;"
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$Segment;->postReadCleanup()V

    .line 1427
    throw v0
.end method

.method getEntry(Ljava/lang/Object;I)Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$InternalEntry;
    .locals 3
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "hash"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "I)TE;"
        }
    .end annotation

    .line 1388
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$Segment;, "Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$Segment<TK;TV;TE;TS;>;"
    iget v0, p0, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$Segment;->count:I

    if-eqz v0, :cond_3

    .line 1389
    invoke-virtual {p0, p2}, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$Segment;->getFirst(I)Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$InternalEntry;

    move-result-object v0

    .local v0, "e":Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$InternalEntry;, "TE;"
    :goto_0
    if-eqz v0, :cond_3

    .line 1390
    invoke-interface {v0}, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$InternalEntry;->getHash()I

    move-result v1

    if-eq v1, p2, :cond_0

    .line 1391
    goto :goto_1

    .line 1394
    :cond_0
    invoke-interface {v0}, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$InternalEntry;->getKey()Ljava/lang/Object;

    move-result-object v1

    .line 1395
    .local v1, "entryKey":Ljava/lang/Object;, "TK;"
    if-nez v1, :cond_1

    .line 1396
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$Segment;->tryDrainReferenceQueues()V

    .line 1397
    goto :goto_1

    .line 1400
    :cond_1
    iget-object v2, p0, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$Segment;->map:Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap;

    iget-object v2, v2, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap;->keyEquivalence:Lorg/checkerframework/com/google/common/base/Equivalence;

    invoke-virtual {v2, p1, v1}, Lorg/checkerframework/com/google/common/base/Equivalence;->equivalent(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1401
    return-object v0

    .line 1389
    .end local v1    # "entryKey":Ljava/lang/Object;, "TK;"
    :cond_2
    :goto_1
    invoke-interface {v0}, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$InternalEntry;->getNext()Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$InternalEntry;

    move-result-object v0

    goto :goto_0

    .line 1406
    .end local v0    # "e":Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$InternalEntry;, "TE;"
    :cond_3
    const/4 v0, 0x0

    return-object v0
.end method

.method getFirst(I)Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$InternalEntry;
    .locals 2
    .param p1, "hash"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .line 1381
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$Segment;, "Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$Segment<TK;TV;TE;TS;>;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$Segment;->table:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 1382
    .local v0, "table":Ljava/util/concurrent/atomic/AtomicReferenceArray;, "Ljava/util/concurrent/atomic/AtomicReferenceArray<TE;>;"
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    and-int/2addr v1, p1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$InternalEntry;

    return-object v1
.end method

.method getKeyReferenceQueueForTesting()Ljava/lang/ref/ReferenceQueue;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/ref/ReferenceQueue<",
            "TK;>;"
        }
    .end annotation

    .line 1260
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$Segment;, "Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$Segment<TK;TV;TE;TS;>;"
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method getLiveEntry(Ljava/lang/Object;I)Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$InternalEntry;
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "hash"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "I)TE;"
        }
    .end annotation

    .line 1410
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$Segment;, "Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$Segment<TK;TV;TE;TS;>;"
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$Segment;->getEntry(Ljava/lang/Object;I)Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$InternalEntry;

    move-result-object v0

    return-object v0
.end method

.method getLiveValue(Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$InternalEntry;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)TV;"
        }
    .end annotation

    .line 1945
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$Segment;, "Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$Segment<TK;TV;TE;TS;>;"
    .local p1, "entry":Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$InternalEntry;, "TE;"
    invoke-interface {p1}, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$InternalEntry;->getKey()Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1946
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$Segment;->tryDrainReferenceQueues()V

    .line 1947
    return-object v1

    .line 1949
    :cond_0
    invoke-interface {p1}, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$InternalEntry;->getValue()Ljava/lang/Object;

    move-result-object v0

    .line 1950
    .local v0, "value":Ljava/lang/Object;, "TV;"
    if-nez v0, :cond_1

    .line 1951
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$Segment;->tryDrainReferenceQueues()V

    .line 1952
    return-object v1

    .line 1955
    :cond_1
    return-object v0
.end method

.method getLiveValueForTesting(Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$InternalEntry;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$InternalEntry<",
            "TK;TV;*>;)TV;"
        }
    .end annotation

    .line 1330
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$Segment;, "Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$Segment<TK;TV;TE;TS;>;"
    .local p1, "entry":Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$InternalEntry;, "Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$InternalEntry<TK;TV;*>;"
    invoke-virtual {p0, p1}, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$Segment;->castForTesting(Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$InternalEntry;)Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$InternalEntry;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$Segment;->getLiveValue(Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$InternalEntry;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method getValueReferenceQueueForTesting()Ljava/lang/ref/ReferenceQueue;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/ref/ReferenceQueue<",
            "TV;>;"
        }
    .end annotation

    .line 1265
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$Segment;, "Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$Segment<TK;TV;TE;TS;>;"
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method getWeakValueReferenceForTesting(Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$InternalEntry;)Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$WeakValueReference;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$InternalEntry<",
            "TK;TV;*>;)",
            "Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$WeakValueReference<",
            "TK;TV;TE;>;"
        }
    .end annotation

    .line 1270
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$Segment;, "Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$Segment<TK;TV;TE;TS;>;"
    .local p1, "entry":Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$InternalEntry;, "Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$InternalEntry<TK;TV;*>;"
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method initTable(Ljava/util/concurrent/atomic/AtomicReferenceArray;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/atomic/AtomicReferenceArray<",
            "TE;>;)V"
        }
    .end annotation

    .line 1239
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$Segment;, "Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$Segment<TK;TV;TE;TS;>;"
    .local p1, "newTable":Ljava/util/concurrent/atomic/AtomicReferenceArray;, "Ljava/util/concurrent/atomic/AtomicReferenceArray<TE;>;"
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v0

    mul-int/lit8 v0, v0, 0x3

    div-int/lit8 v0, v0, 0x4

    iput v0, p0, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$Segment;->threshold:I

    .line 1240
    iget v1, p0, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$Segment;->maxSegmentSize:I

    if-ne v0, v1, :cond_0

    .line 1242
    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$Segment;->threshold:I

    .line 1244
    :cond_0
    iput-object p1, p0, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$Segment;->table:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 1245
    return-void
.end method

.method maybeClearReferenceQueues()V
    .locals 0

    .line 1222
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$Segment;, "Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$Segment<TK;TV;TE;TS;>;"
    return-void
.end method

.method maybeDrainReferenceQueues()V
    .locals 0

    .line 1219
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$Segment;, "Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$Segment<TK;TV;TE;TS;>;"
    return-void
.end method

.method newEntryArray(I)Ljava/util/concurrent/atomic/AtomicReferenceArray;
    .locals 1
    .param p1, "size"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/concurrent/atomic/AtomicReferenceArray<",
            "TE;>;"
        }
    .end annotation

    .line 1235
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$Segment;, "Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$Segment<TK;TV;TE;TS;>;"
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-direct {v0, p1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;-><init>(I)V

    return-object v0
.end method

.method newEntryForTesting(Ljava/lang/Object;ILorg/checkerframework/com/google/common/collect/MapMakerInternalMap$InternalEntry;)Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$InternalEntry;
    .locals 3
    .param p2, "hash"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;I",
            "Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$InternalEntry<",
            "TK;TV;*>;)TE;"
        }
    .end annotation

    .line 1311
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$Segment;, "Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$Segment<TK;TV;TE;TS;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p3, "next":Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$InternalEntry;, "Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$InternalEntry<TK;TV;*>;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$Segment;->map:Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap;

    iget-object v0, v0, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap;->entryHelper:Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$InternalEntryHelper;

    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$Segment;->self()Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$Segment;

    move-result-object v1

    invoke-virtual {p0, p3}, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$Segment;->castForTesting(Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$InternalEntry;)Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$InternalEntry;

    move-result-object v2

    invoke-interface {v0, v1, p1, p2, v2}, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$InternalEntryHelper;->newEntry(Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$Segment;Ljava/lang/Object;ILorg/checkerframework/com/google/common/collect/MapMakerInternalMap$InternalEntry;)Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$InternalEntry;

    move-result-object v0

    return-object v0
.end method

.method newWeakValueReferenceForTesting(Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$InternalEntry;Ljava/lang/Object;)Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$WeakValueReference;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$InternalEntry<",
            "TK;TV;*>;TV;)",
            "Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$WeakValueReference<",
            "TK;TV;TE;>;"
        }
    .end annotation

    .line 1279
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$Segment;, "Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$Segment<TK;TV;TE;TS;>;"
    .local p1, "entry":Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$InternalEntry;, "Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$InternalEntry<TK;TV;*>;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method postReadCleanup()V
    .locals 1

    .line 1964
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$Segment;, "Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$Segment<TK;TV;TE;TS;>;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$Segment;->readCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    and-int/lit8 v0, v0, 0x3f

    if-nez v0, :cond_0

    .line 1965
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$Segment;->runCleanup()V

    .line 1967
    :cond_0
    return-void
.end method

.method preWriteCleanup()V
    .locals 0

    .line 1975
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$Segment;, "Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$Segment<TK;TV;TE;TS;>;"
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$Segment;->runLockedCleanup()V

    .line 1976
    return-void
.end method

.method put(Ljava/lang/Object;ILjava/lang/Object;Z)Ljava/lang/Object;
    .locals 9
    .param p2, "hash"    # I
    .param p4, "onlyIfAbsent"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;ITV;Z)TV;"
        }
    .end annotation

    .line 1473
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$Segment;, "Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$Segment<TK;TV;TE;TS;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p3, "value":Ljava/lang/Object;, "TV;"
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$Segment;->lock()V

    .line 1475
    :try_start_0
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$Segment;->preWriteCleanup()V

    .line 1477
    iget v0, p0, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$Segment;->count:I

    add-int/lit8 v0, v0, 0x1

    .line 1478
    .local v0, "newCount":I
    iget v1, p0, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$Segment;->threshold:I

    if-le v0, v1, :cond_0

    .line 1479
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$Segment;->expand()V

    .line 1480
    iget v1, p0, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$Segment;->count:I

    add-int/lit8 v0, v1, 0x1

    .line 1483
    :cond_0
    iget-object v1, p0, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$Segment;->table:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 1484
    .local v1, "table":Ljava/util/concurrent/atomic/AtomicReferenceArray;, "Ljava/util/concurrent/atomic/AtomicReferenceArray<TE;>;"
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    and-int/2addr v2, p2

    .line 1485
    .local v2, "index":I
    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$InternalEntry;

    .line 1488
    .local v3, "first":Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$InternalEntry;, "TE;"
    move-object v4, v3

    .local v4, "e":Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$InternalEntry;, "TE;"
    :goto_0
    const/4 v5, 0x0

    if-eqz v4, :cond_4

    .line 1489
    invoke-interface {v4}, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$InternalEntry;->getKey()Ljava/lang/Object;

    move-result-object v6

    .line 1490
    .local v6, "entryKey":Ljava/lang/Object;, "TK;"
    invoke-interface {v4}, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$InternalEntry;->getHash()I

    move-result v7

    if-ne v7, p2, :cond_3

    if-eqz v6, :cond_3

    iget-object v7, p0, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$Segment;->map:Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap;

    iget-object v7, v7, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap;->keyEquivalence:Lorg/checkerframework/com/google/common/base/Equivalence;

    .line 1492
    invoke-virtual {v7, p1, v6}, Lorg/checkerframework/com/google/common/base/Equivalence;->equivalent(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 1495
    invoke-interface {v4}, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$InternalEntry;->getValue()Ljava/lang/Object;

    move-result-object v7

    .line 1497
    .local v7, "entryValue":Ljava/lang/Object;, "TV;"
    if-nez v7, :cond_1

    .line 1498
    iget v8, p0, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$Segment;->modCount:I

    add-int/lit8 v8, v8, 0x1

    iput v8, p0, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$Segment;->modCount:I

    .line 1499
    invoke-virtual {p0, v4, p3}, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$Segment;->setValue(Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$InternalEntry;Ljava/lang/Object;)V

    .line 1500
    iget v8, p0, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$Segment;->count:I

    move v0, v8

    .line 1501
    iput v0, p0, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$Segment;->count:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1502
    nop

    .line 1525
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$Segment;->unlock()V

    .line 1502
    return-object v5

    .line 1503
    :cond_1
    if-eqz p4, :cond_2

    .line 1507
    nop

    .line 1525
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$Segment;->unlock()V

    .line 1507
    return-object v7

    .line 1510
    :cond_2
    :try_start_1
    iget v5, p0, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$Segment;->modCount:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$Segment;->modCount:I

    .line 1511
    invoke-virtual {p0, v4, p3}, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$Segment;->setValue(Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$InternalEntry;Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1512
    nop

    .line 1525
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$Segment;->unlock()V

    .line 1512
    return-object v7

    .line 1488
    .end local v6    # "entryKey":Ljava/lang/Object;, "TK;"
    .end local v7    # "entryValue":Ljava/lang/Object;, "TV;"
    :cond_3
    :try_start_2
    invoke-interface {v4}, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$InternalEntry;->getNext()Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$InternalEntry;

    move-result-object v5

    move-object v4, v5

    goto :goto_0

    .line 1518
    .end local v4    # "e":Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$InternalEntry;, "TE;"
    :cond_4
    iget v4, p0, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$Segment;->modCount:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$Segment;->modCount:I

    .line 1519
    iget-object v4, p0, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$Segment;->map:Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap;

    iget-object v4, v4, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap;->entryHelper:Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$InternalEntryHelper;

    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$Segment;->self()Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$Segment;

    move-result-object v6

    invoke-interface {v4, v6, p1, p2, v3}, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$InternalEntryHelper;->newEntry(Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$Segment;Ljava/lang/Object;ILorg/checkerframework/com/google/common/collect/MapMakerInternalMap$InternalEntry;)Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$InternalEntry;

    move-result-object v4

    .line 1520
    .local v4, "newEntry":Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$InternalEntry;, "TE;"
    invoke-virtual {p0, v4, p3}, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$Segment;->setValue(Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$InternalEntry;Ljava/lang/Object;)V

    .line 1521
    invoke-virtual {v1, v2, v4}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    .line 1522
    iput v0, p0, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$Segment;->count:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1523
    nop

    .line 1525
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$Segment;->unlock()V

    .line 1523
    return-object v5

    .line 1525
    .end local v0    # "newCount":I
    .end local v1    # "table":Ljava/util/concurrent/atomic/AtomicReferenceArray;, "Ljava/util/concurrent/atomic/AtomicReferenceArray<TE;>;"
    .end local v2    # "index":I
    .end local v3    # "first":Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$InternalEntry;, "TE;"
    .end local v4    # "newEntry":Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$InternalEntry;, "TE;"
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$Segment;->unlock()V

    .line 1526
    throw v0
.end method

.method reclaimKey(Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$InternalEntry;I)Z
    .locals 8
    .param p2, "hash"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;I)Z"
        }
    .end annotation

    .line 1818
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$Segment;, "Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$Segment<TK;TV;TE;TS;>;"
    .local p1, "entry":Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$InternalEntry;, "TE;"
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$Segment;->lock()V

    .line 1820
    :try_start_0
    iget v0, p0, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$Segment;->count:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .line 1821
    .local v0, "newCount":I
    iget-object v2, p0, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$Segment;->table:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 1822
    .local v2, "table":Ljava/util/concurrent/atomic/AtomicReferenceArray;, "Ljava/util/concurrent/atomic/AtomicReferenceArray<TE;>;"
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v3

    sub-int/2addr v3, v1

    and-int/2addr v3, p2

    .line 1823
    .local v3, "index":I
    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$InternalEntry;

    .line 1825
    .local v4, "first":Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$InternalEntry;, "TE;"
    move-object v5, v4

    .local v5, "e":Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$InternalEntry;, "TE;"
    :goto_0
    if-eqz v5, :cond_1

    .line 1826
    if-ne v5, p1, :cond_0

    .line 1827
    iget v6, p0, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$Segment;->modCount:I

    add-int/2addr v6, v1

    iput v6, p0, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$Segment;->modCount:I

    .line 1828
    invoke-virtual {p0, v4, v5}, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$Segment;->removeFromChain(Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$InternalEntry;Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$InternalEntry;)Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$InternalEntry;

    move-result-object v6

    .line 1829
    .local v6, "newFirst":Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$InternalEntry;, "TE;"
    iget v7, p0, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$Segment;->count:I

    sub-int/2addr v7, v1

    .line 1830
    .end local v0    # "newCount":I
    .local v7, "newCount":I
    invoke-virtual {v2, v3, v6}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    .line 1831
    iput v7, p0, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$Segment;->count:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1832
    nop

    .line 1838
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$Segment;->unlock()V

    .line 1832
    return v1

    .line 1825
    .end local v6    # "newFirst":Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$InternalEntry;, "TE;"
    .end local v7    # "newCount":I
    .restart local v0    # "newCount":I
    :cond_0
    :try_start_1
    invoke-interface {v5}, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$InternalEntry;->getNext()Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$InternalEntry;

    move-result-object v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v5, v6

    goto :goto_0

    .line 1836
    .end local v5    # "e":Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$InternalEntry;, "TE;"
    :cond_1
    nop

    .line 1838
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$Segment;->unlock()V

    .line 1836
    const/4 v1, 0x0

    return v1

    .line 1838
    .end local v0    # "newCount":I
    .end local v2    # "table":Ljava/util/concurrent/atomic/AtomicReferenceArray;, "Ljava/util/concurrent/atomic/AtomicReferenceArray<TE;>;"
    .end local v3    # "index":I
    .end local v4    # "first":Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$InternalEntry;, "TE;"
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$Segment;->unlock()V

    .line 1839
    throw v0
.end method

.method reclaimValue(Ljava/lang/Object;ILorg/checkerframework/com/google/common/collect/MapMakerInternalMap$WeakValueReference;)Z
    .locals 10
    .param p2, "hash"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;I",
            "Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$WeakValueReference<",
            "TK;TV;TE;>;)Z"
        }
    .end annotation

    .line 1845
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$Segment;, "Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$Segment<TK;TV;TE;TS;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p3, "valueReference":Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$WeakValueReference;, "Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$WeakValueReference<TK;TV;TE;>;"
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$Segment;->lock()V

    .line 1847
    :try_start_0
    iget v0, p0, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$Segment;->count:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .line 1848
    .local v0, "newCount":I
    iget-object v2, p0, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$Segment;->table:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 1849
    .local v2, "table":Ljava/util/concurrent/atomic/AtomicReferenceArray;, "Ljava/util/concurrent/atomic/AtomicReferenceArray<TE;>;"
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v3

    sub-int/2addr v3, v1

    and-int/2addr v3, p2

    .line 1850
    .local v3, "index":I
    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$InternalEntry;

    .line 1852
    .local v4, "first":Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$InternalEntry;, "TE;"
    move-object v5, v4

    .local v5, "e":Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$InternalEntry;, "TE;"
    :goto_0
    const/4 v6, 0x0

    if-eqz v5, :cond_2

    .line 1853
    invoke-interface {v5}, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$InternalEntry;->getKey()Ljava/lang/Object;

    move-result-object v7

    .line 1854
    .local v7, "entryKey":Ljava/lang/Object;, "TK;"
    invoke-interface {v5}, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$InternalEntry;->getHash()I

    move-result v8

    if-ne v8, p2, :cond_1

    if-eqz v7, :cond_1

    iget-object v8, p0, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$Segment;->map:Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap;

    iget-object v8, v8, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap;->keyEquivalence:Lorg/checkerframework/com/google/common/base/Equivalence;

    .line 1856
    invoke-virtual {v8, p1, v7}, Lorg/checkerframework/com/google/common/base/Equivalence;->equivalent(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 1857
    move-object v8, v5

    check-cast v8, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$WeakValueEntry;

    invoke-interface {v8}, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$WeakValueEntry;->getValueReference()Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$WeakValueReference;

    move-result-object v8

    .line 1858
    .local v8, "v":Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$WeakValueReference;, "Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$WeakValueReference<TK;TV;TE;>;"
    if-ne v8, p3, :cond_0

    .line 1859
    iget v6, p0, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$Segment;->modCount:I

    add-int/2addr v6, v1

    iput v6, p0, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$Segment;->modCount:I

    .line 1860
    invoke-virtual {p0, v4, v5}, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$Segment;->removeFromChain(Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$InternalEntry;Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$InternalEntry;)Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$InternalEntry;

    move-result-object v6

    .line 1861
    .local v6, "newFirst":Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$InternalEntry;, "TE;"
    iget v9, p0, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$Segment;->count:I

    sub-int/2addr v9, v1

    .line 1862
    .end local v0    # "newCount":I
    .local v9, "newCount":I
    invoke-virtual {v2, v3, v6}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    .line 1863
    iput v9, p0, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$Segment;->count:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1864
    nop

    .line 1872
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$Segment;->unlock()V

    .line 1864
    return v1

    .line 1866
    .end local v6    # "newFirst":Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$InternalEntry;, "TE;"
    .end local v9    # "newCount":I
    .restart local v0    # "newCount":I
    :cond_0
    nop

    .line 1872
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$Segment;->unlock()V

    .line 1866
    return v6

    .line 1852
    .end local v7    # "entryKey":Ljava/lang/Object;, "TK;"
    .end local v8    # "v":Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$WeakValueReference;, "Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$WeakValueReference<TK;TV;TE;>;"
    :cond_1
    :try_start_1
    invoke-interface {v5}, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$InternalEntry;->getNext()Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$InternalEntry;

    move-result-object v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v5, v6

    goto :goto_0

    .line 1870
    .end local v5    # "e":Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$InternalEntry;, "TE;"
    :cond_2
    nop

    .line 1872
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$Segment;->unlock()V

    .line 1870
    return v6

    .line 1872
    .end local v0    # "newCount":I
    .end local v2    # "table":Ljava/util/concurrent/atomic/AtomicReferenceArray;, "Ljava/util/concurrent/atomic/AtomicReferenceArray<TE;>;"
    .end local v3    # "index":I
    .end local v4    # "first":Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$InternalEntry;, "TE;"
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$Segment;->unlock()V

    .line 1873
    throw v0
.end method

.method remove(Ljava/lang/Object;I)Ljava/lang/Object;
    .locals 9
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "hash"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "I)TV;"
        }
    .end annotation

    .line 1688
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$Segment;, "Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$Segment<TK;TV;TE;TS;>;"
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$Segment;->lock()V

    .line 1690
    :try_start_0
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$Segment;->preWriteCleanup()V

    .line 1692
    iget v0, p0, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$Segment;->count:I

    add-int/lit8 v0, v0, -0x1

    .line 1693
    .local v0, "newCount":I
    iget-object v1, p0, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$Segment;->table:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 1694
    .local v1, "table":Ljava/util/concurrent/atomic/AtomicReferenceArray;, "Ljava/util/concurrent/atomic/AtomicReferenceArray<TE;>;"
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    and-int/2addr v2, p2

    .line 1695
    .local v2, "index":I
    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$InternalEntry;

    .line 1697
    .local v3, "first":Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$InternalEntry;, "TE;"
    move-object v4, v3

    .local v4, "e":Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$InternalEntry;, "TE;"
    :goto_0
    const/4 v5, 0x0

    if-eqz v4, :cond_3

    .line 1698
    invoke-interface {v4}, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$InternalEntry;->getKey()Ljava/lang/Object;

    move-result-object v6

    .line 1699
    .local v6, "entryKey":Ljava/lang/Object;, "TK;"
    invoke-interface {v4}, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$InternalEntry;->getHash()I

    move-result v7

    if-ne v7, p2, :cond_2

    if-eqz v6, :cond_2

    iget-object v7, p0, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$Segment;->map:Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap;

    iget-object v7, v7, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap;->keyEquivalence:Lorg/checkerframework/com/google/common/base/Equivalence;

    .line 1701
    invoke-virtual {v7, p1, v6}, Lorg/checkerframework/com/google/common/base/Equivalence;->equivalent(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 1702
    invoke-interface {v4}, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$InternalEntry;->getValue()Ljava/lang/Object;

    move-result-object v7

    .line 1704
    .local v7, "entryValue":Ljava/lang/Object;, "TV;"
    if-eqz v7, :cond_0

    goto :goto_1

    .line 1706
    :cond_0
    invoke-static {v4}, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$Segment;->isCollected(Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$InternalEntry;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 1712
    :goto_1
    iget v5, p0, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$Segment;->modCount:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$Segment;->modCount:I

    .line 1713
    invoke-virtual {p0, v3, v4}, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$Segment;->removeFromChain(Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$InternalEntry;Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$InternalEntry;)Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$InternalEntry;

    move-result-object v5

    .line 1714
    .local v5, "newFirst":Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$InternalEntry;, "TE;"
    iget v8, p0, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$Segment;->count:I

    add-int/lit8 v8, v8, -0x1

    .line 1715
    .end local v0    # "newCount":I
    .local v8, "newCount":I
    invoke-virtual {v1, v2, v5}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    .line 1716
    iput v8, p0, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$Segment;->count:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1717
    nop

    .line 1723
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$Segment;->unlock()V

    .line 1717
    return-object v7

    .line 1709
    .end local v5    # "newFirst":Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$InternalEntry;, "TE;"
    .end local v8    # "newCount":I
    .restart local v0    # "newCount":I
    :cond_1
    nop

    .line 1723
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$Segment;->unlock()V

    .line 1709
    return-object v5

    .line 1697
    .end local v6    # "entryKey":Ljava/lang/Object;, "TK;"
    .end local v7    # "entryValue":Ljava/lang/Object;, "TV;"
    :cond_2
    :try_start_1
    invoke-interface {v4}, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$InternalEntry;->getNext()Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$InternalEntry;

    move-result-object v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v4, v5

    goto :goto_0

    .line 1721
    .end local v4    # "e":Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$InternalEntry;, "TE;"
    :cond_3
    nop

    .line 1723
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$Segment;->unlock()V

    .line 1721
    return-object v5

    .line 1723
    .end local v0    # "newCount":I
    .end local v1    # "table":Ljava/util/concurrent/atomic/AtomicReferenceArray;, "Ljava/util/concurrent/atomic/AtomicReferenceArray<TE;>;"
    .end local v2    # "index":I
    .end local v3    # "first":Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$InternalEntry;, "TE;"
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$Segment;->unlock()V

    .line 1724
    throw v0
.end method

.method remove(Ljava/lang/Object;ILjava/lang/Object;)Z
    .locals 10
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "hash"    # I
    .param p3, "value"    # Ljava/lang/Object;

    .line 1728
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$Segment;, "Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$Segment<TK;TV;TE;TS;>;"
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$Segment;->lock()V

    .line 1730
    :try_start_0
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$Segment;->preWriteCleanup()V

    .line 1732
    iget v0, p0, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$Segment;->count:I

    add-int/lit8 v0, v0, -0x1

    .line 1733
    .local v0, "newCount":I
    iget-object v1, p0, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$Segment;->table:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 1734
    .local v1, "table":Ljava/util/concurrent/atomic/AtomicReferenceArray;, "Ljava/util/concurrent/atomic/AtomicReferenceArray<TE;>;"
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    and-int/2addr v2, p2

    .line 1735
    .local v2, "index":I
    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$InternalEntry;

    .line 1737
    .local v3, "first":Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$InternalEntry;, "TE;"
    move-object v4, v3

    .local v4, "e":Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$InternalEntry;, "TE;"
    :goto_0
    const/4 v5, 0x0

    if-eqz v4, :cond_3

    .line 1738
    invoke-interface {v4}, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$InternalEntry;->getKey()Ljava/lang/Object;

    move-result-object v6

    .line 1739
    .local v6, "entryKey":Ljava/lang/Object;, "TK;"
    invoke-interface {v4}, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$InternalEntry;->getHash()I

    move-result v7

    if-ne v7, p2, :cond_2

    if-eqz v6, :cond_2

    iget-object v7, p0, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$Segment;->map:Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap;

    iget-object v7, v7, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap;->keyEquivalence:Lorg/checkerframework/com/google/common/base/Equivalence;

    .line 1741
    invoke-virtual {v7, p1, v6}, Lorg/checkerframework/com/google/common/base/Equivalence;->equivalent(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 1742
    invoke-interface {v4}, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$InternalEntry;->getValue()Ljava/lang/Object;

    move-result-object v7

    .line 1744
    .local v7, "entryValue":Ljava/lang/Object;, "TV;"
    const/4 v8, 0x0

    .line 1745
    .local v8, "explicitRemoval":Z
    iget-object v9, p0, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$Segment;->map:Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap;

    invoke-virtual {v9}, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap;->valueEquivalence()Lorg/checkerframework/com/google/common/base/Equivalence;

    move-result-object v9

    invoke-virtual {v9, p3, v7}, Lorg/checkerframework/com/google/common/base/Equivalence;->equivalent(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 1746
    const/4 v8, 0x1

    goto :goto_1

    .line 1747
    :cond_0
    invoke-static {v4}, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$Segment;->isCollected(Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$InternalEntry;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 1753
    :goto_1
    iget v5, p0, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$Segment;->modCount:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$Segment;->modCount:I

    .line 1754
    invoke-virtual {p0, v3, v4}, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$Segment;->removeFromChain(Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$InternalEntry;Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$InternalEntry;)Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$InternalEntry;

    move-result-object v5

    .line 1755
    .local v5, "newFirst":Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$InternalEntry;, "TE;"
    iget v9, p0, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$Segment;->count:I

    add-int/lit8 v9, v9, -0x1

    .line 1756
    .end local v0    # "newCount":I
    .local v9, "newCount":I
    invoke-virtual {v1, v2, v5}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    .line 1757
    iput v9, p0, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$Segment;->count:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1758
    nop

    .line 1764
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$Segment;->unlock()V

    .line 1758
    return v8

    .line 1750
    .end local v5    # "newFirst":Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$InternalEntry;, "TE;"
    .end local v9    # "newCount":I
    .restart local v0    # "newCount":I
    :cond_1
    nop

    .line 1764
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$Segment;->unlock()V

    .line 1750
    return v5

    .line 1737
    .end local v6    # "entryKey":Ljava/lang/Object;, "TK;"
    .end local v7    # "entryValue":Ljava/lang/Object;, "TV;"
    .end local v8    # "explicitRemoval":Z
    :cond_2
    :try_start_1
    invoke-interface {v4}, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$InternalEntry;->getNext()Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$InternalEntry;

    move-result-object v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v4, v5

    goto :goto_0

    .line 1762
    .end local v4    # "e":Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$InternalEntry;, "TE;"
    :cond_3
    nop

    .line 1764
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$Segment;->unlock()V

    .line 1762
    return v5

    .line 1764
    .end local v0    # "newCount":I
    .end local v1    # "table":Ljava/util/concurrent/atomic/AtomicReferenceArray;, "Ljava/util/concurrent/atomic/AtomicReferenceArray<TE;>;"
    .end local v2    # "index":I
    .end local v3    # "first":Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$InternalEntry;, "TE;"
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$Segment;->unlock()V

    .line 1765
    throw v0
.end method

.method removeEntryForTesting(Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$InternalEntry;)Z
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .line 1911
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$Segment;, "Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$Segment<TK;TV;TE;TS;>;"
    .local p1, "entry":Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$InternalEntry;, "TE;"
    invoke-interface {p1}, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$InternalEntry;->getHash()I

    move-result v0

    .line 1912
    .local v0, "hash":I
    iget v1, p0, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$Segment;->count:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    .line 1913
    .local v1, "newCount":I
    iget-object v3, p0, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$Segment;->table:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 1914
    .local v3, "table":Ljava/util/concurrent/atomic/AtomicReferenceArray;, "Ljava/util/concurrent/atomic/AtomicReferenceArray<TE;>;"
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v4

    sub-int/2addr v4, v2

    and-int/2addr v4, v0

    .line 1915
    .local v4, "index":I
    invoke-virtual {v3, v4}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$InternalEntry;

    .line 1917
    .local v5, "first":Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$InternalEntry;, "TE;"
    move-object v6, v5

    .local v6, "e":Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$InternalEntry;, "TE;"
    :goto_0
    if-eqz v6, :cond_1

    .line 1918
    if-ne v6, p1, :cond_0

    .line 1919
    iget v7, p0, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$Segment;->modCount:I

    add-int/2addr v7, v2

    iput v7, p0, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$Segment;->modCount:I

    .line 1920
    invoke-virtual {p0, v5, v6}, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$Segment;->removeFromChain(Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$InternalEntry;Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$InternalEntry;)Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$InternalEntry;

    move-result-object v7

    .line 1921
    .local v7, "newFirst":Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$InternalEntry;, "TE;"
    iget v8, p0, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$Segment;->count:I

    sub-int/2addr v8, v2

    .line 1922
    .end local v1    # "newCount":I
    .local v8, "newCount":I
    invoke-virtual {v3, v4, v7}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    .line 1923
    iput v8, p0, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$Segment;->count:I

    .line 1924
    return v2

    .line 1917
    .end local v7    # "newFirst":Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$InternalEntry;, "TE;"
    .end local v8    # "newCount":I
    .restart local v1    # "newCount":I
    :cond_0
    invoke-interface {v6}, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$InternalEntry;->getNext()Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$InternalEntry;

    move-result-object v6

    goto :goto_0

    .line 1928
    .end local v6    # "e":Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$InternalEntry;, "TE;"
    :cond_1
    const/4 v2, 0x0

    return v2
.end method

.method removeFromChain(Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$InternalEntry;Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$InternalEntry;)Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$InternalEntry;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;TE;)TE;"
        }
    .end annotation

    .line 1801
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$Segment;, "Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$Segment<TK;TV;TE;TS;>;"
    .local p1, "first":Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$InternalEntry;, "TE;"
    .local p2, "entry":Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$InternalEntry;, "TE;"
    iget v0, p0, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$Segment;->count:I

    .line 1802
    .local v0, "newCount":I
    invoke-interface {p2}, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$InternalEntry;->getNext()Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$InternalEntry;

    move-result-object v1

    .line 1803
    .local v1, "newFirst":Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$InternalEntry;, "TE;"
    move-object v2, p1

    .local v2, "e":Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$InternalEntry;, "TE;"
    :goto_0
    if-eq v2, p2, :cond_1

    .line 1804
    invoke-virtual {p0, v2, v1}, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$Segment;->copyEntry(Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$InternalEntry;Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$InternalEntry;)Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$InternalEntry;

    move-result-object v3

    .line 1805
    .local v3, "next":Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$InternalEntry;, "TE;"
    if-eqz v3, :cond_0

    .line 1806
    move-object v1, v3

    goto :goto_1

    .line 1808
    :cond_0
    add-int/lit8 v0, v0, -0x1

    .line 1803
    .end local v3    # "next":Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$InternalEntry;, "TE;"
    :goto_1
    invoke-interface {v2}, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$InternalEntry;->getNext()Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$InternalEntry;

    move-result-object v2

    goto :goto_0

    .line 1811
    .end local v2    # "e":Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$InternalEntry;, "TE;"
    :cond_1
    iput v0, p0, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$Segment;->count:I

    .line 1812
    return-object v1
.end method

.method removeFromChainForTesting(Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$InternalEntry;Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$InternalEntry;)Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$InternalEntry;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$InternalEntry<",
            "TK;TV;*>;",
            "Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$InternalEntry<",
            "TK;TV;*>;)TE;"
        }
    .end annotation

    .line 1322
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$Segment;, "Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$Segment<TK;TV;TE;TS;>;"
    .local p1, "first":Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$InternalEntry;, "Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$InternalEntry<TK;TV;*>;"
    .local p2, "entry":Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$InternalEntry;, "Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$InternalEntry<TK;TV;*>;"
    invoke-virtual {p0, p1}, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$Segment;->castForTesting(Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$InternalEntry;)Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$InternalEntry;

    move-result-object v0

    invoke-virtual {p0, p2}, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$Segment;->castForTesting(Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$InternalEntry;)Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$InternalEntry;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$Segment;->removeFromChain(Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$InternalEntry;Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$InternalEntry;)Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$InternalEntry;

    move-result-object v0

    return-object v0
.end method

.method removeTableEntryForTesting(Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$InternalEntry;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$InternalEntry<",
            "TK;TV;*>;)Z"
        }
    .end annotation

    .line 1317
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$Segment;, "Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$Segment<TK;TV;TE;TS;>;"
    .local p1, "entry":Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$InternalEntry;, "Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$InternalEntry<TK;TV;*>;"
    invoke-virtual {p0, p1}, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$Segment;->castForTesting(Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$InternalEntry;)Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$InternalEntry;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$Segment;->removeEntryForTesting(Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$InternalEntry;)Z

    move-result v0

    return v0
.end method

.method replace(Ljava/lang/Object;ILjava/lang/Object;)Ljava/lang/Object;
    .locals 10
    .param p2, "hash"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;ITV;)TV;"
        }
    .end annotation

    .line 1646
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$Segment;, "Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$Segment<TK;TV;TE;TS;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p3, "newValue":Ljava/lang/Object;, "TV;"
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$Segment;->lock()V

    .line 1648
    :try_start_0
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$Segment;->preWriteCleanup()V

    .line 1650
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$Segment;->table:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 1651
    .local v0, "table":Ljava/util/concurrent/atomic/AtomicReferenceArray;, "Ljava/util/concurrent/atomic/AtomicReferenceArray<TE;>;"
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    and-int/2addr v1, p2

    .line 1652
    .local v1, "index":I
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$InternalEntry;

    .line 1654
    .local v2, "first":Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$InternalEntry;, "TE;"
    move-object v3, v2

    .local v3, "e":Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$InternalEntry;, "TE;"
    :goto_0
    const/4 v4, 0x0

    if-eqz v3, :cond_3

    .line 1655
    invoke-interface {v3}, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$InternalEntry;->getKey()Ljava/lang/Object;

    move-result-object v5

    .line 1656
    .local v5, "entryKey":Ljava/lang/Object;, "TK;"
    invoke-interface {v3}, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$InternalEntry;->getHash()I

    move-result v6

    if-ne v6, p2, :cond_2

    if-eqz v5, :cond_2

    iget-object v6, p0, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$Segment;->map:Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap;

    iget-object v6, v6, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap;->keyEquivalence:Lorg/checkerframework/com/google/common/base/Equivalence;

    .line 1658
    invoke-virtual {v6, p1, v5}, Lorg/checkerframework/com/google/common/base/Equivalence;->equivalent(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1661
    invoke-interface {v3}, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$InternalEntry;->getValue()Ljava/lang/Object;

    move-result-object v6

    .line 1662
    .local v6, "entryValue":Ljava/lang/Object;, "TV;"
    if-nez v6, :cond_1

    .line 1663
    invoke-static {v3}, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$Segment;->isCollected(Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$InternalEntry;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 1664
    iget v7, p0, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$Segment;->count:I

    add-int/lit8 v7, v7, -0x1

    .line 1665
    .local v7, "newCount":I
    iget v8, p0, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$Segment;->modCount:I

    add-int/lit8 v8, v8, 0x1

    iput v8, p0, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$Segment;->modCount:I

    .line 1666
    invoke-virtual {p0, v2, v3}, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$Segment;->removeFromChain(Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$InternalEntry;Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$InternalEntry;)Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$InternalEntry;

    move-result-object v8

    .line 1667
    .local v8, "newFirst":Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$InternalEntry;, "TE;"
    iget v9, p0, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$Segment;->count:I

    add-int/lit8 v9, v9, -0x1

    .line 1668
    .end local v7    # "newCount":I
    .local v9, "newCount":I
    invoke-virtual {v0, v1, v8}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    .line 1669
    iput v9, p0, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$Segment;->count:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1671
    .end local v8    # "newFirst":Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$InternalEntry;, "TE;"
    .end local v9    # "newCount":I
    :cond_0
    nop

    .line 1682
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$Segment;->unlock()V

    .line 1671
    return-object v4

    .line 1674
    :cond_1
    :try_start_1
    iget v4, p0, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$Segment;->modCount:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$Segment;->modCount:I

    .line 1675
    invoke-virtual {p0, v3, p3}, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$Segment;->setValue(Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$InternalEntry;Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1676
    nop

    .line 1682
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$Segment;->unlock()V

    .line 1676
    return-object v6

    .line 1654
    .end local v5    # "entryKey":Ljava/lang/Object;, "TK;"
    .end local v6    # "entryValue":Ljava/lang/Object;, "TV;"
    :cond_2
    :try_start_2
    invoke-interface {v3}, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$InternalEntry;->getNext()Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$InternalEntry;

    move-result-object v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v3, v4

    goto :goto_0

    .line 1680
    .end local v3    # "e":Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$InternalEntry;, "TE;"
    :cond_3
    nop

    .line 1682
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$Segment;->unlock()V

    .line 1680
    return-object v4

    .line 1682
    .end local v0    # "table":Ljava/util/concurrent/atomic/AtomicReferenceArray;, "Ljava/util/concurrent/atomic/AtomicReferenceArray<TE;>;"
    .end local v1    # "index":I
    .end local v2    # "first":Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$InternalEntry;, "TE;"
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$Segment;->unlock()V

    .line 1683
    throw v0
.end method

.method replace(Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/Object;)Z
    .locals 11
    .param p2, "hash"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;ITV;TV;)Z"
        }
    .end annotation

    .line 1599
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$Segment;, "Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$Segment<TK;TV;TE;TS;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p3, "oldValue":Ljava/lang/Object;, "TV;"
    .local p4, "newValue":Ljava/lang/Object;, "TV;"
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$Segment;->lock()V

    .line 1601
    :try_start_0
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$Segment;->preWriteCleanup()V

    .line 1603
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$Segment;->table:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 1604
    .local v0, "table":Ljava/util/concurrent/atomic/AtomicReferenceArray;, "Ljava/util/concurrent/atomic/AtomicReferenceArray<TE;>;"
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    and-int/2addr v1, p2

    .line 1605
    .local v1, "index":I
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$InternalEntry;

    .line 1607
    .local v3, "first":Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$InternalEntry;, "TE;"
    move-object v4, v3

    .local v4, "e":Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$InternalEntry;, "TE;"
    :goto_0
    const/4 v5, 0x0

    if-eqz v4, :cond_4

    .line 1608
    invoke-interface {v4}, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$InternalEntry;->getKey()Ljava/lang/Object;

    move-result-object v6

    .line 1609
    .local v6, "entryKey":Ljava/lang/Object;, "TK;"
    invoke-interface {v4}, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$InternalEntry;->getHash()I

    move-result v7

    if-ne v7, p2, :cond_3

    if-eqz v6, :cond_3

    iget-object v7, p0, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$Segment;->map:Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap;

    iget-object v7, v7, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap;->keyEquivalence:Lorg/checkerframework/com/google/common/base/Equivalence;

    .line 1611
    invoke-virtual {v7, p1, v6}, Lorg/checkerframework/com/google/common/base/Equivalence;->equivalent(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 1614
    invoke-interface {v4}, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$InternalEntry;->getValue()Ljava/lang/Object;

    move-result-object v7

    .line 1615
    .local v7, "entryValue":Ljava/lang/Object;, "TV;"
    if-nez v7, :cond_1

    .line 1616
    invoke-static {v4}, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$Segment;->isCollected(Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$InternalEntry;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 1617
    iget v8, p0, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$Segment;->count:I

    sub-int/2addr v8, v2

    .line 1618
    .local v8, "newCount":I
    iget v9, p0, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$Segment;->modCount:I

    add-int/2addr v9, v2

    iput v9, p0, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$Segment;->modCount:I

    .line 1619
    invoke-virtual {p0, v3, v4}, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$Segment;->removeFromChain(Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$InternalEntry;Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$InternalEntry;)Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$InternalEntry;

    move-result-object v9

    .line 1620
    .local v9, "newFirst":Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$InternalEntry;, "TE;"
    iget v10, p0, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$Segment;->count:I

    sub-int/2addr v10, v2

    .line 1621
    .end local v8    # "newCount":I
    .local v10, "newCount":I
    invoke-virtual {v0, v1, v9}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    .line 1622
    iput v10, p0, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$Segment;->count:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1624
    .end local v9    # "newFirst":Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$InternalEntry;, "TE;"
    .end local v10    # "newCount":I
    :cond_0
    nop

    .line 1641
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$Segment;->unlock()V

    .line 1624
    return v5

    .line 1627
    :cond_1
    :try_start_1
    iget-object v8, p0, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$Segment;->map:Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap;

    invoke-virtual {v8}, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap;->valueEquivalence()Lorg/checkerframework/com/google/common/base/Equivalence;

    move-result-object v8

    invoke-virtual {v8, p3, v7}, Lorg/checkerframework/com/google/common/base/Equivalence;->equivalent(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 1628
    iget v5, p0, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$Segment;->modCount:I

    add-int/2addr v5, v2

    iput v5, p0, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$Segment;->modCount:I

    .line 1629
    invoke-virtual {p0, v4, p4}, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$Segment;->setValue(Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$InternalEntry;Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1630
    nop

    .line 1641
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$Segment;->unlock()V

    .line 1630
    return v2

    .line 1634
    :cond_2
    nop

    .line 1641
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$Segment;->unlock()V

    .line 1634
    return v5

    .line 1607
    .end local v6    # "entryKey":Ljava/lang/Object;, "TK;"
    .end local v7    # "entryValue":Ljava/lang/Object;, "TV;"
    :cond_3
    :try_start_2
    invoke-interface {v4}, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$InternalEntry;->getNext()Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$InternalEntry;

    move-result-object v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v4, v5

    goto :goto_0

    .line 1639
    .end local v4    # "e":Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$InternalEntry;, "TE;"
    :cond_4
    nop

    .line 1641
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$Segment;->unlock()V

    .line 1639
    return v5

    .line 1641
    .end local v0    # "table":Ljava/util/concurrent/atomic/AtomicReferenceArray;, "Ljava/util/concurrent/atomic/AtomicReferenceArray<TE;>;"
    .end local v1    # "index":I
    .end local v3    # "first":Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$InternalEntry;, "TE;"
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$Segment;->unlock()V

    .line 1642
    throw v0
.end method

.method runCleanup()V
    .locals 0

    .line 1979
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$Segment;, "Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$Segment<TK;TV;TE;TS;>;"
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$Segment;->runLockedCleanup()V

    .line 1980
    return-void
.end method

.method runLockedCleanup()V
    .locals 2

    .line 1983
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$Segment;, "Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$Segment<TK;TV;TE;TS;>;"
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$Segment;->tryLock()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1985
    :try_start_0
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$Segment;->maybeDrainReferenceQueues()V

    .line 1986
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$Segment;->readCount:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1988
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$Segment;->unlock()V

    .line 1989
    goto :goto_0

    .line 1988
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$Segment;->unlock()V

    .line 1989
    throw v0

    .line 1991
    :cond_0
    :goto_0
    return-void
.end method

.method abstract self()Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$Segment;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TS;"
        }
    .end annotation
.end method

.method setTableEntryForTesting(ILorg/checkerframework/com/google/common/collect/MapMakerInternalMap$InternalEntry;)V
    .locals 2
    .param p1, "i"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$InternalEntry<",
            "TK;TV;*>;)V"
        }
    .end annotation

    .line 1296
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$Segment;, "Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$Segment<TK;TV;TE;TS;>;"
    .local p2, "entry":Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$InternalEntry;, "Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$InternalEntry<TK;TV;*>;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$Segment;->table:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-virtual {p0, p2}, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$Segment;->castForTesting(Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$InternalEntry;)Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$InternalEntry;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    .line 1297
    return-void
.end method

.method setValue(Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$InternalEntry;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;TV;)V"
        }
    .end annotation

    .line 1226
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$Segment;, "Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$Segment<TK;TV;TE;TS;>;"
    .local p1, "entry":Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$InternalEntry;, "TE;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$Segment;->map:Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap;

    iget-object v0, v0, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap;->entryHelper:Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$InternalEntryHelper;

    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$Segment;->self()Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$Segment;

    move-result-object v1

    invoke-interface {v0, v1, p1, p2}, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$InternalEntryHelper;->setValue(Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$Segment;Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$InternalEntry;Ljava/lang/Object;)V

    .line 1227
    return-void
.end method

.method setValueForTesting(Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$InternalEntry;Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$InternalEntry<",
            "TK;TV;*>;TV;)V"
        }
    .end annotation

    .line 1306
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$Segment;, "Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$Segment<TK;TV;TE;TS;>;"
    .local p1, "entry":Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$InternalEntry;, "Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$InternalEntry<TK;TV;*>;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$Segment;->map:Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap;

    iget-object v0, v0, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap;->entryHelper:Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$InternalEntryHelper;

    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$Segment;->self()Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$Segment;

    move-result-object v1

    invoke-virtual {p0, p1}, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$Segment;->castForTesting(Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$InternalEntry;)Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$InternalEntry;

    move-result-object v2

    invoke-interface {v0, v1, v2, p2}, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$InternalEntryHelper;->setValue(Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$Segment;Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$InternalEntry;Ljava/lang/Object;)V

    .line 1307
    return-void
.end method

.method setWeakValueReferenceForTesting(Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$InternalEntry;Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$WeakValueReference;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$InternalEntry<",
            "TK;TV;*>;",
            "Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$WeakValueReference<",
            "TK;TV;+",
            "Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$InternalEntry<",
            "TK;TV;*>;>;)V"
        }
    .end annotation

    .line 1289
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$Segment;, "Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$Segment<TK;TV;TE;TS;>;"
    .local p1, "entry":Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$InternalEntry;, "Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$InternalEntry<TK;TV;*>;"
    .local p2, "valueReference":Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$WeakValueReference;, "Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$WeakValueReference<TK;TV;+Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$InternalEntry<TK;TV;*>;>;"
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method tryDrainReferenceQueues()V
    .locals 1

    .line 1337
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$Segment;, "Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$Segment<TK;TV;TE;TS;>;"
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$Segment;->tryLock()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1339
    :try_start_0
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$Segment;->maybeDrainReferenceQueues()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1341
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$Segment;->unlock()V

    .line 1342
    goto :goto_0

    .line 1341
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$Segment;->unlock()V

    .line 1342
    throw v0

    .line 1344
    :cond_0
    :goto_0
    return-void
.end method
