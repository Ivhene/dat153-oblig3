.class Lorg/checkerframework/com/google/common/cache/LocalCache$ManualSerializationProxy;
.super Lorg/checkerframework/com/google/common/cache/ForwardingCache;
.source "LocalCache.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/com/google/common/cache/LocalCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ManualSerializationProxy"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/checkerframework/com/google/common/cache/ForwardingCache<",
        "TK;TV;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field final concurrencyLevel:I

.field transient delegate:Lorg/checkerframework/com/google/common/cache/Cache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/checkerframework/com/google/common/cache/Cache<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field final expireAfterAccessNanos:J

.field final expireAfterWriteNanos:J

.field final keyEquivalence:Lorg/checkerframework/com/google/common/base/Equivalence;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/checkerframework/com/google/common/base/Equivalence<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field final keyStrength:Lorg/checkerframework/com/google/common/cache/LocalCache$Strength;

.field final loader:Lorg/checkerframework/com/google/common/cache/CacheLoader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/checkerframework/com/google/common/cache/CacheLoader<",
            "-TK;TV;>;"
        }
    .end annotation
.end field

.field final maxWeight:J

.field final removalListener:Lorg/checkerframework/com/google/common/cache/RemovalListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/checkerframework/com/google/common/cache/RemovalListener<",
            "-TK;-TV;>;"
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

.field final weigher:Lorg/checkerframework/com/google/common/cache/Weigher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/checkerframework/com/google/common/cache/Weigher<",
            "TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lorg/checkerframework/com/google/common/cache/LocalCache$Strength;Lorg/checkerframework/com/google/common/cache/LocalCache$Strength;Lorg/checkerframework/com/google/common/base/Equivalence;Lorg/checkerframework/com/google/common/base/Equivalence;JJJLorg/checkerframework/com/google/common/cache/Weigher;ILorg/checkerframework/com/google/common/cache/RemovalListener;Lorg/checkerframework/com/google/common/base/Ticker;Lorg/checkerframework/com/google/common/cache/CacheLoader;)V
    .locals 16
    .param p1, "keyStrength"    # Lorg/checkerframework/com/google/common/cache/LocalCache$Strength;
    .param p2, "valueStrength"    # Lorg/checkerframework/com/google/common/cache/LocalCache$Strength;
    .param p5, "expireAfterWriteNanos"    # J
    .param p7, "expireAfterAccessNanos"    # J
    .param p9, "maxWeight"    # J
    .param p12, "concurrencyLevel"    # I
    .param p14, "ticker"    # Lorg/checkerframework/com/google/common/base/Ticker;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/google/common/cache/LocalCache$Strength;",
            "Lorg/checkerframework/com/google/common/cache/LocalCache$Strength;",
            "Lorg/checkerframework/com/google/common/base/Equivalence<",
            "Ljava/lang/Object;",
            ">;",
            "Lorg/checkerframework/com/google/common/base/Equivalence<",
            "Ljava/lang/Object;",
            ">;JJJ",
            "Lorg/checkerframework/com/google/common/cache/Weigher<",
            "TK;TV;>;I",
            "Lorg/checkerframework/com/google/common/cache/RemovalListener<",
            "-TK;-TV;>;",
            "Lorg/checkerframework/com/google/common/base/Ticker;",
            "Lorg/checkerframework/com/google/common/cache/CacheLoader<",
            "-TK;TV;>;)V"
        }
    .end annotation

    .line 4735
    .local p0, "this":Lorg/checkerframework/com/google/common/cache/LocalCache$ManualSerializationProxy;, "Lorg/checkerframework/com/google/common/cache/LocalCache$ManualSerializationProxy<TK;TV;>;"
    .local p3, "keyEquivalence":Lorg/checkerframework/com/google/common/base/Equivalence;, "Lorg/checkerframework/com/google/common/base/Equivalence<Ljava/lang/Object;>;"
    .local p4, "valueEquivalence":Lorg/checkerframework/com/google/common/base/Equivalence;, "Lorg/checkerframework/com/google/common/base/Equivalence<Ljava/lang/Object;>;"
    .local p11, "weigher":Lorg/checkerframework/com/google/common/cache/Weigher;, "Lorg/checkerframework/com/google/common/cache/Weigher<TK;TV;>;"
    .local p13, "removalListener":Lorg/checkerframework/com/google/common/cache/RemovalListener;, "Lorg/checkerframework/com/google/common/cache/RemovalListener<-TK;-TV;>;"
    .local p15, "loader":Lorg/checkerframework/com/google/common/cache/CacheLoader;, "Lorg/checkerframework/com/google/common/cache/CacheLoader<-TK;TV;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p14

    invoke-direct/range {p0 .. p0}, Lorg/checkerframework/com/google/common/cache/ForwardingCache;-><init>()V

    .line 4736
    move-object/from16 v2, p1

    iput-object v2, v0, Lorg/checkerframework/com/google/common/cache/LocalCache$ManualSerializationProxy;->keyStrength:Lorg/checkerframework/com/google/common/cache/LocalCache$Strength;

    .line 4737
    move-object/from16 v3, p2

    iput-object v3, v0, Lorg/checkerframework/com/google/common/cache/LocalCache$ManualSerializationProxy;->valueStrength:Lorg/checkerframework/com/google/common/cache/LocalCache$Strength;

    .line 4738
    move-object/from16 v4, p3

    iput-object v4, v0, Lorg/checkerframework/com/google/common/cache/LocalCache$ManualSerializationProxy;->keyEquivalence:Lorg/checkerframework/com/google/common/base/Equivalence;

    .line 4739
    move-object/from16 v5, p4

    iput-object v5, v0, Lorg/checkerframework/com/google/common/cache/LocalCache$ManualSerializationProxy;->valueEquivalence:Lorg/checkerframework/com/google/common/base/Equivalence;

    .line 4740
    move-wide/from16 v6, p5

    iput-wide v6, v0, Lorg/checkerframework/com/google/common/cache/LocalCache$ManualSerializationProxy;->expireAfterWriteNanos:J

    .line 4741
    move-wide/from16 v8, p7

    iput-wide v8, v0, Lorg/checkerframework/com/google/common/cache/LocalCache$ManualSerializationProxy;->expireAfterAccessNanos:J

    .line 4742
    move-wide/from16 v10, p9

    iput-wide v10, v0, Lorg/checkerframework/com/google/common/cache/LocalCache$ManualSerializationProxy;->maxWeight:J

    .line 4743
    move-object/from16 v12, p11

    iput-object v12, v0, Lorg/checkerframework/com/google/common/cache/LocalCache$ManualSerializationProxy;->weigher:Lorg/checkerframework/com/google/common/cache/Weigher;

    .line 4744
    move/from16 v13, p12

    iput v13, v0, Lorg/checkerframework/com/google/common/cache/LocalCache$ManualSerializationProxy;->concurrencyLevel:I

    .line 4745
    move-object/from16 v14, p13

    iput-object v14, v0, Lorg/checkerframework/com/google/common/cache/LocalCache$ManualSerializationProxy;->removalListener:Lorg/checkerframework/com/google/common/cache/RemovalListener;

    .line 4746
    invoke-static {}, Lorg/checkerframework/com/google/common/base/Ticker;->systemTicker()Lorg/checkerframework/com/google/common/base/Ticker;

    move-result-object v15

    if-eq v1, v15, :cond_1

    sget-object v15, Lorg/checkerframework/com/google/common/cache/CacheBuilder;->NULL_TICKER:Lorg/checkerframework/com/google/common/base/Ticker;

    if-ne v1, v15, :cond_0

    goto :goto_0

    :cond_0
    move-object v15, v1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v15, 0x0

    :goto_1
    iput-object v15, v0, Lorg/checkerframework/com/google/common/cache/LocalCache$ManualSerializationProxy;->ticker:Lorg/checkerframework/com/google/common/base/Ticker;

    .line 4747
    move-object/from16 v15, p15

    iput-object v15, v0, Lorg/checkerframework/com/google/common/cache/LocalCache$ManualSerializationProxy;->loader:Lorg/checkerframework/com/google/common/cache/CacheLoader;

    .line 4748
    return-void
.end method

.method constructor <init>(Lorg/checkerframework/com/google/common/cache/LocalCache;)V
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/google/common/cache/LocalCache<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 4708
    .local p0, "this":Lorg/checkerframework/com/google/common/cache/LocalCache$ManualSerializationProxy;, "Lorg/checkerframework/com/google/common/cache/LocalCache$ManualSerializationProxy<TK;TV;>;"
    .local p1, "cache":Lorg/checkerframework/com/google/common/cache/LocalCache;, "Lorg/checkerframework/com/google/common/cache/LocalCache<TK;TV;>;"
    move-object/from16 v0, p1

    iget-object v2, v0, Lorg/checkerframework/com/google/common/cache/LocalCache;->keyStrength:Lorg/checkerframework/com/google/common/cache/LocalCache$Strength;

    iget-object v3, v0, Lorg/checkerframework/com/google/common/cache/LocalCache;->valueStrength:Lorg/checkerframework/com/google/common/cache/LocalCache$Strength;

    iget-object v4, v0, Lorg/checkerframework/com/google/common/cache/LocalCache;->keyEquivalence:Lorg/checkerframework/com/google/common/base/Equivalence;

    iget-object v5, v0, Lorg/checkerframework/com/google/common/cache/LocalCache;->valueEquivalence:Lorg/checkerframework/com/google/common/base/Equivalence;

    iget-wide v6, v0, Lorg/checkerframework/com/google/common/cache/LocalCache;->expireAfterWriteNanos:J

    iget-wide v8, v0, Lorg/checkerframework/com/google/common/cache/LocalCache;->expireAfterAccessNanos:J

    iget-wide v10, v0, Lorg/checkerframework/com/google/common/cache/LocalCache;->maxWeight:J

    iget-object v12, v0, Lorg/checkerframework/com/google/common/cache/LocalCache;->weigher:Lorg/checkerframework/com/google/common/cache/Weigher;

    iget v13, v0, Lorg/checkerframework/com/google/common/cache/LocalCache;->concurrencyLevel:I

    iget-object v14, v0, Lorg/checkerframework/com/google/common/cache/LocalCache;->removalListener:Lorg/checkerframework/com/google/common/cache/RemovalListener;

    iget-object v15, v0, Lorg/checkerframework/com/google/common/cache/LocalCache;->ticker:Lorg/checkerframework/com/google/common/base/Ticker;

    iget-object v1, v0, Lorg/checkerframework/com/google/common/cache/LocalCache;->defaultLoader:Lorg/checkerframework/com/google/common/cache/CacheLoader;

    move-object/from16 v16, v1

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v16}, Lorg/checkerframework/com/google/common/cache/LocalCache$ManualSerializationProxy;-><init>(Lorg/checkerframework/com/google/common/cache/LocalCache$Strength;Lorg/checkerframework/com/google/common/cache/LocalCache$Strength;Lorg/checkerframework/com/google/common/base/Equivalence;Lorg/checkerframework/com/google/common/base/Equivalence;JJJLorg/checkerframework/com/google/common/cache/Weigher;ILorg/checkerframework/com/google/common/cache/RemovalListener;Lorg/checkerframework/com/google/common/base/Ticker;Lorg/checkerframework/com/google/common/cache/CacheLoader;)V

    .line 4721
    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 2
    .param p1, "in"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 4783
    .local p0, "this":Lorg/checkerframework/com/google/common/cache/LocalCache$ManualSerializationProxy;, "Lorg/checkerframework/com/google/common/cache/LocalCache$ManualSerializationProxy<TK;TV;>;"
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 4784
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/cache/LocalCache$ManualSerializationProxy;->recreateCacheBuilder()Lorg/checkerframework/com/google/common/cache/CacheBuilder;

    move-result-object v0

    .line 4785
    .local v0, "builder":Lorg/checkerframework/com/google/common/cache/CacheBuilder;, "Lorg/checkerframework/com/google/common/cache/CacheBuilder<TK;TV;>;"
    invoke-virtual {v0}, Lorg/checkerframework/com/google/common/cache/CacheBuilder;->build()Lorg/checkerframework/com/google/common/cache/Cache;

    move-result-object v1

    iput-object v1, p0, Lorg/checkerframework/com/google/common/cache/LocalCache$ManualSerializationProxy;->delegate:Lorg/checkerframework/com/google/common/cache/Cache;

    .line 4786
    return-void
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 1

    .line 4789
    .local p0, "this":Lorg/checkerframework/com/google/common/cache/LocalCache$ManualSerializationProxy;, "Lorg/checkerframework/com/google/common/cache/LocalCache$ManualSerializationProxy<TK;TV;>;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/cache/LocalCache$ManualSerializationProxy;->delegate:Lorg/checkerframework/com/google/common/cache/Cache;

    return-object v0
.end method


# virtual methods
.method protected bridge synthetic delegate()Ljava/lang/Object;
    .locals 1

    .line 4688
    .local p0, "this":Lorg/checkerframework/com/google/common/cache/LocalCache$ManualSerializationProxy;, "Lorg/checkerframework/com/google/common/cache/LocalCache$ManualSerializationProxy<TK;TV;>;"
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/cache/LocalCache$ManualSerializationProxy;->delegate()Lorg/checkerframework/com/google/common/cache/Cache;

    move-result-object v0

    return-object v0
.end method

.method protected delegate()Lorg/checkerframework/com/google/common/cache/Cache;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/checkerframework/com/google/common/cache/Cache<",
            "TK;TV;>;"
        }
    .end annotation

    .line 4794
    .local p0, "this":Lorg/checkerframework/com/google/common/cache/LocalCache$ManualSerializationProxy;, "Lorg/checkerframework/com/google/common/cache/LocalCache$ManualSerializationProxy<TK;TV;>;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/cache/LocalCache$ManualSerializationProxy;->delegate:Lorg/checkerframework/com/google/common/cache/Cache;

    return-object v0
.end method

.method recreateCacheBuilder()Lorg/checkerframework/com/google/common/cache/CacheBuilder;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/checkerframework/com/google/common/cache/CacheBuilder<",
            "TK;TV;>;"
        }
    .end annotation

    .line 4752
    .local p0, "this":Lorg/checkerframework/com/google/common/cache/LocalCache$ManualSerializationProxy;, "Lorg/checkerframework/com/google/common/cache/LocalCache$ManualSerializationProxy<TK;TV;>;"
    invoke-static {}, Lorg/checkerframework/com/google/common/cache/CacheBuilder;->newBuilder()Lorg/checkerframework/com/google/common/cache/CacheBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/checkerframework/com/google/common/cache/LocalCache$ManualSerializationProxy;->keyStrength:Lorg/checkerframework/com/google/common/cache/LocalCache$Strength;

    .line 4753
    invoke-virtual {v0, v1}, Lorg/checkerframework/com/google/common/cache/CacheBuilder;->setKeyStrength(Lorg/checkerframework/com/google/common/cache/LocalCache$Strength;)Lorg/checkerframework/com/google/common/cache/CacheBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/checkerframework/com/google/common/cache/LocalCache$ManualSerializationProxy;->valueStrength:Lorg/checkerframework/com/google/common/cache/LocalCache$Strength;

    .line 4754
    invoke-virtual {v0, v1}, Lorg/checkerframework/com/google/common/cache/CacheBuilder;->setValueStrength(Lorg/checkerframework/com/google/common/cache/LocalCache$Strength;)Lorg/checkerframework/com/google/common/cache/CacheBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/checkerframework/com/google/common/cache/LocalCache$ManualSerializationProxy;->keyEquivalence:Lorg/checkerframework/com/google/common/base/Equivalence;

    .line 4755
    invoke-virtual {v0, v1}, Lorg/checkerframework/com/google/common/cache/CacheBuilder;->keyEquivalence(Lorg/checkerframework/com/google/common/base/Equivalence;)Lorg/checkerframework/com/google/common/cache/CacheBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/checkerframework/com/google/common/cache/LocalCache$ManualSerializationProxy;->valueEquivalence:Lorg/checkerframework/com/google/common/base/Equivalence;

    .line 4756
    invoke-virtual {v0, v1}, Lorg/checkerframework/com/google/common/cache/CacheBuilder;->valueEquivalence(Lorg/checkerframework/com/google/common/base/Equivalence;)Lorg/checkerframework/com/google/common/cache/CacheBuilder;

    move-result-object v0

    iget v1, p0, Lorg/checkerframework/com/google/common/cache/LocalCache$ManualSerializationProxy;->concurrencyLevel:I

    .line 4757
    invoke-virtual {v0, v1}, Lorg/checkerframework/com/google/common/cache/CacheBuilder;->concurrencyLevel(I)Lorg/checkerframework/com/google/common/cache/CacheBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/checkerframework/com/google/common/cache/LocalCache$ManualSerializationProxy;->removalListener:Lorg/checkerframework/com/google/common/cache/RemovalListener;

    .line 4758
    invoke-virtual {v0, v1}, Lorg/checkerframework/com/google/common/cache/CacheBuilder;->removalListener(Lorg/checkerframework/com/google/common/cache/RemovalListener;)Lorg/checkerframework/com/google/common/cache/CacheBuilder;

    move-result-object v0

    .line 4759
    .local v0, "builder":Lorg/checkerframework/com/google/common/cache/CacheBuilder;, "Lorg/checkerframework/com/google/common/cache/CacheBuilder<TK;TV;>;"
    const/4 v1, 0x0

    iput-boolean v1, v0, Lorg/checkerframework/com/google/common/cache/CacheBuilder;->strictParsing:Z

    .line 4760
    iget-wide v1, p0, Lorg/checkerframework/com/google/common/cache/LocalCache$ManualSerializationProxy;->expireAfterWriteNanos:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-lez v5, :cond_0

    .line 4761
    sget-object v5, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v5}, Lorg/checkerframework/com/google/common/cache/CacheBuilder;->expireAfterWrite(JLjava/util/concurrent/TimeUnit;)Lorg/checkerframework/com/google/common/cache/CacheBuilder;

    .line 4763
    :cond_0
    iget-wide v1, p0, Lorg/checkerframework/com/google/common/cache/LocalCache$ManualSerializationProxy;->expireAfterAccessNanos:J

    cmp-long v3, v1, v3

    if-lez v3, :cond_1

    .line 4764
    sget-object v3, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3}, Lorg/checkerframework/com/google/common/cache/CacheBuilder;->expireAfterAccess(JLjava/util/concurrent/TimeUnit;)Lorg/checkerframework/com/google/common/cache/CacheBuilder;

    .line 4766
    :cond_1
    iget-object v1, p0, Lorg/checkerframework/com/google/common/cache/LocalCache$ManualSerializationProxy;->weigher:Lorg/checkerframework/com/google/common/cache/Weigher;

    sget-object v2, Lorg/checkerframework/com/google/common/cache/CacheBuilder$OneWeigher;->INSTANCE:Lorg/checkerframework/com/google/common/cache/CacheBuilder$OneWeigher;

    const-wide/16 v3, -0x1

    if-eq v1, v2, :cond_2

    .line 4767
    iget-object v1, p0, Lorg/checkerframework/com/google/common/cache/LocalCache$ManualSerializationProxy;->weigher:Lorg/checkerframework/com/google/common/cache/Weigher;

    invoke-virtual {v0, v1}, Lorg/checkerframework/com/google/common/cache/CacheBuilder;->weigher(Lorg/checkerframework/com/google/common/cache/Weigher;)Lorg/checkerframework/com/google/common/cache/CacheBuilder;

    .line 4768
    iget-wide v1, p0, Lorg/checkerframework/com/google/common/cache/LocalCache$ManualSerializationProxy;->maxWeight:J

    cmp-long v3, v1, v3

    if-eqz v3, :cond_3

    .line 4769
    invoke-virtual {v0, v1, v2}, Lorg/checkerframework/com/google/common/cache/CacheBuilder;->maximumWeight(J)Lorg/checkerframework/com/google/common/cache/CacheBuilder;

    goto :goto_0

    .line 4772
    :cond_2
    iget-wide v1, p0, Lorg/checkerframework/com/google/common/cache/LocalCache$ManualSerializationProxy;->maxWeight:J

    cmp-long v3, v1, v3

    if-eqz v3, :cond_3

    .line 4773
    invoke-virtual {v0, v1, v2}, Lorg/checkerframework/com/google/common/cache/CacheBuilder;->maximumSize(J)Lorg/checkerframework/com/google/common/cache/CacheBuilder;

    .line 4776
    :cond_3
    :goto_0
    iget-object v1, p0, Lorg/checkerframework/com/google/common/cache/LocalCache$ManualSerializationProxy;->ticker:Lorg/checkerframework/com/google/common/base/Ticker;

    if-eqz v1, :cond_4

    .line 4777
    invoke-virtual {v0, v1}, Lorg/checkerframework/com/google/common/cache/CacheBuilder;->ticker(Lorg/checkerframework/com/google/common/base/Ticker;)Lorg/checkerframework/com/google/common/cache/CacheBuilder;

    .line 4779
    :cond_4
    return-object v0
.end method
