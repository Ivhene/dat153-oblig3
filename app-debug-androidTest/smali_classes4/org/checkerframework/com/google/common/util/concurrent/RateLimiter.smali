.class public abstract Lorg/checkerframework/com/google/common/util/concurrent/RateLimiter;
.super Ljava/lang/Object;
.source "RateLimiter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/checkerframework/com/google/common/util/concurrent/RateLimiter$SleepingStopwatch;
    }
.end annotation


# instance fields
.field private volatile mutexDoNotUseDirectly:Ljava/lang/Object;

.field private final stopwatch:Lorg/checkerframework/com/google/common/util/concurrent/RateLimiter$SleepingStopwatch;


# direct methods
.method constructor <init>(Lorg/checkerframework/com/google/common/util/concurrent/RateLimiter$SleepingStopwatch;)V
    .locals 1
    .param p1, "stopwatch"    # Lorg/checkerframework/com/google/common/util/concurrent/RateLimiter$SleepingStopwatch;

    .line 232
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 233
    invoke-static {p1}, Lorg/checkerframework/com/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/google/common/util/concurrent/RateLimiter$SleepingStopwatch;

    iput-object v0, p0, Lorg/checkerframework/com/google/common/util/concurrent/RateLimiter;->stopwatch:Lorg/checkerframework/com/google/common/util/concurrent/RateLimiter$SleepingStopwatch;

    .line 234
    return-void
.end method

.method private canAcquire(JJ)Z
    .locals 2
    .param p1, "nowMicros"    # J
    .param p3, "timeoutMicros"    # J

    .line 425
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/google/common/util/concurrent/RateLimiter;->queryEarliestAvailable(J)J

    move-result-wide v0

    sub-long/2addr v0, p3

    cmp-long v0, v0, p1

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static checkPermits(I)V
    .locals 2
    .param p0, "permits"    # I

    .line 493
    if-lez p0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "Requested permits (%s) must be positive"

    invoke-static {v0, v1, p0}, Lorg/checkerframework/com/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;I)V

    .line 494
    return-void
.end method

.method public static create(D)Lorg/checkerframework/com/google/common/util/concurrent/RateLimiter;
    .locals 1
    .param p0, "permitsPerSecond"    # D

    .line 129
    invoke-static {}, Lorg/checkerframework/com/google/common/util/concurrent/RateLimiter$SleepingStopwatch;->createFromSystemTimer()Lorg/checkerframework/com/google/common/util/concurrent/RateLimiter$SleepingStopwatch;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lorg/checkerframework/com/google/common/util/concurrent/RateLimiter;->create(DLorg/checkerframework/com/google/common/util/concurrent/RateLimiter$SleepingStopwatch;)Lorg/checkerframework/com/google/common/util/concurrent/RateLimiter;

    move-result-object v0

    return-object v0
.end method

.method public static create(DJLjava/util/concurrent/TimeUnit;)Lorg/checkerframework/com/google/common/util/concurrent/RateLimiter;
    .locals 10
    .param p0, "permitsPerSecond"    # D
    .param p2, "warmupPeriod"    # J
    .param p4, "unit"    # Ljava/util/concurrent/TimeUnit;

    .line 193
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "warmupPeriod must not be negative: %s"

    invoke-static {v0, v1, p2, p3}, Lorg/checkerframework/com/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;J)V

    .line 194
    const-wide/high16 v7, 0x4008000000000000L    # 3.0

    .line 195
    invoke-static {}, Lorg/checkerframework/com/google/common/util/concurrent/RateLimiter$SleepingStopwatch;->createFromSystemTimer()Lorg/checkerframework/com/google/common/util/concurrent/RateLimiter$SleepingStopwatch;

    move-result-object v9

    .line 194
    move-wide v2, p0

    move-wide v4, p2

    move-object v6, p4

    invoke-static/range {v2 .. v9}, Lorg/checkerframework/com/google/common/util/concurrent/RateLimiter;->create(DJLjava/util/concurrent/TimeUnit;DLorg/checkerframework/com/google/common/util/concurrent/RateLimiter$SleepingStopwatch;)Lorg/checkerframework/com/google/common/util/concurrent/RateLimiter;

    move-result-object v0

    return-object v0
.end method

.method static create(DJLjava/util/concurrent/TimeUnit;DLorg/checkerframework/com/google/common/util/concurrent/RateLimiter$SleepingStopwatch;)Lorg/checkerframework/com/google/common/util/concurrent/RateLimiter;
    .locals 8
    .param p0, "permitsPerSecond"    # D
    .param p2, "warmupPeriod"    # J
    .param p4, "unit"    # Ljava/util/concurrent/TimeUnit;
    .param p5, "coldFactor"    # D
    .param p7, "stopwatch"    # Lorg/checkerframework/com/google/common/util/concurrent/RateLimiter$SleepingStopwatch;

    .line 205
    new-instance v7, Lorg/checkerframework/com/google/common/util/concurrent/SmoothRateLimiter$SmoothWarmingUp;

    move-object v0, v7

    move-object v1, p7

    move-wide v2, p2

    move-object v4, p4

    move-wide v5, p5

    invoke-direct/range {v0 .. v6}, Lorg/checkerframework/com/google/common/util/concurrent/SmoothRateLimiter$SmoothWarmingUp;-><init>(Lorg/checkerframework/com/google/common/util/concurrent/RateLimiter$SleepingStopwatch;JLjava/util/concurrent/TimeUnit;D)V

    .line 206
    .local v0, "rateLimiter":Lorg/checkerframework/com/google/common/util/concurrent/RateLimiter;
    invoke-virtual {v0, p0, p1}, Lorg/checkerframework/com/google/common/util/concurrent/RateLimiter;->setRate(D)V

    .line 207
    return-object v0
.end method

.method public static create(DLjava/time/Duration;)Lorg/checkerframework/com/google/common/util/concurrent/RateLimiter;
    .locals 3
    .param p0, "permitsPerSecond"    # D
    .param p2, "warmupPeriod"    # Ljava/time/Duration;

    .line 164
    invoke-static {p2}, Lorg/checkerframework/com/google/common/util/concurrent/Internal;->saturatedToNanos(Ljava/time/Duration;)J

    move-result-wide v0

    sget-object v2, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {p0, p1, v0, v1, v2}, Lorg/checkerframework/com/google/common/util/concurrent/RateLimiter;->create(DJLjava/util/concurrent/TimeUnit;)Lorg/checkerframework/com/google/common/util/concurrent/RateLimiter;

    move-result-object v0

    return-object v0
.end method

.method static create(DLorg/checkerframework/com/google/common/util/concurrent/RateLimiter$SleepingStopwatch;)Lorg/checkerframework/com/google/common/util/concurrent/RateLimiter;
    .locals 3
    .param p0, "permitsPerSecond"    # D
    .param p2, "stopwatch"    # Lorg/checkerframework/com/google/common/util/concurrent/RateLimiter$SleepingStopwatch;

    .line 134
    new-instance v0, Lorg/checkerframework/com/google/common/util/concurrent/SmoothRateLimiter$SmoothBursty;

    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    invoke-direct {v0, p2, v1, v2}, Lorg/checkerframework/com/google/common/util/concurrent/SmoothRateLimiter$SmoothBursty;-><init>(Lorg/checkerframework/com/google/common/util/concurrent/RateLimiter$SleepingStopwatch;D)V

    .line 135
    .local v0, "rateLimiter":Lorg/checkerframework/com/google/common/util/concurrent/RateLimiter;
    invoke-virtual {v0, p0, p1}, Lorg/checkerframework/com/google/common/util/concurrent/RateLimiter;->setRate(D)V

    .line 136
    return-object v0
.end method

.method private mutex()Ljava/lang/Object;
    .locals 2

    .line 220
    iget-object v0, p0, Lorg/checkerframework/com/google/common/util/concurrent/RateLimiter;->mutexDoNotUseDirectly:Ljava/lang/Object;

    .line 221
    .local v0, "mutex":Ljava/lang/Object;
    if-nez v0, :cond_1

    .line 222
    monitor-enter p0

    .line 223
    :try_start_0
    iget-object v1, p0, Lorg/checkerframework/com/google/common/util/concurrent/RateLimiter;->mutexDoNotUseDirectly:Ljava/lang/Object;

    move-object v0, v1

    .line 224
    if-nez v0, :cond_0

    .line 225
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    move-object v0, v1

    iput-object v1, p0, Lorg/checkerframework/com/google/common/util/concurrent/RateLimiter;->mutexDoNotUseDirectly:Ljava/lang/Object;

    .line 227
    :cond_0
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 229
    :cond_1
    :goto_0
    return-object v0
.end method


# virtual methods
.method public acquire()D
    .locals 2

    .line 289
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/checkerframework/com/google/common/util/concurrent/RateLimiter;->acquire(I)D

    move-result-wide v0

    return-wide v0
.end method

.method public acquire(I)D
    .locals 8
    .param p1, "permits"    # I

    .line 303
    invoke-virtual {p0, p1}, Lorg/checkerframework/com/google/common/util/concurrent/RateLimiter;->reserve(I)J

    move-result-wide v0

    .line 304
    .local v0, "microsToWait":J
    iget-object v2, p0, Lorg/checkerframework/com/google/common/util/concurrent/RateLimiter;->stopwatch:Lorg/checkerframework/com/google/common/util/concurrent/RateLimiter$SleepingStopwatch;

    invoke-virtual {v2, v0, v1}, Lorg/checkerframework/com/google/common/util/concurrent/RateLimiter$SleepingStopwatch;->sleepMicrosUninterruptibly(J)V

    .line 305
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    long-to-double v4, v0

    mul-double/2addr v4, v2

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v6, 0x1

    invoke-virtual {v2, v6, v7}, Ljava/util/concurrent/TimeUnit;->toMicros(J)J

    move-result-wide v2

    long-to-double v2, v2

    div-double/2addr v4, v2

    return-wide v4
.end method

.method abstract doGetRate()D
.end method

.method abstract doSetRate(DJ)V
.end method

.method public final getRate()D
    .locals 3

    .line 271
    invoke-direct {p0}, Lorg/checkerframework/com/google/common/util/concurrent/RateLimiter;->mutex()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 272
    :try_start_0
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/util/concurrent/RateLimiter;->doGetRate()D

    move-result-wide v1

    monitor-exit v0

    return-wide v1

    .line 273
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method abstract queryEarliestAvailable(J)J
.end method

.method final reserve(I)J
    .locals 3
    .param p1, "permits"    # I

    .line 315
    invoke-static {p1}, Lorg/checkerframework/com/google/common/util/concurrent/RateLimiter;->checkPermits(I)V

    .line 316
    invoke-direct {p0}, Lorg/checkerframework/com/google/common/util/concurrent/RateLimiter;->mutex()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 317
    :try_start_0
    iget-object v1, p0, Lorg/checkerframework/com/google/common/util/concurrent/RateLimiter;->stopwatch:Lorg/checkerframework/com/google/common/util/concurrent/RateLimiter$SleepingStopwatch;

    invoke-virtual {v1}, Lorg/checkerframework/com/google/common/util/concurrent/RateLimiter$SleepingStopwatch;->readMicros()J

    move-result-wide v1

    invoke-virtual {p0, p1, v1, v2}, Lorg/checkerframework/com/google/common/util/concurrent/RateLimiter;->reserveAndGetWaitLength(IJ)J

    move-result-wide v1

    monitor-exit v0

    return-wide v1

    .line 318
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method final reserveAndGetWaitLength(IJ)J
    .locals 6
    .param p1, "permits"    # I
    .param p2, "nowMicros"    # J

    .line 434
    invoke-virtual {p0, p1, p2, p3}, Lorg/checkerframework/com/google/common/util/concurrent/RateLimiter;->reserveEarliestAvailable(IJ)J

    move-result-wide v0

    .line 435
    .local v0, "momentAvailable":J
    sub-long v2, v0, p2

    const-wide/16 v4, 0x0

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    return-wide v2
.end method

.method abstract reserveEarliestAvailable(IJ)J
.end method

.method public final setRate(D)V
    .locals 3
    .param p1, "permitsPerSecond"    # D

    .line 255
    const-wide/16 v0, 0x0

    cmpl-double v0, p1, v0

    if-lez v0, :cond_0

    .line 256
    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "rate must be positive"

    .line 255
    invoke-static {v0, v1}, Lorg/checkerframework/com/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 257
    invoke-direct {p0}, Lorg/checkerframework/com/google/common/util/concurrent/RateLimiter;->mutex()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 258
    :try_start_0
    iget-object v1, p0, Lorg/checkerframework/com/google/common/util/concurrent/RateLimiter;->stopwatch:Lorg/checkerframework/com/google/common/util/concurrent/RateLimiter$SleepingStopwatch;

    invoke-virtual {v1}, Lorg/checkerframework/com/google/common/util/concurrent/RateLimiter$SleepingStopwatch;->readMicros()J

    move-result-wide v1

    invoke-virtual {p0, p1, p2, v1, v2}, Lorg/checkerframework/com/google/common/util/concurrent/RateLimiter;->doSetRate(DJ)V

    .line 259
    monitor-exit v0

    .line 260
    return-void

    .line 259
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 457
    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/util/concurrent/RateLimiter;->getRate()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "RateLimiter[stableRate=%3.1fqps]"

    invoke-static {v0, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public tryAcquire()Z
    .locals 4

    .line 378
    const-wide/16 v0, 0x0

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MICROSECONDS:Ljava/util/concurrent/TimeUnit;

    const/4 v3, 0x1

    invoke-virtual {p0, v3, v0, v1, v2}, Lorg/checkerframework/com/google/common/util/concurrent/RateLimiter;->tryAcquire(IJLjava/util/concurrent/TimeUnit;)Z

    move-result v0

    return v0
.end method

.method public tryAcquire(I)Z
    .locals 3
    .param p1, "permits"    # I

    .line 365
    const-wide/16 v0, 0x0

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MICROSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p0, p1, v0, v1, v2}, Lorg/checkerframework/com/google/common/util/concurrent/RateLimiter;->tryAcquire(IJLjava/util/concurrent/TimeUnit;)Z

    move-result v0

    return v0
.end method

.method public tryAcquire(IJLjava/util/concurrent/TimeUnit;)Z
    .locals 7
    .param p1, "permits"    # I
    .param p2, "timeout"    # J
    .param p4, "unit"    # Ljava/util/concurrent/TimeUnit;

    .line 409
    invoke-virtual {p4, p2, p3}, Ljava/util/concurrent/TimeUnit;->toMicros(J)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    .line 410
    .local v0, "timeoutMicros":J
    invoke-static {p1}, Lorg/checkerframework/com/google/common/util/concurrent/RateLimiter;->checkPermits(I)V

    .line 412
    invoke-direct {p0}, Lorg/checkerframework/com/google/common/util/concurrent/RateLimiter;->mutex()Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 413
    :try_start_0
    iget-object v3, p0, Lorg/checkerframework/com/google/common/util/concurrent/RateLimiter;->stopwatch:Lorg/checkerframework/com/google/common/util/concurrent/RateLimiter$SleepingStopwatch;

    invoke-virtual {v3}, Lorg/checkerframework/com/google/common/util/concurrent/RateLimiter$SleepingStopwatch;->readMicros()J

    move-result-wide v3

    .line 414
    .local v3, "nowMicros":J
    invoke-direct {p0, v3, v4, v0, v1}, Lorg/checkerframework/com/google/common/util/concurrent/RateLimiter;->canAcquire(JJ)Z

    move-result v5

    if-nez v5, :cond_0

    .line 415
    monitor-exit v2

    const/4 v2, 0x0

    return v2

    .line 417
    :cond_0
    invoke-virtual {p0, p1, v3, v4}, Lorg/checkerframework/com/google/common/util/concurrent/RateLimiter;->reserveAndGetWaitLength(IJ)J

    move-result-wide v5

    move-wide v3, v5

    .line 419
    .local v3, "microsToWait":J
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 420
    iget-object v2, p0, Lorg/checkerframework/com/google/common/util/concurrent/RateLimiter;->stopwatch:Lorg/checkerframework/com/google/common/util/concurrent/RateLimiter$SleepingStopwatch;

    invoke-virtual {v2, v3, v4}, Lorg/checkerframework/com/google/common/util/concurrent/RateLimiter$SleepingStopwatch;->sleepMicrosUninterruptibly(J)V

    .line 421
    const/4 v2, 0x1

    return v2

    .line 419
    .end local v3    # "microsToWait":J
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method

.method public tryAcquire(ILjava/time/Duration;)Z
    .locals 3
    .param p1, "permits"    # I
    .param p2, "timeout"    # Ljava/time/Duration;

    .line 393
    invoke-static {p2}, Lorg/checkerframework/com/google/common/util/concurrent/Internal;->saturatedToNanos(Ljava/time/Duration;)J

    move-result-wide v0

    sget-object v2, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p0, p1, v0, v1, v2}, Lorg/checkerframework/com/google/common/util/concurrent/RateLimiter;->tryAcquire(IJLjava/util/concurrent/TimeUnit;)Z

    move-result v0

    return v0
.end method

.method public tryAcquire(JLjava/util/concurrent/TimeUnit;)Z
    .locals 1
    .param p1, "timeout"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;

    .line 351
    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1, p2, p3}, Lorg/checkerframework/com/google/common/util/concurrent/RateLimiter;->tryAcquire(IJLjava/util/concurrent/TimeUnit;)Z

    move-result v0

    return v0
.end method

.method public tryAcquire(Ljava/time/Duration;)Z
    .locals 4
    .param p1, "timeout"    # Ljava/time/Duration;

    .line 334
    invoke-static {p1}, Lorg/checkerframework/com/google/common/util/concurrent/Internal;->saturatedToNanos(Ljava/time/Duration;)J

    move-result-wide v0

    sget-object v2, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    const/4 v3, 0x1

    invoke-virtual {p0, v3, v0, v1, v2}, Lorg/checkerframework/com/google/common/util/concurrent/RateLimiter;->tryAcquire(IJLjava/util/concurrent/TimeUnit;)Z

    move-result v0

    return v0
.end method
