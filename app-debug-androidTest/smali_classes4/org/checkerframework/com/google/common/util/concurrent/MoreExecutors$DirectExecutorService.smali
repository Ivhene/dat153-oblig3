.class final Lorg/checkerframework/com/google/common/util/concurrent/MoreExecutors$DirectExecutorService;
.super Lorg/checkerframework/com/google/common/util/concurrent/AbstractListeningExecutorService;
.source "MoreExecutors.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/com/google/common/util/concurrent/MoreExecutors;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "DirectExecutorService"
.end annotation


# instance fields
.field private final lock:Ljava/lang/Object;

.field private runningTasks:I

.field private shutdown:Z


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 301
    invoke-direct {p0}, Lorg/checkerframework/com/google/common/util/concurrent/AbstractListeningExecutorService;-><init>()V

    .line 303
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/checkerframework/com/google/common/util/concurrent/MoreExecutors$DirectExecutorService;->lock:Ljava/lang/Object;

    .line 312
    const/4 v0, 0x0

    iput v0, p0, Lorg/checkerframework/com/google/common/util/concurrent/MoreExecutors$DirectExecutorService;->runningTasks:I

    .line 315
    iput-boolean v0, p0, Lorg/checkerframework/com/google/common/util/concurrent/MoreExecutors$DirectExecutorService;->shutdown:Z

    return-void
.end method

.method synthetic constructor <init>(Lorg/checkerframework/com/google/common/util/concurrent/MoreExecutors$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/checkerframework/com/google/common/util/concurrent/MoreExecutors$1;

    .line 301
    invoke-direct {p0}, Lorg/checkerframework/com/google/common/util/concurrent/MoreExecutors$DirectExecutorService;-><init>()V

    return-void
.end method

.method private endTask()V
    .locals 3

    .line 393
    iget-object v0, p0, Lorg/checkerframework/com/google/common/util/concurrent/MoreExecutors$DirectExecutorService;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 394
    :try_start_0
    iget v1, p0, Lorg/checkerframework/com/google/common/util/concurrent/MoreExecutors$DirectExecutorService;->runningTasks:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lorg/checkerframework/com/google/common/util/concurrent/MoreExecutors$DirectExecutorService;->runningTasks:I

    .line 395
    .local v1, "numRunning":I
    if-nez v1, :cond_0

    .line 396
    iget-object v2, p0, Lorg/checkerframework/com/google/common/util/concurrent/MoreExecutors$DirectExecutorService;->lock:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    .line 398
    .end local v1    # "numRunning":I
    :cond_0
    monitor-exit v0

    .line 399
    return-void

    .line 398
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private startTask()V
    .locals 3

    .line 383
    iget-object v0, p0, Lorg/checkerframework/com/google/common/util/concurrent/MoreExecutors$DirectExecutorService;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 384
    :try_start_0
    iget-boolean v1, p0, Lorg/checkerframework/com/google/common/util/concurrent/MoreExecutors$DirectExecutorService;->shutdown:Z

    if-nez v1, :cond_0

    .line 387
    iget v1, p0, Lorg/checkerframework/com/google/common/util/concurrent/MoreExecutors$DirectExecutorService;->runningTasks:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/checkerframework/com/google/common/util/concurrent/MoreExecutors$DirectExecutorService;->runningTasks:I

    .line 388
    monitor-exit v0

    .line 389
    return-void

    .line 385
    :cond_0
    new-instance v1, Ljava/util/concurrent/RejectedExecutionException;

    const-string v2, "Executor already shutdown"

    invoke-direct {v1, v2}, Ljava/util/concurrent/RejectedExecutionException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 388
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public awaitTermination(JLjava/util/concurrent/TimeUnit;)Z
    .locals 7
    .param p1, "timeout"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 361
    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    .line 362
    .local v0, "nanos":J
    iget-object v2, p0, Lorg/checkerframework/com/google/common/util/concurrent/MoreExecutors$DirectExecutorService;->lock:Ljava/lang/Object;

    monitor-enter v2

    .line 364
    :goto_0
    :try_start_0
    iget-boolean v3, p0, Lorg/checkerframework/com/google/common/util/concurrent/MoreExecutors$DirectExecutorService;->shutdown:Z

    if-eqz v3, :cond_0

    iget v3, p0, Lorg/checkerframework/com/google/common/util/concurrent/MoreExecutors$DirectExecutorService;->runningTasks:I

    if-nez v3, :cond_0

    .line 365
    monitor-exit v2

    const/4 v2, 0x1

    return v2

    .line 366
    :cond_0
    const-wide/16 v3, 0x0

    cmp-long v3, v0, v3

    if-gtz v3, :cond_1

    .line 367
    monitor-exit v2

    const/4 v2, 0x0

    return v2

    .line 369
    :cond_1
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v3

    .line 370
    .local v3, "now":J
    sget-object v5, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    iget-object v6, p0, Lorg/checkerframework/com/google/common/util/concurrent/MoreExecutors$DirectExecutorService;->lock:Ljava/lang/Object;

    invoke-virtual {v5, v6, v0, v1}, Ljava/util/concurrent/TimeUnit;->timedWait(Ljava/lang/Object;J)V

    .line 371
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v5

    sub-long/2addr v5, v3

    sub-long/2addr v0, v5

    .line 372
    .end local v3    # "now":J
    goto :goto_0

    .line 374
    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public execute(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "command"    # Ljava/lang/Runnable;

    .line 320
    invoke-direct {p0}, Lorg/checkerframework/com/google/common/util/concurrent/MoreExecutors$DirectExecutorService;->startTask()V

    .line 322
    :try_start_0
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 324
    invoke-direct {p0}, Lorg/checkerframework/com/google/common/util/concurrent/MoreExecutors$DirectExecutorService;->endTask()V

    .line 325
    nop

    .line 326
    return-void

    .line 324
    :catchall_0
    move-exception v0

    invoke-direct {p0}, Lorg/checkerframework/com/google/common/util/concurrent/MoreExecutors$DirectExecutorService;->endTask()V

    .line 325
    throw v0
.end method

.method public isShutdown()Z
    .locals 2

    .line 330
    iget-object v0, p0, Lorg/checkerframework/com/google/common/util/concurrent/MoreExecutors$DirectExecutorService;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 331
    :try_start_0
    iget-boolean v1, p0, Lorg/checkerframework/com/google/common/util/concurrent/MoreExecutors$DirectExecutorService;->shutdown:Z

    monitor-exit v0

    return v1

    .line 332
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public isTerminated()Z
    .locals 2

    .line 354
    iget-object v0, p0, Lorg/checkerframework/com/google/common/util/concurrent/MoreExecutors$DirectExecutorService;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 355
    :try_start_0
    iget-boolean v1, p0, Lorg/checkerframework/com/google/common/util/concurrent/MoreExecutors$DirectExecutorService;->shutdown:Z

    if-eqz v1, :cond_0

    iget v1, p0, Lorg/checkerframework/com/google/common/util/concurrent/MoreExecutors$DirectExecutorService;->runningTasks:I

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0

    return v1

    .line 356
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public shutdown()V
    .locals 2

    .line 337
    iget-object v0, p0, Lorg/checkerframework/com/google/common/util/concurrent/MoreExecutors$DirectExecutorService;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 338
    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lorg/checkerframework/com/google/common/util/concurrent/MoreExecutors$DirectExecutorService;->shutdown:Z

    .line 339
    iget v1, p0, Lorg/checkerframework/com/google/common/util/concurrent/MoreExecutors$DirectExecutorService;->runningTasks:I

    if-nez v1, :cond_0

    .line 340
    iget-object v1, p0, Lorg/checkerframework/com/google/common/util/concurrent/MoreExecutors$DirectExecutorService;->lock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 342
    :cond_0
    monitor-exit v0

    .line 343
    return-void

    .line 342
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public shutdownNow()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation

    .line 348
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/util/concurrent/MoreExecutors$DirectExecutorService;->shutdown()V

    .line 349
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
