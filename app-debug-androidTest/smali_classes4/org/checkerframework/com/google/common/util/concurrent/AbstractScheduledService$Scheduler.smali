.class public abstract Lorg/checkerframework/com/google/common/util/concurrent/AbstractScheduledService$Scheduler;
.super Ljava/lang/Object;
.source "AbstractScheduledService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/com/google/common/util/concurrent/AbstractScheduledService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Scheduler"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 194
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/checkerframework/com/google/common/util/concurrent/AbstractScheduledService$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/checkerframework/com/google/common/util/concurrent/AbstractScheduledService$1;

    .line 117
    invoke-direct {p0}, Lorg/checkerframework/com/google/common/util/concurrent/AbstractScheduledService$Scheduler;-><init>()V

    return-void
.end method

.method public static newFixedDelaySchedule(JJLjava/util/concurrent/TimeUnit;)Lorg/checkerframework/com/google/common/util/concurrent/AbstractScheduledService$Scheduler;
    .locals 8
    .param p0, "initialDelay"    # J
    .param p2, "delay"    # J
    .param p4, "unit"    # Ljava/util/concurrent/TimeUnit;

    .line 144
    invoke-static {p4}, Lorg/checkerframework/com/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "delay must be > 0, found %s"

    invoke-static {v0, v1, p2, p3}, Lorg/checkerframework/com/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;J)V

    .line 146
    new-instance v0, Lorg/checkerframework/com/google/common/util/concurrent/AbstractScheduledService$Scheduler$1;

    move-object v2, v0

    move-wide v3, p0

    move-wide v5, p2

    move-object v7, p4

    invoke-direct/range {v2 .. v7}, Lorg/checkerframework/com/google/common/util/concurrent/AbstractScheduledService$Scheduler$1;-><init>(JJLjava/util/concurrent/TimeUnit;)V

    return-object v0
.end method

.method public static newFixedDelaySchedule(Ljava/time/Duration;Ljava/time/Duration;)Lorg/checkerframework/com/google/common/util/concurrent/AbstractScheduledService$Scheduler;
    .locals 5
    .param p0, "initialDelay"    # Ljava/time/Duration;
    .param p1, "delay"    # Ljava/time/Duration;

    .line 128
    nop

    .line 129
    invoke-static {p0}, Lorg/checkerframework/com/google/common/util/concurrent/Internal;->saturatedToNanos(Ljava/time/Duration;)J

    move-result-wide v0

    invoke-static {p1}, Lorg/checkerframework/com/google/common/util/concurrent/Internal;->saturatedToNanos(Ljava/time/Duration;)J

    move-result-wide v2

    sget-object v4, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    .line 128
    invoke-static {v0, v1, v2, v3, v4}, Lorg/checkerframework/com/google/common/util/concurrent/AbstractScheduledService$Scheduler;->newFixedDelaySchedule(JJLjava/util/concurrent/TimeUnit;)Lorg/checkerframework/com/google/common/util/concurrent/AbstractScheduledService$Scheduler;

    move-result-object v0

    return-object v0
.end method

.method public static newFixedRateSchedule(JJLjava/util/concurrent/TimeUnit;)Lorg/checkerframework/com/google/common/util/concurrent/AbstractScheduledService$Scheduler;
    .locals 8
    .param p0, "initialDelay"    # J
    .param p2, "period"    # J
    .param p4, "unit"    # Ljava/util/concurrent/TimeUnit;

    .line 179
    invoke-static {p4}, Lorg/checkerframework/com/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "period must be > 0, found %s"

    invoke-static {v0, v1, p2, p3}, Lorg/checkerframework/com/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;J)V

    .line 181
    new-instance v0, Lorg/checkerframework/com/google/common/util/concurrent/AbstractScheduledService$Scheduler$2;

    move-object v2, v0

    move-wide v3, p0

    move-wide v5, p2

    move-object v7, p4

    invoke-direct/range {v2 .. v7}, Lorg/checkerframework/com/google/common/util/concurrent/AbstractScheduledService$Scheduler$2;-><init>(JJLjava/util/concurrent/TimeUnit;)V

    return-object v0
.end method

.method public static newFixedRateSchedule(Ljava/time/Duration;Ljava/time/Duration;)Lorg/checkerframework/com/google/common/util/concurrent/AbstractScheduledService$Scheduler;
    .locals 5
    .param p0, "initialDelay"    # Ljava/time/Duration;
    .param p1, "period"    # Ljava/time/Duration;

    .line 164
    nop

    .line 165
    invoke-static {p0}, Lorg/checkerframework/com/google/common/util/concurrent/Internal;->saturatedToNanos(Ljava/time/Duration;)J

    move-result-wide v0

    invoke-static {p1}, Lorg/checkerframework/com/google/common/util/concurrent/Internal;->saturatedToNanos(Ljava/time/Duration;)J

    move-result-wide v2

    sget-object v4, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    .line 164
    invoke-static {v0, v1, v2, v3, v4}, Lorg/checkerframework/com/google/common/util/concurrent/AbstractScheduledService$Scheduler;->newFixedRateSchedule(JJLjava/util/concurrent/TimeUnit;)Lorg/checkerframework/com/google/common/util/concurrent/AbstractScheduledService$Scheduler;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method abstract schedule(Lorg/checkerframework/com/google/common/util/concurrent/AbstractService;Ljava/util/concurrent/ScheduledExecutorService;Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/google/common/util/concurrent/AbstractService;",
            "Ljava/util/concurrent/ScheduledExecutorService;",
            "Ljava/lang/Runnable;",
            ")",
            "Ljava/util/concurrent/Future<",
            "*>;"
        }
    .end annotation
.end method
