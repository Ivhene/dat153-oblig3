.class public final Lorg/checkerframework/com/google/common/util/concurrent/AbstractScheduledService$CustomScheduler$Schedule;
.super Ljava/lang/Object;
.source "AbstractScheduledService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/com/google/common/util/concurrent/AbstractScheduledService$CustomScheduler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1c
    name = "Schedule"
.end annotation


# instance fields
.field private final delay:J

.field private final unit:Ljava/util/concurrent/TimeUnit;


# direct methods
.method public constructor <init>(JLjava/util/concurrent/TimeUnit;)V
    .locals 1
    .param p1, "delay"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;

    .line 609
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 610
    iput-wide p1, p0, Lorg/checkerframework/com/google/common/util/concurrent/AbstractScheduledService$CustomScheduler$Schedule;->delay:J

    .line 611
    invoke-static {p3}, Lorg/checkerframework/com/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/TimeUnit;

    iput-object v0, p0, Lorg/checkerframework/com/google/common/util/concurrent/AbstractScheduledService$CustomScheduler$Schedule;->unit:Ljava/util/concurrent/TimeUnit;

    .line 612
    return-void
.end method

.method static synthetic access$800(Lorg/checkerframework/com/google/common/util/concurrent/AbstractScheduledService$CustomScheduler$Schedule;)J
    .locals 2
    .param p0, "x0"    # Lorg/checkerframework/com/google/common/util/concurrent/AbstractScheduledService$CustomScheduler$Schedule;

    .line 600
    iget-wide v0, p0, Lorg/checkerframework/com/google/common/util/concurrent/AbstractScheduledService$CustomScheduler$Schedule;->delay:J

    return-wide v0
.end method

.method static synthetic access$900(Lorg/checkerframework/com/google/common/util/concurrent/AbstractScheduledService$CustomScheduler$Schedule;)Ljava/util/concurrent/TimeUnit;
    .locals 1
    .param p0, "x0"    # Lorg/checkerframework/com/google/common/util/concurrent/AbstractScheduledService$CustomScheduler$Schedule;

    .line 600
    iget-object v0, p0, Lorg/checkerframework/com/google/common/util/concurrent/AbstractScheduledService$CustomScheduler$Schedule;->unit:Ljava/util/concurrent/TimeUnit;

    return-object v0
.end method
