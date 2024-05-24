.class Lorg/checkerframework/org/apache/commons/lang3/concurrent/EventCountCircuitBreaker$StateStrategyOpen;
.super Lorg/checkerframework/org/apache/commons/lang3/concurrent/EventCountCircuitBreaker$StateStrategy;
.source "EventCountCircuitBreaker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/org/apache/commons/lang3/concurrent/EventCountCircuitBreaker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "StateStrategyOpen"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 545
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/checkerframework/org/apache/commons/lang3/concurrent/EventCountCircuitBreaker$StateStrategy;-><init>(Lorg/checkerframework/org/apache/commons/lang3/concurrent/EventCountCircuitBreaker$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lorg/checkerframework/org/apache/commons/lang3/concurrent/EventCountCircuitBreaker$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/checkerframework/org/apache/commons/lang3/concurrent/EventCountCircuitBreaker$1;

    .line 545
    invoke-direct {p0}, Lorg/checkerframework/org/apache/commons/lang3/concurrent/EventCountCircuitBreaker$StateStrategyOpen;-><init>()V

    return-void
.end method


# virtual methods
.method protected fetchCheckInterval(Lorg/checkerframework/org/apache/commons/lang3/concurrent/EventCountCircuitBreaker;)J
    .locals 2
    .param p1, "breaker"    # Lorg/checkerframework/org/apache/commons/lang3/concurrent/EventCountCircuitBreaker;

    .line 562
    invoke-virtual {p1}, Lorg/checkerframework/org/apache/commons/lang3/concurrent/EventCountCircuitBreaker;->getClosingInterval()J

    move-result-wide v0

    return-wide v0
.end method

.method public isStateTransition(Lorg/checkerframework/org/apache/commons/lang3/concurrent/EventCountCircuitBreaker;Lorg/checkerframework/org/apache/commons/lang3/concurrent/EventCountCircuitBreaker$CheckIntervalData;Lorg/checkerframework/org/apache/commons/lang3/concurrent/EventCountCircuitBreaker$CheckIntervalData;)Z
    .locals 4
    .param p1, "breaker"    # Lorg/checkerframework/org/apache/commons/lang3/concurrent/EventCountCircuitBreaker;
    .param p2, "currentData"    # Lorg/checkerframework/org/apache/commons/lang3/concurrent/EventCountCircuitBreaker$CheckIntervalData;
    .param p3, "nextData"    # Lorg/checkerframework/org/apache/commons/lang3/concurrent/EventCountCircuitBreaker$CheckIntervalData;

    .line 552
    invoke-virtual {p3}, Lorg/checkerframework/org/apache/commons/lang3/concurrent/EventCountCircuitBreaker$CheckIntervalData;->getCheckIntervalStart()J

    move-result-wide v0

    .line 553
    invoke-virtual {p2}, Lorg/checkerframework/org/apache/commons/lang3/concurrent/EventCountCircuitBreaker$CheckIntervalData;->getCheckIntervalStart()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 554
    invoke-virtual {p2}, Lorg/checkerframework/org/apache/commons/lang3/concurrent/EventCountCircuitBreaker$CheckIntervalData;->getEventCount()I

    move-result v0

    invoke-virtual {p1}, Lorg/checkerframework/org/apache/commons/lang3/concurrent/EventCountCircuitBreaker;->getClosingThreshold()I

    move-result v1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 552
    :goto_0
    return v0
.end method
