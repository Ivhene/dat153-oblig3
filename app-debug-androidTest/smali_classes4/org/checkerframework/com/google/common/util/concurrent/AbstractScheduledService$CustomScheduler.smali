.class public abstract Lorg/checkerframework/com/google/common/util/concurrent/AbstractScheduledService$CustomScheduler;
.super Lorg/checkerframework/com/google/common/util/concurrent/AbstractScheduledService$Scheduler;
.source "AbstractScheduledService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/com/google/common/util/concurrent/AbstractScheduledService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "CustomScheduler"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/checkerframework/com/google/common/util/concurrent/AbstractScheduledService$CustomScheduler$Schedule;,
        Lorg/checkerframework/com/google/common/util/concurrent/AbstractScheduledService$CustomScheduler$ReschedulableCallable;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 474
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/checkerframework/com/google/common/util/concurrent/AbstractScheduledService$Scheduler;-><init>(Lorg/checkerframework/com/google/common/util/concurrent/AbstractScheduledService$1;)V

    return-void
.end method


# virtual methods
.method protected abstract getNextSchedule()Lorg/checkerframework/com/google/common/util/concurrent/AbstractScheduledService$CustomScheduler$Schedule;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method final schedule(Lorg/checkerframework/com/google/common/util/concurrent/AbstractService;Ljava/util/concurrent/ScheduledExecutorService;Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    .locals 1
    .param p1, "service"    # Lorg/checkerframework/com/google/common/util/concurrent/AbstractService;
    .param p2, "executor"    # Ljava/util/concurrent/ScheduledExecutorService;
    .param p3, "runnable"    # Ljava/lang/Runnable;
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

    .line 588
    new-instance v0, Lorg/checkerframework/com/google/common/util/concurrent/AbstractScheduledService$CustomScheduler$ReschedulableCallable;

    invoke-direct {v0, p0, p1, p2, p3}, Lorg/checkerframework/com/google/common/util/concurrent/AbstractScheduledService$CustomScheduler$ReschedulableCallable;-><init>(Lorg/checkerframework/com/google/common/util/concurrent/AbstractScheduledService$CustomScheduler;Lorg/checkerframework/com/google/common/util/concurrent/AbstractService;Ljava/util/concurrent/ScheduledExecutorService;Ljava/lang/Runnable;)V

    .line 589
    .local v0, "task":Lorg/checkerframework/com/google/common/util/concurrent/AbstractScheduledService$CustomScheduler$ReschedulableCallable;
    invoke-virtual {v0}, Lorg/checkerframework/com/google/common/util/concurrent/AbstractScheduledService$CustomScheduler$ReschedulableCallable;->reschedule()V

    .line 590
    return-object v0
.end method
