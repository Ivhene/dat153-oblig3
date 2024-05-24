.class Lorg/checkerframework/com/google/common/cache/LocalCache;
.super Ljava/util/AbstractMap;
.source "LocalCache.java"

# interfaces
.implements Ljava/util/concurrent/ConcurrentMap;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/checkerframework/com/google/common/cache/LocalCache$LocalLoadingCache;,
        Lorg/checkerframework/com/google/common/cache/LocalCache$LocalManualCache;,
        Lorg/checkerframework/com/google/common/cache/LocalCache$LoadingSerializationProxy;,
        Lorg/checkerframework/com/google/common/cache/LocalCache$ManualSerializationProxy;,
        Lorg/checkerframework/com/google/common/cache/LocalCache$EntrySet;,
        Lorg/checkerframework/com/google/common/cache/LocalCache$Values;,
        Lorg/checkerframework/com/google/common/cache/LocalCache$KeySet;,
        Lorg/checkerframework/com/google/common/cache/LocalCache$AbstractCacheSet;,
        Lorg/checkerframework/com/google/common/cache/LocalCache$EntryIterator;,
        Lorg/checkerframework/com/google/common/cache/LocalCache$WriteThroughEntry;,
        Lorg/checkerframework/com/google/common/cache/LocalCache$ValueIterator;,
        Lorg/checkerframework/com/google/common/cache/LocalCache$KeyIterator;,
        Lorg/checkerframework/com/google/common/cache/LocalCache$HashIterator;,
        Lorg/checkerframework/com/google/common/cache/LocalCache$AccessQueue;,
        Lorg/checkerframework/com/google/common/cache/LocalCache$WriteQueue;,
        Lorg/checkerframework/com/google/common/cache/LocalCache$LoadingValueReference;,
        Lorg/checkerframework/com/google/common/cache/LocalCache$Segment;,
        Lorg/checkerframework/com/google/common/cache/LocalCache$WeightedStrongValueReference;,
        Lorg/checkerframework/com/google/common/cache/LocalCache$WeightedSoftValueReference;,
        Lorg/checkerframework/com/google/common/cache/LocalCache$WeightedWeakValueReference;,
        Lorg/checkerframework/com/google/common/cache/LocalCache$StrongValueReference;,
        Lorg/checkerframework/com/google/common/cache/LocalCache$SoftValueReference;,
        Lorg/checkerframework/com/google/common/cache/LocalCache$WeakValueReference;,
        Lorg/checkerframework/com/google/common/cache/LocalCache$WeakAccessWriteEntry;,
        Lorg/checkerframework/com/google/common/cache/LocalCache$WeakWriteEntry;,
        Lorg/checkerframework/com/google/common/cache/LocalCache$WeakAccessEntry;,
        Lorg/checkerframework/com/google/common/cache/LocalCache$WeakEntry;,
        Lorg/checkerframework/com/google/common/cache/LocalCache$StrongAccessWriteEntry;,
        Lorg/checkerframework/com/google/common/cache/LocalCache$StrongWriteEntry;,
        Lorg/checkerframework/com/google/common/cache/LocalCache$StrongAccessEntry;,
        Lorg/checkerframework/com/google/common/cache/LocalCache$StrongEntry;,
        Lorg/checkerframework/com/google/common/cache/LocalCache$AbstractReferenceEntry;,
        Lorg/checkerframework/com/google/common/cache/LocalCache$NullEntry;,
        Lorg/checkerframework/com/google/common/cache/LocalCache$ValueReference;,
        Lorg/checkerframework/com/google/common/cache/LocalCache$EntryFactory;,
        Lorg/checkerframework/com/google/common/cache/LocalCache$Strength;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractMap<",
        "TK;TV;>;",
        "Ljava/util/concurrent/ConcurrentMap<",
        "TK;TV;>;"
    }
.end annotation


# static fields
.field static final CONTAINS_VALUE_RETRIES:I = 0x3

.field static final DISCARDING_QUEUE:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "*>;"
        }
    .end annotation
.end field

.field static final DRAIN_MAX:I = 0x10

.field static final DRAIN_THRESHOLD:I = 0x3f

.field static final MAXIMUM_CAPACITY:I = 0x40000000

.field static final MAX_SEGMENTS:I = 0x10000

.field static final UNSET:Lorg/checkerframework/com/google/common/cache/LocalCache$ValueReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/checkerframework/com/google/common/cache/LocalCache$ValueReference<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field static final logger:Ljava/util/logging/Logger;


# instance fields
.field final concurrencyLevel:I

.field final defaultLoader:Lorg/checkerframework/com/google/common/cache/CacheLoader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/checkerframework/com/google/common/cache/CacheLoader<",
            "-TK;TV;>;"
        }
    .end annotation
.end field

.field final entryFactory:Lorg/checkerframework/com/google/common/cache/LocalCache$EntryFactory;

.field entrySet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation
.end field

.field final expireAfterAccessNanos:J

.field final expireAfterWriteNanos:J

.field final globalStatsCounter:Lorg/checkerframework/com/google/common/cache/AbstractCache$StatsCounter;

.field final keyEquivalence:Lorg/checkerframework/com/google/common/base/Equivalence;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/checkerframework/com/google/common/base/Equivalence<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field keySet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "TK;>;"
        }
    .end annotation
.end field

.field final keyStrength:Lorg/checkerframework/com/google/common/cache/LocalCache$Strength;

.field final maxWeight:J

.field final refreshNanos:J

.field final removalListener:Lorg/checkerframework/com/google/common/cache/RemovalListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/checkerframework/com/google/common/cache/RemovalListener<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field final removalNotificationQueue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lorg/checkerframework/com/google/common/cache/RemovalNotification<",
            "TK;TV;>;>;"
        }
    .end annotation
.end field

.field final segmentMask:I

.field final segmentShift:I

.field final segments:[Lorg/checkerframework/com/google/common/cache/LocalCache$Segment;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lorg/checkerframework/com/google/common/cache/LocalCache$Segment<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field final ticker:Lorg/checkerframework/com/google/common/base/Ticker;

.field final valueEquivalence:Lorg/checkerframework/com/google/common/base/Equivalence;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/checkerframework/com/google/common/base/Equivalence<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field final valueStrength:Lorg/checkerframework/com/google/common/cache/LocalCache$Strength;

.field values:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "TV;>;"
        }
    .end annotation
.end field

.field final weigher:Lorg/checkerframework/com/google/common/cache/Weigher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/checkerframework/com/google/common/cache/Weigher<",
            "TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 164
    const-class v0, Lorg/checkerframework/com/google/common/cache/LocalCache;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/checkerframework/com/google/common/cache/LocalCache;->logger:Ljava/util/logging/Logger;

    .line 680
    new-instance v0, Lorg/checkerframework/com/google/common/cache/LocalCache$1;

    invoke-direct {v0}, Lorg/checkerframework/com/google/common/cache/LocalCache$1;-><init>()V

    sput-object v0, Lorg/checkerframework/com/google/common/cache/LocalCache;->UNSET:Lorg/checkerframework/com/google/common/cache/LocalCache$ValueReference;

    .line 897
    new-instance v0, Lorg/checkerframework/com/google/common/cache/LocalCache$2;

    invoke-direct {v0}, Lorg/checkerframework/com/google/common/cache/LocalCache$2;-><init>()V

    sput-object v0, Lorg/checkerframework/com/google/common/cache/LocalCache;->DISCARDING_QUEUE:Ljava/util/Queue;

    return-void
.end method

.method constructor <init>(Lorg/checkerframework/com/google/common/cache/CacheBuilder;Lorg/checkerframework/com/google/common/cache/CacheLoader;)V
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/google/common/cache/CacheBuilder<",
            "-TK;-TV;>;",
            "Lorg/checkerframework/com/google/common/cache/CacheLoader<",
            "-TK;TV;>;)V"
        }
    .end annotation

    .line 240
    .local p0, "this":Lorg/checkerframework/com/google/common/cache/LocalCache;, "Lorg/checkerframework/com/google/common/cache/LocalCache<TK;TV;>;"
    .local p1, "builder":Lorg/checkerframework/com/google/common/cache/CacheBuilder;, "Lorg/checkerframework/com/google/common/cache/CacheBuilder<-TK;-TV;>;"
    .local p2, "loader":Lorg/checkerframework/com/google/common/cache/CacheLoader;, "Lorg/checkerframework/com/google/common/cache/CacheLoader<-TK;TV;>;"
    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p0}, Ljava/util/AbstractMap;-><init>()V

    .line 241
    invoke-virtual/range {p1 .. p1}, Lorg/checkerframework/com/google/common/cache/CacheBuilder;->getConcurrencyLevel()I

    move-result v1

    const/high16 v2, 0x10000

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    iput v1, v0, Lorg/checkerframework/com/google/common/cache/LocalCache;->concurrencyLevel:I

    .line 243
    invoke-virtual/range {p1 .. p1}, Lorg/checkerframework/com/google/common/cache/CacheBuilder;->getKeyStrength()Lorg/checkerframework/com/google/common/cache/LocalCache$Strength;

    move-result-object v1

    iput-object v1, v0, Lorg/checkerframework/com/google/common/cache/LocalCache;->keyStrength:Lorg/checkerframework/com/google/common/cache/LocalCache$Strength;

    .line 244
    invoke-virtual/range {p1 .. p1}, Lorg/checkerframework/com/google/common/cache/CacheBuilder;->getValueStrength()Lorg/checkerframework/com/google/common/cache/LocalCache$Strength;

    move-result-object v2

    iput-object v2, v0, Lorg/checkerframework/com/google/common/cache/LocalCache;->valueStrength:Lorg/checkerframework/com/google/common/cache/LocalCache$Strength;

    .line 246
    invoke-virtual/range {p1 .. p1}, Lorg/checkerframework/com/google/common/cache/CacheBuilder;->getKeyEquivalence()Lorg/checkerframework/com/google/common/base/Equivalence;

    move-result-object v2

    iput-object v2, v0, Lorg/checkerframework/com/google/common/cache/LocalCache;->keyEquivalence:Lorg/checkerframework/com/google/common/base/Equivalence;

    .line 247
    invoke-virtual/range {p1 .. p1}, Lorg/checkerframework/com/google/common/cache/CacheBuilder;->getValueEquivalence()Lorg/checkerframework/com/google/common/base/Equivalence;

    move-result-object v2

    iput-object v2, v0, Lorg/checkerframework/com/google/common/cache/LocalCache;->valueEquivalence:Lorg/checkerframework/com/google/common/base/Equivalence;

    .line 249
    invoke-virtual/range {p1 .. p1}, Lorg/checkerframework/com/google/common/cache/CacheBuilder;->getMaximumWeight()J

    move-result-wide v2

    iput-wide v2, v0, Lorg/checkerframework/com/google/common/cache/LocalCache;->maxWeight:J

    .line 250
    invoke-virtual/range {p1 .. p1}, Lorg/checkerframework/com/google/common/cache/CacheBuilder;->getWeigher()Lorg/checkerframework/com/google/common/cache/Weigher;

    move-result-object v4

    iput-object v4, v0, Lorg/checkerframework/com/google/common/cache/LocalCache;->weigher:Lorg/checkerframework/com/google/common/cache/Weigher;

    .line 251
    invoke-virtual/range {p1 .. p1}, Lorg/checkerframework/com/google/common/cache/CacheBuilder;->getExpireAfterAccessNanos()J

    move-result-wide v4

    iput-wide v4, v0, Lorg/checkerframework/com/google/common/cache/LocalCache;->expireAfterAccessNanos:J

    .line 252
    invoke-virtual/range {p1 .. p1}, Lorg/checkerframework/com/google/common/cache/CacheBuilder;->getExpireAfterWriteNanos()J

    move-result-wide v4

    iput-wide v4, v0, Lorg/checkerframework/com/google/common/cache/LocalCache;->expireAfterWriteNanos:J

    .line 253
    invoke-virtual/range {p1 .. p1}, Lorg/checkerframework/com/google/common/cache/CacheBuilder;->getRefreshNanos()J

    move-result-wide v4

    iput-wide v4, v0, Lorg/checkerframework/com/google/common/cache/LocalCache;->refreshNanos:J

    .line 255
    invoke-virtual/range {p1 .. p1}, Lorg/checkerframework/com/google/common/cache/CacheBuilder;->getRemovalListener()Lorg/checkerframework/com/google/common/cache/RemovalListener;

    move-result-object v4

    iput-object v4, v0, Lorg/checkerframework/com/google/common/cache/LocalCache;->removalListener:Lorg/checkerframework/com/google/common/cache/RemovalListener;

    .line 256
    sget-object v5, Lorg/checkerframework/com/google/common/cache/CacheBuilder$NullListener;->INSTANCE:Lorg/checkerframework/com/google/common/cache/CacheBuilder$NullListener;

    if-ne v4, v5, :cond_0

    .line 258
    invoke-static {}, Lorg/checkerframework/com/google/common/cache/LocalCache;->discardingQueue()Ljava/util/Queue;

    move-result-object v4

    goto :goto_0

    :cond_0
    new-instance v4, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v4}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    :goto_0
    iput-object v4, v0, Lorg/checkerframework/com/google/common/cache/LocalCache;->removalNotificationQueue:Ljava/util/Queue;

    .line 261
    invoke-virtual/range {p0 .. p0}, Lorg/checkerframework/com/google/common/cache/LocalCache;->recordsTime()Z

    move-result v4

    move-object/from16 v5, p1

    invoke-virtual {v5, v4}, Lorg/checkerframework/com/google/common/cache/CacheBuilder;->getTicker(Z)Lorg/checkerframework/com/google/common/base/Ticker;

    move-result-object v4

    iput-object v4, v0, Lorg/checkerframework/com/google/common/cache/LocalCache;->ticker:Lorg/checkerframework/com/google/common/base/Ticker;

    .line 262
    invoke-virtual/range {p0 .. p0}, Lorg/checkerframework/com/google/common/cache/LocalCache;->usesAccessEntries()Z

    move-result v4

    invoke-virtual/range {p0 .. p0}, Lorg/checkerframework/com/google/common/cache/LocalCache;->usesWriteEntries()Z

    move-result v6

    invoke-static {v1, v4, v6}, Lorg/checkerframework/com/google/common/cache/LocalCache$EntryFactory;->getFactory(Lorg/checkerframework/com/google/common/cache/LocalCache$Strength;ZZ)Lorg/checkerframework/com/google/common/cache/LocalCache$EntryFactory;

    move-result-object v1

    iput-object v1, v0, Lorg/checkerframework/com/google/common/cache/LocalCache;->entryFactory:Lorg/checkerframework/com/google/common/cache/LocalCache$EntryFactory;

    .line 263
    invoke-virtual/range {p1 .. p1}, Lorg/checkerframework/com/google/common/cache/CacheBuilder;->getStatsCounterSupplier()Lorg/checkerframework/com/google/common/base/Supplier;

    move-result-object v1

    invoke-interface {v1}, Lorg/checkerframework/com/google/common/base/Supplier;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/checkerframework/com/google/common/cache/AbstractCache$StatsCounter;

    iput-object v1, v0, Lorg/checkerframework/com/google/common/cache/LocalCache;->globalStatsCounter:Lorg/checkerframework/com/google/common/cache/AbstractCache$StatsCounter;

    .line 264
    move-object/from16 v1, p2

    iput-object v1, v0, Lorg/checkerframework/com/google/common/cache/LocalCache;->defaultLoader:Lorg/checkerframework/com/google/common/cache/CacheLoader;

    .line 266
    invoke-virtual/range {p1 .. p1}, Lorg/checkerframework/com/google/common/cache/CacheBuilder;->getInitialCapacity()I

    move-result v4

    const/high16 v6, 0x40000000    # 2.0f

    invoke-static {v4, v6}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 267
    .local v4, "initialCapacity":I
    invoke-virtual/range {p0 .. p0}, Lorg/checkerframework/com/google/common/cache/LocalCache;->evictsBySize()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-virtual/range {p0 .. p0}, Lorg/checkerframework/com/google/common/cache/LocalCache;->customWeigher()Z

    move-result v6

    if-nez v6, :cond_1

    .line 268
    int-to-long v6, v4

    invoke-static {v6, v7, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    long-to-int v4, v2

    .line 276
    :cond_1
    const/4 v2, 0x0

    .line 277
    .local v2, "segmentShift":I
    const/4 v3, 0x1

    .line 278
    .local v3, "segmentCount":I
    :goto_1
    iget v6, v0, Lorg/checkerframework/com/google/common/cache/LocalCache;->concurrencyLevel:I

    if-ge v3, v6, :cond_3

    invoke-virtual/range {p0 .. p0}, Lorg/checkerframework/com/google/common/cache/LocalCache;->evictsBySize()Z

    move-result v6

    if-eqz v6, :cond_2

    mul-int/lit8 v6, v3, 0x14

    int-to-long v6, v6

    iget-wide v8, v0, Lorg/checkerframework/com/google/common/cache/LocalCache;->maxWeight:J

    cmp-long v6, v6, v8

    if-gtz v6, :cond_3

    .line 279
    :cond_2
    add-int/lit8 v2, v2, 0x1

    .line 280
    shl-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 282
    :cond_3
    rsub-int/lit8 v6, v2, 0x20

    iput v6, v0, Lorg/checkerframework/com/google/common/cache/LocalCache;->segmentShift:I

    .line 283
    add-int/lit8 v6, v3, -0x1

    iput v6, v0, Lorg/checkerframework/com/google/common/cache/LocalCache;->segmentMask:I

    .line 285
    invoke-virtual {v0, v3}, Lorg/checkerframework/com/google/common/cache/LocalCache;->newSegmentArray(I)[Lorg/checkerframework/com/google/common/cache/LocalCache$Segment;

    move-result-object v6

    iput-object v6, v0, Lorg/checkerframework/com/google/common/cache/LocalCache;->segments:[Lorg/checkerframework/com/google/common/cache/LocalCache$Segment;

    .line 287
    div-int v6, v4, v3

    .line 288
    .local v6, "segmentCapacity":I
    mul-int v7, v6, v3

    if-ge v7, v4, :cond_4

    .line 289
    add-int/lit8 v6, v6, 0x1

    .line 292
    :cond_4
    const/4 v7, 0x1

    .line 293
    .local v7, "segmentSize":I
    :goto_2
    if-ge v7, v6, :cond_5

    .line 294
    shl-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 297
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lorg/checkerframework/com/google/common/cache/LocalCache;->evictsBySize()Z

    move-result v8

    if-eqz v8, :cond_8

    .line 299
    iget-wide v8, v0, Lorg/checkerframework/com/google/common/cache/LocalCache;->maxWeight:J

    int-to-long v10, v3

    div-long v10, v8, v10

    const-wide/16 v12, 0x1

    add-long/2addr v10, v12

    .line 300
    .local v10, "maxSegmentWeight":J
    int-to-long v14, v3

    rem-long/2addr v8, v14

    .line 301
    .local v8, "remainder":J
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_3
    iget-object v15, v0, Lorg/checkerframework/com/google/common/cache/LocalCache;->segments:[Lorg/checkerframework/com/google/common/cache/LocalCache$Segment;

    array-length v12, v15

    if-ge v14, v12, :cond_7

    .line 302
    int-to-long v12, v14

    cmp-long v12, v12, v8

    if-nez v12, :cond_6

    .line 303
    const-wide/16 v12, 0x1

    sub-long/2addr v10, v12

    goto :goto_4

    .line 302
    :cond_6
    const-wide/16 v12, 0x1

    .line 305
    :goto_4
    nop

    .line 306
    invoke-virtual/range {p1 .. p1}, Lorg/checkerframework/com/google/common/cache/CacheBuilder;->getStatsCounterSupplier()Lorg/checkerframework/com/google/common/base/Supplier;

    move-result-object v16

    invoke-interface/range {v16 .. v16}, Lorg/checkerframework/com/google/common/base/Supplier;->get()Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v12, v16

    check-cast v12, Lorg/checkerframework/com/google/common/cache/AbstractCache$StatsCounter;

    invoke-virtual {v0, v7, v10, v11, v12}, Lorg/checkerframework/com/google/common/cache/LocalCache;->createSegment(IJLorg/checkerframework/com/google/common/cache/AbstractCache$StatsCounter;)Lorg/checkerframework/com/google/common/cache/LocalCache$Segment;

    move-result-object v12

    aput-object v12, v15, v14

    .line 301
    add-int/lit8 v14, v14, 0x1

    const-wide/16 v12, 0x1

    goto :goto_3

    .line 308
    .end local v8    # "remainder":J
    .end local v10    # "maxSegmentWeight":J
    .end local v14    # "i":I
    :cond_7
    goto :goto_6

    .line 309
    :cond_8
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_5
    iget-object v9, v0, Lorg/checkerframework/com/google/common/cache/LocalCache;->segments:[Lorg/checkerframework/com/google/common/cache/LocalCache$Segment;

    array-length v10, v9

    if-ge v8, v10, :cond_9

    .line 310
    nop

    .line 311
    invoke-virtual/range {p1 .. p1}, Lorg/checkerframework/com/google/common/cache/CacheBuilder;->getStatsCounterSupplier()Lorg/checkerframework/com/google/common/base/Supplier;

    move-result-object v10

    invoke-interface {v10}, Lorg/checkerframework/com/google/common/base/Supplier;->get()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/checkerframework/com/google/common/cache/AbstractCache$StatsCounter;

    const-wide/16 v11, -0x1

    invoke-virtual {v0, v7, v11, v12, v10}, Lorg/checkerframework/com/google/common/cache/LocalCache;->createSegment(IJLorg/checkerframework/com/google/common/cache/AbstractCache$StatsCounter;)Lorg/checkerframework/com/google/common/cache/LocalCache$Segment;

    move-result-object v10

    aput-object v10, v9, v8

    .line 309
    add-int/lit8 v8, v8, 0x1

    goto :goto_5

    .line 314
    .end local v8    # "i":I
    :cond_9
    :goto_6
    return-void
.end method

.method static synthetic access$200(Ljava/util/Collection;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Ljava/util/Collection;

    .line 103
    invoke-static {p0}, Lorg/checkerframework/com/google/common/cache/LocalCache;->toArrayList(Ljava/util/Collection;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method static connectAccessOrder(Lorg/checkerframework/com/google/common/cache/ReferenceEntry;Lorg/checkerframework/com/google/common/cache/ReferenceEntry;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/checkerframework/com/google/common/cache/ReferenceEntry<",
            "TK;TV;>;",
            "Lorg/checkerframework/com/google/common/cache/ReferenceEntry<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 1777
    .local p0, "previous":Lorg/checkerframework/com/google/common/cache/ReferenceEntry;, "Lorg/checkerframework/com/google/common/cache/ReferenceEntry<TK;TV;>;"
    .local p1, "next":Lorg/checkerframework/com/google/common/cache/ReferenceEntry;, "Lorg/checkerframework/com/google/common/cache/ReferenceEntry<TK;TV;>;"
    invoke-interface {p0, p1}, Lorg/checkerframework/com/google/common/cache/ReferenceEntry;->setNextInAccessQueue(Lorg/checkerframework/com/google/common/cache/ReferenceEntry;)V

    .line 1778
    invoke-interface {p1, p0}, Lorg/checkerframework/com/google/common/cache/ReferenceEntry;->setPreviousInAccessQueue(Lorg/checkerframework/com/google/common/cache/ReferenceEntry;)V

    .line 1779
    return-void
.end method

.method static connectWriteOrder(Lorg/checkerframework/com/google/common/cache/ReferenceEntry;Lorg/checkerframework/com/google/common/cache/ReferenceEntry;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/checkerframework/com/google/common/cache/ReferenceEntry<",
            "TK;TV;>;",
            "Lorg/checkerframework/com/google/common/cache/ReferenceEntry<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 1790
    .local p0, "previous":Lorg/checkerframework/com/google/common/cache/ReferenceEntry;, "Lorg/checkerframework/com/google/common/cache/ReferenceEntry<TK;TV;>;"
    .local p1, "next":Lorg/checkerframework/com/google/common/cache/ReferenceEntry;, "Lorg/checkerframework/com/google/common/cache/ReferenceEntry<TK;TV;>;"
    invoke-interface {p0, p1}, Lorg/checkerframework/com/google/common/cache/ReferenceEntry;->setNextInWriteQueue(Lorg/checkerframework/com/google/common/cache/ReferenceEntry;)V

    .line 1791
    invoke-interface {p1, p0}, Lorg/checkerframework/com/google/common/cache/ReferenceEntry;->setPreviousInWriteQueue(Lorg/checkerframework/com/google/common/cache/ReferenceEntry;)V

    .line 1792
    return-void
.end method

.method static discardingQueue()Ljava/util/Queue;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">()",
            "Ljava/util/Queue<",
            "TE;>;"
        }
    .end annotation

    .line 928
    sget-object v0, Lorg/checkerframework/com/google/common/cache/LocalCache;->DISCARDING_QUEUE:Ljava/util/Queue;

    return-object v0
.end method

.method static synthetic lambda$computeIfAbsent$0(Ljava/util/function/Function;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p0, "function"    # Ljava/util/function/Function;
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "k"    # Ljava/lang/Object;
    .param p3, "oldValue"    # Ljava/lang/Object;

    .line 4206
    if-nez p3, :cond_0

    invoke-interface {p0, p1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, p3

    :goto_0
    return-object v0
.end method

.method static synthetic lambda$computeIfPresent$1(Ljava/util/function/BiFunction;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p0, "function"    # Ljava/util/function/BiFunction;
    .param p1, "k"    # Ljava/lang/Object;
    .param p2, "oldValue"    # Ljava/lang/Object;

    .line 4213
    if-nez p2, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {p0, p1, p2}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method static synthetic lambda$merge$2(Ljava/lang/Object;Ljava/util/function/BiFunction;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p0, "newValue"    # Ljava/lang/Object;
    .param p1, "function"    # Ljava/util/function/BiFunction;
    .param p2, "k"    # Ljava/lang/Object;
    .param p3, "oldValue"    # Ljava/lang/Object;

    .line 4222
    if-nez p3, :cond_0

    move-object v0, p0

    goto :goto_0

    :cond_0
    invoke-interface {p1, p3, p0}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method static nullEntry()Lorg/checkerframework/com/google/common/cache/ReferenceEntry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">()",
            "Lorg/checkerframework/com/google/common/cache/ReferenceEntry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 894
    sget-object v0, Lorg/checkerframework/com/google/common/cache/LocalCache$NullEntry;->INSTANCE:Lorg/checkerframework/com/google/common/cache/LocalCache$NullEntry;

    return-object v0
.end method

.method static nullifyAccessOrder(Lorg/checkerframework/com/google/common/cache/ReferenceEntry;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/checkerframework/com/google/common/cache/ReferenceEntry<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 1783
    .local p0, "nulled":Lorg/checkerframework/com/google/common/cache/ReferenceEntry;, "Lorg/checkerframework/com/google/common/cache/ReferenceEntry<TK;TV;>;"
    invoke-static {}, Lorg/checkerframework/com/google/common/cache/LocalCache;->nullEntry()Lorg/checkerframework/com/google/common/cache/ReferenceEntry;

    move-result-object v0

    .line 1784
    .local v0, "nullEntry":Lorg/checkerframework/com/google/common/cache/ReferenceEntry;, "Lorg/checkerframework/com/google/common/cache/ReferenceEntry<TK;TV;>;"
    invoke-interface {p0, v0}, Lorg/checkerframework/com/google/common/cache/ReferenceEntry;->setNextInAccessQueue(Lorg/checkerframework/com/google/common/cache/ReferenceEntry;)V

    .line 1785
    invoke-interface {p0, v0}, Lorg/checkerframework/com/google/common/cache/ReferenceEntry;->setPreviousInAccessQueue(Lorg/checkerframework/com/google/common/cache/ReferenceEntry;)V

    .line 1786
    return-void
.end method

.method static nullifyWriteOrder(Lorg/checkerframework/com/google/common/cache/ReferenceEntry;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/checkerframework/com/google/common/cache/ReferenceEntry<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 1796
    .local p0, "nulled":Lorg/checkerframework/com/google/common/cache/ReferenceEntry;, "Lorg/checkerframework/com/google/common/cache/ReferenceEntry<TK;TV;>;"
    invoke-static {}, Lorg/checkerframework/com/google/common/cache/LocalCache;->nullEntry()Lorg/checkerframework/com/google/common/cache/ReferenceEntry;

    move-result-object v0

    .line 1797
    .local v0, "nullEntry":Lorg/checkerframework/com/google/common/cache/ReferenceEntry;, "Lorg/checkerframework/com/google/common/cache/ReferenceEntry<TK;TV;>;"
    invoke-interface {p0, v0}, Lorg/checkerframework/com/google/common/cache/ReferenceEntry;->setNextInWriteQueue(Lorg/checkerframework/com/google/common/cache/ReferenceEntry;)V

    .line 1798
    invoke-interface {p0, v0}, Lorg/checkerframework/com/google/common/cache/ReferenceEntry;->setPreviousInWriteQueue(Lorg/checkerframework/com/google/common/cache/ReferenceEntry;)V

    .line 1799
    return-void
.end method

.method static rehash(I)I
    .locals 2
    .param p0, "h"    # I

    .line 1654
    shl-int/lit8 v0, p0, 0xf

    xor-int/lit16 v0, v0, -0x3283

    add-int/2addr p0, v0

    .line 1655
    ushr-int/lit8 v0, p0, 0xa

    xor-int/2addr p0, v0

    .line 1656
    shl-int/lit8 v0, p0, 0x3

    add-int/2addr p0, v0

    .line 1657
    ushr-int/lit8 v0, p0, 0x6

    xor-int/2addr p0, v0

    .line 1658
    shl-int/lit8 v0, p0, 0x2

    shl-int/lit8 v1, p0, 0xe

    add-int/2addr v0, v1

    add-int/2addr p0, v0

    .line 1659
    ushr-int/lit8 v0, p0, 0x10

    xor-int/2addr v0, p0

    return v0
.end method

.method private static toArrayList(Ljava/util/Collection;)Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection<",
            "TE;>;)",
            "Ljava/util/ArrayList<",
            "TE;>;"
        }
    .end annotation

    .line 4536
    .local p0, "c":Ljava/util/Collection;, "Ljava/util/Collection<TE;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 4537
    .local v0, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TE;>;"
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/checkerframework/com/google/common/collect/Iterators;->addAll(Ljava/util/Collection;Ljava/util/Iterator;)Z

    .line 4538
    return-object v0
.end method

.method static unset()Lorg/checkerframework/com/google/common/cache/LocalCache$ValueReference;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">()",
            "Lorg/checkerframework/com/google/common/cache/LocalCache$ValueReference<",
            "TK;TV;>;"
        }
    .end annotation

    .line 727
    sget-object v0, Lorg/checkerframework/com/google/common/cache/LocalCache;->UNSET:Lorg/checkerframework/com/google/common/cache/LocalCache$ValueReference;

    return-object v0
.end method


# virtual methods
.method public cleanUp()V
    .locals 4

    .line 3889
    .local p0, "this":Lorg/checkerframework/com/google/common/cache/LocalCache;, "Lorg/checkerframework/com/google/common/cache/LocalCache<TK;TV;>;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/cache/LocalCache;->segments:[Lorg/checkerframework/com/google/common/cache/LocalCache$Segment;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 3890
    .local v3, "segment":Lorg/checkerframework/com/google/common/cache/LocalCache$Segment;, "Lorg/checkerframework/com/google/common/cache/LocalCache$Segment<**>;"
    invoke-virtual {v3}, Lorg/checkerframework/com/google/common/cache/LocalCache$Segment;->cleanUp()V

    .line 3889
    .end local v3    # "segment":Lorg/checkerframework/com/google/common/cache/LocalCache$Segment;, "Lorg/checkerframework/com/google/common/cache/LocalCache$Segment<**>;"
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3892
    :cond_0
    return-void
.end method

.method public clear()V
    .locals 4

    .line 4271
    .local p0, "this":Lorg/checkerframework/com/google/common/cache/LocalCache;, "Lorg/checkerframework/com/google/common/cache/LocalCache<TK;TV;>;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/cache/LocalCache;->segments:[Lorg/checkerframework/com/google/common/cache/LocalCache$Segment;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 4272
    .local v3, "segment":Lorg/checkerframework/com/google/common/cache/LocalCache$Segment;, "Lorg/checkerframework/com/google/common/cache/LocalCache$Segment<TK;TV;>;"
    invoke-virtual {v3}, Lorg/checkerframework/com/google/common/cache/LocalCache$Segment;->clear()V

    .line 4271
    .end local v3    # "segment":Lorg/checkerframework/com/google/common/cache/LocalCache$Segment;, "Lorg/checkerframework/com/google/common/cache/LocalCache$Segment<TK;TV;>;"
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 4274
    :cond_0
    return-void
.end method

.method public compute(Ljava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Ljava/util/function/BiFunction<",
            "-TK;-TV;+TV;>;)TV;"
        }
    .end annotation

    .line 4196
    .local p0, "this":Lorg/checkerframework/com/google/common/cache/LocalCache;, "Lorg/checkerframework/com/google/common/cache/LocalCache<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "function":Ljava/util/function/BiFunction;, "Ljava/util/function/BiFunction<-TK;-TV;+TV;>;"
    invoke-static {p1}, Lorg/checkerframework/com/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4197
    invoke-static {p2}, Lorg/checkerframework/com/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4198
    invoke-virtual {p0, p1}, Lorg/checkerframework/com/google/common/cache/LocalCache;->hash(Ljava/lang/Object;)I

    move-result v0

    .line 4199
    .local v0, "hash":I
    invoke-virtual {p0, v0}, Lorg/checkerframework/com/google/common/cache/LocalCache;->segmentFor(I)Lorg/checkerframework/com/google/common/cache/LocalCache$Segment;

    move-result-object v1

    invoke-virtual {v1, p1, v0, p2}, Lorg/checkerframework/com/google/common/cache/LocalCache$Segment;->compute(Ljava/lang/Object;ILjava/util/function/BiFunction;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Ljava/util/function/Function<",
            "-TK;+TV;>;)TV;"
        }
    .end annotation

    .line 4204
    .local p0, "this":Lorg/checkerframework/com/google/common/cache/LocalCache;, "Lorg/checkerframework/com/google/common/cache/LocalCache<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "function":Ljava/util/function/Function;, "Ljava/util/function/Function<-TK;+TV;>;"
    invoke-static {p1}, Lorg/checkerframework/com/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4205
    invoke-static {p2}, Lorg/checkerframework/com/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4206
    new-instance v0, Lorg/checkerframework/com/google/common/cache/LocalCache$$ExternalSyntheticLambda1;

    invoke-direct {v0, p2, p1}, Lorg/checkerframework/com/google/common/cache/LocalCache$$ExternalSyntheticLambda1;-><init>(Ljava/util/function/Function;Ljava/lang/Object;)V

    invoke-virtual {p0, p1, v0}, Lorg/checkerframework/com/google/common/cache/LocalCache;->compute(Ljava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public computeIfPresent(Ljava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Ljava/util/function/BiFunction<",
            "-TK;-TV;+TV;>;)TV;"
        }
    .end annotation

    .line 4211
    .local p0, "this":Lorg/checkerframework/com/google/common/cache/LocalCache;, "Lorg/checkerframework/com/google/common/cache/LocalCache<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "function":Ljava/util/function/BiFunction;, "Ljava/util/function/BiFunction<-TK;-TV;+TV;>;"
    invoke-static {p1}, Lorg/checkerframework/com/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4212
    invoke-static {p2}, Lorg/checkerframework/com/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4213
    new-instance v0, Lorg/checkerframework/com/google/common/cache/LocalCache$$ExternalSyntheticLambda2;

    invoke-direct {v0, p2}, Lorg/checkerframework/com/google/common/cache/LocalCache$$ExternalSyntheticLambda2;-><init>(Ljava/util/function/BiFunction;)V

    invoke-virtual {p0, p1, v0}, Lorg/checkerframework/com/google/common/cache/LocalCache;->compute(Ljava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "key"    # Ljava/lang/Object;

    .line 4131
    .local p0, "this":Lorg/checkerframework/com/google/common/cache/LocalCache;, "Lorg/checkerframework/com/google/common/cache/LocalCache<TK;TV;>;"
    if-nez p1, :cond_0

    .line 4132
    const/4 v0, 0x0

    return v0

    .line 4134
    :cond_0
    invoke-virtual {p0, p1}, Lorg/checkerframework/com/google/common/cache/LocalCache;->hash(Ljava/lang/Object;)I

    move-result v0

    .line 4135
    .local v0, "hash":I
    invoke-virtual {p0, v0}, Lorg/checkerframework/com/google/common/cache/LocalCache;->segmentFor(I)Lorg/checkerframework/com/google/common/cache/LocalCache$Segment;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lorg/checkerframework/com/google/common/cache/LocalCache$Segment;->containsKey(Ljava/lang/Object;I)Z

    move-result v1

    return v1
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .locals 20
    .param p1, "value"    # Ljava/lang/Object;

    .line 4141
    .local p0, "this":Lorg/checkerframework/com/google/common/cache/LocalCache;, "Lorg/checkerframework/com/google/common/cache/LocalCache<TK;TV;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 4142
    return v2

    .line 4150
    :cond_0
    iget-object v3, v0, Lorg/checkerframework/com/google/common/cache/LocalCache;->ticker:Lorg/checkerframework/com/google/common/base/Ticker;

    invoke-virtual {v3}, Lorg/checkerframework/com/google/common/base/Ticker;->read()J

    move-result-wide v3

    .line 4151
    .local v3, "now":J
    iget-object v5, v0, Lorg/checkerframework/com/google/common/cache/LocalCache;->segments:[Lorg/checkerframework/com/google/common/cache/LocalCache$Segment;

    .line 4152
    .local v5, "segments":[Lorg/checkerframework/com/google/common/cache/LocalCache$Segment;, "[Lorg/checkerframework/com/google/common/cache/LocalCache$Segment<TK;TV;>;"
    const-wide/16 v6, -0x1

    .line 4153
    .local v6, "last":J
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    const/4 v9, 0x3

    if-ge v8, v9, :cond_7

    .line 4154
    const-wide/16 v9, 0x0

    .line 4155
    .local v9, "sum":J
    array-length v11, v5

    move v12, v2

    :goto_1
    if-ge v12, v11, :cond_5

    aget-object v13, v5, v12

    .line 4157
    .local v13, "segment":Lorg/checkerframework/com/google/common/cache/LocalCache$Segment;, "Lorg/checkerframework/com/google/common/cache/LocalCache$Segment<TK;TV;>;"
    iget v14, v13, Lorg/checkerframework/com/google/common/cache/LocalCache$Segment;->count:I

    .line 4159
    .local v14, "unused":I
    iget-object v15, v13, Lorg/checkerframework/com/google/common/cache/LocalCache$Segment;->table:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 4160
    .local v15, "table":Ljava/util/concurrent/atomic/AtomicReferenceArray;, "Ljava/util/concurrent/atomic/AtomicReferenceArray<Lorg/checkerframework/com/google/common/cache/ReferenceEntry<TK;TV;>;>;"
    const/16 v16, 0x0

    move/from16 v2, v16

    .local v2, "j":I
    :goto_2
    move-object/from16 v16, v5

    .end local v5    # "segments":[Lorg/checkerframework/com/google/common/cache/LocalCache$Segment;, "[Lorg/checkerframework/com/google/common/cache/LocalCache$Segment<TK;TV;>;"
    .local v16, "segments":[Lorg/checkerframework/com/google/common/cache/LocalCache$Segment;, "[Lorg/checkerframework/com/google/common/cache/LocalCache$Segment<TK;TV;>;"
    invoke-virtual {v15}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v5

    if-ge v2, v5, :cond_4

    .line 4161
    invoke-virtual {v15, v2}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/checkerframework/com/google/common/cache/ReferenceEntry;

    .local v5, "e":Lorg/checkerframework/com/google/common/cache/ReferenceEntry;, "Lorg/checkerframework/com/google/common/cache/ReferenceEntry<TK;TV;>;"
    :goto_3
    if-eqz v5, :cond_3

    .line 4162
    move/from16 v17, v11

    invoke-virtual {v13, v5, v3, v4}, Lorg/checkerframework/com/google/common/cache/LocalCache$Segment;->getLiveValue(Lorg/checkerframework/com/google/common/cache/ReferenceEntry;J)Ljava/lang/Object;

    move-result-object v11

    .line 4163
    .local v11, "v":Ljava/lang/Object;, "TV;"
    if-eqz v11, :cond_1

    move-wide/from16 v18, v3

    .end local v3    # "now":J
    .local v18, "now":J
    iget-object v3, v0, Lorg/checkerframework/com/google/common/cache/LocalCache;->valueEquivalence:Lorg/checkerframework/com/google/common/base/Equivalence;

    invoke-virtual {v3, v1, v11}, Lorg/checkerframework/com/google/common/base/Equivalence;->equivalent(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 4164
    const/4 v3, 0x1

    return v3

    .line 4163
    .end local v18    # "now":J
    .restart local v3    # "now":J
    :cond_1
    move-wide/from16 v18, v3

    .line 4161
    .end local v3    # "now":J
    .end local v11    # "v":Ljava/lang/Object;, "TV;"
    .restart local v18    # "now":J
    :cond_2
    invoke-interface {v5}, Lorg/checkerframework/com/google/common/cache/ReferenceEntry;->getNext()Lorg/checkerframework/com/google/common/cache/ReferenceEntry;

    move-result-object v5

    move/from16 v11, v17

    move-wide/from16 v3, v18

    goto :goto_3

    .end local v18    # "now":J
    .restart local v3    # "now":J
    :cond_3
    move-wide/from16 v18, v3

    move/from16 v17, v11

    .line 4160
    .end local v3    # "now":J
    .end local v5    # "e":Lorg/checkerframework/com/google/common/cache/ReferenceEntry;, "Lorg/checkerframework/com/google/common/cache/ReferenceEntry<TK;TV;>;"
    .restart local v18    # "now":J
    add-int/lit8 v2, v2, 0x1

    move-object/from16 v5, v16

    goto :goto_2

    .end local v18    # "now":J
    .restart local v3    # "now":J
    :cond_4
    move-wide/from16 v18, v3

    move/from16 v17, v11

    .line 4168
    .end local v2    # "j":I
    .end local v3    # "now":J
    .restart local v18    # "now":J
    iget v2, v13, Lorg/checkerframework/com/google/common/cache/LocalCache$Segment;->modCount:I

    int-to-long v2, v2

    add-long/2addr v9, v2

    .line 4155
    .end local v13    # "segment":Lorg/checkerframework/com/google/common/cache/LocalCache$Segment;, "Lorg/checkerframework/com/google/common/cache/LocalCache$Segment<TK;TV;>;"
    .end local v14    # "unused":I
    .end local v15    # "table":Ljava/util/concurrent/atomic/AtomicReferenceArray;, "Ljava/util/concurrent/atomic/AtomicReferenceArray<Lorg/checkerframework/com/google/common/cache/ReferenceEntry<TK;TV;>;>;"
    add-int/lit8 v12, v12, 0x1

    move-object/from16 v5, v16

    move-wide/from16 v3, v18

    const/4 v2, 0x0

    goto :goto_1

    .line 4170
    .end local v16    # "segments":[Lorg/checkerframework/com/google/common/cache/LocalCache$Segment;, "[Lorg/checkerframework/com/google/common/cache/LocalCache$Segment<TK;TV;>;"
    .end local v18    # "now":J
    .restart local v3    # "now":J
    .local v5, "segments":[Lorg/checkerframework/com/google/common/cache/LocalCache$Segment;, "[Lorg/checkerframework/com/google/common/cache/LocalCache$Segment<TK;TV;>;"
    :cond_5
    move-wide/from16 v18, v3

    move-object/from16 v16, v5

    .end local v3    # "now":J
    .end local v5    # "segments":[Lorg/checkerframework/com/google/common/cache/LocalCache$Segment;, "[Lorg/checkerframework/com/google/common/cache/LocalCache$Segment<TK;TV;>;"
    .restart local v16    # "segments":[Lorg/checkerframework/com/google/common/cache/LocalCache$Segment;, "[Lorg/checkerframework/com/google/common/cache/LocalCache$Segment<TK;TV;>;"
    .restart local v18    # "now":J
    cmp-long v2, v9, v6

    if-nez v2, :cond_6

    .line 4171
    goto :goto_4

    .line 4173
    :cond_6
    move-wide v6, v9

    .line 4153
    .end local v9    # "sum":J
    add-int/lit8 v8, v8, 0x1

    move-object/from16 v5, v16

    move-wide/from16 v3, v18

    const/4 v2, 0x0

    goto :goto_0

    .end local v16    # "segments":[Lorg/checkerframework/com/google/common/cache/LocalCache$Segment;, "[Lorg/checkerframework/com/google/common/cache/LocalCache$Segment<TK;TV;>;"
    .end local v18    # "now":J
    .restart local v3    # "now":J
    .restart local v5    # "segments":[Lorg/checkerframework/com/google/common/cache/LocalCache$Segment;, "[Lorg/checkerframework/com/google/common/cache/LocalCache$Segment<TK;TV;>;"
    :cond_7
    move-wide/from16 v18, v3

    move-object/from16 v16, v5

    .line 4175
    .end local v3    # "now":J
    .end local v5    # "segments":[Lorg/checkerframework/com/google/common/cache/LocalCache$Segment;, "[Lorg/checkerframework/com/google/common/cache/LocalCache$Segment<TK;TV;>;"
    .end local v8    # "i":I
    .restart local v16    # "segments":[Lorg/checkerframework/com/google/common/cache/LocalCache$Segment;, "[Lorg/checkerframework/com/google/common/cache/LocalCache$Segment<TK;TV;>;"
    .restart local v18    # "now":J
    :goto_4
    const/4 v2, 0x0

    return v2
.end method

.method copyEntry(Lorg/checkerframework/com/google/common/cache/ReferenceEntry;Lorg/checkerframework/com/google/common/cache/ReferenceEntry;)Lorg/checkerframework/com/google/common/cache/ReferenceEntry;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/google/common/cache/ReferenceEntry<",
            "TK;TV;>;",
            "Lorg/checkerframework/com/google/common/cache/ReferenceEntry<",
            "TK;TV;>;)",
            "Lorg/checkerframework/com/google/common/cache/ReferenceEntry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1682
    .local p0, "this":Lorg/checkerframework/com/google/common/cache/LocalCache;, "Lorg/checkerframework/com/google/common/cache/LocalCache<TK;TV;>;"
    .local p1, "original":Lorg/checkerframework/com/google/common/cache/ReferenceEntry;, "Lorg/checkerframework/com/google/common/cache/ReferenceEntry<TK;TV;>;"
    .local p2, "newNext":Lorg/checkerframework/com/google/common/cache/ReferenceEntry;, "Lorg/checkerframework/com/google/common/cache/ReferenceEntry<TK;TV;>;"
    invoke-interface {p1}, Lorg/checkerframework/com/google/common/cache/ReferenceEntry;->getHash()I

    move-result v0

    .line 1683
    .local v0, "hash":I
    invoke-virtual {p0, v0}, Lorg/checkerframework/com/google/common/cache/LocalCache;->segmentFor(I)Lorg/checkerframework/com/google/common/cache/LocalCache$Segment;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lorg/checkerframework/com/google/common/cache/LocalCache$Segment;->copyEntry(Lorg/checkerframework/com/google/common/cache/ReferenceEntry;Lorg/checkerframework/com/google/common/cache/ReferenceEntry;)Lorg/checkerframework/com/google/common/cache/ReferenceEntry;

    move-result-object v1

    return-object v1
.end method

.method createSegment(IJLorg/checkerframework/com/google/common/cache/AbstractCache$StatsCounter;)Lorg/checkerframework/com/google/common/cache/LocalCache$Segment;
    .locals 7
    .param p1, "initialCapacity"    # I
    .param p2, "maxSegmentWeight"    # J
    .param p4, "statsCounter"    # Lorg/checkerframework/com/google/common/cache/AbstractCache$StatsCounter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJ",
            "Lorg/checkerframework/com/google/common/cache/AbstractCache$StatsCounter;",
            ")",
            "Lorg/checkerframework/com/google/common/cache/LocalCache$Segment<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1734
    .local p0, "this":Lorg/checkerframework/com/google/common/cache/LocalCache;, "Lorg/checkerframework/com/google/common/cache/LocalCache<TK;TV;>;"
    new-instance v6, Lorg/checkerframework/com/google/common/cache/LocalCache$Segment;

    move-object v0, v6

    move-object v1, p0

    move v2, p1

    move-wide v3, p2

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lorg/checkerframework/com/google/common/cache/LocalCache$Segment;-><init>(Lorg/checkerframework/com/google/common/cache/LocalCache;IJLorg/checkerframework/com/google/common/cache/AbstractCache$StatsCounter;)V

    return-object v6
.end method

.method customWeigher()Z
    .locals 2

    .line 321
    .local p0, "this":Lorg/checkerframework/com/google/common/cache/LocalCache;, "Lorg/checkerframework/com/google/common/cache/LocalCache<TK;TV;>;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/cache/LocalCache;->weigher:Lorg/checkerframework/com/google/common/cache/Weigher;

    sget-object v1, Lorg/checkerframework/com/google/common/cache/CacheBuilder$OneWeigher;->INSTANCE:Lorg/checkerframework/com/google/common/cache/CacheBuilder$OneWeigher;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public entrySet()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 4307
    .local p0, "this":Lorg/checkerframework/com/google/common/cache/LocalCache;, "Lorg/checkerframework/com/google/common/cache/LocalCache<TK;TV;>;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/cache/LocalCache;->entrySet:Ljava/util/Set;

    .line 4308
    .local v0, "es":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<TK;TV;>;>;"
    if-eqz v0, :cond_0

    move-object v1, v0

    goto :goto_0

    :cond_0
    new-instance v1, Lorg/checkerframework/com/google/common/cache/LocalCache$EntrySet;

    invoke-direct {v1, p0, p0}, Lorg/checkerframework/com/google/common/cache/LocalCache$EntrySet;-><init>(Lorg/checkerframework/com/google/common/cache/LocalCache;Ljava/util/concurrent/ConcurrentMap;)V

    iput-object v1, p0, Lorg/checkerframework/com/google/common/cache/LocalCache;->entrySet:Ljava/util/Set;

    :goto_0
    return-object v1
.end method

.method evictsBySize()Z
    .locals 4

    .line 317
    .local p0, "this":Lorg/checkerframework/com/google/common/cache/LocalCache;, "Lorg/checkerframework/com/google/common/cache/LocalCache<TK;TV;>;"
    iget-wide v0, p0, Lorg/checkerframework/com/google/common/cache/LocalCache;->maxWeight:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method expires()Z
    .locals 1

    .line 325
    .local p0, "this":Lorg/checkerframework/com/google/common/cache/LocalCache;, "Lorg/checkerframework/com/google/common/cache/LocalCache<TK;TV;>;"
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/cache/LocalCache;->expiresAfterWrite()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/cache/LocalCache;->expiresAfterAccess()Z

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

.method expiresAfterAccess()Z
    .locals 4

    .line 333
    .local p0, "this":Lorg/checkerframework/com/google/common/cache/LocalCache;, "Lorg/checkerframework/com/google/common/cache/LocalCache<TK;TV;>;"
    iget-wide v0, p0, Lorg/checkerframework/com/google/common/cache/LocalCache;->expireAfterAccessNanos:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method expiresAfterWrite()Z
    .locals 4

    .line 329
    .local p0, "this":Lorg/checkerframework/com/google/common/cache/LocalCache;, "Lorg/checkerframework/com/google/common/cache/LocalCache<TK;TV;>;"
    iget-wide v0, p0, Lorg/checkerframework/com/google/common/cache/LocalCache;->expireAfterWriteNanos:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .line 3944
    .local p0, "this":Lorg/checkerframework/com/google/common/cache/LocalCache;, "Lorg/checkerframework/com/google/common/cache/LocalCache<TK;TV;>;"
    if-nez p1, :cond_0

    .line 3945
    const/4 v0, 0x0

    return-object v0

    .line 3947
    :cond_0
    invoke-virtual {p0, p1}, Lorg/checkerframework/com/google/common/cache/LocalCache;->hash(Ljava/lang/Object;)I

    move-result v0

    .line 3948
    .local v0, "hash":I
    invoke-virtual {p0, v0}, Lorg/checkerframework/com/google/common/cache/LocalCache;->segmentFor(I)Lorg/checkerframework/com/google/common/cache/LocalCache$Segment;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lorg/checkerframework/com/google/common/cache/LocalCache$Segment;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method get(Ljava/lang/Object;Lorg/checkerframework/com/google/common/cache/CacheLoader;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Lorg/checkerframework/com/google/common/cache/CacheLoader<",
            "-TK;TV;>;)TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    .line 3952
    .local p0, "this":Lorg/checkerframework/com/google/common/cache/LocalCache;, "Lorg/checkerframework/com/google/common/cache/LocalCache<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "loader":Lorg/checkerframework/com/google/common/cache/CacheLoader;, "Lorg/checkerframework/com/google/common/cache/CacheLoader<-TK;TV;>;"
    invoke-static {p1}, Lorg/checkerframework/com/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/checkerframework/com/google/common/cache/LocalCache;->hash(Ljava/lang/Object;)I

    move-result v0

    .line 3953
    .local v0, "hash":I
    invoke-virtual {p0, v0}, Lorg/checkerframework/com/google/common/cache/LocalCache;->segmentFor(I)Lorg/checkerframework/com/google/common/cache/LocalCache$Segment;

    move-result-object v1

    invoke-virtual {v1, p1, v0, p2}, Lorg/checkerframework/com/google/common/cache/LocalCache$Segment;->get(Ljava/lang/Object;ILorg/checkerframework/com/google/common/cache/CacheLoader;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method getAll(Ljava/lang/Iterable;)Lorg/checkerframework/com/google/common/collect/ImmutableMap;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+TK;>;)",
            "Lorg/checkerframework/com/google/common/collect/ImmutableMap<",
            "TK;TV;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    .line 4002
    .local p0, "this":Lorg/checkerframework/com/google/common/cache/LocalCache;, "Lorg/checkerframework/com/google/common/cache/LocalCache<TK;TV;>;"
    .local p1, "keys":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+TK;>;"
    const/4 v0, 0x0

    .line 4003
    .local v0, "hits":I
    const/4 v1, 0x0

    .line 4005
    .local v1, "misses":I
    invoke-static {}, Lorg/checkerframework/com/google/common/collect/Maps;->newLinkedHashMap()Ljava/util/LinkedHashMap;

    move-result-object v2

    .line 4006
    .local v2, "result":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    invoke-static {}, Lorg/checkerframework/com/google/common/collect/Sets;->newLinkedHashSet()Ljava/util/LinkedHashSet;

    move-result-object v3

    .line 4007
    .local v3, "keysToLoad":Ljava/util/Set;, "Ljava/util/Set<TK;>;"
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .line 4008
    .local v5, "key":Ljava/lang/Object;, "TK;"
    invoke-virtual {p0, v5}, Lorg/checkerframework/com/google/common/cache/LocalCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 4009
    .local v6, "value":Ljava/lang/Object;, "TV;"
    invoke-interface {v2, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 4010
    invoke-interface {v2, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4011
    if-nez v6, :cond_0

    .line 4012
    add-int/lit8 v1, v1, 0x1

    .line 4013
    invoke-interface {v3, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 4015
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 4018
    .end local v5    # "key":Ljava/lang/Object;, "TK;"
    .end local v6    # "value":Ljava/lang/Object;, "TV;"
    :cond_1
    :goto_1
    goto :goto_0

    .line 4021
    :cond_2
    :try_start_0
    invoke-interface {v3}, Ljava/util/Set;->isEmpty()Z

    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v4, :cond_5

    .line 4023
    :try_start_1
    iget-object v4, p0, Lorg/checkerframework/com/google/common/cache/LocalCache;->defaultLoader:Lorg/checkerframework/com/google/common/cache/CacheLoader;

    invoke-virtual {p0, v3, v4}, Lorg/checkerframework/com/google/common/cache/LocalCache;->loadAll(Ljava/util/Set;Lorg/checkerframework/com/google/common/cache/CacheLoader;)Ljava/util/Map;

    move-result-object v4

    .line 4024
    .local v4, "newEntries":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    .line 4025
    .local v6, "key":Ljava/lang/Object;, "TK;"
    invoke-interface {v4, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .line 4026
    .local v7, "value":Ljava/lang/Object;, "TV;"
    if-eqz v7, :cond_3

    .line 4029
    invoke-interface {v2, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4030
    nop

    .end local v6    # "key":Ljava/lang/Object;, "TK;"
    .end local v7    # "value":Ljava/lang/Object;, "TV;"
    goto :goto_2

    .line 4027
    .restart local v6    # "key":Ljava/lang/Object;, "TK;"
    .restart local v7    # "value":Ljava/lang/Object;, "TV;"
    :cond_3
    new-instance v5, Lorg/checkerframework/com/google/common/cache/CacheLoader$InvalidCacheLoadException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "loadAll failed to return a value for "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v5, v8}, Lorg/checkerframework/com/google/common/cache/CacheLoader$InvalidCacheLoadException;-><init>(Ljava/lang/String;)V

    .end local v0    # "hits":I
    .end local v1    # "misses":I
    .end local v2    # "result":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    .end local v3    # "keysToLoad":Ljava/util/Set;, "Ljava/util/Set<TK;>;"
    .end local p1    # "keys":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+TK;>;"
    throw v5
    :try_end_1
    .catch Lorg/checkerframework/com/google/common/cache/CacheLoader$UnsupportedLoadingOperationException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4037
    .end local v4    # "newEntries":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    .end local v6    # "key":Ljava/lang/Object;, "TK;"
    .end local v7    # "value":Ljava/lang/Object;, "TV;"
    .restart local v0    # "hits":I
    .restart local v1    # "misses":I
    .restart local v2    # "result":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    .restart local v3    # "keysToLoad":Ljava/util/Set;, "Ljava/util/Set<TK;>;"
    .restart local p1    # "keys":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+TK;>;"
    :cond_4
    goto :goto_4

    .line 4031
    :catch_0
    move-exception v4

    .line 4033
    .local v4, "e":Lorg/checkerframework/com/google/common/cache/CacheLoader$UnsupportedLoadingOperationException;
    :try_start_2
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    .line 4034
    .restart local v6    # "key":Ljava/lang/Object;, "TK;"
    add-int/lit8 v1, v1, -0x1

    .line 4035
    iget-object v7, p0, Lorg/checkerframework/com/google/common/cache/LocalCache;->defaultLoader:Lorg/checkerframework/com/google/common/cache/CacheLoader;

    invoke-virtual {p0, v6, v7}, Lorg/checkerframework/com/google/common/cache/LocalCache;->get(Ljava/lang/Object;Lorg/checkerframework/com/google/common/cache/CacheLoader;)Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v2, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4036
    nop

    .end local v6    # "key":Ljava/lang/Object;, "TK;"
    goto :goto_3

    .line 4039
    .end local v4    # "e":Lorg/checkerframework/com/google/common/cache/CacheLoader$UnsupportedLoadingOperationException;
    :cond_5
    :goto_4
    invoke-static {v2}, Lorg/checkerframework/com/google/common/collect/ImmutableMap;->copyOf(Ljava/util/Map;)Lorg/checkerframework/com/google/common/collect/ImmutableMap;

    move-result-object v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 4041
    iget-object v5, p0, Lorg/checkerframework/com/google/common/cache/LocalCache;->globalStatsCounter:Lorg/checkerframework/com/google/common/cache/AbstractCache$StatsCounter;

    invoke-interface {v5, v0}, Lorg/checkerframework/com/google/common/cache/AbstractCache$StatsCounter;->recordHits(I)V

    .line 4042
    iget-object v5, p0, Lorg/checkerframework/com/google/common/cache/LocalCache;->globalStatsCounter:Lorg/checkerframework/com/google/common/cache/AbstractCache$StatsCounter;

    invoke-interface {v5, v1}, Lorg/checkerframework/com/google/common/cache/AbstractCache$StatsCounter;->recordMisses(I)V

    .line 4039
    return-object v4

    .line 4041
    :catchall_0
    move-exception v4

    iget-object v5, p0, Lorg/checkerframework/com/google/common/cache/LocalCache;->globalStatsCounter:Lorg/checkerframework/com/google/common/cache/AbstractCache$StatsCounter;

    invoke-interface {v5, v0}, Lorg/checkerframework/com/google/common/cache/AbstractCache$StatsCounter;->recordHits(I)V

    .line 4042
    iget-object v5, p0, Lorg/checkerframework/com/google/common/cache/LocalCache;->globalStatsCounter:Lorg/checkerframework/com/google/common/cache/AbstractCache$StatsCounter;

    invoke-interface {v5, v1}, Lorg/checkerframework/com/google/common/cache/AbstractCache$StatsCounter;->recordMisses(I)V

    .line 4043
    throw v4
.end method

.method getAllPresent(Ljava/lang/Iterable;)Lorg/checkerframework/com/google/common/collect/ImmutableMap;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "*>;)",
            "Lorg/checkerframework/com/google/common/collect/ImmutableMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 3980
    .local p0, "this":Lorg/checkerframework/com/google/common/cache/LocalCache;, "Lorg/checkerframework/com/google/common/cache/LocalCache<TK;TV;>;"
    .local p1, "keys":Ljava/lang/Iterable;, "Ljava/lang/Iterable<*>;"
    const/4 v0, 0x0

    .line 3981
    .local v0, "hits":I
    const/4 v1, 0x0

    .line 3983
    .local v1, "misses":I
    invoke-static {}, Lorg/checkerframework/com/google/common/collect/Maps;->newLinkedHashMap()Ljava/util/LinkedHashMap;

    move-result-object v2

    .line 3984
    .local v2, "result":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 3985
    .local v4, "key":Ljava/lang/Object;
    invoke-virtual {p0, v4}, Lorg/checkerframework/com/google/common/cache/LocalCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 3986
    .local v5, "value":Ljava/lang/Object;, "TV;"
    if-nez v5, :cond_0

    .line 3987
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 3991
    :cond_0
    move-object v6, v4

    .line 3992
    .local v6, "castKey":Ljava/lang/Object;, "TK;"
    invoke-interface {v2, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3993
    add-int/lit8 v0, v0, 0x1

    .line 3995
    .end local v4    # "key":Ljava/lang/Object;
    .end local v5    # "value":Ljava/lang/Object;, "TV;"
    .end local v6    # "castKey":Ljava/lang/Object;, "TK;"
    :goto_1
    goto :goto_0

    .line 3996
    :cond_1
    iget-object v3, p0, Lorg/checkerframework/com/google/common/cache/LocalCache;->globalStatsCounter:Lorg/checkerframework/com/google/common/cache/AbstractCache$StatsCounter;

    invoke-interface {v3, v0}, Lorg/checkerframework/com/google/common/cache/AbstractCache$StatsCounter;->recordHits(I)V

    .line 3997
    iget-object v3, p0, Lorg/checkerframework/com/google/common/cache/LocalCache;->globalStatsCounter:Lorg/checkerframework/com/google/common/cache/AbstractCache$StatsCounter;

    invoke-interface {v3, v1}, Lorg/checkerframework/com/google/common/cache/AbstractCache$StatsCounter;->recordMisses(I)V

    .line 3998
    invoke-static {v2}, Lorg/checkerframework/com/google/common/collect/ImmutableMap;->copyOf(Ljava/util/Map;)Lorg/checkerframework/com/google/common/collect/ImmutableMap;

    move-result-object v3

    return-object v3
.end method

.method getEntry(Ljava/lang/Object;)Lorg/checkerframework/com/google/common/cache/ReferenceEntry;
    .locals 2
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lorg/checkerframework/com/google/common/cache/ReferenceEntry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 4116
    .local p0, "this":Lorg/checkerframework/com/google/common/cache/LocalCache;, "Lorg/checkerframework/com/google/common/cache/LocalCache<TK;TV;>;"
    if-nez p1, :cond_0

    .line 4117
    const/4 v0, 0x0

    return-object v0

    .line 4119
    :cond_0
    invoke-virtual {p0, p1}, Lorg/checkerframework/com/google/common/cache/LocalCache;->hash(Ljava/lang/Object;)I

    move-result v0

    .line 4120
    .local v0, "hash":I
    invoke-virtual {p0, v0}, Lorg/checkerframework/com/google/common/cache/LocalCache;->segmentFor(I)Lorg/checkerframework/com/google/common/cache/LocalCache$Segment;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lorg/checkerframework/com/google/common/cache/LocalCache$Segment;->getEntry(Ljava/lang/Object;I)Lorg/checkerframework/com/google/common/cache/ReferenceEntry;

    move-result-object v1

    return-object v1
.end method

.method public getIfPresent(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .line 3957
    .local p0, "this":Lorg/checkerframework/com/google/common/cache/LocalCache;, "Lorg/checkerframework/com/google/common/cache/LocalCache<TK;TV;>;"
    invoke-static {p1}, Lorg/checkerframework/com/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/checkerframework/com/google/common/cache/LocalCache;->hash(Ljava/lang/Object;)I

    move-result v0

    .line 3958
    .local v0, "hash":I
    invoke-virtual {p0, v0}, Lorg/checkerframework/com/google/common/cache/LocalCache;->segmentFor(I)Lorg/checkerframework/com/google/common/cache/LocalCache$Segment;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lorg/checkerframework/com/google/common/cache/LocalCache$Segment;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v1

    .line 3959
    .local v1, "value":Ljava/lang/Object;, "TV;"
    const/4 v2, 0x1

    if-nez v1, :cond_0

    .line 3960
    iget-object v3, p0, Lorg/checkerframework/com/google/common/cache/LocalCache;->globalStatsCounter:Lorg/checkerframework/com/google/common/cache/AbstractCache$StatsCounter;

    invoke-interface {v3, v2}, Lorg/checkerframework/com/google/common/cache/AbstractCache$StatsCounter;->recordMisses(I)V

    goto :goto_0

    .line 3962
    :cond_0
    iget-object v3, p0, Lorg/checkerframework/com/google/common/cache/LocalCache;->globalStatsCounter:Lorg/checkerframework/com/google/common/cache/AbstractCache$StatsCounter;

    invoke-interface {v3, v2}, Lorg/checkerframework/com/google/common/cache/AbstractCache$StatsCounter;->recordHits(I)V

    .line 3964
    :goto_0
    return-object v1
.end method

.method getLiveValue(Lorg/checkerframework/com/google/common/cache/ReferenceEntry;J)Ljava/lang/Object;
    .locals 3
    .param p2, "now"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/google/common/cache/ReferenceEntry<",
            "TK;TV;>;J)TV;"
        }
    .end annotation

    .line 1745
    .local p0, "this":Lorg/checkerframework/com/google/common/cache/LocalCache;, "Lorg/checkerframework/com/google/common/cache/LocalCache<TK;TV;>;"
    .local p1, "entry":Lorg/checkerframework/com/google/common/cache/ReferenceEntry;, "Lorg/checkerframework/com/google/common/cache/ReferenceEntry<TK;TV;>;"
    invoke-interface {p1}, Lorg/checkerframework/com/google/common/cache/ReferenceEntry;->getKey()Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1746
    return-object v1

    .line 1748
    :cond_0
    invoke-interface {p1}, Lorg/checkerframework/com/google/common/cache/ReferenceEntry;->getValueReference()Lorg/checkerframework/com/google/common/cache/LocalCache$ValueReference;

    move-result-object v0

    invoke-interface {v0}, Lorg/checkerframework/com/google/common/cache/LocalCache$ValueReference;->get()Ljava/lang/Object;

    move-result-object v0

    .line 1749
    .local v0, "value":Ljava/lang/Object;, "TV;"
    if-nez v0, :cond_1

    .line 1750
    return-object v1

    .line 1753
    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lorg/checkerframework/com/google/common/cache/LocalCache;->isExpired(Lorg/checkerframework/com/google/common/cache/ReferenceEntry;J)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1754
    return-object v1

    .line 1756
    :cond_2
    return-object v0
.end method

.method public getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "TV;)TV;"
        }
    .end annotation

    .line 3971
    .local p0, "this":Lorg/checkerframework/com/google/common/cache/LocalCache;, "Lorg/checkerframework/com/google/common/cache/LocalCache<TK;TV;>;"
    .local p2, "defaultValue":Ljava/lang/Object;, "TV;"
    invoke-virtual {p0, p1}, Lorg/checkerframework/com/google/common/cache/LocalCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 3972
    .local v0, "result":Ljava/lang/Object;, "TV;"
    if-eqz v0, :cond_0

    move-object v1, v0

    goto :goto_0

    :cond_0
    move-object v1, p2

    :goto_0
    return-object v1
.end method

.method getOrLoad(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    .line 3976
    .local p0, "this":Lorg/checkerframework/com/google/common/cache/LocalCache;, "Lorg/checkerframework/com/google/common/cache/LocalCache<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/cache/LocalCache;->defaultLoader:Lorg/checkerframework/com/google/common/cache/CacheLoader;

    invoke-virtual {p0, p1, v0}, Lorg/checkerframework/com/google/common/cache/LocalCache;->get(Ljava/lang/Object;Lorg/checkerframework/com/google/common/cache/CacheLoader;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method hash(Ljava/lang/Object;)I
    .locals 2
    .param p1, "key"    # Ljava/lang/Object;

    .line 1697
    .local p0, "this":Lorg/checkerframework/com/google/common/cache/LocalCache;, "Lorg/checkerframework/com/google/common/cache/LocalCache<TK;TV;>;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/cache/LocalCache;->keyEquivalence:Lorg/checkerframework/com/google/common/base/Equivalence;

    invoke-virtual {v0, p1}, Lorg/checkerframework/com/google/common/base/Equivalence;->hash(Ljava/lang/Object;)I

    move-result v0

    .line 1698
    .local v0, "h":I
    invoke-static {v0}, Lorg/checkerframework/com/google/common/cache/LocalCache;->rehash(I)I

    move-result v1

    return v1
.end method

.method invalidateAll(Ljava/lang/Iterable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "*>;)V"
        }
    .end annotation

    .line 4278
    .local p0, "this":Lorg/checkerframework/com/google/common/cache/LocalCache;, "Lorg/checkerframework/com/google/common/cache/LocalCache<TK;TV;>;"
    .local p1, "keys":Ljava/lang/Iterable;, "Ljava/lang/Iterable<*>;"
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 4279
    .local v1, "key":Ljava/lang/Object;
    invoke-virtual {p0, v1}, Lorg/checkerframework/com/google/common/cache/LocalCache;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4280
    .end local v1    # "key":Ljava/lang/Object;
    goto :goto_0

    .line 4281
    :cond_0
    return-void
.end method

.method public isEmpty()Z
    .locals 9

    .line 3905
    .local p0, "this":Lorg/checkerframework/com/google/common/cache/LocalCache;, "Lorg/checkerframework/com/google/common/cache/LocalCache<TK;TV;>;"
    const-wide/16 v0, 0x0

    .line 3906
    .local v0, "sum":J
    iget-object v2, p0, Lorg/checkerframework/com/google/common/cache/LocalCache;->segments:[Lorg/checkerframework/com/google/common/cache/LocalCache$Segment;

    .line 3907
    .local v2, "segments":[Lorg/checkerframework/com/google/common/cache/LocalCache$Segment;, "[Lorg/checkerframework/com/google/common/cache/LocalCache$Segment<TK;TV;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v4, v2

    const/4 v5, 0x0

    if-ge v3, v4, :cond_1

    .line 3908
    aget-object v4, v2, v3

    iget v4, v4, Lorg/checkerframework/com/google/common/cache/LocalCache$Segment;->count:I

    if-eqz v4, :cond_0

    .line 3909
    return v5

    .line 3911
    :cond_0
    aget-object v4, v2, v3

    iget v4, v4, Lorg/checkerframework/com/google/common/cache/LocalCache$Segment;->modCount:I

    int-to-long v4, v4

    add-long/2addr v0, v4

    .line 3907
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 3914
    .end local v3    # "i":I
    :cond_1
    const-wide/16 v3, 0x0

    cmp-long v6, v0, v3

    if-eqz v6, :cond_4

    .line 3915
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_1
    array-length v7, v2

    if-ge v6, v7, :cond_3

    .line 3916
    aget-object v7, v2, v6

    iget v7, v7, Lorg/checkerframework/com/google/common/cache/LocalCache$Segment;->count:I

    if-eqz v7, :cond_2

    .line 3917
    return v5

    .line 3919
    :cond_2
    aget-object v7, v2, v6

    iget v7, v7, Lorg/checkerframework/com/google/common/cache/LocalCache$Segment;->modCount:I

    int-to-long v7, v7

    sub-long/2addr v0, v7

    .line 3915
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 3921
    .end local v6    # "i":I
    :cond_3
    cmp-long v3, v0, v3

    if-eqz v3, :cond_4

    .line 3922
    return v5

    .line 3925
    :cond_4
    const/4 v3, 0x1

    return v3
.end method

.method isExpired(Lorg/checkerframework/com/google/common/cache/ReferenceEntry;J)Z
    .locals 6
    .param p2, "now"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/google/common/cache/ReferenceEntry<",
            "TK;TV;>;J)Z"
        }
    .end annotation

    .line 1763
    .local p0, "this":Lorg/checkerframework/com/google/common/cache/LocalCache;, "Lorg/checkerframework/com/google/common/cache/LocalCache<TK;TV;>;"
    .local p1, "entry":Lorg/checkerframework/com/google/common/cache/ReferenceEntry;, "Lorg/checkerframework/com/google/common/cache/ReferenceEntry<TK;TV;>;"
    invoke-static {p1}, Lorg/checkerframework/com/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1764
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/cache/LocalCache;->expiresAfterAccess()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lorg/checkerframework/com/google/common/cache/ReferenceEntry;->getAccessTime()J

    move-result-wide v2

    sub-long v2, p2, v2

    iget-wide v4, p0, Lorg/checkerframework/com/google/common/cache/LocalCache;->expireAfterAccessNanos:J

    cmp-long v0, v2, v4

    if-ltz v0, :cond_0

    .line 1765
    return v1

    .line 1767
    :cond_0
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/cache/LocalCache;->expiresAfterWrite()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Lorg/checkerframework/com/google/common/cache/ReferenceEntry;->getWriteTime()J

    move-result-wide v2

    sub-long v2, p2, v2

    iget-wide v4, p0, Lorg/checkerframework/com/google/common/cache/LocalCache;->expireAfterWriteNanos:J

    cmp-long v0, v2, v4

    if-ltz v0, :cond_1

    .line 1768
    return v1

    .line 1770
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method isLive(Lorg/checkerframework/com/google/common/cache/ReferenceEntry;J)Z
    .locals 1
    .param p2, "now"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/google/common/cache/ReferenceEntry<",
            "TK;TV;>;J)Z"
        }
    .end annotation

    .line 1718
    .local p0, "this":Lorg/checkerframework/com/google/common/cache/LocalCache;, "Lorg/checkerframework/com/google/common/cache/LocalCache<TK;TV;>;"
    .local p1, "entry":Lorg/checkerframework/com/google/common/cache/ReferenceEntry;, "Lorg/checkerframework/com/google/common/cache/ReferenceEntry<TK;TV;>;"
    invoke-interface {p1}, Lorg/checkerframework/com/google/common/cache/ReferenceEntry;->getHash()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/checkerframework/com/google/common/cache/LocalCache;->segmentFor(I)Lorg/checkerframework/com/google/common/cache/LocalCache$Segment;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lorg/checkerframework/com/google/common/cache/LocalCache$Segment;->getLiveValue(Lorg/checkerframework/com/google/common/cache/ReferenceEntry;J)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public keySet()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TK;>;"
        }
    .end annotation

    .line 4288
    .local p0, "this":Lorg/checkerframework/com/google/common/cache/LocalCache;, "Lorg/checkerframework/com/google/common/cache/LocalCache<TK;TV;>;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/cache/LocalCache;->keySet:Ljava/util/Set;

    .line 4289
    .local v0, "ks":Ljava/util/Set;, "Ljava/util/Set<TK;>;"
    if-eqz v0, :cond_0

    move-object v1, v0

    goto :goto_0

    :cond_0
    new-instance v1, Lorg/checkerframework/com/google/common/cache/LocalCache$KeySet;

    invoke-direct {v1, p0, p0}, Lorg/checkerframework/com/google/common/cache/LocalCache$KeySet;-><init>(Lorg/checkerframework/com/google/common/cache/LocalCache;Ljava/util/concurrent/ConcurrentMap;)V

    iput-object v1, p0, Lorg/checkerframework/com/google/common/cache/LocalCache;->keySet:Ljava/util/Set;

    :goto_0
    return-object v1
.end method

.method loadAll(Ljava/util/Set;Lorg/checkerframework/com/google/common/cache/CacheLoader;)Ljava/util/Map;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "+TK;>;",
            "Lorg/checkerframework/com/google/common/cache/CacheLoader<",
            "-TK;TV;>;)",
            "Ljava/util/Map<",
            "TK;TV;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    .line 4053
    .local p0, "this":Lorg/checkerframework/com/google/common/cache/LocalCache;, "Lorg/checkerframework/com/google/common/cache/LocalCache<TK;TV;>;"
    .local p1, "keys":Ljava/util/Set;, "Ljava/util/Set<+TK;>;"
    .local p2, "loader":Lorg/checkerframework/com/google/common/cache/CacheLoader;, "Lorg/checkerframework/com/google/common/cache/CacheLoader<-TK;TV;>;"
    invoke-static {p2}, Lorg/checkerframework/com/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4054
    invoke-static {p1}, Lorg/checkerframework/com/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4055
    invoke-static {}, Lorg/checkerframework/com/google/common/base/Stopwatch;->createStarted()Lorg/checkerframework/com/google/common/base/Stopwatch;

    move-result-object v0

    .line 4057
    .local v0, "stopwatch":Lorg/checkerframework/com/google/common/base/Stopwatch;
    const/4 v1, 0x0

    .line 4060
    .local v1, "success":Z
    :try_start_0
    invoke-virtual {p2, p1}, Lorg/checkerframework/com/google/common/cache/CacheLoader;->loadAll(Ljava/lang/Iterable;)Ljava/util/Map;

    move-result-object v2
    :try_end_0
    .catch Lorg/checkerframework/com/google/common/cache/CacheLoader$UnsupportedLoadingOperationException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4061
    .local v2, "map":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    move-object v3, v2

    .line 4062
    .local v3, "result":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    const/4 v1, 0x1

    .line 4076
    .end local v2    # "map":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    if-nez v1, :cond_0

    .line 4077
    iget-object v2, p0, Lorg/checkerframework/com/google/common/cache/LocalCache;->globalStatsCounter:Lorg/checkerframework/com/google/common/cache/AbstractCache$StatsCounter;

    sget-object v4, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v4}, Lorg/checkerframework/com/google/common/base/Stopwatch;->elapsed(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v4

    invoke-interface {v2, v4, v5}, Lorg/checkerframework/com/google/common/cache/AbstractCache$StatsCounter;->recordLoadException(J)V

    .line 4081
    :cond_0
    if-eqz v3, :cond_5

    .line 4086
    invoke-virtual {v0}, Lorg/checkerframework/com/google/common/base/Stopwatch;->stop()Lorg/checkerframework/com/google/common/base/Stopwatch;

    .line 4088
    const/4 v2, 0x0

    .line 4089
    .local v2, "nullsPresent":Z
    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 4090
    .local v5, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    .line 4091
    .local v6, "key":Ljava/lang/Object;, "TK;"
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    .line 4092
    .local v7, "value":Ljava/lang/Object;, "TV;"
    if-eqz v6, :cond_2

    if-nez v7, :cond_1

    goto :goto_1

    .line 4096
    :cond_1
    invoke-virtual {p0, v6, v7}, Lorg/checkerframework/com/google/common/cache/LocalCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 4094
    :cond_2
    :goto_1
    const/4 v2, 0x1

    .line 4098
    .end local v5    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    .end local v6    # "key":Ljava/lang/Object;, "TK;"
    .end local v7    # "value":Ljava/lang/Object;, "TV;"
    :goto_2
    goto :goto_0

    .line 4100
    :cond_3
    if-nez v2, :cond_4

    .line 4106
    iget-object v4, p0, Lorg/checkerframework/com/google/common/cache/LocalCache;->globalStatsCounter:Lorg/checkerframework/com/google/common/cache/AbstractCache$StatsCounter;

    sget-object v5, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v5}, Lorg/checkerframework/com/google/common/base/Stopwatch;->elapsed(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v5

    invoke-interface {v4, v5, v6}, Lorg/checkerframework/com/google/common/cache/AbstractCache$StatsCounter;->recordLoadSuccess(J)V

    .line 4107
    return-object v3

    .line 4101
    :cond_4
    iget-object v4, p0, Lorg/checkerframework/com/google/common/cache/LocalCache;->globalStatsCounter:Lorg/checkerframework/com/google/common/cache/AbstractCache$StatsCounter;

    sget-object v5, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v5}, Lorg/checkerframework/com/google/common/base/Stopwatch;->elapsed(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v5

    invoke-interface {v4, v5, v6}, Lorg/checkerframework/com/google/common/cache/AbstractCache$StatsCounter;->recordLoadException(J)V

    .line 4102
    new-instance v4, Lorg/checkerframework/com/google/common/cache/CacheLoader$InvalidCacheLoadException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " returned null keys or values from loadAll"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/checkerframework/com/google/common/cache/CacheLoader$InvalidCacheLoadException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 4082
    .end local v2    # "nullsPresent":Z
    :cond_5
    iget-object v2, p0, Lorg/checkerframework/com/google/common/cache/LocalCache;->globalStatsCounter:Lorg/checkerframework/com/google/common/cache/AbstractCache$StatsCounter;

    sget-object v4, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v4}, Lorg/checkerframework/com/google/common/base/Stopwatch;->elapsed(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v4

    invoke-interface {v2, v4, v5}, Lorg/checkerframework/com/google/common/cache/AbstractCache$StatsCounter;->recordLoadException(J)V

    .line 4083
    new-instance v2, Lorg/checkerframework/com/google/common/cache/CacheLoader$InvalidCacheLoadException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " returned null map from loadAll"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Lorg/checkerframework/com/google/common/cache/CacheLoader$InvalidCacheLoadException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 4076
    .end local v3    # "result":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    :catchall_0
    move-exception v2

    goto :goto_3

    .line 4073
    :catch_0
    move-exception v2

    .line 4074
    .local v2, "e":Ljava/lang/Error;
    :try_start_1
    new-instance v3, Lorg/checkerframework/com/google/common/util/concurrent/ExecutionError;

    invoke-direct {v3, v2}, Lorg/checkerframework/com/google/common/util/concurrent/ExecutionError;-><init>(Ljava/lang/Error;)V

    .end local v0    # "stopwatch":Lorg/checkerframework/com/google/common/base/Stopwatch;
    .end local v1    # "success":Z
    .end local p1    # "keys":Ljava/util/Set;, "Ljava/util/Set<+TK;>;"
    .end local p2    # "loader":Lorg/checkerframework/com/google/common/cache/CacheLoader;, "Lorg/checkerframework/com/google/common/cache/CacheLoader<-TK;TV;>;"
    throw v3

    .line 4071
    .end local v2    # "e":Ljava/lang/Error;
    .restart local v0    # "stopwatch":Lorg/checkerframework/com/google/common/base/Stopwatch;
    .restart local v1    # "success":Z
    .restart local p1    # "keys":Ljava/util/Set;, "Ljava/util/Set<+TK;>;"
    .restart local p2    # "loader":Lorg/checkerframework/com/google/common/cache/CacheLoader;, "Lorg/checkerframework/com/google/common/cache/CacheLoader<-TK;TV;>;"
    :catch_1
    move-exception v2

    .line 4072
    .local v2, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/util/concurrent/ExecutionException;

    invoke-direct {v3, v2}, Ljava/util/concurrent/ExecutionException;-><init>(Ljava/lang/Throwable;)V

    .end local v0    # "stopwatch":Lorg/checkerframework/com/google/common/base/Stopwatch;
    .end local v1    # "success":Z
    .end local p1    # "keys":Ljava/util/Set;, "Ljava/util/Set<+TK;>;"
    .end local p2    # "loader":Lorg/checkerframework/com/google/common/cache/CacheLoader;, "Lorg/checkerframework/com/google/common/cache/CacheLoader<-TK;TV;>;"
    throw v3

    .line 4069
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v0    # "stopwatch":Lorg/checkerframework/com/google/common/base/Stopwatch;
    .restart local v1    # "success":Z
    .restart local p1    # "keys":Ljava/util/Set;, "Ljava/util/Set<+TK;>;"
    .restart local p2    # "loader":Lorg/checkerframework/com/google/common/cache/CacheLoader;, "Lorg/checkerframework/com/google/common/cache/CacheLoader<-TK;TV;>;"
    :catch_2
    move-exception v2

    .line 4070
    .local v2, "e":Ljava/lang/RuntimeException;
    new-instance v3, Lorg/checkerframework/com/google/common/util/concurrent/UncheckedExecutionException;

    invoke-direct {v3, v2}, Lorg/checkerframework/com/google/common/util/concurrent/UncheckedExecutionException;-><init>(Ljava/lang/Throwable;)V

    .end local v0    # "stopwatch":Lorg/checkerframework/com/google/common/base/Stopwatch;
    .end local v1    # "success":Z
    .end local p1    # "keys":Ljava/util/Set;, "Ljava/util/Set<+TK;>;"
    .end local p2    # "loader":Lorg/checkerframework/com/google/common/cache/CacheLoader;, "Lorg/checkerframework/com/google/common/cache/CacheLoader<-TK;TV;>;"
    throw v3

    .line 4066
    .end local v2    # "e":Ljava/lang/RuntimeException;
    .restart local v0    # "stopwatch":Lorg/checkerframework/com/google/common/base/Stopwatch;
    .restart local v1    # "success":Z
    .restart local p1    # "keys":Ljava/util/Set;, "Ljava/util/Set<+TK;>;"
    .restart local p2    # "loader":Lorg/checkerframework/com/google/common/cache/CacheLoader;, "Lorg/checkerframework/com/google/common/cache/CacheLoader<-TK;TV;>;"
    :catch_3
    move-exception v2

    .line 4067
    .local v2, "e":Ljava/lang/InterruptedException;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->interrupt()V

    .line 4068
    new-instance v3, Ljava/util/concurrent/ExecutionException;

    invoke-direct {v3, v2}, Ljava/util/concurrent/ExecutionException;-><init>(Ljava/lang/Throwable;)V

    .end local v0    # "stopwatch":Lorg/checkerframework/com/google/common/base/Stopwatch;
    .end local v1    # "success":Z
    .end local p1    # "keys":Ljava/util/Set;, "Ljava/util/Set<+TK;>;"
    .end local p2    # "loader":Lorg/checkerframework/com/google/common/cache/CacheLoader;, "Lorg/checkerframework/com/google/common/cache/CacheLoader<-TK;TV;>;"
    throw v3

    .line 4063
    .end local v2    # "e":Ljava/lang/InterruptedException;
    .restart local v0    # "stopwatch":Lorg/checkerframework/com/google/common/base/Stopwatch;
    .restart local v1    # "success":Z
    .restart local p1    # "keys":Ljava/util/Set;, "Ljava/util/Set<+TK;>;"
    .restart local p2    # "loader":Lorg/checkerframework/com/google/common/cache/CacheLoader;, "Lorg/checkerframework/com/google/common/cache/CacheLoader<-TK;TV;>;"
    :catch_4
    move-exception v2

    .line 4064
    .local v2, "e":Lorg/checkerframework/com/google/common/cache/CacheLoader$UnsupportedLoadingOperationException;
    const/4 v1, 0x1

    .line 4065
    nop

    .end local v0    # "stopwatch":Lorg/checkerframework/com/google/common/base/Stopwatch;
    .end local v1    # "success":Z
    .end local p1    # "keys":Ljava/util/Set;, "Ljava/util/Set<+TK;>;"
    .end local p2    # "loader":Lorg/checkerframework/com/google/common/cache/CacheLoader;, "Lorg/checkerframework/com/google/common/cache/CacheLoader<-TK;TV;>;"
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4076
    .end local v2    # "e":Lorg/checkerframework/com/google/common/cache/CacheLoader$UnsupportedLoadingOperationException;
    .restart local v0    # "stopwatch":Lorg/checkerframework/com/google/common/base/Stopwatch;
    .restart local v1    # "success":Z
    .restart local p1    # "keys":Ljava/util/Set;, "Ljava/util/Set<+TK;>;"
    .restart local p2    # "loader":Lorg/checkerframework/com/google/common/cache/CacheLoader;, "Lorg/checkerframework/com/google/common/cache/CacheLoader<-TK;TV;>;"
    :goto_3
    if-nez v1, :cond_6

    .line 4077
    iget-object v3, p0, Lorg/checkerframework/com/google/common/cache/LocalCache;->globalStatsCounter:Lorg/checkerframework/com/google/common/cache/AbstractCache$StatsCounter;

    sget-object v4, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v4}, Lorg/checkerframework/com/google/common/base/Stopwatch;->elapsed(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v4

    invoke-interface {v3, v4, v5}, Lorg/checkerframework/com/google/common/cache/AbstractCache$StatsCounter;->recordLoadException(J)V

    .line 4079
    :cond_6
    throw v2
.end method

.method longSize()J
    .locals 6

    .line 3929
    .local p0, "this":Lorg/checkerframework/com/google/common/cache/LocalCache;, "Lorg/checkerframework/com/google/common/cache/LocalCache<TK;TV;>;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/cache/LocalCache;->segments:[Lorg/checkerframework/com/google/common/cache/LocalCache$Segment;

    .line 3930
    .local v0, "segments":[Lorg/checkerframework/com/google/common/cache/LocalCache$Segment;, "[Lorg/checkerframework/com/google/common/cache/LocalCache$Segment<TK;TV;>;"
    const-wide/16 v1, 0x0

    .line 3931
    .local v1, "sum":J
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v4, v0

    if-ge v3, v4, :cond_0

    .line 3932
    aget-object v4, v0, v3

    iget v4, v4, Lorg/checkerframework/com/google/common/cache/LocalCache$Segment;->count:I

    const/4 v5, 0x0

    invoke-static {v5, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    int-to-long v4, v4

    add-long/2addr v1, v4

    .line 3931
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 3934
    .end local v3    # "i":I
    :cond_0
    return-wide v1
.end method

.method public merge(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;",
            "Ljava/util/function/BiFunction<",
            "-TV;-TV;+TV;>;)TV;"
        }
    .end annotation

    .line 4218
    .local p0, "this":Lorg/checkerframework/com/google/common/cache/LocalCache;, "Lorg/checkerframework/com/google/common/cache/LocalCache<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "newValue":Ljava/lang/Object;, "TV;"
    .local p3, "function":Ljava/util/function/BiFunction;, "Ljava/util/function/BiFunction<-TV;-TV;+TV;>;"
    invoke-static {p1}, Lorg/checkerframework/com/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4219
    invoke-static {p2}, Lorg/checkerframework/com/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4220
    invoke-static {p3}, Lorg/checkerframework/com/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4221
    new-instance v0, Lorg/checkerframework/com/google/common/cache/LocalCache$$ExternalSyntheticLambda0;

    invoke-direct {v0, p2, p3}, Lorg/checkerframework/com/google/common/cache/LocalCache$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;Ljava/util/function/BiFunction;)V

    invoke-virtual {p0, p1, v0}, Lorg/checkerframework/com/google/common/cache/LocalCache;->compute(Ljava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method newEntry(Ljava/lang/Object;ILorg/checkerframework/com/google/common/cache/ReferenceEntry;)Lorg/checkerframework/com/google/common/cache/ReferenceEntry;
    .locals 2
    .param p2, "hash"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;I",
            "Lorg/checkerframework/com/google/common/cache/ReferenceEntry<",
            "TK;TV;>;)",
            "Lorg/checkerframework/com/google/common/cache/ReferenceEntry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1667
    .local p0, "this":Lorg/checkerframework/com/google/common/cache/LocalCache;, "Lorg/checkerframework/com/google/common/cache/LocalCache<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p3, "next":Lorg/checkerframework/com/google/common/cache/ReferenceEntry;, "Lorg/checkerframework/com/google/common/cache/ReferenceEntry<TK;TV;>;"
    invoke-virtual {p0, p2}, Lorg/checkerframework/com/google/common/cache/LocalCache;->segmentFor(I)Lorg/checkerframework/com/google/common/cache/LocalCache$Segment;

    move-result-object v0

    .line 1668
    .local v0, "segment":Lorg/checkerframework/com/google/common/cache/LocalCache$Segment;, "Lorg/checkerframework/com/google/common/cache/LocalCache$Segment<TK;TV;>;"
    invoke-virtual {v0}, Lorg/checkerframework/com/google/common/cache/LocalCache$Segment;->lock()V

    .line 1670
    :try_start_0
    invoke-virtual {v0, p1, p2, p3}, Lorg/checkerframework/com/google/common/cache/LocalCache$Segment;->newEntry(Ljava/lang/Object;ILorg/checkerframework/com/google/common/cache/ReferenceEntry;)Lorg/checkerframework/com/google/common/cache/ReferenceEntry;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1672
    invoke-virtual {v0}, Lorg/checkerframework/com/google/common/cache/LocalCache$Segment;->unlock()V

    .line 1670
    return-object v1

    .line 1672
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Lorg/checkerframework/com/google/common/cache/LocalCache$Segment;->unlock()V

    .line 1673
    throw v1
.end method

.method final newSegmentArray(I)[Lorg/checkerframework/com/google/common/cache/LocalCache$Segment;
    .locals 1
    .param p1, "ssize"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)[",
            "Lorg/checkerframework/com/google/common/cache/LocalCache$Segment<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1819
    .local p0, "this":Lorg/checkerframework/com/google/common/cache/LocalCache;, "Lorg/checkerframework/com/google/common/cache/LocalCache<TK;TV;>;"
    new-array v0, p1, [Lorg/checkerframework/com/google/common/cache/LocalCache$Segment;

    return-object v0
.end method

.method newValueReference(Lorg/checkerframework/com/google/common/cache/ReferenceEntry;Ljava/lang/Object;I)Lorg/checkerframework/com/google/common/cache/LocalCache$ValueReference;
    .locals 4
    .param p3, "weight"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/google/common/cache/ReferenceEntry<",
            "TK;TV;>;TV;I)",
            "Lorg/checkerframework/com/google/common/cache/LocalCache$ValueReference<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1692
    .local p0, "this":Lorg/checkerframework/com/google/common/cache/LocalCache;, "Lorg/checkerframework/com/google/common/cache/LocalCache<TK;TV;>;"
    .local p1, "entry":Lorg/checkerframework/com/google/common/cache/ReferenceEntry;, "Lorg/checkerframework/com/google/common/cache/ReferenceEntry<TK;TV;>;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    invoke-interface {p1}, Lorg/checkerframework/com/google/common/cache/ReferenceEntry;->getHash()I

    move-result v0

    .line 1693
    .local v0, "hash":I
    iget-object v1, p0, Lorg/checkerframework/com/google/common/cache/LocalCache;->valueStrength:Lorg/checkerframework/com/google/common/cache/LocalCache$Strength;

    invoke-virtual {p0, v0}, Lorg/checkerframework/com/google/common/cache/LocalCache;->segmentFor(I)Lorg/checkerframework/com/google/common/cache/LocalCache$Segment;

    move-result-object v2

    invoke-static {p2}, Lorg/checkerframework/com/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v2, p1, v3, p3}, Lorg/checkerframework/com/google/common/cache/LocalCache$Strength;->referenceValue(Lorg/checkerframework/com/google/common/cache/LocalCache$Segment;Lorg/checkerframework/com/google/common/cache/ReferenceEntry;Ljava/lang/Object;I)Lorg/checkerframework/com/google/common/cache/LocalCache$ValueReference;

    move-result-object v1

    return-object v1
.end method

.method processPendingNotifications()V
    .locals 5

    .line 1808
    .local p0, "this":Lorg/checkerframework/com/google/common/cache/LocalCache;, "Lorg/checkerframework/com/google/common/cache/LocalCache<TK;TV;>;"
    nop

    :goto_0
    iget-object v0, p0, Lorg/checkerframework/com/google/common/cache/LocalCache;->removalNotificationQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/google/common/cache/RemovalNotification;

    move-object v1, v0

    .local v1, "notification":Lorg/checkerframework/com/google/common/cache/RemovalNotification;, "Lorg/checkerframework/com/google/common/cache/RemovalNotification<TK;TV;>;"
    if-eqz v0, :cond_0

    .line 1810
    :try_start_0
    iget-object v0, p0, Lorg/checkerframework/com/google/common/cache/LocalCache;->removalListener:Lorg/checkerframework/com/google/common/cache/RemovalListener;

    invoke-interface {v0, v1}, Lorg/checkerframework/com/google/common/cache/RemovalListener;->onRemoval(Lorg/checkerframework/com/google/common/cache/RemovalNotification;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 1811
    :catchall_0
    move-exception v0

    .line 1812
    .local v0, "e":Ljava/lang/Throwable;
    sget-object v2, Lorg/checkerframework/com/google/common/cache/LocalCache;->logger:Ljava/util/logging/Logger;

    sget-object v3, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v4, "Exception thrown by removal listener"

    invoke-virtual {v2, v3, v4, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1813
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_1
    goto :goto_0

    .line 1815
    :cond_0
    return-void
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .line 4180
    .local p0, "this":Lorg/checkerframework/com/google/common/cache/LocalCache;, "Lorg/checkerframework/com/google/common/cache/LocalCache<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    invoke-static {p1}, Lorg/checkerframework/com/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4181
    invoke-static {p2}, Lorg/checkerframework/com/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4182
    invoke-virtual {p0, p1}, Lorg/checkerframework/com/google/common/cache/LocalCache;->hash(Ljava/lang/Object;)I

    move-result v0

    .line 4183
    .local v0, "hash":I
    invoke-virtual {p0, v0}, Lorg/checkerframework/com/google/common/cache/LocalCache;->segmentFor(I)Lorg/checkerframework/com/google/common/cache/LocalCache$Segment;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v0, p2, v2}, Lorg/checkerframework/com/google/common/cache/LocalCache$Segment;->put(Ljava/lang/Object;ILjava/lang/Object;Z)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public putAll(Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "+TK;+TV;>;)V"
        }
    .end annotation

    .line 4227
    .local p0, "this":Lorg/checkerframework/com/google/common/cache/LocalCache;, "Lorg/checkerframework/com/google/common/cache/LocalCache<TK;TV;>;"
    .local p1, "m":Ljava/util/Map;, "Ljava/util/Map<+TK;+TV;>;"
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 4228
    .local v1, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<+TK;+TV;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lorg/checkerframework/com/google/common/cache/LocalCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4229
    .end local v1    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<+TK;+TV;>;"
    goto :goto_0

    .line 4230
    :cond_0
    return-void
.end method

.method public putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .line 4188
    .local p0, "this":Lorg/checkerframework/com/google/common/cache/LocalCache;, "Lorg/checkerframework/com/google/common/cache/LocalCache<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    invoke-static {p1}, Lorg/checkerframework/com/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4189
    invoke-static {p2}, Lorg/checkerframework/com/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4190
    invoke-virtual {p0, p1}, Lorg/checkerframework/com/google/common/cache/LocalCache;->hash(Ljava/lang/Object;)I

    move-result v0

    .line 4191
    .local v0, "hash":I
    invoke-virtual {p0, v0}, Lorg/checkerframework/com/google/common/cache/LocalCache;->segmentFor(I)Lorg/checkerframework/com/google/common/cache/LocalCache$Segment;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v0, p2, v2}, Lorg/checkerframework/com/google/common/cache/LocalCache$Segment;->put(Ljava/lang/Object;ILjava/lang/Object;Z)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method reclaimKey(Lorg/checkerframework/com/google/common/cache/ReferenceEntry;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/google/common/cache/ReferenceEntry<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 1708
    .local p0, "this":Lorg/checkerframework/com/google/common/cache/LocalCache;, "Lorg/checkerframework/com/google/common/cache/LocalCache<TK;TV;>;"
    .local p1, "entry":Lorg/checkerframework/com/google/common/cache/ReferenceEntry;, "Lorg/checkerframework/com/google/common/cache/ReferenceEntry<TK;TV;>;"
    invoke-interface {p1}, Lorg/checkerframework/com/google/common/cache/ReferenceEntry;->getHash()I

    move-result v0

    .line 1709
    .local v0, "hash":I
    invoke-virtual {p0, v0}, Lorg/checkerframework/com/google/common/cache/LocalCache;->segmentFor(I)Lorg/checkerframework/com/google/common/cache/LocalCache$Segment;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lorg/checkerframework/com/google/common/cache/LocalCache$Segment;->reclaimKey(Lorg/checkerframework/com/google/common/cache/ReferenceEntry;I)Z

    .line 1710
    return-void
.end method

.method reclaimValue(Lorg/checkerframework/com/google/common/cache/LocalCache$ValueReference;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/google/common/cache/LocalCache$ValueReference<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 1702
    .local p0, "this":Lorg/checkerframework/com/google/common/cache/LocalCache;, "Lorg/checkerframework/com/google/common/cache/LocalCache<TK;TV;>;"
    .local p1, "valueReference":Lorg/checkerframework/com/google/common/cache/LocalCache$ValueReference;, "Lorg/checkerframework/com/google/common/cache/LocalCache$ValueReference<TK;TV;>;"
    invoke-interface {p1}, Lorg/checkerframework/com/google/common/cache/LocalCache$ValueReference;->getEntry()Lorg/checkerframework/com/google/common/cache/ReferenceEntry;

    move-result-object v0

    .line 1703
    .local v0, "entry":Lorg/checkerframework/com/google/common/cache/ReferenceEntry;, "Lorg/checkerframework/com/google/common/cache/ReferenceEntry<TK;TV;>;"
    invoke-interface {v0}, Lorg/checkerframework/com/google/common/cache/ReferenceEntry;->getHash()I

    move-result v1

    .line 1704
    .local v1, "hash":I
    invoke-virtual {p0, v1}, Lorg/checkerframework/com/google/common/cache/LocalCache;->segmentFor(I)Lorg/checkerframework/com/google/common/cache/LocalCache$Segment;

    move-result-object v2

    invoke-interface {v0}, Lorg/checkerframework/com/google/common/cache/ReferenceEntry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3, v1, p1}, Lorg/checkerframework/com/google/common/cache/LocalCache$Segment;->reclaimValue(Ljava/lang/Object;ILorg/checkerframework/com/google/common/cache/LocalCache$ValueReference;)Z

    .line 1705
    return-void
.end method

.method recordsAccess()Z
    .locals 1

    .line 353
    .local p0, "this":Lorg/checkerframework/com/google/common/cache/LocalCache;, "Lorg/checkerframework/com/google/common/cache/LocalCache<TK;TV;>;"
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/cache/LocalCache;->expiresAfterAccess()Z

    move-result v0

    return v0
.end method

.method recordsTime()Z
    .locals 1

    .line 357
    .local p0, "this":Lorg/checkerframework/com/google/common/cache/LocalCache;, "Lorg/checkerframework/com/google/common/cache/LocalCache<TK;TV;>;"
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/cache/LocalCache;->recordsWrite()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/cache/LocalCache;->recordsAccess()Z

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

.method recordsWrite()Z
    .locals 1

    .line 349
    .local p0, "this":Lorg/checkerframework/com/google/common/cache/LocalCache;, "Lorg/checkerframework/com/google/common/cache/LocalCache<TK;TV;>;"
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/cache/LocalCache;->expiresAfterWrite()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/cache/LocalCache;->refreshes()Z

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

.method refresh(Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)V"
        }
    .end annotation

    .line 4124
    .local p0, "this":Lorg/checkerframework/com/google/common/cache/LocalCache;, "Lorg/checkerframework/com/google/common/cache/LocalCache<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    invoke-static {p1}, Lorg/checkerframework/com/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/checkerframework/com/google/common/cache/LocalCache;->hash(Ljava/lang/Object;)I

    move-result v0

    .line 4125
    .local v0, "hash":I
    invoke-virtual {p0, v0}, Lorg/checkerframework/com/google/common/cache/LocalCache;->segmentFor(I)Lorg/checkerframework/com/google/common/cache/LocalCache$Segment;

    move-result-object v1

    iget-object v2, p0, Lorg/checkerframework/com/google/common/cache/LocalCache;->defaultLoader:Lorg/checkerframework/com/google/common/cache/CacheLoader;

    const/4 v3, 0x0

    invoke-virtual {v1, p1, v0, v2, v3}, Lorg/checkerframework/com/google/common/cache/LocalCache$Segment;->refresh(Ljava/lang/Object;ILorg/checkerframework/com/google/common/cache/CacheLoader;Z)Ljava/lang/Object;

    .line 4126
    return-void
.end method

.method refreshes()Z
    .locals 4

    .line 337
    .local p0, "this":Lorg/checkerframework/com/google/common/cache/LocalCache;, "Lorg/checkerframework/com/google/common/cache/LocalCache<TK;TV;>;"
    iget-wide v0, p0, Lorg/checkerframework/com/google/common/cache/LocalCache;->refreshNanos:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .line 4234
    .local p0, "this":Lorg/checkerframework/com/google/common/cache/LocalCache;, "Lorg/checkerframework/com/google/common/cache/LocalCache<TK;TV;>;"
    if-nez p1, :cond_0

    .line 4235
    const/4 v0, 0x0

    return-object v0

    .line 4237
    :cond_0
    invoke-virtual {p0, p1}, Lorg/checkerframework/com/google/common/cache/LocalCache;->hash(Ljava/lang/Object;)I

    move-result v0

    .line 4238
    .local v0, "hash":I
    invoke-virtual {p0, v0}, Lorg/checkerframework/com/google/common/cache/LocalCache;->segmentFor(I)Lorg/checkerframework/com/google/common/cache/LocalCache$Segment;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lorg/checkerframework/com/google/common/cache/LocalCache$Segment;->remove(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public remove(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 2
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "value"    # Ljava/lang/Object;

    .line 4243
    .local p0, "this":Lorg/checkerframework/com/google/common/cache/LocalCache;, "Lorg/checkerframework/com/google/common/cache/LocalCache<TK;TV;>;"
    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    .line 4246
    :cond_0
    invoke-virtual {p0, p1}, Lorg/checkerframework/com/google/common/cache/LocalCache;->hash(Ljava/lang/Object;)I

    move-result v0

    .line 4247
    .local v0, "hash":I
    invoke-virtual {p0, v0}, Lorg/checkerframework/com/google/common/cache/LocalCache;->segmentFor(I)Lorg/checkerframework/com/google/common/cache/LocalCache$Segment;

    move-result-object v1

    invoke-virtual {v1, p1, v0, p2}, Lorg/checkerframework/com/google/common/cache/LocalCache$Segment;->remove(Ljava/lang/Object;ILjava/lang/Object;)Z

    move-result v1

    return v1

    .line 4244
    .end local v0    # "hash":I
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method removeIf(Ljava/util/function/BiPredicate;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/BiPredicate<",
            "-TK;-TV;>;)Z"
        }
    .end annotation

    .line 4542
    .local p0, "this":Lorg/checkerframework/com/google/common/cache/LocalCache;, "Lorg/checkerframework/com/google/common/cache/LocalCache<TK;TV;>;"
    .local p1, "filter":Ljava/util/function/BiPredicate;, "Ljava/util/function/BiPredicate<-TK;-TV;>;"
    invoke-static {p1}, Lorg/checkerframework/com/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4543
    const/4 v0, 0x0

    .line 4544
    .local v0, "changed":Z
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/cache/LocalCache;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 4546
    .local v2, "key":Ljava/lang/Object;, "TK;"
    :goto_1
    invoke-virtual {p0, v2}, Lorg/checkerframework/com/google/common/cache/LocalCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 4547
    .local v3, "value":Ljava/lang/Object;, "TV;"
    if-eqz v3, :cond_2

    invoke-interface {p1, v2, v3}, Ljava/util/function/BiPredicate;->test(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 4548
    goto :goto_2

    .line 4549
    :cond_0
    invoke-virtual {p0, v2, v3}, Lorg/checkerframework/com/google/common/cache/LocalCache;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 4550
    const/4 v0, 0x1

    .line 4551
    goto :goto_2

    .line 4553
    .end local v3    # "value":Ljava/lang/Object;, "TV;"
    :cond_1
    goto :goto_1

    .line 4554
    .end local v2    # "key":Ljava/lang/Object;, "TK;"
    :cond_2
    :goto_2
    goto :goto_0

    .line 4555
    :cond_3
    return v0
.end method

.method public replace(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .line 4263
    .local p0, "this":Lorg/checkerframework/com/google/common/cache/LocalCache;, "Lorg/checkerframework/com/google/common/cache/LocalCache<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    invoke-static {p1}, Lorg/checkerframework/com/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4264
    invoke-static {p2}, Lorg/checkerframework/com/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4265
    invoke-virtual {p0, p1}, Lorg/checkerframework/com/google/common/cache/LocalCache;->hash(Ljava/lang/Object;)I

    move-result v0

    .line 4266
    .local v0, "hash":I
    invoke-virtual {p0, v0}, Lorg/checkerframework/com/google/common/cache/LocalCache;->segmentFor(I)Lorg/checkerframework/com/google/common/cache/LocalCache$Segment;

    move-result-object v1

    invoke-virtual {v1, p1, v0, p2}, Lorg/checkerframework/com/google/common/cache/LocalCache$Segment;->replace(Ljava/lang/Object;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public replace(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;TV;)Z"
        }
    .end annotation

    .line 4252
    .local p0, "this":Lorg/checkerframework/com/google/common/cache/LocalCache;, "Lorg/checkerframework/com/google/common/cache/LocalCache<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "oldValue":Ljava/lang/Object;, "TV;"
    .local p3, "newValue":Ljava/lang/Object;, "TV;"
    invoke-static {p1}, Lorg/checkerframework/com/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4253
    invoke-static {p3}, Lorg/checkerframework/com/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4254
    if-nez p2, :cond_0

    .line 4255
    const/4 v0, 0x0

    return v0

    .line 4257
    :cond_0
    invoke-virtual {p0, p1}, Lorg/checkerframework/com/google/common/cache/LocalCache;->hash(Ljava/lang/Object;)I

    move-result v0

    .line 4258
    .local v0, "hash":I
    invoke-virtual {p0, v0}, Lorg/checkerframework/com/google/common/cache/LocalCache;->segmentFor(I)Lorg/checkerframework/com/google/common/cache/LocalCache$Segment;

    move-result-object v1

    invoke-virtual {v1, p1, v0, p2, p3}, Lorg/checkerframework/com/google/common/cache/LocalCache$Segment;->replace(Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method segmentFor(I)Lorg/checkerframework/com/google/common/cache/LocalCache$Segment;
    .locals 3
    .param p1, "hash"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lorg/checkerframework/com/google/common/cache/LocalCache$Segment<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1729
    .local p0, "this":Lorg/checkerframework/com/google/common/cache/LocalCache;, "Lorg/checkerframework/com/google/common/cache/LocalCache<TK;TV;>;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/cache/LocalCache;->segments:[Lorg/checkerframework/com/google/common/cache/LocalCache$Segment;

    iget v1, p0, Lorg/checkerframework/com/google/common/cache/LocalCache;->segmentShift:I

    ushr-int v1, p1, v1

    iget v2, p0, Lorg/checkerframework/com/google/common/cache/LocalCache;->segmentMask:I

    and-int/2addr v1, v2

    aget-object v0, v0, v1

    return-object v0
.end method

.method public size()I
    .locals 2

    .line 3939
    .local p0, "this":Lorg/checkerframework/com/google/common/cache/LocalCache;, "Lorg/checkerframework/com/google/common/cache/LocalCache<TK;TV;>;"
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/cache/LocalCache;->longSize()J

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/checkerframework/com/google/common/primitives/Ints;->saturatedCast(J)I

    move-result v0

    return v0
.end method

.method usesAccessEntries()Z
    .locals 1

    .line 365
    .local p0, "this":Lorg/checkerframework/com/google/common/cache/LocalCache;, "Lorg/checkerframework/com/google/common/cache/LocalCache<TK;TV;>;"
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/cache/LocalCache;->usesAccessQueue()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/cache/LocalCache;->recordsAccess()Z

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

.method usesAccessQueue()Z
    .locals 1

    .line 341
    .local p0, "this":Lorg/checkerframework/com/google/common/cache/LocalCache;, "Lorg/checkerframework/com/google/common/cache/LocalCache<TK;TV;>;"
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/cache/LocalCache;->expiresAfterAccess()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/cache/LocalCache;->evictsBySize()Z

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

.method usesKeyReferences()Z
    .locals 2

    .line 369
    .local p0, "this":Lorg/checkerframework/com/google/common/cache/LocalCache;, "Lorg/checkerframework/com/google/common/cache/LocalCache<TK;TV;>;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/cache/LocalCache;->keyStrength:Lorg/checkerframework/com/google/common/cache/LocalCache$Strength;

    sget-object v1, Lorg/checkerframework/com/google/common/cache/LocalCache$Strength;->STRONG:Lorg/checkerframework/com/google/common/cache/LocalCache$Strength;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method usesValueReferences()Z
    .locals 2

    .line 373
    .local p0, "this":Lorg/checkerframework/com/google/common/cache/LocalCache;, "Lorg/checkerframework/com/google/common/cache/LocalCache<TK;TV;>;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/cache/LocalCache;->valueStrength:Lorg/checkerframework/com/google/common/cache/LocalCache$Strength;

    sget-object v1, Lorg/checkerframework/com/google/common/cache/LocalCache$Strength;->STRONG:Lorg/checkerframework/com/google/common/cache/LocalCache$Strength;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method usesWriteEntries()Z
    .locals 1

    .line 361
    .local p0, "this":Lorg/checkerframework/com/google/common/cache/LocalCache;, "Lorg/checkerframework/com/google/common/cache/LocalCache<TK;TV;>;"
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/cache/LocalCache;->usesWriteQueue()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/cache/LocalCache;->recordsWrite()Z

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

.method usesWriteQueue()Z
    .locals 1

    .line 345
    .local p0, "this":Lorg/checkerframework/com/google/common/cache/LocalCache;, "Lorg/checkerframework/com/google/common/cache/LocalCache<TK;TV;>;"
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/cache/LocalCache;->expiresAfterWrite()Z

    move-result v0

    return v0
.end method

.method public values()Ljava/util/Collection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "TV;>;"
        }
    .end annotation

    .line 4297
    .local p0, "this":Lorg/checkerframework/com/google/common/cache/LocalCache;, "Lorg/checkerframework/com/google/common/cache/LocalCache<TK;TV;>;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/cache/LocalCache;->values:Ljava/util/Collection;

    .line 4298
    .local v0, "vs":Ljava/util/Collection;, "Ljava/util/Collection<TV;>;"
    if-eqz v0, :cond_0

    move-object v1, v0

    goto :goto_0

    :cond_0
    new-instance v1, Lorg/checkerframework/com/google/common/cache/LocalCache$Values;

    invoke-direct {v1, p0, p0}, Lorg/checkerframework/com/google/common/cache/LocalCache$Values;-><init>(Lorg/checkerframework/com/google/common/cache/LocalCache;Ljava/util/concurrent/ConcurrentMap;)V

    iput-object v1, p0, Lorg/checkerframework/com/google/common/cache/LocalCache;->values:Ljava/util/Collection;

    :goto_0
    return-object v1
.end method
