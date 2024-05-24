.class public final Lorg/checkerframework/com/google/common/cache/CacheBuilder;
.super Ljava/lang/Object;
.source "CacheBuilder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/checkerframework/com/google/common/cache/CacheBuilder$OneWeigher;,
        Lorg/checkerframework/com/google/common/cache/CacheBuilder$NullListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field static final CACHE_STATS_COUNTER:Lorg/checkerframework/com/google/common/base/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/checkerframework/com/google/common/base/Supplier<",
            "Lorg/checkerframework/com/google/common/cache/AbstractCache$StatsCounter;",
            ">;"
        }
    .end annotation
.end field

.field private static final DEFAULT_CONCURRENCY_LEVEL:I = 0x4

.field private static final DEFAULT_EXPIRATION_NANOS:I = 0x0

.field private static final DEFAULT_INITIAL_CAPACITY:I = 0x10

.field private static final DEFAULT_REFRESH_NANOS:I = 0x0

.field static final EMPTY_STATS:Lorg/checkerframework/com/google/common/cache/CacheStats;

.field static final NULL_STATS_COUNTER:Lorg/checkerframework/com/google/common/base/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/checkerframework/com/google/common/base/Supplier<",
            "+",
            "Lorg/checkerframework/com/google/common/cache/AbstractCache$StatsCounter;",
            ">;"
        }
    .end annotation
.end field

.field static final NULL_TICKER:Lorg/checkerframework/com/google/common/base/Ticker;

.field static final UNSET_INT:I = -0x1

.field private static final logger:Ljava/util/logging/Logger;


# instance fields
.field concurrencyLevel:I

.field expireAfterAccessNanos:J

.field expireAfterWriteNanos:J

.field initialCapacity:I

.field keyEquivalence:Lorg/checkerframework/com/google/common/base/Equivalence;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/checkerframework/com/google/common/base/Equivalence<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field keyStrength:Lorg/checkerframework/com/google/common/cache/LocalCache$Strength;

.field maximumSize:J

.field maximumWeight:J

.field refreshNanos:J

.field removalListener:Lorg/checkerframework/com/google/common/cache/RemovalListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/checkerframework/com/google/common/cache/RemovalListener<",
            "-TK;-TV;>;"
        }
    .end annotation
.end field

.field statsCounterSupplier:Lorg/checkerframework/com/google/common/base/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/checkerframework/com/google/common/base/Supplier<",
            "+",
            "Lorg/checkerframework/com/google/common/cache/AbstractCache$StatsCounter;",
            ">;"
        }
    .end annotation
.end field

.field strictParsing:Z

.field ticker:Lorg/checkerframework/com/google/common/base/Ticker;

.field valueEquivalence:Lorg/checkerframework/com/google/common/base/Equivalence;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/checkerframework/com/google/common/base/Equivalence<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field valueStrength:Lorg/checkerframework/com/google/common/cache/LocalCache$Strength;

.field weigher:Lorg/checkerframework/com/google/common/cache/Weigher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/checkerframework/com/google/common/cache/Weigher<",
            "-TK;-TV;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 14

    .line 167
    new-instance v0, Lorg/checkerframework/com/google/common/cache/CacheBuilder$1;

    invoke-direct {v0}, Lorg/checkerframework/com/google/common/cache/CacheBuilder$1;-><init>()V

    .line 168
    invoke-static {v0}, Lorg/checkerframework/com/google/common/base/Suppliers;->ofInstance(Ljava/lang/Object;)Lorg/checkerframework/com/google/common/base/Supplier;

    move-result-object v0

    sput-object v0, Lorg/checkerframework/com/google/common/cache/CacheBuilder;->NULL_STATS_COUNTER:Lorg/checkerframework/com/google/common/base/Supplier;

    .line 192
    new-instance v0, Lorg/checkerframework/com/google/common/cache/CacheStats;

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x0

    const-wide/16 v10, 0x0

    const-wide/16 v12, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v13}, Lorg/checkerframework/com/google/common/cache/CacheStats;-><init>(JJJJJJ)V

    sput-object v0, Lorg/checkerframework/com/google/common/cache/CacheBuilder;->EMPTY_STATS:Lorg/checkerframework/com/google/common/cache/CacheStats;

    .line 194
    new-instance v0, Lorg/checkerframework/com/google/common/cache/CacheBuilder$2;

    invoke-direct {v0}, Lorg/checkerframework/com/google/common/cache/CacheBuilder$2;-><init>()V

    sput-object v0, Lorg/checkerframework/com/google/common/cache/CacheBuilder;->CACHE_STATS_COUNTER:Lorg/checkerframework/com/google/common/base/Supplier;

    .line 218
    new-instance v0, Lorg/checkerframework/com/google/common/cache/CacheBuilder$3;

    invoke-direct {v0}, Lorg/checkerframework/com/google/common/cache/CacheBuilder$3;-><init>()V

    sput-object v0, Lorg/checkerframework/com/google/common/cache/CacheBuilder;->NULL_TICKER:Lorg/checkerframework/com/google/common/base/Ticker;

    .line 226
    const-class v0, Lorg/checkerframework/com/google/common/cache/CacheBuilder;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/checkerframework/com/google/common/cache/CacheBuilder;->logger:Ljava/util/logging/Logger;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 258
    .local p0, "this":Lorg/checkerframework/com/google/common/cache/CacheBuilder;, "Lorg/checkerframework/com/google/common/cache/CacheBuilder<TK;TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 230
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/checkerframework/com/google/common/cache/CacheBuilder;->strictParsing:Z

    .line 232
    const/4 v0, -0x1

    iput v0, p0, Lorg/checkerframework/com/google/common/cache/CacheBuilder;->initialCapacity:I

    .line 233
    iput v0, p0, Lorg/checkerframework/com/google/common/cache/CacheBuilder;->concurrencyLevel:I

    .line 234
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lorg/checkerframework/com/google/common/cache/CacheBuilder;->maximumSize:J

    .line 235
    iput-wide v0, p0, Lorg/checkerframework/com/google/common/cache/CacheBuilder;->maximumWeight:J

    .line 241
    iput-wide v0, p0, Lorg/checkerframework/com/google/common/cache/CacheBuilder;->expireAfterWriteNanos:J

    .line 244
    iput-wide v0, p0, Lorg/checkerframework/com/google/common/cache/CacheBuilder;->expireAfterAccessNanos:J

    .line 247
    iput-wide v0, p0, Lorg/checkerframework/com/google/common/cache/CacheBuilder;->refreshNanos:J

    .line 256
    sget-object v0, Lorg/checkerframework/com/google/common/cache/CacheBuilder;->NULL_STATS_COUNTER:Lorg/checkerframework/com/google/common/base/Supplier;

    iput-object v0, p0, Lorg/checkerframework/com/google/common/cache/CacheBuilder;->statsCounterSupplier:Lorg/checkerframework/com/google/common/base/Supplier;

    .line 258
    return-void
.end method

.method private checkNonLoadingCache()V
    .locals 4

    .line 974
    .local p0, "this":Lorg/checkerframework/com/google/common/cache/CacheBuilder;, "Lorg/checkerframework/com/google/common/cache/CacheBuilder<TK;TV;>;"
    iget-wide v0, p0, Lorg/checkerframework/com/google/common/cache/CacheBuilder;->refreshNanos:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "refreshAfterWrite requires a LoadingCache"

    invoke-static {v0, v1}, Lorg/checkerframework/com/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 975
    return-void
.end method

.method private checkWeightWithWeigher()V
    .locals 7

    .line 978
    .local p0, "this":Lorg/checkerframework/com/google/common/cache/CacheBuilder;, "Lorg/checkerframework/com/google/common/cache/CacheBuilder<TK;TV;>;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/cache/CacheBuilder;->weigher:Lorg/checkerframework/com/google/common/cache/Weigher;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-wide/16 v3, -0x1

    if-nez v0, :cond_1

    .line 979
    iget-wide v5, p0, Lorg/checkerframework/com/google/common/cache/CacheBuilder;->maximumWeight:J

    cmp-long v0, v5, v3

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    const-string v0, "maximumWeight requires weigher"

    invoke-static {v1, v0}, Lorg/checkerframework/com/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    goto :goto_2

    .line 981
    :cond_1
    iget-boolean v0, p0, Lorg/checkerframework/com/google/common/cache/CacheBuilder;->strictParsing:Z

    if-eqz v0, :cond_3

    .line 982
    iget-wide v5, p0, Lorg/checkerframework/com/google/common/cache/CacheBuilder;->maximumWeight:J

    cmp-long v0, v5, v3

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    move v1, v2

    :goto_1
    const-string v0, "weigher requires maximumWeight"

    invoke-static {v1, v0}, Lorg/checkerframework/com/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    goto :goto_2

    .line 984
    :cond_3
    iget-wide v0, p0, Lorg/checkerframework/com/google/common/cache/CacheBuilder;->maximumWeight:J

    cmp-long v0, v0, v3

    if-nez v0, :cond_4

    .line 985
    sget-object v0, Lorg/checkerframework/com/google/common/cache/CacheBuilder;->logger:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v2, "ignoring weigher specified without maximumWeight"

    invoke-virtual {v0, v1, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 989
    :cond_4
    :goto_2
    return-void
.end method

.method public static from(Ljava/lang/String;)Lorg/checkerframework/com/google/common/cache/CacheBuilder;
    .locals 1
    .param p0, "spec"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lorg/checkerframework/com/google/common/cache/CacheBuilder<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 290
    invoke-static {p0}, Lorg/checkerframework/com/google/common/cache/CacheBuilderSpec;->parse(Ljava/lang/String;)Lorg/checkerframework/com/google/common/cache/CacheBuilderSpec;

    move-result-object v0

    invoke-static {v0}, Lorg/checkerframework/com/google/common/cache/CacheBuilder;->from(Lorg/checkerframework/com/google/common/cache/CacheBuilderSpec;)Lorg/checkerframework/com/google/common/cache/CacheBuilder;

    move-result-object v0

    return-object v0
.end method

.method public static from(Lorg/checkerframework/com/google/common/cache/CacheBuilderSpec;)Lorg/checkerframework/com/google/common/cache/CacheBuilder;
    .locals 1
    .param p0, "spec"    # Lorg/checkerframework/com/google/common/cache/CacheBuilderSpec;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/google/common/cache/CacheBuilderSpec;",
            ")",
            "Lorg/checkerframework/com/google/common/cache/CacheBuilder<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 278
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/cache/CacheBuilderSpec;->toCacheBuilder()Lorg/checkerframework/com/google/common/cache/CacheBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/com/google/common/cache/CacheBuilder;->lenientParsing()Lorg/checkerframework/com/google/common/cache/CacheBuilder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder()Lorg/checkerframework/com/google/common/cache/CacheBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/checkerframework/com/google/common/cache/CacheBuilder<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 268
    new-instance v0, Lorg/checkerframework/com/google/common/cache/CacheBuilder;

    invoke-direct {v0}, Lorg/checkerframework/com/google/common/cache/CacheBuilder;-><init>()V

    return-object v0
.end method

.method private static saturatedToNanos(Ljava/time/Duration;)J
    .locals 3
    .param p0, "duration"    # Ljava/time/Duration;

    .line 1047
    :try_start_0
    invoke-virtual {p0}, Ljava/time/Duration;->toNanos()J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/ArithmeticException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    .line 1048
    :catch_0
    move-exception v0

    .line 1049
    .local v0, "tooBig":Ljava/lang/ArithmeticException;
    invoke-virtual {p0}, Ljava/time/Duration;->isNegative()Z

    move-result v1

    if-eqz v1, :cond_0

    const-wide/high16 v1, -0x8000000000000000L

    goto :goto_0

    :cond_0
    const-wide v1, 0x7fffffffffffffffL

    :goto_0
    return-wide v1
.end method


# virtual methods
.method public build()Lorg/checkerframework/com/google/common/cache/Cache;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K1:TK;V1:TV;>()",
            "Lorg/checkerframework/com/google/common/cache/Cache<",
            "TK1;TV1;>;"
        }
    .end annotation

    .line 968
    .local p0, "this":Lorg/checkerframework/com/google/common/cache/CacheBuilder;, "Lorg/checkerframework/com/google/common/cache/CacheBuilder<TK;TV;>;"
    invoke-direct {p0}, Lorg/checkerframework/com/google/common/cache/CacheBuilder;->checkWeightWithWeigher()V

    .line 969
    invoke-direct {p0}, Lorg/checkerframework/com/google/common/cache/CacheBuilder;->checkNonLoadingCache()V

    .line 970
    new-instance v0, Lorg/checkerframework/com/google/common/cache/LocalCache$LocalManualCache;

    invoke-direct {v0, p0}, Lorg/checkerframework/com/google/common/cache/LocalCache$LocalManualCache;-><init>(Lorg/checkerframework/com/google/common/cache/CacheBuilder;)V

    return-object v0
.end method

.method public build(Lorg/checkerframework/com/google/common/cache/CacheLoader;)Lorg/checkerframework/com/google/common/cache/LoadingCache;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K1:TK;V1:TV;>(",
            "Lorg/checkerframework/com/google/common/cache/CacheLoader<",
            "-TK1;TV1;>;)",
            "Lorg/checkerframework/com/google/common/cache/LoadingCache<",
            "TK1;TV1;>;"
        }
    .end annotation

    .line 951
    .local p0, "this":Lorg/checkerframework/com/google/common/cache/CacheBuilder;, "Lorg/checkerframework/com/google/common/cache/CacheBuilder<TK;TV;>;"
    .local p1, "loader":Lorg/checkerframework/com/google/common/cache/CacheLoader;, "Lorg/checkerframework/com/google/common/cache/CacheLoader<-TK1;TV1;>;"
    invoke-direct {p0}, Lorg/checkerframework/com/google/common/cache/CacheBuilder;->checkWeightWithWeigher()V

    .line 952
    new-instance v0, Lorg/checkerframework/com/google/common/cache/LocalCache$LocalLoadingCache;

    invoke-direct {v0, p0, p1}, Lorg/checkerframework/com/google/common/cache/LocalCache$LocalLoadingCache;-><init>(Lorg/checkerframework/com/google/common/cache/CacheBuilder;Lorg/checkerframework/com/google/common/cache/CacheLoader;)V

    return-object v0
.end method

.method public concurrencyLevel(I)Lorg/checkerframework/com/google/common/cache/CacheBuilder;
    .locals 5
    .param p1, "concurrencyLevel"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lorg/checkerframework/com/google/common/cache/CacheBuilder<",
            "TK;TV;>;"
        }
    .end annotation

    .line 401
    .local p0, "this":Lorg/checkerframework/com/google/common/cache/CacheBuilder;, "Lorg/checkerframework/com/google/common/cache/CacheBuilder<TK;TV;>;"
    iget v0, p0, Lorg/checkerframework/com/google/common/cache/CacheBuilder;->concurrencyLevel:I

    const/4 v1, -0x1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    const-string v4, "concurrency level was already set to %s"

    invoke-static {v1, v4, v0}, Lorg/checkerframework/com/google/common/base/Preconditions;->checkState(ZLjava/lang/String;I)V

    .line 405
    if-lez p1, :cond_1

    goto :goto_1

    :cond_1
    move v2, v3

    :goto_1
    invoke-static {v2}, Lorg/checkerframework/com/google/common/base/Preconditions;->checkArgument(Z)V

    .line 406
    iput p1, p0, Lorg/checkerframework/com/google/common/cache/CacheBuilder;->concurrencyLevel:I

    .line 407
    return-object p0
.end method

.method public expireAfterAccess(JLjava/util/concurrent/TimeUnit;)Lorg/checkerframework/com/google/common/cache/CacheBuilder;
    .locals 6
    .param p1, "duration"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Lorg/checkerframework/com/google/common/cache/CacheBuilder<",
            "TK;TV;>;"
        }
    .end annotation

    .line 761
    .local p0, "this":Lorg/checkerframework/com/google/common/cache/CacheBuilder;, "Lorg/checkerframework/com/google/common/cache/CacheBuilder<TK;TV;>;"
    iget-wide v0, p0, Lorg/checkerframework/com/google/common/cache/CacheBuilder;->expireAfterAccessNanos:J

    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v2, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    move v2, v4

    :goto_0
    const-string v5, "expireAfterAccess was already set to %s ns"

    invoke-static {v2, v5, v0, v1}, Lorg/checkerframework/com/google/common/base/Preconditions;->checkState(ZLjava/lang/String;J)V

    .line 765
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_1

    goto :goto_1

    :cond_1
    move v3, v4

    :goto_1
    const-string v0, "duration cannot be negative: %s %s"

    invoke-static {v3, v0, p1, p2, p3}, Lorg/checkerframework/com/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;JLjava/lang/Object;)V

    .line 766
    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/checkerframework/com/google/common/cache/CacheBuilder;->expireAfterAccessNanos:J

    .line 767
    return-object p0
.end method

.method public expireAfterAccess(Ljava/time/Duration;)Lorg/checkerframework/com/google/common/cache/CacheBuilder;
    .locals 3
    .param p1, "duration"    # Ljava/time/Duration;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/time/Duration;",
            ")",
            "Lorg/checkerframework/com/google/common/cache/CacheBuilder<",
            "TK;TV;>;"
        }
    .end annotation

    .line 729
    .local p0, "this":Lorg/checkerframework/com/google/common/cache/CacheBuilder;, "Lorg/checkerframework/com/google/common/cache/CacheBuilder<TK;TV;>;"
    invoke-static {p1}, Lorg/checkerframework/com/google/common/cache/CacheBuilder;->saturatedToNanos(Ljava/time/Duration;)J

    move-result-wide v0

    sget-object v2, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p0, v0, v1, v2}, Lorg/checkerframework/com/google/common/cache/CacheBuilder;->expireAfterAccess(JLjava/util/concurrent/TimeUnit;)Lorg/checkerframework/com/google/common/cache/CacheBuilder;

    move-result-object v0

    return-object v0
.end method

.method public expireAfterWrite(JLjava/util/concurrent/TimeUnit;)Lorg/checkerframework/com/google/common/cache/CacheBuilder;
    .locals 6
    .param p1, "duration"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Lorg/checkerframework/com/google/common/cache/CacheBuilder<",
            "TK;TV;>;"
        }
    .end annotation

    .line 687
    .local p0, "this":Lorg/checkerframework/com/google/common/cache/CacheBuilder;, "Lorg/checkerframework/com/google/common/cache/CacheBuilder<TK;TV;>;"
    iget-wide v0, p0, Lorg/checkerframework/com/google/common/cache/CacheBuilder;->expireAfterWriteNanos:J

    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v2, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    move v2, v4

    :goto_0
    const-string v5, "expireAfterWrite was already set to %s ns"

    invoke-static {v2, v5, v0, v1}, Lorg/checkerframework/com/google/common/base/Preconditions;->checkState(ZLjava/lang/String;J)V

    .line 691
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_1

    goto :goto_1

    :cond_1
    move v3, v4

    :goto_1
    const-string v0, "duration cannot be negative: %s %s"

    invoke-static {v3, v0, p1, p2, p3}, Lorg/checkerframework/com/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;JLjava/lang/Object;)V

    .line 692
    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/checkerframework/com/google/common/cache/CacheBuilder;->expireAfterWriteNanos:J

    .line 693
    return-object p0
.end method

.method public expireAfterWrite(Ljava/time/Duration;)Lorg/checkerframework/com/google/common/cache/CacheBuilder;
    .locals 3
    .param p1, "duration"    # Ljava/time/Duration;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/time/Duration;",
            ")",
            "Lorg/checkerframework/com/google/common/cache/CacheBuilder<",
            "TK;TV;>;"
        }
    .end annotation

    .line 660
    .local p0, "this":Lorg/checkerframework/com/google/common/cache/CacheBuilder;, "Lorg/checkerframework/com/google/common/cache/CacheBuilder<TK;TV;>;"
    invoke-static {p1}, Lorg/checkerframework/com/google/common/cache/CacheBuilder;->saturatedToNanos(Ljava/time/Duration;)J

    move-result-wide v0

    sget-object v2, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p0, v0, v1, v2}, Lorg/checkerframework/com/google/common/cache/CacheBuilder;->expireAfterWrite(JLjava/util/concurrent/TimeUnit;)Lorg/checkerframework/com/google/common/cache/CacheBuilder;

    move-result-object v0

    return-object v0
.end method

.method getConcurrencyLevel()I
    .locals 2

    .line 411
    .local p0, "this":Lorg/checkerframework/com/google/common/cache/CacheBuilder;, "Lorg/checkerframework/com/google/common/cache/CacheBuilder<TK;TV;>;"
    iget v0, p0, Lorg/checkerframework/com/google/common/cache/CacheBuilder;->concurrencyLevel:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x4

    :cond_0
    return v0
.end method

.method getExpireAfterAccessNanos()J
    .locals 4

    .line 771
    .local p0, "this":Lorg/checkerframework/com/google/common/cache/CacheBuilder;, "Lorg/checkerframework/com/google/common/cache/CacheBuilder<TK;TV;>;"
    iget-wide v0, p0, Lorg/checkerframework/com/google/common/cache/CacheBuilder;->expireAfterAccessNanos:J

    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const-wide/16 v0, 0x0

    :cond_0
    return-wide v0
.end method

.method getExpireAfterWriteNanos()J
    .locals 4

    .line 697
    .local p0, "this":Lorg/checkerframework/com/google/common/cache/CacheBuilder;, "Lorg/checkerframework/com/google/common/cache/CacheBuilder<TK;TV;>;"
    iget-wide v0, p0, Lorg/checkerframework/com/google/common/cache/CacheBuilder;->expireAfterWriteNanos:J

    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const-wide/16 v0, 0x0

    :cond_0
    return-wide v0
.end method

.method getInitialCapacity()I
    .locals 2

    .line 366
    .local p0, "this":Lorg/checkerframework/com/google/common/cache/CacheBuilder;, "Lorg/checkerframework/com/google/common/cache/CacheBuilder<TK;TV;>;"
    iget v0, p0, Lorg/checkerframework/com/google/common/cache/CacheBuilder;->initialCapacity:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/16 v0, 0x10

    :cond_0
    return v0
.end method

.method getKeyEquivalence()Lorg/checkerframework/com/google/common/base/Equivalence;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/checkerframework/com/google/common/base/Equivalence<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 320
    .local p0, "this":Lorg/checkerframework/com/google/common/cache/CacheBuilder;, "Lorg/checkerframework/com/google/common/cache/CacheBuilder<TK;TV;>;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/cache/CacheBuilder;->keyEquivalence:Lorg/checkerframework/com/google/common/base/Equivalence;

    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/cache/CacheBuilder;->getKeyStrength()Lorg/checkerframework/com/google/common/cache/LocalCache$Strength;

    move-result-object v1

    invoke-virtual {v1}, Lorg/checkerframework/com/google/common/cache/LocalCache$Strength;->defaultEquivalence()Lorg/checkerframework/com/google/common/base/Equivalence;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/checkerframework/com/google/common/base/MoreObjects;->firstNonNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/google/common/base/Equivalence;

    return-object v0
.end method

.method getKeyStrength()Lorg/checkerframework/com/google/common/cache/LocalCache$Strength;
    .locals 2

    .line 576
    .local p0, "this":Lorg/checkerframework/com/google/common/cache/CacheBuilder;, "Lorg/checkerframework/com/google/common/cache/CacheBuilder<TK;TV;>;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/cache/CacheBuilder;->keyStrength:Lorg/checkerframework/com/google/common/cache/LocalCache$Strength;

    sget-object v1, Lorg/checkerframework/com/google/common/cache/LocalCache$Strength;->STRONG:Lorg/checkerframework/com/google/common/cache/LocalCache$Strength;

    invoke-static {v0, v1}, Lorg/checkerframework/com/google/common/base/MoreObjects;->firstNonNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/google/common/cache/LocalCache$Strength;

    return-object v0
.end method

.method getMaximumWeight()J
    .locals 4

    .line 536
    .local p0, "this":Lorg/checkerframework/com/google/common/cache/CacheBuilder;, "Lorg/checkerframework/com/google/common/cache/CacheBuilder<TK;TV;>;"
    iget-wide v0, p0, Lorg/checkerframework/com/google/common/cache/CacheBuilder;->expireAfterWriteNanos:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_2

    iget-wide v0, p0, Lorg/checkerframework/com/google/common/cache/CacheBuilder;->expireAfterAccessNanos:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    goto :goto_1

    .line 539
    :cond_0
    iget-object v0, p0, Lorg/checkerframework/com/google/common/cache/CacheBuilder;->weigher:Lorg/checkerframework/com/google/common/cache/Weigher;

    if-nez v0, :cond_1

    iget-wide v0, p0, Lorg/checkerframework/com/google/common/cache/CacheBuilder;->maximumSize:J

    goto :goto_0

    :cond_1
    iget-wide v0, p0, Lorg/checkerframework/com/google/common/cache/CacheBuilder;->maximumWeight:J

    :goto_0
    return-wide v0

    .line 537
    :cond_2
    :goto_1
    return-wide v2
.end method

.method getRefreshNanos()J
    .locals 4

    .line 849
    .local p0, "this":Lorg/checkerframework/com/google/common/cache/CacheBuilder;, "Lorg/checkerframework/com/google/common/cache/CacheBuilder<TK;TV;>;"
    iget-wide v0, p0, Lorg/checkerframework/com/google/common/cache/CacheBuilder;->refreshNanos:J

    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const-wide/16 v0, 0x0

    :cond_0
    return-wide v0
.end method

.method getRemovalListener()Lorg/checkerframework/com/google/common/cache/RemovalListener;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K1:TK;V1:TV;>()",
            "Lorg/checkerframework/com/google/common/cache/RemovalListener<",
            "TK1;TV1;>;"
        }
    .end annotation

    .line 911
    .local p0, "this":Lorg/checkerframework/com/google/common/cache/CacheBuilder;, "Lorg/checkerframework/com/google/common/cache/CacheBuilder<TK;TV;>;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/cache/CacheBuilder;->removalListener:Lorg/checkerframework/com/google/common/cache/RemovalListener;

    sget-object v1, Lorg/checkerframework/com/google/common/cache/CacheBuilder$NullListener;->INSTANCE:Lorg/checkerframework/com/google/common/cache/CacheBuilder$NullListener;

    .line 912
    invoke-static {v0, v1}, Lorg/checkerframework/com/google/common/base/MoreObjects;->firstNonNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/google/common/cache/RemovalListener;

    .line 911
    return-object v0
.end method

.method getStatsCounterSupplier()Lorg/checkerframework/com/google/common/base/Supplier;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/checkerframework/com/google/common/base/Supplier<",
            "+",
            "Lorg/checkerframework/com/google/common/cache/AbstractCache$StatsCounter;",
            ">;"
        }
    .end annotation

    .line 934
    .local p0, "this":Lorg/checkerframework/com/google/common/cache/CacheBuilder;, "Lorg/checkerframework/com/google/common/cache/CacheBuilder<TK;TV;>;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/cache/CacheBuilder;->statsCounterSupplier:Lorg/checkerframework/com/google/common/base/Supplier;

    return-object v0
.end method

.method getTicker(Z)Lorg/checkerframework/com/google/common/base/Ticker;
    .locals 1
    .param p1, "recordsTime"    # Z

    .line 869
    .local p0, "this":Lorg/checkerframework/com/google/common/cache/CacheBuilder;, "Lorg/checkerframework/com/google/common/cache/CacheBuilder<TK;TV;>;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/cache/CacheBuilder;->ticker:Lorg/checkerframework/com/google/common/base/Ticker;

    if-eqz v0, :cond_0

    .line 870
    return-object v0

    .line 872
    :cond_0
    if-eqz p1, :cond_1

    invoke-static {}, Lorg/checkerframework/com/google/common/base/Ticker;->systemTicker()Lorg/checkerframework/com/google/common/base/Ticker;

    move-result-object v0

    goto :goto_0

    :cond_1
    sget-object v0, Lorg/checkerframework/com/google/common/cache/CacheBuilder;->NULL_TICKER:Lorg/checkerframework/com/google/common/base/Ticker;

    :goto_0
    return-object v0
.end method

.method getValueEquivalence()Lorg/checkerframework/com/google/common/base/Equivalence;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/checkerframework/com/google/common/base/Equivalence<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 341
    .local p0, "this":Lorg/checkerframework/com/google/common/cache/CacheBuilder;, "Lorg/checkerframework/com/google/common/cache/CacheBuilder<TK;TV;>;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/cache/CacheBuilder;->valueEquivalence:Lorg/checkerframework/com/google/common/base/Equivalence;

    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/cache/CacheBuilder;->getValueStrength()Lorg/checkerframework/com/google/common/cache/LocalCache$Strength;

    move-result-object v1

    invoke-virtual {v1}, Lorg/checkerframework/com/google/common/cache/LocalCache$Strength;->defaultEquivalence()Lorg/checkerframework/com/google/common/base/Equivalence;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/checkerframework/com/google/common/base/MoreObjects;->firstNonNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/google/common/base/Equivalence;

    return-object v0
.end method

.method getValueStrength()Lorg/checkerframework/com/google/common/cache/LocalCache$Strength;
    .locals 2

    .line 633
    .local p0, "this":Lorg/checkerframework/com/google/common/cache/CacheBuilder;, "Lorg/checkerframework/com/google/common/cache/CacheBuilder<TK;TV;>;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/cache/CacheBuilder;->valueStrength:Lorg/checkerframework/com/google/common/cache/LocalCache$Strength;

    sget-object v1, Lorg/checkerframework/com/google/common/cache/LocalCache$Strength;->STRONG:Lorg/checkerframework/com/google/common/cache/LocalCache$Strength;

    invoke-static {v0, v1}, Lorg/checkerframework/com/google/common/base/MoreObjects;->firstNonNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/google/common/cache/LocalCache$Strength;

    return-object v0
.end method

.method getWeigher()Lorg/checkerframework/com/google/common/cache/Weigher;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K1:TK;V1:TV;>()",
            "Lorg/checkerframework/com/google/common/cache/Weigher<",
            "TK1;TV1;>;"
        }
    .end annotation

    .line 545
    .local p0, "this":Lorg/checkerframework/com/google/common/cache/CacheBuilder;, "Lorg/checkerframework/com/google/common/cache/CacheBuilder<TK;TV;>;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/cache/CacheBuilder;->weigher:Lorg/checkerframework/com/google/common/cache/Weigher;

    sget-object v1, Lorg/checkerframework/com/google/common/cache/CacheBuilder$OneWeigher;->INSTANCE:Lorg/checkerframework/com/google/common/cache/CacheBuilder$OneWeigher;

    invoke-static {v0, v1}, Lorg/checkerframework/com/google/common/base/MoreObjects;->firstNonNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/google/common/cache/Weigher;

    return-object v0
.end method

.method public initialCapacity(I)Lorg/checkerframework/com/google/common/cache/CacheBuilder;
    .locals 5
    .param p1, "initialCapacity"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lorg/checkerframework/com/google/common/cache/CacheBuilder<",
            "TK;TV;>;"
        }
    .end annotation

    .line 356
    .local p0, "this":Lorg/checkerframework/com/google/common/cache/CacheBuilder;, "Lorg/checkerframework/com/google/common/cache/CacheBuilder<TK;TV;>;"
    iget v0, p0, Lorg/checkerframework/com/google/common/cache/CacheBuilder;->initialCapacity:I

    const/4 v1, -0x1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    const-string v4, "initial capacity was already set to %s"

    invoke-static {v1, v4, v0}, Lorg/checkerframework/com/google/common/base/Preconditions;->checkState(ZLjava/lang/String;I)V

    .line 360
    if-ltz p1, :cond_1

    goto :goto_1

    :cond_1
    move v2, v3

    :goto_1
    invoke-static {v2}, Lorg/checkerframework/com/google/common/base/Preconditions;->checkArgument(Z)V

    .line 361
    iput p1, p0, Lorg/checkerframework/com/google/common/cache/CacheBuilder;->initialCapacity:I

    .line 362
    return-object p0
.end method

.method isRecordingStats()Z
    .locals 2

    .line 930
    .local p0, "this":Lorg/checkerframework/com/google/common/cache/CacheBuilder;, "Lorg/checkerframework/com/google/common/cache/CacheBuilder<TK;TV;>;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/cache/CacheBuilder;->statsCounterSupplier:Lorg/checkerframework/com/google/common/base/Supplier;

    sget-object v1, Lorg/checkerframework/com/google/common/cache/CacheBuilder;->CACHE_STATS_COUNTER:Lorg/checkerframework/com/google/common/base/Supplier;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method keyEquivalence(Lorg/checkerframework/com/google/common/base/Equivalence;)Lorg/checkerframework/com/google/common/cache/CacheBuilder;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/google/common/base/Equivalence<",
            "Ljava/lang/Object;",
            ">;)",
            "Lorg/checkerframework/com/google/common/cache/CacheBuilder<",
            "TK;TV;>;"
        }
    .end annotation

    .line 314
    .local p0, "this":Lorg/checkerframework/com/google/common/cache/CacheBuilder;, "Lorg/checkerframework/com/google/common/cache/CacheBuilder<TK;TV;>;"
    .local p1, "equivalence":Lorg/checkerframework/com/google/common/base/Equivalence;, "Lorg/checkerframework/com/google/common/base/Equivalence<Ljava/lang/Object;>;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/cache/CacheBuilder;->keyEquivalence:Lorg/checkerframework/com/google/common/base/Equivalence;

    if-nez v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const-string v2, "key equivalence was already set to %s"

    invoke-static {v1, v2, v0}, Lorg/checkerframework/com/google/common/base/Preconditions;->checkState(ZLjava/lang/String;Ljava/lang/Object;)V

    .line 315
    invoke-static {p1}, Lorg/checkerframework/com/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/google/common/base/Equivalence;

    iput-object v0, p0, Lorg/checkerframework/com/google/common/cache/CacheBuilder;->keyEquivalence:Lorg/checkerframework/com/google/common/base/Equivalence;

    .line 316
    return-object p0
.end method

.method lenientParsing()Lorg/checkerframework/com/google/common/cache/CacheBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/checkerframework/com/google/common/cache/CacheBuilder<",
            "TK;TV;>;"
        }
    .end annotation

    .line 300
    .local p0, "this":Lorg/checkerframework/com/google/common/cache/CacheBuilder;, "Lorg/checkerframework/com/google/common/cache/CacheBuilder<TK;TV;>;"
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/checkerframework/com/google/common/cache/CacheBuilder;->strictParsing:Z

    .line 301
    return-object p0
.end method

.method public maximumSize(J)Lorg/checkerframework/com/google/common/cache/CacheBuilder;
    .locals 8
    .param p1, "maximumSize"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Lorg/checkerframework/com/google/common/cache/CacheBuilder<",
            "TK;TV;>;"
        }
    .end annotation

    .line 436
    .local p0, "this":Lorg/checkerframework/com/google/common/cache/CacheBuilder;, "Lorg/checkerframework/com/google/common/cache/CacheBuilder<TK;TV;>;"
    iget-wide v0, p0, Lorg/checkerframework/com/google/common/cache/CacheBuilder;->maximumSize:J

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-nez v4, :cond_0

    move v4, v5

    goto :goto_0

    :cond_0
    move v4, v6

    :goto_0
    const-string v7, "maximum size was already set to %s"

    invoke-static {v4, v7, v0, v1}, Lorg/checkerframework/com/google/common/base/Preconditions;->checkState(ZLjava/lang/String;J)V

    .line 438
    iget-wide v0, p0, Lorg/checkerframework/com/google/common/cache/CacheBuilder;->maximumWeight:J

    cmp-long v2, v0, v2

    if-nez v2, :cond_1

    move v2, v5

    goto :goto_1

    :cond_1
    move v2, v6

    :goto_1
    const-string v3, "maximum weight was already set to %s"

    invoke-static {v2, v3, v0, v1}, Lorg/checkerframework/com/google/common/base/Preconditions;->checkState(ZLjava/lang/String;J)V

    .line 442
    iget-object v0, p0, Lorg/checkerframework/com/google/common/cache/CacheBuilder;->weigher:Lorg/checkerframework/com/google/common/cache/Weigher;

    if-nez v0, :cond_2

    move v0, v5

    goto :goto_2

    :cond_2
    move v0, v6

    :goto_2
    const-string v1, "maximum size can not be combined with weigher"

    invoke-static {v0, v1}, Lorg/checkerframework/com/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 443
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_3

    goto :goto_3

    :cond_3
    move v5, v6

    :goto_3
    const-string v0, "maximum size must not be negative"

    invoke-static {v5, v0}, Lorg/checkerframework/com/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 444
    iput-wide p1, p0, Lorg/checkerframework/com/google/common/cache/CacheBuilder;->maximumSize:J

    .line 445
    return-object p0
.end method

.method public maximumWeight(J)Lorg/checkerframework/com/google/common/cache/CacheBuilder;
    .locals 8
    .param p1, "maximumWeight"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Lorg/checkerframework/com/google/common/cache/CacheBuilder<",
            "TK;TV;>;"
        }
    .end annotation

    .line 477
    .local p0, "this":Lorg/checkerframework/com/google/common/cache/CacheBuilder;, "Lorg/checkerframework/com/google/common/cache/CacheBuilder<TK;TV;>;"
    iget-wide v0, p0, Lorg/checkerframework/com/google/common/cache/CacheBuilder;->maximumWeight:J

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-nez v4, :cond_0

    move v4, v5

    goto :goto_0

    :cond_0
    move v4, v6

    :goto_0
    const-string v7, "maximum weight was already set to %s"

    invoke-static {v4, v7, v0, v1}, Lorg/checkerframework/com/google/common/base/Preconditions;->checkState(ZLjava/lang/String;J)V

    .line 481
    iget-wide v0, p0, Lorg/checkerframework/com/google/common/cache/CacheBuilder;->maximumSize:J

    cmp-long v2, v0, v2

    if-nez v2, :cond_1

    move v2, v5

    goto :goto_1

    :cond_1
    move v2, v6

    :goto_1
    const-string v3, "maximum size was already set to %s"

    invoke-static {v2, v3, v0, v1}, Lorg/checkerframework/com/google/common/base/Preconditions;->checkState(ZLjava/lang/String;J)V

    .line 483
    iput-wide p1, p0, Lorg/checkerframework/com/google/common/cache/CacheBuilder;->maximumWeight:J

    .line 484
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_2

    goto :goto_2

    :cond_2
    move v5, v6

    :goto_2
    const-string v0, "maximum weight must not be negative"

    invoke-static {v5, v0}, Lorg/checkerframework/com/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 485
    return-object p0
.end method

.method public recordStats()Lorg/checkerframework/com/google/common/cache/CacheBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/checkerframework/com/google/common/cache/CacheBuilder<",
            "TK;TV;>;"
        }
    .end annotation

    .line 925
    .local p0, "this":Lorg/checkerframework/com/google/common/cache/CacheBuilder;, "Lorg/checkerframework/com/google/common/cache/CacheBuilder<TK;TV;>;"
    sget-object v0, Lorg/checkerframework/com/google/common/cache/CacheBuilder;->CACHE_STATS_COUNTER:Lorg/checkerframework/com/google/common/base/Supplier;

    iput-object v0, p0, Lorg/checkerframework/com/google/common/cache/CacheBuilder;->statsCounterSupplier:Lorg/checkerframework/com/google/common/base/Supplier;

    .line 926
    return-object p0
.end method

.method public refreshAfterWrite(JLjava/util/concurrent/TimeUnit;)Lorg/checkerframework/com/google/common/cache/CacheBuilder;
    .locals 6
    .param p1, "duration"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Lorg/checkerframework/com/google/common/cache/CacheBuilder<",
            "TK;TV;>;"
        }
    .end annotation

    .line 841
    .local p0, "this":Lorg/checkerframework/com/google/common/cache/CacheBuilder;, "Lorg/checkerframework/com/google/common/cache/CacheBuilder<TK;TV;>;"
    invoke-static {p3}, Lorg/checkerframework/com/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 842
    iget-wide v0, p0, Lorg/checkerframework/com/google/common/cache/CacheBuilder;->refreshNanos:J

    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v2, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    move v2, v4

    :goto_0
    const-string v5, "refresh was already set to %s ns"

    invoke-static {v2, v5, v0, v1}, Lorg/checkerframework/com/google/common/base/Preconditions;->checkState(ZLjava/lang/String;J)V

    .line 843
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_1

    goto :goto_1

    :cond_1
    move v3, v4

    :goto_1
    const-string v0, "duration must be positive: %s %s"

    invoke-static {v3, v0, p1, p2, p3}, Lorg/checkerframework/com/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;JLjava/lang/Object;)V

    .line 844
    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/checkerframework/com/google/common/cache/CacheBuilder;->refreshNanos:J

    .line 845
    return-object p0
.end method

.method public refreshAfterWrite(Ljava/time/Duration;)Lorg/checkerframework/com/google/common/cache/CacheBuilder;
    .locals 3
    .param p1, "duration"    # Ljava/time/Duration;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/time/Duration;",
            ")",
            "Lorg/checkerframework/com/google/common/cache/CacheBuilder<",
            "TK;TV;>;"
        }
    .end annotation

    .line 806
    .local p0, "this":Lorg/checkerframework/com/google/common/cache/CacheBuilder;, "Lorg/checkerframework/com/google/common/cache/CacheBuilder<TK;TV;>;"
    invoke-static {p1}, Lorg/checkerframework/com/google/common/cache/CacheBuilder;->saturatedToNanos(Ljava/time/Duration;)J

    move-result-wide v0

    sget-object v2, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p0, v0, v1, v2}, Lorg/checkerframework/com/google/common/cache/CacheBuilder;->refreshAfterWrite(JLjava/util/concurrent/TimeUnit;)Lorg/checkerframework/com/google/common/cache/CacheBuilder;

    move-result-object v0

    return-object v0
.end method

.method public removalListener(Lorg/checkerframework/com/google/common/cache/RemovalListener;)Lorg/checkerframework/com/google/common/cache/CacheBuilder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K1:TK;V1:TV;>(",
            "Lorg/checkerframework/com/google/common/cache/RemovalListener<",
            "-TK1;-TV1;>;)",
            "Lorg/checkerframework/com/google/common/cache/CacheBuilder<",
            "TK1;TV1;>;"
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/com/google/errorprone/annotations/CheckReturnValue;
    .end annotation

    .line 899
    .local p0, "this":Lorg/checkerframework/com/google/common/cache/CacheBuilder;, "Lorg/checkerframework/com/google/common/cache/CacheBuilder<TK;TV;>;"
    .local p1, "listener":Lorg/checkerframework/com/google/common/cache/RemovalListener;, "Lorg/checkerframework/com/google/common/cache/RemovalListener<-TK1;-TV1;>;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/cache/CacheBuilder;->removalListener:Lorg/checkerframework/com/google/common/cache/RemovalListener;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lorg/checkerframework/com/google/common/base/Preconditions;->checkState(Z)V

    .line 903
    move-object v0, p0

    .line 904
    .local v0, "me":Lorg/checkerframework/com/google/common/cache/CacheBuilder;, "Lorg/checkerframework/com/google/common/cache/CacheBuilder<TK1;TV1;>;"
    invoke-static {p1}, Lorg/checkerframework/com/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/checkerframework/com/google/common/cache/RemovalListener;

    iput-object v1, v0, Lorg/checkerframework/com/google/common/cache/CacheBuilder;->removalListener:Lorg/checkerframework/com/google/common/cache/RemovalListener;

    .line 905
    return-object v0
.end method

.method setKeyStrength(Lorg/checkerframework/com/google/common/cache/LocalCache$Strength;)Lorg/checkerframework/com/google/common/cache/CacheBuilder;
    .locals 3
    .param p1, "strength"    # Lorg/checkerframework/com/google/common/cache/LocalCache$Strength;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/google/common/cache/LocalCache$Strength;",
            ")",
            "Lorg/checkerframework/com/google/common/cache/CacheBuilder<",
            "TK;TV;>;"
        }
    .end annotation

    .line 570
    .local p0, "this":Lorg/checkerframework/com/google/common/cache/CacheBuilder;, "Lorg/checkerframework/com/google/common/cache/CacheBuilder<TK;TV;>;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/cache/CacheBuilder;->keyStrength:Lorg/checkerframework/com/google/common/cache/LocalCache$Strength;

    if-nez v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const-string v2, "Key strength was already set to %s"

    invoke-static {v1, v2, v0}, Lorg/checkerframework/com/google/common/base/Preconditions;->checkState(ZLjava/lang/String;Ljava/lang/Object;)V

    .line 571
    invoke-static {p1}, Lorg/checkerframework/com/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/google/common/cache/LocalCache$Strength;

    iput-object v0, p0, Lorg/checkerframework/com/google/common/cache/CacheBuilder;->keyStrength:Lorg/checkerframework/com/google/common/cache/LocalCache$Strength;

    .line 572
    return-object p0
.end method

.method setValueStrength(Lorg/checkerframework/com/google/common/cache/LocalCache$Strength;)Lorg/checkerframework/com/google/common/cache/CacheBuilder;
    .locals 3
    .param p1, "strength"    # Lorg/checkerframework/com/google/common/cache/LocalCache$Strength;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/google/common/cache/LocalCache$Strength;",
            ")",
            "Lorg/checkerframework/com/google/common/cache/CacheBuilder<",
            "TK;TV;>;"
        }
    .end annotation

    .line 627
    .local p0, "this":Lorg/checkerframework/com/google/common/cache/CacheBuilder;, "Lorg/checkerframework/com/google/common/cache/CacheBuilder<TK;TV;>;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/cache/CacheBuilder;->valueStrength:Lorg/checkerframework/com/google/common/cache/LocalCache$Strength;

    if-nez v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const-string v2, "Value strength was already set to %s"

    invoke-static {v1, v2, v0}, Lorg/checkerframework/com/google/common/base/Preconditions;->checkState(ZLjava/lang/String;Ljava/lang/Object;)V

    .line 628
    invoke-static {p1}, Lorg/checkerframework/com/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/google/common/cache/LocalCache$Strength;

    iput-object v0, p0, Lorg/checkerframework/com/google/common/cache/CacheBuilder;->valueStrength:Lorg/checkerframework/com/google/common/cache/LocalCache$Strength;

    .line 629
    return-object p0
.end method

.method public softValues()Lorg/checkerframework/com/google/common/cache/CacheBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/checkerframework/com/google/common/cache/CacheBuilder<",
            "TK;TV;>;"
        }
    .end annotation

    .line 623
    .local p0, "this":Lorg/checkerframework/com/google/common/cache/CacheBuilder;, "Lorg/checkerframework/com/google/common/cache/CacheBuilder<TK;TV;>;"
    sget-object v0, Lorg/checkerframework/com/google/common/cache/LocalCache$Strength;->SOFT:Lorg/checkerframework/com/google/common/cache/LocalCache$Strength;

    invoke-virtual {p0, v0}, Lorg/checkerframework/com/google/common/cache/CacheBuilder;->setValueStrength(Lorg/checkerframework/com/google/common/cache/LocalCache$Strength;)Lorg/checkerframework/com/google/common/cache/CacheBuilder;

    move-result-object v0

    return-object v0
.end method

.method public ticker(Lorg/checkerframework/com/google/common/base/Ticker;)Lorg/checkerframework/com/google/common/cache/CacheBuilder;
    .locals 1
    .param p1, "ticker"    # Lorg/checkerframework/com/google/common/base/Ticker;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/google/common/base/Ticker;",
            ")",
            "Lorg/checkerframework/com/google/common/cache/CacheBuilder<",
            "TK;TV;>;"
        }
    .end annotation

    .line 863
    .local p0, "this":Lorg/checkerframework/com/google/common/cache/CacheBuilder;, "Lorg/checkerframework/com/google/common/cache/CacheBuilder<TK;TV;>;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/cache/CacheBuilder;->ticker:Lorg/checkerframework/com/google/common/base/Ticker;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lorg/checkerframework/com/google/common/base/Preconditions;->checkState(Z)V

    .line 864
    invoke-static {p1}, Lorg/checkerframework/com/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/google/common/base/Ticker;

    iput-object v0, p0, Lorg/checkerframework/com/google/common/cache/CacheBuilder;->ticker:Lorg/checkerframework/com/google/common/base/Ticker;

    .line 865
    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    .line 997
    .local p0, "this":Lorg/checkerframework/com/google/common/cache/CacheBuilder;, "Lorg/checkerframework/com/google/common/cache/CacheBuilder<TK;TV;>;"
    invoke-static {p0}, Lorg/checkerframework/com/google/common/base/MoreObjects;->toStringHelper(Ljava/lang/Object;)Lorg/checkerframework/com/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    .line 998
    .local v0, "s":Lorg/checkerframework/com/google/common/base/MoreObjects$ToStringHelper;
    iget v1, p0, Lorg/checkerframework/com/google/common/cache/CacheBuilder;->initialCapacity:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 999
    const-string v3, "initialCapacity"

    invoke-virtual {v0, v3, v1}, Lorg/checkerframework/com/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;I)Lorg/checkerframework/com/google/common/base/MoreObjects$ToStringHelper;

    .line 1001
    :cond_0
    iget v1, p0, Lorg/checkerframework/com/google/common/cache/CacheBuilder;->concurrencyLevel:I

    if-eq v1, v2, :cond_1

    .line 1002
    const-string v2, "concurrencyLevel"

    invoke-virtual {v0, v2, v1}, Lorg/checkerframework/com/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;I)Lorg/checkerframework/com/google/common/base/MoreObjects$ToStringHelper;

    .line 1004
    :cond_1
    iget-wide v1, p0, Lorg/checkerframework/com/google/common/cache/CacheBuilder;->maximumSize:J

    const-wide/16 v3, -0x1

    cmp-long v5, v1, v3

    if-eqz v5, :cond_2

    .line 1005
    const-string v5, "maximumSize"

    invoke-virtual {v0, v5, v1, v2}, Lorg/checkerframework/com/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;J)Lorg/checkerframework/com/google/common/base/MoreObjects$ToStringHelper;

    .line 1007
    :cond_2
    iget-wide v1, p0, Lorg/checkerframework/com/google/common/cache/CacheBuilder;->maximumWeight:J

    cmp-long v5, v1, v3

    if-eqz v5, :cond_3

    .line 1008
    const-string v5, "maximumWeight"

    invoke-virtual {v0, v5, v1, v2}, Lorg/checkerframework/com/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;J)Lorg/checkerframework/com/google/common/base/MoreObjects$ToStringHelper;

    .line 1010
    :cond_3
    iget-wide v1, p0, Lorg/checkerframework/com/google/common/cache/CacheBuilder;->expireAfterWriteNanos:J

    cmp-long v1, v1, v3

    const-string v2, "ns"

    if-eqz v1, :cond_4

    .line 1011
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v5, p0, Lorg/checkerframework/com/google/common/cache/CacheBuilder;->expireAfterWriteNanos:J

    invoke-virtual {v1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v5, "expireAfterWrite"

    invoke-virtual {v0, v5, v1}, Lorg/checkerframework/com/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lorg/checkerframework/com/google/common/base/MoreObjects$ToStringHelper;

    .line 1013
    :cond_4
    iget-wide v5, p0, Lorg/checkerframework/com/google/common/cache/CacheBuilder;->expireAfterAccessNanos:J

    cmp-long v1, v5, v3

    if-eqz v1, :cond_5

    .line 1014
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v3, p0, Lorg/checkerframework/com/google/common/cache/CacheBuilder;->expireAfterAccessNanos:J

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "expireAfterAccess"

    invoke-virtual {v0, v2, v1}, Lorg/checkerframework/com/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lorg/checkerframework/com/google/common/base/MoreObjects$ToStringHelper;

    .line 1016
    :cond_5
    iget-object v1, p0, Lorg/checkerframework/com/google/common/cache/CacheBuilder;->keyStrength:Lorg/checkerframework/com/google/common/cache/LocalCache$Strength;

    if-eqz v1, :cond_6

    .line 1017
    invoke-virtual {v1}, Lorg/checkerframework/com/google/common/cache/LocalCache$Strength;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/checkerframework/com/google/common/base/Ascii;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "keyStrength"

    invoke-virtual {v0, v2, v1}, Lorg/checkerframework/com/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lorg/checkerframework/com/google/common/base/MoreObjects$ToStringHelper;

    .line 1019
    :cond_6
    iget-object v1, p0, Lorg/checkerframework/com/google/common/cache/CacheBuilder;->valueStrength:Lorg/checkerframework/com/google/common/cache/LocalCache$Strength;

    if-eqz v1, :cond_7

    .line 1020
    invoke-virtual {v1}, Lorg/checkerframework/com/google/common/cache/LocalCache$Strength;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/checkerframework/com/google/common/base/Ascii;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "valueStrength"

    invoke-virtual {v0, v2, v1}, Lorg/checkerframework/com/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lorg/checkerframework/com/google/common/base/MoreObjects$ToStringHelper;

    .line 1022
    :cond_7
    iget-object v1, p0, Lorg/checkerframework/com/google/common/cache/CacheBuilder;->keyEquivalence:Lorg/checkerframework/com/google/common/base/Equivalence;

    if-eqz v1, :cond_8

    .line 1023
    const-string v1, "keyEquivalence"

    invoke-virtual {v0, v1}, Lorg/checkerframework/com/google/common/base/MoreObjects$ToStringHelper;->addValue(Ljava/lang/Object;)Lorg/checkerframework/com/google/common/base/MoreObjects$ToStringHelper;

    .line 1025
    :cond_8
    iget-object v1, p0, Lorg/checkerframework/com/google/common/cache/CacheBuilder;->valueEquivalence:Lorg/checkerframework/com/google/common/base/Equivalence;

    if-eqz v1, :cond_9

    .line 1026
    const-string v1, "valueEquivalence"

    invoke-virtual {v0, v1}, Lorg/checkerframework/com/google/common/base/MoreObjects$ToStringHelper;->addValue(Ljava/lang/Object;)Lorg/checkerframework/com/google/common/base/MoreObjects$ToStringHelper;

    .line 1028
    :cond_9
    iget-object v1, p0, Lorg/checkerframework/com/google/common/cache/CacheBuilder;->removalListener:Lorg/checkerframework/com/google/common/cache/RemovalListener;

    if-eqz v1, :cond_a

    .line 1029
    const-string v1, "removalListener"

    invoke-virtual {v0, v1}, Lorg/checkerframework/com/google/common/base/MoreObjects$ToStringHelper;->addValue(Ljava/lang/Object;)Lorg/checkerframework/com/google/common/base/MoreObjects$ToStringHelper;

    .line 1031
    :cond_a
    invoke-virtual {v0}, Lorg/checkerframework/com/google/common/base/MoreObjects$ToStringHelper;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method valueEquivalence(Lorg/checkerframework/com/google/common/base/Equivalence;)Lorg/checkerframework/com/google/common/cache/CacheBuilder;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/google/common/base/Equivalence<",
            "Ljava/lang/Object;",
            ">;)",
            "Lorg/checkerframework/com/google/common/cache/CacheBuilder<",
            "TK;TV;>;"
        }
    .end annotation

    .line 334
    .local p0, "this":Lorg/checkerframework/com/google/common/cache/CacheBuilder;, "Lorg/checkerframework/com/google/common/cache/CacheBuilder<TK;TV;>;"
    .local p1, "equivalence":Lorg/checkerframework/com/google/common/base/Equivalence;, "Lorg/checkerframework/com/google/common/base/Equivalence<Ljava/lang/Object;>;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/cache/CacheBuilder;->valueEquivalence:Lorg/checkerframework/com/google/common/base/Equivalence;

    if-nez v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const-string v2, "value equivalence was already set to %s"

    invoke-static {v1, v2, v0}, Lorg/checkerframework/com/google/common/base/Preconditions;->checkState(ZLjava/lang/String;Ljava/lang/Object;)V

    .line 336
    invoke-static {p1}, Lorg/checkerframework/com/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/google/common/base/Equivalence;

    iput-object v0, p0, Lorg/checkerframework/com/google/common/cache/CacheBuilder;->valueEquivalence:Lorg/checkerframework/com/google/common/base/Equivalence;

    .line 337
    return-object p0
.end method

.method public weakKeys()Lorg/checkerframework/com/google/common/cache/CacheBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/checkerframework/com/google/common/cache/CacheBuilder<",
            "TK;TV;>;"
        }
    .end annotation

    .line 566
    .local p0, "this":Lorg/checkerframework/com/google/common/cache/CacheBuilder;, "Lorg/checkerframework/com/google/common/cache/CacheBuilder<TK;TV;>;"
    sget-object v0, Lorg/checkerframework/com/google/common/cache/LocalCache$Strength;->WEAK:Lorg/checkerframework/com/google/common/cache/LocalCache$Strength;

    invoke-virtual {p0, v0}, Lorg/checkerframework/com/google/common/cache/CacheBuilder;->setKeyStrength(Lorg/checkerframework/com/google/common/cache/LocalCache$Strength;)Lorg/checkerframework/com/google/common/cache/CacheBuilder;

    move-result-object v0

    return-object v0
.end method

.method public weakValues()Lorg/checkerframework/com/google/common/cache/CacheBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/checkerframework/com/google/common/cache/CacheBuilder<",
            "TK;TV;>;"
        }
    .end annotation

    .line 598
    .local p0, "this":Lorg/checkerframework/com/google/common/cache/CacheBuilder;, "Lorg/checkerframework/com/google/common/cache/CacheBuilder<TK;TV;>;"
    sget-object v0, Lorg/checkerframework/com/google/common/cache/LocalCache$Strength;->WEAK:Lorg/checkerframework/com/google/common/cache/LocalCache$Strength;

    invoke-virtual {p0, v0}, Lorg/checkerframework/com/google/common/cache/CacheBuilder;->setValueStrength(Lorg/checkerframework/com/google/common/cache/LocalCache$Strength;)Lorg/checkerframework/com/google/common/cache/CacheBuilder;

    move-result-object v0

    return-object v0
.end method

.method public weigher(Lorg/checkerframework/com/google/common/cache/Weigher;)Lorg/checkerframework/com/google/common/cache/CacheBuilder;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K1:TK;V1:TV;>(",
            "Lorg/checkerframework/com/google/common/cache/Weigher<",
            "-TK1;-TV1;>;)",
            "Lorg/checkerframework/com/google/common/cache/CacheBuilder<",
            "TK1;TV1;>;"
        }
    .end annotation

    .line 520
    .local p0, "this":Lorg/checkerframework/com/google/common/cache/CacheBuilder;, "Lorg/checkerframework/com/google/common/cache/CacheBuilder<TK;TV;>;"
    .local p1, "weigher":Lorg/checkerframework/com/google/common/cache/Weigher;, "Lorg/checkerframework/com/google/common/cache/Weigher<-TK1;-TV1;>;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/cache/CacheBuilder;->weigher:Lorg/checkerframework/com/google/common/cache/Weigher;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    invoke-static {v0}, Lorg/checkerframework/com/google/common/base/Preconditions;->checkState(Z)V

    .line 521
    iget-boolean v0, p0, Lorg/checkerframework/com/google/common/cache/CacheBuilder;->strictParsing:Z

    if-eqz v0, :cond_2

    .line 522
    iget-wide v3, p0, Lorg/checkerframework/com/google/common/cache/CacheBuilder;->maximumSize:J

    const-wide/16 v5, -0x1

    cmp-long v0, v3, v5

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    const-string v0, "weigher can not be combined with maximum size"

    invoke-static {v1, v0, v3, v4}, Lorg/checkerframework/com/google/common/base/Preconditions;->checkState(ZLjava/lang/String;J)V

    .line 530
    :cond_2
    move-object v0, p0

    .line 531
    .local v0, "me":Lorg/checkerframework/com/google/common/cache/CacheBuilder;, "Lorg/checkerframework/com/google/common/cache/CacheBuilder<TK1;TV1;>;"
    invoke-static {p1}, Lorg/checkerframework/com/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/checkerframework/com/google/common/cache/Weigher;

    iput-object v1, v0, Lorg/checkerframework/com/google/common/cache/CacheBuilder;->weigher:Lorg/checkerframework/com/google/common/cache/Weigher;

    .line 532
    return-object v0
.end method
