.class public abstract Lorg/checkerframework/com/google/common/util/concurrent/AbstractScheduledService;
.super Ljava/lang/Object;
.source "AbstractScheduledService.java"

# interfaces
.implements Lorg/checkerframework/com/google/common/util/concurrent/Service;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/checkerframework/com/google/common/util/concurrent/AbstractScheduledService$CustomScheduler;,
        Lorg/checkerframework/com/google/common/util/concurrent/AbstractScheduledService$ServiceDelegate;,
        Lorg/checkerframework/com/google/common/util/concurrent/AbstractScheduledService$Scheduler;
    }
.end annotation


# static fields
.field private static final logger:Ljava/util/logging/Logger;


# instance fields
.field private final delegate:Lorg/checkerframework/com/google/common/util/concurrent/AbstractService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 103
    const-class v0, Lorg/checkerframework/com/google/common/util/concurrent/AbstractScheduledService;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/checkerframework/com/google/common/util/concurrent/AbstractScheduledService;->logger:Ljava/util/logging/Logger;

    return-void
.end method

.method protected constructor <init>()V
    .locals 2

    .line 313
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 198
    new-instance v0, Lorg/checkerframework/com/google/common/util/concurrent/AbstractScheduledService$ServiceDelegate;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/checkerframework/com/google/common/util/concurrent/AbstractScheduledService$ServiceDelegate;-><init>(Lorg/checkerframework/com/google/common/util/concurrent/AbstractScheduledService;Lorg/checkerframework/com/google/common/util/concurrent/AbstractScheduledService$1;)V

    iput-object v0, p0, Lorg/checkerframework/com/google/common/util/concurrent/AbstractScheduledService;->delegate:Lorg/checkerframework/com/google/common/util/concurrent/AbstractService;

    .line 313
    return-void
.end method

.method static synthetic access$400()Ljava/util/logging/Logger;
    .locals 1

    .line 102
    sget-object v0, Lorg/checkerframework/com/google/common/util/concurrent/AbstractScheduledService;->logger:Ljava/util/logging/Logger;

    return-object v0
.end method

.method static synthetic access$500(Lorg/checkerframework/com/google/common/util/concurrent/AbstractScheduledService;)Lorg/checkerframework/com/google/common/util/concurrent/AbstractService;
    .locals 1
    .param p0, "x0"    # Lorg/checkerframework/com/google/common/util/concurrent/AbstractScheduledService;

    .line 102
    iget-object v0, p0, Lorg/checkerframework/com/google/common/util/concurrent/AbstractScheduledService;->delegate:Lorg/checkerframework/com/google/common/util/concurrent/AbstractService;

    return-object v0
.end method


# virtual methods
.method public final addListener(Lorg/checkerframework/com/google/common/util/concurrent/Service$Listener;Ljava/util/concurrent/Executor;)V
    .locals 1
    .param p1, "listener"    # Lorg/checkerframework/com/google/common/util/concurrent/Service$Listener;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;

    .line 416
    iget-object v0, p0, Lorg/checkerframework/com/google/common/util/concurrent/AbstractScheduledService;->delegate:Lorg/checkerframework/com/google/common/util/concurrent/AbstractService;

    invoke-virtual {v0, p1, p2}, Lorg/checkerframework/com/google/common/util/concurrent/AbstractService;->addListener(Lorg/checkerframework/com/google/common/util/concurrent/Service$Listener;Ljava/util/concurrent/Executor;)V

    .line 417
    return-void
.end method

.method public final awaitRunning()V
    .locals 1

    .line 444
    iget-object v0, p0, Lorg/checkerframework/com/google/common/util/concurrent/AbstractScheduledService;->delegate:Lorg/checkerframework/com/google/common/util/concurrent/AbstractService;

    invoke-virtual {v0}, Lorg/checkerframework/com/google/common/util/concurrent/AbstractService;->awaitRunning()V

    .line 445
    return-void
.end method

.method public final awaitRunning(JLjava/util/concurrent/TimeUnit;)V
    .locals 1
    .param p1, "timeout"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    .line 450
    iget-object v0, p0, Lorg/checkerframework/com/google/common/util/concurrent/AbstractScheduledService;->delegate:Lorg/checkerframework/com/google/common/util/concurrent/AbstractService;

    invoke-virtual {v0, p1, p2, p3}, Lorg/checkerframework/com/google/common/util/concurrent/AbstractService;->awaitRunning(JLjava/util/concurrent/TimeUnit;)V

    .line 451
    return-void
.end method

.method public final awaitTerminated()V
    .locals 1

    .line 456
    iget-object v0, p0, Lorg/checkerframework/com/google/common/util/concurrent/AbstractScheduledService;->delegate:Lorg/checkerframework/com/google/common/util/concurrent/AbstractService;

    invoke-virtual {v0}, Lorg/checkerframework/com/google/common/util/concurrent/AbstractService;->awaitTerminated()V

    .line 457
    return-void
.end method

.method public final awaitTerminated(JLjava/util/concurrent/TimeUnit;)V
    .locals 1
    .param p1, "timeout"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    .line 462
    iget-object v0, p0, Lorg/checkerframework/com/google/common/util/concurrent/AbstractScheduledService;->delegate:Lorg/checkerframework/com/google/common/util/concurrent/AbstractService;

    invoke-virtual {v0, p1, p2, p3}, Lorg/checkerframework/com/google/common/util/concurrent/AbstractService;->awaitTerminated(JLjava/util/concurrent/TimeUnit;)V

    .line 463
    return-void
.end method

.method protected executor()Ljava/util/concurrent/ScheduledExecutorService;
    .locals 3

    .line 365
    new-instance v0, Lorg/checkerframework/com/google/common/util/concurrent/AbstractScheduledService$1ThreadFactoryImpl;

    invoke-direct {v0, p0}, Lorg/checkerframework/com/google/common/util/concurrent/AbstractScheduledService$1ThreadFactoryImpl;-><init>(Lorg/checkerframework/com/google/common/util/concurrent/AbstractScheduledService;)V

    .line 366
    invoke-static {v0}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    .line 372
    .local v0, "executor":Ljava/util/concurrent/ScheduledExecutorService;
    new-instance v1, Lorg/checkerframework/com/google/common/util/concurrent/AbstractScheduledService$1;

    invoke-direct {v1, p0, v0}, Lorg/checkerframework/com/google/common/util/concurrent/AbstractScheduledService$1;-><init>(Lorg/checkerframework/com/google/common/util/concurrent/AbstractScheduledService;Ljava/util/concurrent/ScheduledExecutorService;)V

    .line 384
    invoke-static {}, Lorg/checkerframework/com/google/common/util/concurrent/MoreExecutors;->directExecutor()Ljava/util/concurrent/Executor;

    move-result-object v2

    .line 372
    invoke-virtual {p0, v1, v2}, Lorg/checkerframework/com/google/common/util/concurrent/AbstractScheduledService;->addListener(Lorg/checkerframework/com/google/common/util/concurrent/Service$Listener;Ljava/util/concurrent/Executor;)V

    .line 385
    return-object v0
.end method

.method public final failureCause()Ljava/lang/Throwable;
    .locals 1

    .line 422
    iget-object v0, p0, Lorg/checkerframework/com/google/common/util/concurrent/AbstractScheduledService;->delegate:Lorg/checkerframework/com/google/common/util/concurrent/AbstractService;

    invoke-virtual {v0}, Lorg/checkerframework/com/google/common/util/concurrent/AbstractService;->failureCause()Ljava/lang/Throwable;

    move-result-object v0

    return-object v0
.end method

.method public final isRunning()Z
    .locals 1

    .line 405
    iget-object v0, p0, Lorg/checkerframework/com/google/common/util/concurrent/AbstractScheduledService;->delegate:Lorg/checkerframework/com/google/common/util/concurrent/AbstractService;

    invoke-virtual {v0}, Lorg/checkerframework/com/google/common/util/concurrent/AbstractService;->isRunning()Z

    move-result v0

    return v0
.end method

.method protected abstract runOneIteration()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method protected abstract scheduler()Lorg/checkerframework/com/google/common/util/concurrent/AbstractScheduledService$Scheduler;
.end method

.method protected serviceName()Ljava/lang/String;
    .locals 1

    .line 395
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected shutDown()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 334
    return-void
.end method

.method public final startAsync()Lorg/checkerframework/com/google/common/util/concurrent/Service;
    .locals 1

    .line 429
    iget-object v0, p0, Lorg/checkerframework/com/google/common/util/concurrent/AbstractScheduledService;->delegate:Lorg/checkerframework/com/google/common/util/concurrent/AbstractService;

    invoke-virtual {v0}, Lorg/checkerframework/com/google/common/util/concurrent/AbstractService;->startAsync()Lorg/checkerframework/com/google/common/util/concurrent/Service;

    .line 430
    return-object p0
.end method

.method protected startUp()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 327
    return-void
.end method

.method public final state()Lorg/checkerframework/com/google/common/util/concurrent/Service$State;
    .locals 1

    .line 410
    iget-object v0, p0, Lorg/checkerframework/com/google/common/util/concurrent/AbstractScheduledService;->delegate:Lorg/checkerframework/com/google/common/util/concurrent/AbstractService;

    invoke-virtual {v0}, Lorg/checkerframework/com/google/common/util/concurrent/AbstractService;->state()Lorg/checkerframework/com/google/common/util/concurrent/Service$State;

    move-result-object v0

    return-object v0
.end method

.method public final stopAsync()Lorg/checkerframework/com/google/common/util/concurrent/Service;
    .locals 1

    .line 437
    iget-object v0, p0, Lorg/checkerframework/com/google/common/util/concurrent/AbstractScheduledService;->delegate:Lorg/checkerframework/com/google/common/util/concurrent/AbstractService;

    invoke-virtual {v0}, Lorg/checkerframework/com/google/common/util/concurrent/AbstractService;->stopAsync()Lorg/checkerframework/com/google/common/util/concurrent/Service;

    .line 438
    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 400
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/util/concurrent/AbstractScheduledService;->serviceName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/util/concurrent/AbstractScheduledService;->state()Lorg/checkerframework/com/google/common/util/concurrent/Service$State;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
