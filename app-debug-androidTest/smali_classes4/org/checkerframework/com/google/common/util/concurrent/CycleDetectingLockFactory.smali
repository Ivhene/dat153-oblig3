.class public Lorg/checkerframework/com/google/common/util/concurrent/CycleDetectingLockFactory;
.super Ljava/lang/Object;
.source "CycleDetectingLockFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/checkerframework/com/google/common/util/concurrent/CycleDetectingLockFactory$CycleDetectingReentrantWriteLock;,
        Lorg/checkerframework/com/google/common/util/concurrent/CycleDetectingLockFactory$CycleDetectingReentrantReadLock;,
        Lorg/checkerframework/com/google/common/util/concurrent/CycleDetectingLockFactory$CycleDetectingReentrantReadWriteLock;,
        Lorg/checkerframework/com/google/common/util/concurrent/CycleDetectingLockFactory$CycleDetectingReentrantLock;,
        Lorg/checkerframework/com/google/common/util/concurrent/CycleDetectingLockFactory$LockGraphNode;,
        Lorg/checkerframework/com/google/common/util/concurrent/CycleDetectingLockFactory$CycleDetectingLock;,
        Lorg/checkerframework/com/google/common/util/concurrent/CycleDetectingLockFactory$PotentialDeadlockException;,
        Lorg/checkerframework/com/google/common/util/concurrent/CycleDetectingLockFactory$ExampleStackTrace;,
        Lorg/checkerframework/com/google/common/util/concurrent/CycleDetectingLockFactory$WithExplicitOrdering;,
        Lorg/checkerframework/com/google/common/util/concurrent/CycleDetectingLockFactory$Policies;,
        Lorg/checkerframework/com/google/common/util/concurrent/CycleDetectingLockFactory$Policy;
    }
.end annotation


# static fields
.field private static final acquiredLocks:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/util/ArrayList<",
            "Lorg/checkerframework/com/google/common/util/concurrent/CycleDetectingLockFactory$LockGraphNode;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final lockGraphNodesPerType:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap<",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/Enum;",
            ">;",
            "Ljava/util/Map<",
            "+",
            "Ljava/lang/Enum;",
            "Lorg/checkerframework/com/google/common/util/concurrent/CycleDetectingLockFactory$LockGraphNode;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final logger:Ljava/util/logging/Logger;


# instance fields
.field final policy:Lorg/checkerframework/com/google/common/util/concurrent/CycleDetectingLockFactory$Policy;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 272
    new-instance v0, Lorg/checkerframework/com/google/common/collect/MapMaker;

    invoke-direct {v0}, Lorg/checkerframework/com/google/common/collect/MapMaker;-><init>()V

    invoke-virtual {v0}, Lorg/checkerframework/com/google/common/collect/MapMaker;->weakKeys()Lorg/checkerframework/com/google/common/collect/MapMaker;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/com/google/common/collect/MapMaker;->makeMap()Ljava/util/concurrent/ConcurrentMap;

    move-result-object v0

    sput-object v0, Lorg/checkerframework/com/google/common/util/concurrent/CycleDetectingLockFactory;->lockGraphNodesPerType:Ljava/util/concurrent/ConcurrentMap;

    .line 445
    const-class v0, Lorg/checkerframework/com/google/common/util/concurrent/CycleDetectingLockFactory;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/checkerframework/com/google/common/util/concurrent/CycleDetectingLockFactory;->logger:Ljava/util/logging/Logger;

    .line 459
    new-instance v0, Lorg/checkerframework/com/google/common/util/concurrent/CycleDetectingLockFactory$1;

    invoke-direct {v0}, Lorg/checkerframework/com/google/common/util/concurrent/CycleDetectingLockFactory$1;-><init>()V

    sput-object v0, Lorg/checkerframework/com/google/common/util/concurrent/CycleDetectingLockFactory;->acquiredLocks:Ljava/lang/ThreadLocal;

    return-void
.end method

.method private constructor <init>(Lorg/checkerframework/com/google/common/util/concurrent/CycleDetectingLockFactory$Policy;)V
    .locals 1
    .param p1, "policy"    # Lorg/checkerframework/com/google/common/util/concurrent/CycleDetectingLockFactory$Policy;

    .line 449
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 450
    invoke-static {p1}, Lorg/checkerframework/com/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/google/common/util/concurrent/CycleDetectingLockFactory$Policy;

    iput-object v0, p0, Lorg/checkerframework/com/google/common/util/concurrent/CycleDetectingLockFactory;->policy:Lorg/checkerframework/com/google/common/util/concurrent/CycleDetectingLockFactory$Policy;

    .line 451
    return-void
.end method

.method synthetic constructor <init>(Lorg/checkerframework/com/google/common/util/concurrent/CycleDetectingLockFactory$Policy;Lorg/checkerframework/com/google/common/util/concurrent/CycleDetectingLockFactory$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/checkerframework/com/google/common/util/concurrent/CycleDetectingLockFactory$Policy;
    .param p2, "x1"    # Lorg/checkerframework/com/google/common/util/concurrent/CycleDetectingLockFactory$1;

    .line 165
    invoke-direct {p0, p1}, Lorg/checkerframework/com/google/common/util/concurrent/CycleDetectingLockFactory;-><init>(Lorg/checkerframework/com/google/common/util/concurrent/CycleDetectingLockFactory$Policy;)V

    return-void
.end method

.method private aboutToAcquire(Lorg/checkerframework/com/google/common/util/concurrent/CycleDetectingLockFactory$CycleDetectingLock;)V
    .locals 3
    .param p1, "lock"    # Lorg/checkerframework/com/google/common/util/concurrent/CycleDetectingLockFactory$CycleDetectingLock;

    .line 707
    invoke-interface {p1}, Lorg/checkerframework/com/google/common/util/concurrent/CycleDetectingLockFactory$CycleDetectingLock;->isAcquiredByCurrentThread()Z

    move-result v0

    if-nez v0, :cond_0

    .line 708
    sget-object v0, Lorg/checkerframework/com/google/common/util/concurrent/CycleDetectingLockFactory;->acquiredLocks:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 709
    .local v0, "acquiredLockList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/checkerframework/com/google/common/util/concurrent/CycleDetectingLockFactory$LockGraphNode;>;"
    invoke-interface {p1}, Lorg/checkerframework/com/google/common/util/concurrent/CycleDetectingLockFactory$CycleDetectingLock;->getLockGraphNode()Lorg/checkerframework/com/google/common/util/concurrent/CycleDetectingLockFactory$LockGraphNode;

    move-result-object v1

    .line 710
    .local v1, "node":Lorg/checkerframework/com/google/common/util/concurrent/CycleDetectingLockFactory$LockGraphNode;
    iget-object v2, p0, Lorg/checkerframework/com/google/common/util/concurrent/CycleDetectingLockFactory;->policy:Lorg/checkerframework/com/google/common/util/concurrent/CycleDetectingLockFactory$Policy;

    invoke-virtual {v1, v2, v0}, Lorg/checkerframework/com/google/common/util/concurrent/CycleDetectingLockFactory$LockGraphNode;->checkAcquiredLocks(Lorg/checkerframework/com/google/common/util/concurrent/CycleDetectingLockFactory$Policy;Ljava/util/List;)V

    .line 711
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 713
    .end local v0    # "acquiredLockList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/checkerframework/com/google/common/util/concurrent/CycleDetectingLockFactory$LockGraphNode;>;"
    .end local v1    # "node":Lorg/checkerframework/com/google/common/util/concurrent/CycleDetectingLockFactory$LockGraphNode;
    :cond_0
    return-void
.end method

.method static synthetic access$100()Ljava/util/logging/Logger;
    .locals 1

    .line 165
    sget-object v0, Lorg/checkerframework/com/google/common/util/concurrent/CycleDetectingLockFactory;->logger:Ljava/util/logging/Logger;

    return-object v0
.end method

.method static synthetic access$600(Lorg/checkerframework/com/google/common/util/concurrent/CycleDetectingLockFactory;Lorg/checkerframework/com/google/common/util/concurrent/CycleDetectingLockFactory$CycleDetectingLock;)V
    .locals 0
    .param p0, "x0"    # Lorg/checkerframework/com/google/common/util/concurrent/CycleDetectingLockFactory;
    .param p1, "x1"    # Lorg/checkerframework/com/google/common/util/concurrent/CycleDetectingLockFactory$CycleDetectingLock;

    .line 165
    invoke-direct {p0, p1}, Lorg/checkerframework/com/google/common/util/concurrent/CycleDetectingLockFactory;->aboutToAcquire(Lorg/checkerframework/com/google/common/util/concurrent/CycleDetectingLockFactory$CycleDetectingLock;)V

    return-void
.end method

.method static synthetic access$700(Lorg/checkerframework/com/google/common/util/concurrent/CycleDetectingLockFactory$CycleDetectingLock;)V
    .locals 0
    .param p0, "x0"    # Lorg/checkerframework/com/google/common/util/concurrent/CycleDetectingLockFactory$CycleDetectingLock;

    .line 165
    invoke-static {p0}, Lorg/checkerframework/com/google/common/util/concurrent/CycleDetectingLockFactory;->lockStateChanged(Lorg/checkerframework/com/google/common/util/concurrent/CycleDetectingLockFactory$CycleDetectingLock;)V

    return-void
.end method

.method static createNodes(Ljava/lang/Class;)Ljava/util/Map;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Enum<",
            "TE;>;>(",
            "Ljava/lang/Class<",
            "TE;>;)",
            "Ljava/util/Map<",
            "TE;",
            "Lorg/checkerframework/com/google/common/util/concurrent/CycleDetectingLockFactory$LockGraphNode;",
            ">;"
        }
    .end annotation

    .line 304
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TE;>;"
    invoke-static {p0}, Lorg/checkerframework/com/google/common/collect/Maps;->newEnumMap(Ljava/lang/Class;)Ljava/util/EnumMap;

    move-result-object v0

    .line 305
    .local v0, "map":Ljava/util/EnumMap;, "Ljava/util/EnumMap<TE;Lorg/checkerframework/com/google/common/util/concurrent/CycleDetectingLockFactory$LockGraphNode;>;"
    invoke-virtual {p0}, Ljava/lang/Class;->getEnumConstants()[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Enum;

    .line 306
    .local v1, "keys":[Ljava/lang/Enum;, "[TE;"
    array-length v2, v1

    .line 307
    .local v2, "numKeys":I
    invoke-static {v2}, Lorg/checkerframework/com/google/common/collect/Lists;->newArrayListWithCapacity(I)Ljava/util/ArrayList;

    move-result-object v3

    .line 309
    .local v3, "nodes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/checkerframework/com/google/common/util/concurrent/CycleDetectingLockFactory$LockGraphNode;>;"
    array-length v4, v1

    const/4 v5, 0x0

    move v6, v5

    :goto_0
    if-ge v6, v4, :cond_0

    aget-object v7, v1, v6

    .line 310
    .local v7, "key":Ljava/lang/Enum;, "TE;"
    new-instance v8, Lorg/checkerframework/com/google/common/util/concurrent/CycleDetectingLockFactory$LockGraphNode;

    invoke-static {v7}, Lorg/checkerframework/com/google/common/util/concurrent/CycleDetectingLockFactory;->getLockName(Ljava/lang/Enum;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Lorg/checkerframework/com/google/common/util/concurrent/CycleDetectingLockFactory$LockGraphNode;-><init>(Ljava/lang/String;)V

    .line 311
    .local v8, "node":Lorg/checkerframework/com/google/common/util/concurrent/CycleDetectingLockFactory$LockGraphNode;
    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 312
    invoke-virtual {v0, v7, v8}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 309
    .end local v7    # "key":Ljava/lang/Enum;, "TE;"
    .end local v8    # "node":Lorg/checkerframework/com/google/common/util/concurrent/CycleDetectingLockFactory$LockGraphNode;
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 315
    :cond_0
    const/4 v4, 0x1

    .local v4, "i":I
    :goto_1
    if-ge v4, v2, :cond_1

    .line 316
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/checkerframework/com/google/common/util/concurrent/CycleDetectingLockFactory$LockGraphNode;

    sget-object v7, Lorg/checkerframework/com/google/common/util/concurrent/CycleDetectingLockFactory$Policies;->THROW:Lorg/checkerframework/com/google/common/util/concurrent/CycleDetectingLockFactory$Policies;

    invoke-virtual {v3, v5, v4}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lorg/checkerframework/com/google/common/util/concurrent/CycleDetectingLockFactory$LockGraphNode;->checkAcquiredLocks(Lorg/checkerframework/com/google/common/util/concurrent/CycleDetectingLockFactory$Policy;Ljava/util/List;)V

    .line 315
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 319
    .end local v4    # "i":I
    :cond_1
    const/4 v4, 0x0

    .restart local v4    # "i":I
    :goto_2
    add-int/lit8 v5, v2, -0x1

    if-ge v4, v5, :cond_2

    .line 320
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/checkerframework/com/google/common/util/concurrent/CycleDetectingLockFactory$LockGraphNode;

    sget-object v6, Lorg/checkerframework/com/google/common/util/concurrent/CycleDetectingLockFactory$Policies;->DISABLED:Lorg/checkerframework/com/google/common/util/concurrent/CycleDetectingLockFactory$Policies;

    add-int/lit8 v7, v4, 0x1

    invoke-virtual {v3, v7, v2}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lorg/checkerframework/com/google/common/util/concurrent/CycleDetectingLockFactory$LockGraphNode;->checkAcquiredLocks(Lorg/checkerframework/com/google/common/util/concurrent/CycleDetectingLockFactory$Policy;Ljava/util/List;)V

    .line 319
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 322
    .end local v4    # "i":I
    :cond_2
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v4

    return-object v4
.end method

.method private static getLockName(Ljava/lang/Enum;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Enum<",
            "*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 330
    .local p0, "rank":Ljava/lang/Enum;, "Ljava/lang/Enum<*>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Enum;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getOrCreateNodes(Ljava/lang/Class;)Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/Enum;",
            ">;)",
            "Ljava/util/Map<",
            "+",
            "Ljava/lang/Enum;",
            "Lorg/checkerframework/com/google/common/util/concurrent/CycleDetectingLockFactory$LockGraphNode;",
            ">;"
        }
    .end annotation

    .line 287
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/Enum;>;"
    sget-object v0, Lorg/checkerframework/com/google/common/util/concurrent/CycleDetectingLockFactory;->lockGraphNodesPerType:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p0}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .line 288
    .local v1, "existing":Ljava/util/Map;, "Ljava/util/Map<+Ljava/lang/Enum;Lorg/checkerframework/com/google/common/util/concurrent/CycleDetectingLockFactory$LockGraphNode;>;"
    if-eqz v1, :cond_0

    .line 289
    return-object v1

    .line 291
    :cond_0
    invoke-static {p0}, Lorg/checkerframework/com/google/common/util/concurrent/CycleDetectingLockFactory;->createNodes(Ljava/lang/Class;)Ljava/util/Map;

    move-result-object v2

    .line 292
    .local v2, "created":Ljava/util/Map;, "Ljava/util/Map<+Ljava/lang/Enum;Lorg/checkerframework/com/google/common/util/concurrent/CycleDetectingLockFactory$LockGraphNode;>;"
    invoke-interface {v0, p0, v2}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 293
    .end local v1    # "existing":Ljava/util/Map;, "Ljava/util/Map<+Ljava/lang/Enum;Lorg/checkerframework/com/google/common/util/concurrent/CycleDetectingLockFactory$LockGraphNode;>;"
    .local v0, "existing":Ljava/util/Map;, "Ljava/util/Map<+Ljava/lang/Enum;Lorg/checkerframework/com/google/common/util/concurrent/CycleDetectingLockFactory$LockGraphNode;>;"
    invoke-static {v0, v2}, Lorg/checkerframework/com/google/common/base/MoreObjects;->firstNonNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    return-object v1
.end method

.method private static lockStateChanged(Lorg/checkerframework/com/google/common/util/concurrent/CycleDetectingLockFactory$CycleDetectingLock;)V
    .locals 4
    .param p0, "lock"    # Lorg/checkerframework/com/google/common/util/concurrent/CycleDetectingLockFactory$CycleDetectingLock;

    .line 721
    invoke-interface {p0}, Lorg/checkerframework/com/google/common/util/concurrent/CycleDetectingLockFactory$CycleDetectingLock;->isAcquiredByCurrentThread()Z

    move-result v0

    if-nez v0, :cond_1

    .line 722
    sget-object v0, Lorg/checkerframework/com/google/common/util/concurrent/CycleDetectingLockFactory;->acquiredLocks:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 723
    .local v0, "acquiredLockList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/checkerframework/com/google/common/util/concurrent/CycleDetectingLockFactory$LockGraphNode;>;"
    invoke-interface {p0}, Lorg/checkerframework/com/google/common/util/concurrent/CycleDetectingLockFactory$CycleDetectingLock;->getLockGraphNode()Lorg/checkerframework/com/google/common/util/concurrent/CycleDetectingLockFactory$LockGraphNode;

    move-result-object v1

    .line 726
    .local v1, "node":Lorg/checkerframework/com/google/common/util/concurrent/CycleDetectingLockFactory$LockGraphNode;
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_1

    .line 727
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v1, :cond_0

    .line 728
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 729
    goto :goto_1

    .line 726
    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 733
    .end local v0    # "acquiredLockList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/checkerframework/com/google/common/util/concurrent/CycleDetectingLockFactory$LockGraphNode;>;"
    .end local v1    # "node":Lorg/checkerframework/com/google/common/util/concurrent/CycleDetectingLockFactory$LockGraphNode;
    .end local v2    # "i":I
    :cond_1
    :goto_1
    return-void
.end method

.method public static newInstance(Lorg/checkerframework/com/google/common/util/concurrent/CycleDetectingLockFactory$Policy;)Lorg/checkerframework/com/google/common/util/concurrent/CycleDetectingLockFactory;
    .locals 1
    .param p0, "policy"    # Lorg/checkerframework/com/google/common/util/concurrent/CycleDetectingLockFactory$Policy;

    .line 236
    new-instance v0, Lorg/checkerframework/com/google/common/util/concurrent/CycleDetectingLockFactory;

    invoke-direct {v0, p0}, Lorg/checkerframework/com/google/common/util/concurrent/CycleDetectingLockFactory;-><init>(Lorg/checkerframework/com/google/common/util/concurrent/CycleDetectingLockFactory$Policy;)V

    return-object v0
.end method

.method public static newInstanceWithExplicitOrdering(Ljava/lang/Class;Lorg/checkerframework/com/google/common/util/concurrent/CycleDetectingLockFactory$Policy;)Lorg/checkerframework/com/google/common/util/concurrent/CycleDetectingLockFactory$WithExplicitOrdering;
    .locals 2
    .param p1, "policy"    # Lorg/checkerframework/com/google/common/util/concurrent/CycleDetectingLockFactory$Policy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Enum<",
            "TE;>;>(",
            "Ljava/lang/Class<",
            "TE;>;",
            "Lorg/checkerframework/com/google/common/util/concurrent/CycleDetectingLockFactory$Policy;",
            ")",
            "Lorg/checkerframework/com/google/common/util/concurrent/CycleDetectingLockFactory$WithExplicitOrdering<",
            "TE;>;"
        }
    .end annotation

    .line 279
    .local p0, "enumClass":Ljava/lang/Class;, "Ljava/lang/Class<TE;>;"
    invoke-static {p0}, Lorg/checkerframework/com/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 280
    invoke-static {p1}, Lorg/checkerframework/com/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 282
    invoke-static {p0}, Lorg/checkerframework/com/google/common/util/concurrent/CycleDetectingLockFactory;->getOrCreateNodes(Ljava/lang/Class;)Ljava/util/Map;

    move-result-object v0

    .line 283
    .local v0, "lockGraphNodes":Ljava/util/Map;, "Ljava/util/Map<TE;Lorg/checkerframework/com/google/common/util/concurrent/CycleDetectingLockFactory$LockGraphNode;>;"
    new-instance v1, Lorg/checkerframework/com/google/common/util/concurrent/CycleDetectingLockFactory$WithExplicitOrdering;

    invoke-direct {v1, p1, v0}, Lorg/checkerframework/com/google/common/util/concurrent/CycleDetectingLockFactory$WithExplicitOrdering;-><init>(Lorg/checkerframework/com/google/common/util/concurrent/CycleDetectingLockFactory$Policy;Ljava/util/Map;)V

    return-object v1
.end method


# virtual methods
.method public newReentrantLock(Ljava/lang/String;)Ljava/util/concurrent/locks/ReentrantLock;
    .locals 1
    .param p1, "lockName"    # Ljava/lang/String;

    .line 241
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/checkerframework/com/google/common/util/concurrent/CycleDetectingLockFactory;->newReentrantLock(Ljava/lang/String;Z)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v0

    return-object v0
.end method

.method public newReentrantLock(Ljava/lang/String;Z)Ljava/util/concurrent/locks/ReentrantLock;
    .locals 3
    .param p1, "lockName"    # Ljava/lang/String;
    .param p2, "fair"    # Z

    .line 249
    iget-object v0, p0, Lorg/checkerframework/com/google/common/util/concurrent/CycleDetectingLockFactory;->policy:Lorg/checkerframework/com/google/common/util/concurrent/CycleDetectingLockFactory$Policy;

    sget-object v1, Lorg/checkerframework/com/google/common/util/concurrent/CycleDetectingLockFactory$Policies;->DISABLED:Lorg/checkerframework/com/google/common/util/concurrent/CycleDetectingLockFactory$Policies;

    if-ne v0, v1, :cond_0

    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0, p2}, Ljava/util/concurrent/locks/ReentrantLock;-><init>(Z)V

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/checkerframework/com/google/common/util/concurrent/CycleDetectingLockFactory$CycleDetectingReentrantLock;

    new-instance v1, Lorg/checkerframework/com/google/common/util/concurrent/CycleDetectingLockFactory$LockGraphNode;

    invoke-direct {v1, p1}, Lorg/checkerframework/com/google/common/util/concurrent/CycleDetectingLockFactory$LockGraphNode;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, p2, v2}, Lorg/checkerframework/com/google/common/util/concurrent/CycleDetectingLockFactory$CycleDetectingReentrantLock;-><init>(Lorg/checkerframework/com/google/common/util/concurrent/CycleDetectingLockFactory;Lorg/checkerframework/com/google/common/util/concurrent/CycleDetectingLockFactory$LockGraphNode;ZLorg/checkerframework/com/google/common/util/concurrent/CycleDetectingLockFactory$1;)V

    :goto_0
    return-object v0
.end method

.method public newReentrantReadWriteLock(Ljava/lang/String;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;
    .locals 1
    .param p1, "lockName"    # Ljava/lang/String;

    .line 256
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/checkerframework/com/google/common/util/concurrent/CycleDetectingLockFactory;->newReentrantReadWriteLock(Ljava/lang/String;Z)Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object v0

    return-object v0
.end method

.method public newReentrantReadWriteLock(Ljava/lang/String;Z)Ljava/util/concurrent/locks/ReentrantReadWriteLock;
    .locals 3
    .param p1, "lockName"    # Ljava/lang/String;
    .param p2, "fair"    # Z

    .line 265
    iget-object v0, p0, Lorg/checkerframework/com/google/common/util/concurrent/CycleDetectingLockFactory;->policy:Lorg/checkerframework/com/google/common/util/concurrent/CycleDetectingLockFactory$Policy;

    sget-object v1, Lorg/checkerframework/com/google/common/util/concurrent/CycleDetectingLockFactory$Policies;->DISABLED:Lorg/checkerframework/com/google/common/util/concurrent/CycleDetectingLockFactory$Policies;

    if-ne v0, v1, :cond_0

    new-instance v0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-direct {v0, p2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>(Z)V

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/checkerframework/com/google/common/util/concurrent/CycleDetectingLockFactory$CycleDetectingReentrantReadWriteLock;

    new-instance v1, Lorg/checkerframework/com/google/common/util/concurrent/CycleDetectingLockFactory$LockGraphNode;

    invoke-direct {v1, p1}, Lorg/checkerframework/com/google/common/util/concurrent/CycleDetectingLockFactory$LockGraphNode;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, p2, v2}, Lorg/checkerframework/com/google/common/util/concurrent/CycleDetectingLockFactory$CycleDetectingReentrantReadWriteLock;-><init>(Lorg/checkerframework/com/google/common/util/concurrent/CycleDetectingLockFactory;Lorg/checkerframework/com/google/common/util/concurrent/CycleDetectingLockFactory$LockGraphNode;ZLorg/checkerframework/com/google/common/util/concurrent/CycleDetectingLockFactory$1;)V

    :goto_0
    return-object v0
.end method
