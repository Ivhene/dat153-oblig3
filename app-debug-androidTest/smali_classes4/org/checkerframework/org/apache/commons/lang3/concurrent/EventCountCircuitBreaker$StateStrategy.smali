.class abstract Lorg/checkerframework/org/apache/commons/lang3/concurrent/EventCountCircuitBreaker$StateStrategy;
.super Ljava/lang/Object;
.source "EventCountCircuitBreaker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/org/apache/commons/lang3/concurrent/EventCountCircuitBreaker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "StateStrategy"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 482
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/checkerframework/org/apache/commons/lang3/concurrent/EventCountCircuitBreaker$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/checkerframework/org/apache/commons/lang3/concurrent/EventCountCircuitBreaker$1;

    .line 482
    invoke-direct {p0}, Lorg/checkerframework/org/apache/commons/lang3/concurrent/EventCountCircuitBreaker$StateStrategy;-><init>()V

    return-void
.end method


# virtual methods
.method protected abstract fetchCheckInterval(Lorg/checkerframework/org/apache/commons/lang3/concurrent/EventCountCircuitBreaker;)J
.end method

.method public isCheckIntervalFinished(Lorg/checkerframework/org/apache/commons/lang3/concurrent/EventCountCircuitBreaker;Lorg/checkerframework/org/apache/commons/lang3/concurrent/EventCountCircuitBreaker$CheckIntervalData;J)Z
    .locals 4
    .param p1, "breaker"    # Lorg/checkerframework/org/apache/commons/lang3/concurrent/EventCountCircuitBreaker;
    .param p2, "currentData"    # Lorg/checkerframework/org/apache/commons/lang3/concurrent/EventCountCircuitBreaker$CheckIntervalData;
    .param p3, "now"    # J

    .line 493
    invoke-virtual {p2}, Lorg/checkerframework/org/apache/commons/lang3/concurrent/EventCountCircuitBreaker$CheckIntervalData;->getCheckIntervalStart()J

    move-result-wide v0

    sub-long v0, p3, v0

    invoke-virtual {p0, p1}, Lorg/checkerframework/org/apache/commons/lang3/concurrent/EventCountCircuitBreaker$StateStrategy;->fetchCheckInterval(Lorg/checkerframework/org/apache/commons/lang3/concurrent/EventCountCircuitBreaker;)J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public abstract isStateTransition(Lorg/checkerframework/org/apache/commons/lang3/concurrent/EventCountCircuitBreaker;Lorg/checkerframework/org/apache/commons/lang3/concurrent/EventCountCircuitBreaker$CheckIntervalData;Lorg/checkerframework/org/apache/commons/lang3/concurrent/EventCountCircuitBreaker$CheckIntervalData;)Z
.end method
