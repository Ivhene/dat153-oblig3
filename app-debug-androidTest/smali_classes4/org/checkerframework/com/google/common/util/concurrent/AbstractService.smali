.class public abstract Lorg/checkerframework/com/google/common/util/concurrent/AbstractService;
.super Ljava/lang/Object;
.source "AbstractService.java"

# interfaces
.implements Lorg/checkerframework/com/google/common/util/concurrent/Service;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/checkerframework/com/google/common/util/concurrent/AbstractService$StateSnapshot;,
        Lorg/checkerframework/com/google/common/util/concurrent/AbstractService$IsStoppedGuard;,
        Lorg/checkerframework/com/google/common/util/concurrent/AbstractService$HasReachedRunningGuard;,
        Lorg/checkerframework/com/google/common/util/concurrent/AbstractService$IsStoppableGuard;,
        Lorg/checkerframework/com/google/common/util/concurrent/AbstractService$IsStartableGuard;
    }
.end annotation


# static fields
.field private static final RUNNING_EVENT:Lorg/checkerframework/com/google/common/util/concurrent/ListenerCallQueue$Event;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/checkerframework/com/google/common/util/concurrent/ListenerCallQueue$Event<",
            "Lorg/checkerframework/com/google/common/util/concurrent/Service$Listener;",
            ">;"
        }
    .end annotation
.end field

.field private static final STARTING_EVENT:Lorg/checkerframework/com/google/common/util/concurrent/ListenerCallQueue$Event;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/checkerframework/com/google/common/util/concurrent/ListenerCallQueue$Event<",
            "Lorg/checkerframework/com/google/common/util/concurrent/Service$Listener;",
            ">;"
        }
    .end annotation
.end field

.field private static final STOPPING_FROM_RUNNING_EVENT:Lorg/checkerframework/com/google/common/util/concurrent/ListenerCallQueue$Event;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/checkerframework/com/google/common/util/concurrent/ListenerCallQueue$Event<",
            "Lorg/checkerframework/com/google/common/util/concurrent/Service$Listener;",
            ">;"
        }
    .end annotation
.end field

.field private static final STOPPING_FROM_STARTING_EVENT:Lorg/checkerframework/com/google/common/util/concurrent/ListenerCallQueue$Event;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/checkerframework/com/google/common/util/concurrent/ListenerCallQueue$Event<",
            "Lorg/checkerframework/com/google/common/util/concurrent/Service$Listener;",
            ">;"
        }
    .end annotation
.end field

.field private static final TERMINATED_FROM_NEW_EVENT:Lorg/checkerframework/com/google/common/util/concurrent/ListenerCallQueue$Event;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/checkerframework/com/google/common/util/concurrent/ListenerCallQueue$Event<",
            "Lorg/checkerframework/com/google/common/util/concurrent/Service$Listener;",
            ">;"
        }
    .end annotation
.end field

.field private static final TERMINATED_FROM_RUNNING_EVENT:Lorg/checkerframework/com/google/common/util/concurrent/ListenerCallQueue$Event;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/checkerframework/com/google/common/util/concurrent/ListenerCallQueue$Event<",
            "Lorg/checkerframework/com/google/common/util/concurrent/Service$Listener;",
            ">;"
        }
    .end annotation
.end field

.field private static final TERMINATED_FROM_STARTING_EVENT:Lorg/checkerframework/com/google/common/util/concurrent/ListenerCallQueue$Event;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/checkerframework/com/google/common/util/concurrent/ListenerCallQueue$Event<",
            "Lorg/checkerframework/com/google/common/util/concurrent/Service$Listener;",
            ">;"
        }
    .end annotation
.end field

.field private static final TERMINATED_FROM_STOPPING_EVENT:Lorg/checkerframework/com/google/common/util/concurrent/ListenerCallQueue$Event;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/checkerframework/com/google/common/util/concurrent/ListenerCallQueue$Event<",
            "Lorg/checkerframework/com/google/common/util/concurrent/Service$Listener;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final hasReachedRunning:Lorg/checkerframework/com/google/common/util/concurrent/Monitor$Guard;

.field private final isStartable:Lorg/checkerframework/com/google/common/util/concurrent/Monitor$Guard;

.field private final isStoppable:Lorg/checkerframework/com/google/common/util/concurrent/Monitor$Guard;

.field private final isStopped:Lorg/checkerframework/com/google/common/util/concurrent/Monitor$Guard;

.field private final listeners:Lorg/checkerframework/com/google/common/util/concurrent/ListenerCallQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/checkerframework/com/google/common/util/concurrent/ListenerCallQueue<",
            "Lorg/checkerframework/com/google/common/util/concurrent/Service$Listener;",
            ">;"
        }
    .end annotation
.end field

.field private final monitor:Lorg/checkerframework/com/google/common/util/concurrent/Monitor;

.field private volatile snapshot:Lorg/checkerframework/com/google/common/util/concurrent/AbstractService$StateSnapshot;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 53
    new-instance v0, Lorg/checkerframework/com/google/common/util/concurrent/AbstractService$1;

    invoke-direct {v0}, Lorg/checkerframework/com/google/common/util/concurrent/AbstractService$1;-><init>()V

    sput-object v0, Lorg/checkerframework/com/google/common/util/concurrent/AbstractService;->STARTING_EVENT:Lorg/checkerframework/com/google/common/util/concurrent/ListenerCallQueue$Event;

    .line 65
    new-instance v0, Lorg/checkerframework/com/google/common/util/concurrent/AbstractService$2;

    invoke-direct {v0}, Lorg/checkerframework/com/google/common/util/concurrent/AbstractService$2;-><init>()V

    sput-object v0, Lorg/checkerframework/com/google/common/util/concurrent/AbstractService;->RUNNING_EVENT:Lorg/checkerframework/com/google/common/util/concurrent/ListenerCallQueue$Event;

    .line 77
    sget-object v0, Lorg/checkerframework/com/google/common/util/concurrent/Service$State;->STARTING:Lorg/checkerframework/com/google/common/util/concurrent/Service$State;

    .line 78
    invoke-static {v0}, Lorg/checkerframework/com/google/common/util/concurrent/AbstractService;->stoppingEvent(Lorg/checkerframework/com/google/common/util/concurrent/Service$State;)Lorg/checkerframework/com/google/common/util/concurrent/ListenerCallQueue$Event;

    move-result-object v0

    sput-object v0, Lorg/checkerframework/com/google/common/util/concurrent/AbstractService;->STOPPING_FROM_STARTING_EVENT:Lorg/checkerframework/com/google/common/util/concurrent/ListenerCallQueue$Event;

    .line 79
    sget-object v0, Lorg/checkerframework/com/google/common/util/concurrent/Service$State;->RUNNING:Lorg/checkerframework/com/google/common/util/concurrent/Service$State;

    .line 80
    invoke-static {v0}, Lorg/checkerframework/com/google/common/util/concurrent/AbstractService;->stoppingEvent(Lorg/checkerframework/com/google/common/util/concurrent/Service$State;)Lorg/checkerframework/com/google/common/util/concurrent/ListenerCallQueue$Event;

    move-result-object v0

    sput-object v0, Lorg/checkerframework/com/google/common/util/concurrent/AbstractService;->STOPPING_FROM_RUNNING_EVENT:Lorg/checkerframework/com/google/common/util/concurrent/ListenerCallQueue$Event;

    .line 82
    sget-object v0, Lorg/checkerframework/com/google/common/util/concurrent/Service$State;->NEW:Lorg/checkerframework/com/google/common/util/concurrent/Service$State;

    .line 83
    invoke-static {v0}, Lorg/checkerframework/com/google/common/util/concurrent/AbstractService;->terminatedEvent(Lorg/checkerframework/com/google/common/util/concurrent/Service$State;)Lorg/checkerframework/com/google/common/util/concurrent/ListenerCallQueue$Event;

    move-result-object v0

    sput-object v0, Lorg/checkerframework/com/google/common/util/concurrent/AbstractService;->TERMINATED_FROM_NEW_EVENT:Lorg/checkerframework/com/google/common/util/concurrent/ListenerCallQueue$Event;

    .line 84
    sget-object v0, Lorg/checkerframework/com/google/common/util/concurrent/Service$State;->STARTING:Lorg/checkerframework/com/google/common/util/concurrent/Service$State;

    .line 85
    invoke-static {v0}, Lorg/checkerframework/com/google/common/util/concurrent/AbstractService;->terminatedEvent(Lorg/checkerframework/com/google/common/util/concurrent/Service$State;)Lorg/checkerframework/com/google/common/util/concurrent/ListenerCallQueue$Event;

    move-result-object v0

    sput-object v0, Lorg/checkerframework/com/google/common/util/concurrent/AbstractService;->TERMINATED_FROM_STARTING_EVENT:Lorg/checkerframework/com/google/common/util/concurrent/ListenerCallQueue$Event;

    .line 86
    sget-object v0, Lorg/checkerframework/com/google/common/util/concurrent/Service$State;->RUNNING:Lorg/checkerframework/com/google/common/util/concurrent/Service$State;

    .line 87
    invoke-static {v0}, Lorg/checkerframework/com/google/common/util/concurrent/AbstractService;->terminatedEvent(Lorg/checkerframework/com/google/common/util/concurrent/Service$State;)Lorg/checkerframework/com/google/common/util/concurrent/ListenerCallQueue$Event;

    move-result-object v0

    sput-object v0, Lorg/checkerframework/com/google/common/util/concurrent/AbstractService;->TERMINATED_FROM_RUNNING_EVENT:Lorg/checkerframework/com/google/common/util/concurrent/ListenerCallQueue$Event;

    .line 88
    sget-object v0, Lorg/checkerframework/com/google/common/util/concurrent/Service$State;->STOPPING:Lorg/checkerframework/com/google/common/util/concurrent/Service$State;

    .line 89
    invoke-static {v0}, Lorg/checkerframework/com/google/common/util/concurrent/AbstractService;->terminatedEvent(Lorg/checkerframework/com/google/common/util/concurrent/Service$State;)Lorg/checkerframework/com/google/common/util/concurrent/ListenerCallQueue$Event;

    move-result-object v0

    sput-object v0, Lorg/checkerframework/com/google/common/util/concurrent/AbstractService;->TERMINATED_FROM_STOPPING_EVENT:Lorg/checkerframework/com/google/common/util/concurrent/ListenerCallQueue$Event;

    .line 88
    return-void
.end method

.method protected constructor <init>()V
    .locals 2

    .line 192
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 119
    new-instance v0, Lorg/checkerframework/com/google/common/util/concurrent/Monitor;

    invoke-direct {v0}, Lorg/checkerframework/com/google/common/util/concurrent/Monitor;-><init>()V

    iput-object v0, p0, Lorg/checkerframework/com/google/common/util/concurrent/AbstractService;->monitor:Lorg/checkerframework/com/google/common/util/concurrent/Monitor;

    .line 121
    new-instance v0, Lorg/checkerframework/com/google/common/util/concurrent/AbstractService$IsStartableGuard;

    invoke-direct {v0, p0}, Lorg/checkerframework/com/google/common/util/concurrent/AbstractService$IsStartableGuard;-><init>(Lorg/checkerframework/com/google/common/util/concurrent/AbstractService;)V

    iput-object v0, p0, Lorg/checkerframework/com/google/common/util/concurrent/AbstractService;->isStartable:Lorg/checkerframework/com/google/common/util/concurrent/Monitor$Guard;

    .line 135
    new-instance v0, Lorg/checkerframework/com/google/common/util/concurrent/AbstractService$IsStoppableGuard;

    invoke-direct {v0, p0}, Lorg/checkerframework/com/google/common/util/concurrent/AbstractService$IsStoppableGuard;-><init>(Lorg/checkerframework/com/google/common/util/concurrent/AbstractService;)V

    iput-object v0, p0, Lorg/checkerframework/com/google/common/util/concurrent/AbstractService;->isStoppable:Lorg/checkerframework/com/google/common/util/concurrent/Monitor$Guard;

    .line 149
    new-instance v0, Lorg/checkerframework/com/google/common/util/concurrent/AbstractService$HasReachedRunningGuard;

    invoke-direct {v0, p0}, Lorg/checkerframework/com/google/common/util/concurrent/AbstractService$HasReachedRunningGuard;-><init>(Lorg/checkerframework/com/google/common/util/concurrent/AbstractService;)V

    iput-object v0, p0, Lorg/checkerframework/com/google/common/util/concurrent/AbstractService;->hasReachedRunning:Lorg/checkerframework/com/google/common/util/concurrent/Monitor$Guard;

    .line 163
    new-instance v0, Lorg/checkerframework/com/google/common/util/concurrent/AbstractService$IsStoppedGuard;

    invoke-direct {v0, p0}, Lorg/checkerframework/com/google/common/util/concurrent/AbstractService$IsStoppedGuard;-><init>(Lorg/checkerframework/com/google/common/util/concurrent/AbstractService;)V

    iput-object v0, p0, Lorg/checkerframework/com/google/common/util/concurrent/AbstractService;->isStopped:Lorg/checkerframework/com/google/common/util/concurrent/Monitor$Guard;

    .line 178
    new-instance v0, Lorg/checkerframework/com/google/common/util/concurrent/ListenerCallQueue;

    invoke-direct {v0}, Lorg/checkerframework/com/google/common/util/concurrent/ListenerCallQueue;-><init>()V

    iput-object v0, p0, Lorg/checkerframework/com/google/common/util/concurrent/AbstractService;->listeners:Lorg/checkerframework/com/google/common/util/concurrent/ListenerCallQueue;

    .line 189
    new-instance v0, Lorg/checkerframework/com/google/common/util/concurrent/AbstractService$StateSnapshot;

    sget-object v1, Lorg/checkerframework/com/google/common/util/concurrent/Service$State;->NEW:Lorg/checkerframework/com/google/common/util/concurrent/Service$State;

    invoke-direct {v0, v1}, Lorg/checkerframework/com/google/common/util/concurrent/AbstractService$StateSnapshot;-><init>(Lorg/checkerframework/com/google/common/util/concurrent/Service$State;)V

    iput-object v0, p0, Lorg/checkerframework/com/google/common/util/concurrent/AbstractService;->snapshot:Lorg/checkerframework/com/google/common/util/concurrent/AbstractService$StateSnapshot;

    .line 192
    return-void
.end method

.method static synthetic access$000(Lorg/checkerframework/com/google/common/util/concurrent/AbstractService;)Lorg/checkerframework/com/google/common/util/concurrent/Monitor;
    .locals 1
    .param p0, "x0"    # Lorg/checkerframework/com/google/common/util/concurrent/AbstractService;

    .line 52
    iget-object v0, p0, Lorg/checkerframework/com/google/common/util/concurrent/AbstractService;->monitor:Lorg/checkerframework/com/google/common/util/concurrent/Monitor;

    return-object v0
.end method

.method private checkCurrentState(Lorg/checkerframework/com/google/common/util/concurrent/Service$State;)V
    .locals 5
    .param p1, "expected"    # Lorg/checkerframework/com/google/common/util/concurrent/Service$State;

    .line 360
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/util/concurrent/AbstractService;->state()Lorg/checkerframework/com/google/common/util/concurrent/Service$State;

    move-result-object v0

    .line 361
    .local v0, "actual":Lorg/checkerframework/com/google/common/util/concurrent/Service$State;
    if-eq v0, p1, :cond_1

    .line 362
    sget-object v1, Lorg/checkerframework/com/google/common/util/concurrent/Service$State;->FAILED:Lorg/checkerframework/com/google/common/util/concurrent/Service$State;

    const-string v2, " to be "

    const-string v3, "Expected the service "

    if-ne v0, v1, :cond_0

    .line 364
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", but the service has FAILED"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 366
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/util/concurrent/AbstractService;->failureCause()Ljava/lang/Throwable;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 368
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", but was "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 371
    :cond_1
    return-void
.end method

.method private dispatchListenerEvents()V
    .locals 1

    .line 500
    iget-object v0, p0, Lorg/checkerframework/com/google/common/util/concurrent/AbstractService;->monitor:Lorg/checkerframework/com/google/common/util/concurrent/Monitor;

    invoke-virtual {v0}, Lorg/checkerframework/com/google/common/util/concurrent/Monitor;->isOccupiedByCurrentThread()Z

    move-result v0

    if-nez v0, :cond_0

    .line 501
    iget-object v0, p0, Lorg/checkerframework/com/google/common/util/concurrent/AbstractService;->listeners:Lorg/checkerframework/com/google/common/util/concurrent/ListenerCallQueue;

    invoke-virtual {v0}, Lorg/checkerframework/com/google/common/util/concurrent/ListenerCallQueue;->dispatch()V

    .line 503
    :cond_0
    return-void
.end method

.method private enqueueFailedEvent(Lorg/checkerframework/com/google/common/util/concurrent/Service$State;Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "from"    # Lorg/checkerframework/com/google/common/util/concurrent/Service$State;
    .param p2, "cause"    # Ljava/lang/Throwable;

    .line 545
    iget-object v0, p0, Lorg/checkerframework/com/google/common/util/concurrent/AbstractService;->listeners:Lorg/checkerframework/com/google/common/util/concurrent/ListenerCallQueue;

    new-instance v1, Lorg/checkerframework/com/google/common/util/concurrent/AbstractService$5;

    invoke-direct {v1, p0, p1, p2}, Lorg/checkerframework/com/google/common/util/concurrent/AbstractService$5;-><init>(Lorg/checkerframework/com/google/common/util/concurrent/AbstractService;Lorg/checkerframework/com/google/common/util/concurrent/Service$State;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Lorg/checkerframework/com/google/common/util/concurrent/ListenerCallQueue;->enqueue(Lorg/checkerframework/com/google/common/util/concurrent/ListenerCallQueue$Event;)V

    .line 557
    return-void
.end method

.method private enqueueRunningEvent()V
    .locals 2

    .line 510
    iget-object v0, p0, Lorg/checkerframework/com/google/common/util/concurrent/AbstractService;->listeners:Lorg/checkerframework/com/google/common/util/concurrent/ListenerCallQueue;

    sget-object v1, Lorg/checkerframework/com/google/common/util/concurrent/AbstractService;->RUNNING_EVENT:Lorg/checkerframework/com/google/common/util/concurrent/ListenerCallQueue$Event;

    invoke-virtual {v0, v1}, Lorg/checkerframework/com/google/common/util/concurrent/ListenerCallQueue;->enqueue(Lorg/checkerframework/com/google/common/util/concurrent/ListenerCallQueue$Event;)V

    .line 511
    return-void
.end method

.method private enqueueStartingEvent()V
    .locals 2

    .line 506
    iget-object v0, p0, Lorg/checkerframework/com/google/common/util/concurrent/AbstractService;->listeners:Lorg/checkerframework/com/google/common/util/concurrent/ListenerCallQueue;

    sget-object v1, Lorg/checkerframework/com/google/common/util/concurrent/AbstractService;->STARTING_EVENT:Lorg/checkerframework/com/google/common/util/concurrent/ListenerCallQueue$Event;

    invoke-virtual {v0, v1}, Lorg/checkerframework/com/google/common/util/concurrent/ListenerCallQueue;->enqueue(Lorg/checkerframework/com/google/common/util/concurrent/ListenerCallQueue$Event;)V

    .line 507
    return-void
.end method

.method private enqueueStoppingEvent(Lorg/checkerframework/com/google/common/util/concurrent/Service$State;)V
    .locals 2
    .param p1, "from"    # Lorg/checkerframework/com/google/common/util/concurrent/Service$State;

    .line 514
    sget-object v0, Lorg/checkerframework/com/google/common/util/concurrent/Service$State;->STARTING:Lorg/checkerframework/com/google/common/util/concurrent/Service$State;

    if-ne p1, v0, :cond_0

    .line 515
    iget-object v0, p0, Lorg/checkerframework/com/google/common/util/concurrent/AbstractService;->listeners:Lorg/checkerframework/com/google/common/util/concurrent/ListenerCallQueue;

    sget-object v1, Lorg/checkerframework/com/google/common/util/concurrent/AbstractService;->STOPPING_FROM_STARTING_EVENT:Lorg/checkerframework/com/google/common/util/concurrent/ListenerCallQueue$Event;

    invoke-virtual {v0, v1}, Lorg/checkerframework/com/google/common/util/concurrent/ListenerCallQueue;->enqueue(Lorg/checkerframework/com/google/common/util/concurrent/ListenerCallQueue$Event;)V

    goto :goto_0

    .line 516
    :cond_0
    sget-object v0, Lorg/checkerframework/com/google/common/util/concurrent/Service$State;->RUNNING:Lorg/checkerframework/com/google/common/util/concurrent/Service$State;

    if-ne p1, v0, :cond_1

    .line 517
    iget-object v0, p0, Lorg/checkerframework/com/google/common/util/concurrent/AbstractService;->listeners:Lorg/checkerframework/com/google/common/util/concurrent/ListenerCallQueue;

    sget-object v1, Lorg/checkerframework/com/google/common/util/concurrent/AbstractService;->STOPPING_FROM_RUNNING_EVENT:Lorg/checkerframework/com/google/common/util/concurrent/ListenerCallQueue$Event;

    invoke-virtual {v0, v1}, Lorg/checkerframework/com/google/common/util/concurrent/ListenerCallQueue;->enqueue(Lorg/checkerframework/com/google/common/util/concurrent/ListenerCallQueue$Event;)V

    .line 521
    :goto_0
    return-void

    .line 519
    :cond_1
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method private enqueueTerminatedEvent(Lorg/checkerframework/com/google/common/util/concurrent/Service$State;)V
    .locals 2
    .param p1, "from"    # Lorg/checkerframework/com/google/common/util/concurrent/Service$State;

    .line 524
    sget-object v0, Lorg/checkerframework/com/google/common/util/concurrent/AbstractService$6;->$SwitchMap$com$google$common$util$concurrent$Service$State:[I

    invoke-virtual {p1}, Lorg/checkerframework/com/google/common/util/concurrent/Service$State;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 539
    :pswitch_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 535
    :pswitch_1
    iget-object v0, p0, Lorg/checkerframework/com/google/common/util/concurrent/AbstractService;->listeners:Lorg/checkerframework/com/google/common/util/concurrent/ListenerCallQueue;

    sget-object v1, Lorg/checkerframework/com/google/common/util/concurrent/AbstractService;->TERMINATED_FROM_STOPPING_EVENT:Lorg/checkerframework/com/google/common/util/concurrent/ListenerCallQueue$Event;

    invoke-virtual {v0, v1}, Lorg/checkerframework/com/google/common/util/concurrent/ListenerCallQueue;->enqueue(Lorg/checkerframework/com/google/common/util/concurrent/ListenerCallQueue$Event;)V

    .line 536
    goto :goto_0

    .line 532
    :pswitch_2
    iget-object v0, p0, Lorg/checkerframework/com/google/common/util/concurrent/AbstractService;->listeners:Lorg/checkerframework/com/google/common/util/concurrent/ListenerCallQueue;

    sget-object v1, Lorg/checkerframework/com/google/common/util/concurrent/AbstractService;->TERMINATED_FROM_RUNNING_EVENT:Lorg/checkerframework/com/google/common/util/concurrent/ListenerCallQueue$Event;

    invoke-virtual {v0, v1}, Lorg/checkerframework/com/google/common/util/concurrent/ListenerCallQueue;->enqueue(Lorg/checkerframework/com/google/common/util/concurrent/ListenerCallQueue$Event;)V

    .line 533
    goto :goto_0

    .line 529
    :pswitch_3
    iget-object v0, p0, Lorg/checkerframework/com/google/common/util/concurrent/AbstractService;->listeners:Lorg/checkerframework/com/google/common/util/concurrent/ListenerCallQueue;

    sget-object v1, Lorg/checkerframework/com/google/common/util/concurrent/AbstractService;->TERMINATED_FROM_STARTING_EVENT:Lorg/checkerframework/com/google/common/util/concurrent/ListenerCallQueue$Event;

    invoke-virtual {v0, v1}, Lorg/checkerframework/com/google/common/util/concurrent/ListenerCallQueue;->enqueue(Lorg/checkerframework/com/google/common/util/concurrent/ListenerCallQueue$Event;)V

    .line 530
    goto :goto_0

    .line 526
    :pswitch_4
    iget-object v0, p0, Lorg/checkerframework/com/google/common/util/concurrent/AbstractService;->listeners:Lorg/checkerframework/com/google/common/util/concurrent/ListenerCallQueue;

    sget-object v1, Lorg/checkerframework/com/google/common/util/concurrent/AbstractService;->TERMINATED_FROM_NEW_EVENT:Lorg/checkerframework/com/google/common/util/concurrent/ListenerCallQueue$Event;

    invoke-virtual {v0, v1}, Lorg/checkerframework/com/google/common/util/concurrent/ListenerCallQueue;->enqueue(Lorg/checkerframework/com/google/common/util/concurrent/ListenerCallQueue$Event;)V

    .line 527
    nop

    .line 541
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private static stoppingEvent(Lorg/checkerframework/com/google/common/util/concurrent/Service$State;)Lorg/checkerframework/com/google/common/util/concurrent/ListenerCallQueue$Event;
    .locals 1
    .param p0, "from"    # Lorg/checkerframework/com/google/common/util/concurrent/Service$State;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/google/common/util/concurrent/Service$State;",
            ")",
            "Lorg/checkerframework/com/google/common/util/concurrent/ListenerCallQueue$Event<",
            "Lorg/checkerframework/com/google/common/util/concurrent/Service$Listener;",
            ">;"
        }
    .end annotation

    .line 106
    new-instance v0, Lorg/checkerframework/com/google/common/util/concurrent/AbstractService$4;

    invoke-direct {v0, p0}, Lorg/checkerframework/com/google/common/util/concurrent/AbstractService$4;-><init>(Lorg/checkerframework/com/google/common/util/concurrent/Service$State;)V

    return-object v0
.end method

.method private static terminatedEvent(Lorg/checkerframework/com/google/common/util/concurrent/Service$State;)Lorg/checkerframework/com/google/common/util/concurrent/ListenerCallQueue$Event;
    .locals 1
    .param p0, "from"    # Lorg/checkerframework/com/google/common/util/concurrent/Service$State;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/google/common/util/concurrent/Service$State;",
            ")",
            "Lorg/checkerframework/com/google/common/util/concurrent/ListenerCallQueue$Event<",
            "Lorg/checkerframework/com/google/common/util/concurrent/Service$Listener;",
            ">;"
        }
    .end annotation

    .line 92
    new-instance v0, Lorg/checkerframework/com/google/common/util/concurrent/AbstractService$3;

    invoke-direct {v0, p0}, Lorg/checkerframework/com/google/common/util/concurrent/AbstractService$3;-><init>(Lorg/checkerframework/com/google/common/util/concurrent/Service$State;)V

    return-object v0
.end method


# virtual methods
.method public final addListener(Lorg/checkerframework/com/google/common/util/concurrent/Service$Listener;Ljava/util/concurrent/Executor;)V
    .locals 1
    .param p1, "listener"    # Lorg/checkerframework/com/google/common/util/concurrent/Service$Listener;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;

    .line 487
    iget-object v0, p0, Lorg/checkerframework/com/google/common/util/concurrent/AbstractService;->listeners:Lorg/checkerframework/com/google/common/util/concurrent/ListenerCallQueue;

    invoke-virtual {v0, p1, p2}, Lorg/checkerframework/com/google/common/util/concurrent/ListenerCallQueue;->addListener(Ljava/lang/Object;Ljava/util/concurrent/Executor;)V

    .line 488
    return-void
.end method

.method public final awaitRunning()V
    .locals 2

    .line 300
    iget-object v0, p0, Lorg/checkerframework/com/google/common/util/concurrent/AbstractService;->monitor:Lorg/checkerframework/com/google/common/util/concurrent/Monitor;

    iget-object v1, p0, Lorg/checkerframework/com/google/common/util/concurrent/AbstractService;->hasReachedRunning:Lorg/checkerframework/com/google/common/util/concurrent/Monitor$Guard;

    invoke-virtual {v0, v1}, Lorg/checkerframework/com/google/common/util/concurrent/Monitor;->enterWhenUninterruptibly(Lorg/checkerframework/com/google/common/util/concurrent/Monitor$Guard;)V

    .line 302
    :try_start_0
    sget-object v0, Lorg/checkerframework/com/google/common/util/concurrent/Service$State;->RUNNING:Lorg/checkerframework/com/google/common/util/concurrent/Service$State;

    invoke-direct {p0, v0}, Lorg/checkerframework/com/google/common/util/concurrent/AbstractService;->checkCurrentState(Lorg/checkerframework/com/google/common/util/concurrent/Service$State;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 304
    iget-object v0, p0, Lorg/checkerframework/com/google/common/util/concurrent/AbstractService;->monitor:Lorg/checkerframework/com/google/common/util/concurrent/Monitor;

    invoke-virtual {v0}, Lorg/checkerframework/com/google/common/util/concurrent/Monitor;->leave()V

    .line 305
    nop

    .line 306
    return-void

    .line 304
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/checkerframework/com/google/common/util/concurrent/AbstractService;->monitor:Lorg/checkerframework/com/google/common/util/concurrent/Monitor;

    invoke-virtual {v1}, Lorg/checkerframework/com/google/common/util/concurrent/Monitor;->leave()V

    .line 305
    throw v0
.end method

.method public final awaitRunning(JLjava/util/concurrent/TimeUnit;)V
    .locals 3
    .param p1, "timeout"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    .line 310
    iget-object v0, p0, Lorg/checkerframework/com/google/common/util/concurrent/AbstractService;->monitor:Lorg/checkerframework/com/google/common/util/concurrent/Monitor;

    iget-object v1, p0, Lorg/checkerframework/com/google/common/util/concurrent/AbstractService;->hasReachedRunning:Lorg/checkerframework/com/google/common/util/concurrent/Monitor$Guard;

    invoke-virtual {v0, v1, p1, p2, p3}, Lorg/checkerframework/com/google/common/util/concurrent/Monitor;->enterWhenUninterruptibly(Lorg/checkerframework/com/google/common/util/concurrent/Monitor$Guard;JLjava/util/concurrent/TimeUnit;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 312
    :try_start_0
    sget-object v0, Lorg/checkerframework/com/google/common/util/concurrent/Service$State;->RUNNING:Lorg/checkerframework/com/google/common/util/concurrent/Service$State;

    invoke-direct {p0, v0}, Lorg/checkerframework/com/google/common/util/concurrent/AbstractService;->checkCurrentState(Lorg/checkerframework/com/google/common/util/concurrent/Service$State;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 314
    iget-object v0, p0, Lorg/checkerframework/com/google/common/util/concurrent/AbstractService;->monitor:Lorg/checkerframework/com/google/common/util/concurrent/Monitor;

    invoke-virtual {v0}, Lorg/checkerframework/com/google/common/util/concurrent/Monitor;->leave()V

    .line 315
    nop

    .line 323
    return-void

    .line 314
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/checkerframework/com/google/common/util/concurrent/AbstractService;->monitor:Lorg/checkerframework/com/google/common/util/concurrent/Monitor;

    invoke-virtual {v1}, Lorg/checkerframework/com/google/common/util/concurrent/Monitor;->leave()V

    .line 315
    throw v0

    .line 321
    :cond_0
    new-instance v0, Ljava/util/concurrent/TimeoutException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Timed out waiting for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to reach the RUNNING state."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/concurrent/TimeoutException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final awaitTerminated()V
    .locals 2

    .line 327
    iget-object v0, p0, Lorg/checkerframework/com/google/common/util/concurrent/AbstractService;->monitor:Lorg/checkerframework/com/google/common/util/concurrent/Monitor;

    iget-object v1, p0, Lorg/checkerframework/com/google/common/util/concurrent/AbstractService;->isStopped:Lorg/checkerframework/com/google/common/util/concurrent/Monitor$Guard;

    invoke-virtual {v0, v1}, Lorg/checkerframework/com/google/common/util/concurrent/Monitor;->enterWhenUninterruptibly(Lorg/checkerframework/com/google/common/util/concurrent/Monitor$Guard;)V

    .line 329
    :try_start_0
    sget-object v0, Lorg/checkerframework/com/google/common/util/concurrent/Service$State;->TERMINATED:Lorg/checkerframework/com/google/common/util/concurrent/Service$State;

    invoke-direct {p0, v0}, Lorg/checkerframework/com/google/common/util/concurrent/AbstractService;->checkCurrentState(Lorg/checkerframework/com/google/common/util/concurrent/Service$State;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 331
    iget-object v0, p0, Lorg/checkerframework/com/google/common/util/concurrent/AbstractService;->monitor:Lorg/checkerframework/com/google/common/util/concurrent/Monitor;

    invoke-virtual {v0}, Lorg/checkerframework/com/google/common/util/concurrent/Monitor;->leave()V

    .line 332
    nop

    .line 333
    return-void

    .line 331
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/checkerframework/com/google/common/util/concurrent/AbstractService;->monitor:Lorg/checkerframework/com/google/common/util/concurrent/Monitor;

    invoke-virtual {v1}, Lorg/checkerframework/com/google/common/util/concurrent/Monitor;->leave()V

    .line 332
    throw v0
.end method

.method public final awaitTerminated(JLjava/util/concurrent/TimeUnit;)V
    .locals 3
    .param p1, "timeout"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    .line 337
    iget-object v0, p0, Lorg/checkerframework/com/google/common/util/concurrent/AbstractService;->monitor:Lorg/checkerframework/com/google/common/util/concurrent/Monitor;

    iget-object v1, p0, Lorg/checkerframework/com/google/common/util/concurrent/AbstractService;->isStopped:Lorg/checkerframework/com/google/common/util/concurrent/Monitor$Guard;

    invoke-virtual {v0, v1, p1, p2, p3}, Lorg/checkerframework/com/google/common/util/concurrent/Monitor;->enterWhenUninterruptibly(Lorg/checkerframework/com/google/common/util/concurrent/Monitor$Guard;JLjava/util/concurrent/TimeUnit;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 339
    :try_start_0
    sget-object v0, Lorg/checkerframework/com/google/common/util/concurrent/Service$State;->TERMINATED:Lorg/checkerframework/com/google/common/util/concurrent/Service$State;

    invoke-direct {p0, v0}, Lorg/checkerframework/com/google/common/util/concurrent/AbstractService;->checkCurrentState(Lorg/checkerframework/com/google/common/util/concurrent/Service$State;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 341
    iget-object v0, p0, Lorg/checkerframework/com/google/common/util/concurrent/AbstractService;->monitor:Lorg/checkerframework/com/google/common/util/concurrent/Monitor;

    invoke-virtual {v0}, Lorg/checkerframework/com/google/common/util/concurrent/Monitor;->leave()V

    .line 342
    nop

    .line 355
    return-void

    .line 341
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/checkerframework/com/google/common/util/concurrent/AbstractService;->monitor:Lorg/checkerframework/com/google/common/util/concurrent/Monitor;

    invoke-virtual {v1}, Lorg/checkerframework/com/google/common/util/concurrent/Monitor;->leave()V

    .line 342
    throw v0

    .line 348
    :cond_0
    new-instance v0, Ljava/util/concurrent/TimeoutException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Timed out waiting for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to reach a terminal state. Current state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 353
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/util/concurrent/AbstractService;->state()Lorg/checkerframework/com/google/common/util/concurrent/Service$State;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/concurrent/TimeoutException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected doCancelStart()V
    .locals 0

    .line 239
    return-void
.end method

.method protected abstract doStart()V
.end method

.method protected abstract doStop()V
.end method

.method public final failureCause()Ljava/lang/Throwable;
    .locals 1

    .line 481
    iget-object v0, p0, Lorg/checkerframework/com/google/common/util/concurrent/AbstractService;->snapshot:Lorg/checkerframework/com/google/common/util/concurrent/AbstractService$StateSnapshot;

    invoke-virtual {v0}, Lorg/checkerframework/com/google/common/util/concurrent/AbstractService$StateSnapshot;->failureCause()Ljava/lang/Throwable;

    move-result-object v0

    return-object v0
.end method

.method public final isRunning()Z
    .locals 2

    .line 470
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/util/concurrent/AbstractService;->state()Lorg/checkerframework/com/google/common/util/concurrent/Service$State;

    move-result-object v0

    sget-object v1, Lorg/checkerframework/com/google/common/util/concurrent/Service$State;->RUNNING:Lorg/checkerframework/com/google/common/util/concurrent/Service$State;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected final notifyFailed(Ljava/lang/Throwable;)V
    .locals 4
    .param p1, "cause"    # Ljava/lang/Throwable;

    .line 443
    invoke-static {p1}, Lorg/checkerframework/com/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 445
    iget-object v0, p0, Lorg/checkerframework/com/google/common/util/concurrent/AbstractService;->monitor:Lorg/checkerframework/com/google/common/util/concurrent/Monitor;

    invoke-virtual {v0}, Lorg/checkerframework/com/google/common/util/concurrent/Monitor;->enter()V

    .line 447
    :try_start_0
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/util/concurrent/AbstractService;->state()Lorg/checkerframework/com/google/common/util/concurrent/Service$State;

    move-result-object v0

    .line 448
    .local v0, "previous":Lorg/checkerframework/com/google/common/util/concurrent/Service$State;
    sget-object v1, Lorg/checkerframework/com/google/common/util/concurrent/AbstractService$6;->$SwitchMap$com$google$common$util$concurrent$Service$State:[I

    invoke-virtual {v0}, Lorg/checkerframework/com/google/common/util/concurrent/Service$State;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 455
    :pswitch_0
    new-instance v1, Lorg/checkerframework/com/google/common/util/concurrent/AbstractService$StateSnapshot;

    sget-object v2, Lorg/checkerframework/com/google/common/util/concurrent/Service$State;->FAILED:Lorg/checkerframework/com/google/common/util/concurrent/Service$State;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3, p1}, Lorg/checkerframework/com/google/common/util/concurrent/AbstractService$StateSnapshot;-><init>(Lorg/checkerframework/com/google/common/util/concurrent/Service$State;ZLjava/lang/Throwable;)V

    iput-object v1, p0, Lorg/checkerframework/com/google/common/util/concurrent/AbstractService;->snapshot:Lorg/checkerframework/com/google/common/util/concurrent/AbstractService$StateSnapshot;

    .line 456
    invoke-direct {p0, v0, p1}, Lorg/checkerframework/com/google/common/util/concurrent/AbstractService;->enqueueFailedEvent(Lorg/checkerframework/com/google/common/util/concurrent/Service$State;Ljava/lang/Throwable;)V

    .line 457
    goto :goto_0

    .line 451
    :pswitch_1
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed while in state:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local p1    # "cause":Ljava/lang/Throwable;
    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 463
    .end local v0    # "previous":Lorg/checkerframework/com/google/common/util/concurrent/Service$State;
    .restart local p1    # "cause":Ljava/lang/Throwable;
    :goto_0
    iget-object v0, p0, Lorg/checkerframework/com/google/common/util/concurrent/AbstractService;->monitor:Lorg/checkerframework/com/google/common/util/concurrent/Monitor;

    invoke-virtual {v0}, Lorg/checkerframework/com/google/common/util/concurrent/Monitor;->leave()V

    .line 464
    invoke-direct {p0}, Lorg/checkerframework/com/google/common/util/concurrent/AbstractService;->dispatchListenerEvents()V

    .line 465
    nop

    .line 466
    return-void

    .line 463
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/checkerframework/com/google/common/util/concurrent/AbstractService;->monitor:Lorg/checkerframework/com/google/common/util/concurrent/Monitor;

    invoke-virtual {v1}, Lorg/checkerframework/com/google/common/util/concurrent/Monitor;->leave()V

    .line 464
    invoke-direct {p0}, Lorg/checkerframework/com/google/common/util/concurrent/AbstractService;->dispatchListenerEvents()V

    .line 465
    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected final notifyStarted()V
    .locals 3

    .line 380
    iget-object v0, p0, Lorg/checkerframework/com/google/common/util/concurrent/AbstractService;->monitor:Lorg/checkerframework/com/google/common/util/concurrent/Monitor;

    invoke-virtual {v0}, Lorg/checkerframework/com/google/common/util/concurrent/Monitor;->enter()V

    .line 384
    :try_start_0
    iget-object v0, p0, Lorg/checkerframework/com/google/common/util/concurrent/AbstractService;->snapshot:Lorg/checkerframework/com/google/common/util/concurrent/AbstractService$StateSnapshot;

    iget-object v0, v0, Lorg/checkerframework/com/google/common/util/concurrent/AbstractService$StateSnapshot;->state:Lorg/checkerframework/com/google/common/util/concurrent/Service$State;

    sget-object v1, Lorg/checkerframework/com/google/common/util/concurrent/Service$State;->STARTING:Lorg/checkerframework/com/google/common/util/concurrent/Service$State;

    if-ne v0, v1, :cond_1

    .line 392
    iget-object v0, p0, Lorg/checkerframework/com/google/common/util/concurrent/AbstractService;->snapshot:Lorg/checkerframework/com/google/common/util/concurrent/AbstractService$StateSnapshot;

    iget-boolean v0, v0, Lorg/checkerframework/com/google/common/util/concurrent/AbstractService$StateSnapshot;->shutdownWhenStartupFinishes:Z

    if-eqz v0, :cond_0

    .line 393
    new-instance v0, Lorg/checkerframework/com/google/common/util/concurrent/AbstractService$StateSnapshot;

    sget-object v1, Lorg/checkerframework/com/google/common/util/concurrent/Service$State;->STOPPING:Lorg/checkerframework/com/google/common/util/concurrent/Service$State;

    invoke-direct {v0, v1}, Lorg/checkerframework/com/google/common/util/concurrent/AbstractService$StateSnapshot;-><init>(Lorg/checkerframework/com/google/common/util/concurrent/Service$State;)V

    iput-object v0, p0, Lorg/checkerframework/com/google/common/util/concurrent/AbstractService;->snapshot:Lorg/checkerframework/com/google/common/util/concurrent/AbstractService$StateSnapshot;

    .line 396
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/util/concurrent/AbstractService;->doStop()V

    goto :goto_0

    .line 398
    :cond_0
    new-instance v0, Lorg/checkerframework/com/google/common/util/concurrent/AbstractService$StateSnapshot;

    sget-object v1, Lorg/checkerframework/com/google/common/util/concurrent/Service$State;->RUNNING:Lorg/checkerframework/com/google/common/util/concurrent/Service$State;

    invoke-direct {v0, v1}, Lorg/checkerframework/com/google/common/util/concurrent/AbstractService$StateSnapshot;-><init>(Lorg/checkerframework/com/google/common/util/concurrent/Service$State;)V

    iput-object v0, p0, Lorg/checkerframework/com/google/common/util/concurrent/AbstractService;->snapshot:Lorg/checkerframework/com/google/common/util/concurrent/AbstractService$StateSnapshot;

    .line 399
    invoke-direct {p0}, Lorg/checkerframework/com/google/common/util/concurrent/AbstractService;->enqueueRunningEvent()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 402
    :goto_0
    iget-object v0, p0, Lorg/checkerframework/com/google/common/util/concurrent/AbstractService;->monitor:Lorg/checkerframework/com/google/common/util/concurrent/Monitor;

    invoke-virtual {v0}, Lorg/checkerframework/com/google/common/util/concurrent/Monitor;->leave()V

    .line 403
    invoke-direct {p0}, Lorg/checkerframework/com/google/common/util/concurrent/AbstractService;->dispatchListenerEvents()V

    .line 404
    nop

    .line 405
    return-void

    .line 385
    :cond_1
    :try_start_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot notifyStarted() when the service is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/checkerframework/com/google/common/util/concurrent/AbstractService;->snapshot:Lorg/checkerframework/com/google/common/util/concurrent/AbstractService$StateSnapshot;

    iget-object v2, v2, Lorg/checkerframework/com/google/common/util/concurrent/AbstractService$StateSnapshot;->state:Lorg/checkerframework/com/google/common/util/concurrent/Service$State;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 388
    .local v0, "failure":Ljava/lang/IllegalStateException;
    invoke-virtual {p0, v0}, Lorg/checkerframework/com/google/common/util/concurrent/AbstractService;->notifyFailed(Ljava/lang/Throwable;)V

    .line 389
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 402
    .end local v0    # "failure":Ljava/lang/IllegalStateException;
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/checkerframework/com/google/common/util/concurrent/AbstractService;->monitor:Lorg/checkerframework/com/google/common/util/concurrent/Monitor;

    invoke-virtual {v1}, Lorg/checkerframework/com/google/common/util/concurrent/Monitor;->leave()V

    .line 403
    invoke-direct {p0}, Lorg/checkerframework/com/google/common/util/concurrent/AbstractService;->dispatchListenerEvents()V

    .line 404
    throw v0
.end method

.method protected final notifyStopped()V
    .locals 4

    .line 416
    iget-object v0, p0, Lorg/checkerframework/com/google/common/util/concurrent/AbstractService;->monitor:Lorg/checkerframework/com/google/common/util/concurrent/Monitor;

    invoke-virtual {v0}, Lorg/checkerframework/com/google/common/util/concurrent/Monitor;->enter()V

    .line 418
    :try_start_0
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/util/concurrent/AbstractService;->state()Lorg/checkerframework/com/google/common/util/concurrent/Service$State;

    move-result-object v0

    .line 419
    .local v0, "previous":Lorg/checkerframework/com/google/common/util/concurrent/Service$State;
    sget-object v1, Lorg/checkerframework/com/google/common/util/concurrent/AbstractService$6;->$SwitchMap$com$google$common$util$concurrent$Service$State:[I

    invoke-virtual {v0}, Lorg/checkerframework/com/google/common/util/concurrent/Service$State;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 427
    :pswitch_0
    new-instance v1, Lorg/checkerframework/com/google/common/util/concurrent/AbstractService$StateSnapshot;

    sget-object v2, Lorg/checkerframework/com/google/common/util/concurrent/Service$State;->TERMINATED:Lorg/checkerframework/com/google/common/util/concurrent/Service$State;

    invoke-direct {v1, v2}, Lorg/checkerframework/com/google/common/util/concurrent/AbstractService$StateSnapshot;-><init>(Lorg/checkerframework/com/google/common/util/concurrent/Service$State;)V

    iput-object v1, p0, Lorg/checkerframework/com/google/common/util/concurrent/AbstractService;->snapshot:Lorg/checkerframework/com/google/common/util/concurrent/AbstractService$StateSnapshot;

    .line 428
    invoke-direct {p0, v0}, Lorg/checkerframework/com/google/common/util/concurrent/AbstractService;->enqueueTerminatedEvent(Lorg/checkerframework/com/google/common/util/concurrent/Service$State;)V

    goto :goto_0

    .line 423
    :pswitch_1
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot notifyStopped() when the service is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 432
    .end local v0    # "previous":Lorg/checkerframework/com/google/common/util/concurrent/Service$State;
    :goto_0
    iget-object v0, p0, Lorg/checkerframework/com/google/common/util/concurrent/AbstractService;->monitor:Lorg/checkerframework/com/google/common/util/concurrent/Monitor;

    invoke-virtual {v0}, Lorg/checkerframework/com/google/common/util/concurrent/Monitor;->leave()V

    .line 433
    invoke-direct {p0}, Lorg/checkerframework/com/google/common/util/concurrent/AbstractService;->dispatchListenerEvents()V

    .line 434
    nop

    .line 435
    return-void

    .line 432
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/checkerframework/com/google/common/util/concurrent/AbstractService;->monitor:Lorg/checkerframework/com/google/common/util/concurrent/Monitor;

    invoke-virtual {v1}, Lorg/checkerframework/com/google/common/util/concurrent/Monitor;->leave()V

    .line 433
    invoke-direct {p0}, Lorg/checkerframework/com/google/common/util/concurrent/AbstractService;->dispatchListenerEvents()V

    .line 434
    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public final startAsync()Lorg/checkerframework/com/google/common/util/concurrent/Service;
    .locals 3

    .line 244
    iget-object v0, p0, Lorg/checkerframework/com/google/common/util/concurrent/AbstractService;->monitor:Lorg/checkerframework/com/google/common/util/concurrent/Monitor;

    iget-object v1, p0, Lorg/checkerframework/com/google/common/util/concurrent/AbstractService;->isStartable:Lorg/checkerframework/com/google/common/util/concurrent/Monitor$Guard;

    invoke-virtual {v0, v1}, Lorg/checkerframework/com/google/common/util/concurrent/Monitor;->enterIf(Lorg/checkerframework/com/google/common/util/concurrent/Monitor$Guard;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 246
    :try_start_0
    new-instance v0, Lorg/checkerframework/com/google/common/util/concurrent/AbstractService$StateSnapshot;

    sget-object v1, Lorg/checkerframework/com/google/common/util/concurrent/Service$State;->STARTING:Lorg/checkerframework/com/google/common/util/concurrent/Service$State;

    invoke-direct {v0, v1}, Lorg/checkerframework/com/google/common/util/concurrent/AbstractService$StateSnapshot;-><init>(Lorg/checkerframework/com/google/common/util/concurrent/Service$State;)V

    iput-object v0, p0, Lorg/checkerframework/com/google/common/util/concurrent/AbstractService;->snapshot:Lorg/checkerframework/com/google/common/util/concurrent/AbstractService$StateSnapshot;

    .line 247
    invoke-direct {p0}, Lorg/checkerframework/com/google/common/util/concurrent/AbstractService;->enqueueStartingEvent()V

    .line 248
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/util/concurrent/AbstractService;->doStart()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 249
    :catchall_0
    move-exception v0

    .line 250
    .local v0, "startupFailure":Ljava/lang/Throwable;
    :try_start_1
    invoke-virtual {p0, v0}, Lorg/checkerframework/com/google/common/util/concurrent/AbstractService;->notifyFailed(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 252
    .end local v0    # "startupFailure":Ljava/lang/Throwable;
    :goto_0
    iget-object v0, p0, Lorg/checkerframework/com/google/common/util/concurrent/AbstractService;->monitor:Lorg/checkerframework/com/google/common/util/concurrent/Monitor;

    invoke-virtual {v0}, Lorg/checkerframework/com/google/common/util/concurrent/Monitor;->leave()V

    .line 253
    invoke-direct {p0}, Lorg/checkerframework/com/google/common/util/concurrent/AbstractService;->dispatchListenerEvents()V

    .line 254
    nop

    .line 258
    return-object p0

    .line 252
    :catchall_1
    move-exception v0

    iget-object v1, p0, Lorg/checkerframework/com/google/common/util/concurrent/AbstractService;->monitor:Lorg/checkerframework/com/google/common/util/concurrent/Monitor;

    invoke-virtual {v1}, Lorg/checkerframework/com/google/common/util/concurrent/Monitor;->leave()V

    .line 253
    invoke-direct {p0}, Lorg/checkerframework/com/google/common/util/concurrent/AbstractService;->dispatchListenerEvents()V

    .line 254
    throw v0

    .line 256
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Service "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " has already been started"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final state()Lorg/checkerframework/com/google/common/util/concurrent/Service$State;
    .locals 1

    .line 475
    iget-object v0, p0, Lorg/checkerframework/com/google/common/util/concurrent/AbstractService;->snapshot:Lorg/checkerframework/com/google/common/util/concurrent/AbstractService$StateSnapshot;

    invoke-virtual {v0}, Lorg/checkerframework/com/google/common/util/concurrent/AbstractService$StateSnapshot;->externalState()Lorg/checkerframework/com/google/common/util/concurrent/Service$State;

    move-result-object v0

    return-object v0
.end method

.method public final stopAsync()Lorg/checkerframework/com/google/common/util/concurrent/Service;
    .locals 5

    .line 264
    iget-object v0, p0, Lorg/checkerframework/com/google/common/util/concurrent/AbstractService;->monitor:Lorg/checkerframework/com/google/common/util/concurrent/Monitor;

    iget-object v1, p0, Lorg/checkerframework/com/google/common/util/concurrent/AbstractService;->isStoppable:Lorg/checkerframework/com/google/common/util/concurrent/Monitor$Guard;

    invoke-virtual {v0, v1}, Lorg/checkerframework/com/google/common/util/concurrent/Monitor;->enterIf(Lorg/checkerframework/com/google/common/util/concurrent/Monitor$Guard;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 266
    :try_start_0
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/util/concurrent/AbstractService;->state()Lorg/checkerframework/com/google/common/util/concurrent/Service$State;

    move-result-object v0

    .line 267
    .local v0, "previous":Lorg/checkerframework/com/google/common/util/concurrent/Service$State;
    sget-object v1, Lorg/checkerframework/com/google/common/util/concurrent/AbstractService$6;->$SwitchMap$com$google$common$util$concurrent$Service$State:[I

    invoke-virtual {v0}, Lorg/checkerframework/com/google/common/util/concurrent/Service$State;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 286
    :pswitch_0
    new-instance v1, Ljava/lang/AssertionError;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isStoppable is incorrectly implemented, saw: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    .line 278
    :pswitch_1
    new-instance v1, Lorg/checkerframework/com/google/common/util/concurrent/AbstractService$StateSnapshot;

    sget-object v2, Lorg/checkerframework/com/google/common/util/concurrent/Service$State;->STOPPING:Lorg/checkerframework/com/google/common/util/concurrent/Service$State;

    invoke-direct {v1, v2}, Lorg/checkerframework/com/google/common/util/concurrent/AbstractService$StateSnapshot;-><init>(Lorg/checkerframework/com/google/common/util/concurrent/Service$State;)V

    iput-object v1, p0, Lorg/checkerframework/com/google/common/util/concurrent/AbstractService;->snapshot:Lorg/checkerframework/com/google/common/util/concurrent/AbstractService$StateSnapshot;

    .line 279
    sget-object v1, Lorg/checkerframework/com/google/common/util/concurrent/Service$State;->RUNNING:Lorg/checkerframework/com/google/common/util/concurrent/Service$State;

    invoke-direct {p0, v1}, Lorg/checkerframework/com/google/common/util/concurrent/AbstractService;->enqueueStoppingEvent(Lorg/checkerframework/com/google/common/util/concurrent/Service$State;)V

    .line 280
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/util/concurrent/AbstractService;->doStop()V

    .line 281
    goto :goto_0

    .line 273
    :pswitch_2
    new-instance v1, Lorg/checkerframework/com/google/common/util/concurrent/AbstractService$StateSnapshot;

    sget-object v2, Lorg/checkerframework/com/google/common/util/concurrent/Service$State;->STARTING:Lorg/checkerframework/com/google/common/util/concurrent/Service$State;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v4}, Lorg/checkerframework/com/google/common/util/concurrent/AbstractService$StateSnapshot;-><init>(Lorg/checkerframework/com/google/common/util/concurrent/Service$State;ZLjava/lang/Throwable;)V

    iput-object v1, p0, Lorg/checkerframework/com/google/common/util/concurrent/AbstractService;->snapshot:Lorg/checkerframework/com/google/common/util/concurrent/AbstractService$StateSnapshot;

    .line 274
    sget-object v1, Lorg/checkerframework/com/google/common/util/concurrent/Service$State;->STARTING:Lorg/checkerframework/com/google/common/util/concurrent/Service$State;

    invoke-direct {p0, v1}, Lorg/checkerframework/com/google/common/util/concurrent/AbstractService;->enqueueStoppingEvent(Lorg/checkerframework/com/google/common/util/concurrent/Service$State;)V

    .line 275
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/util/concurrent/AbstractService;->doCancelStart()V

    .line 276
    goto :goto_0

    .line 269
    :pswitch_3
    new-instance v1, Lorg/checkerframework/com/google/common/util/concurrent/AbstractService$StateSnapshot;

    sget-object v2, Lorg/checkerframework/com/google/common/util/concurrent/Service$State;->TERMINATED:Lorg/checkerframework/com/google/common/util/concurrent/Service$State;

    invoke-direct {v1, v2}, Lorg/checkerframework/com/google/common/util/concurrent/AbstractService$StateSnapshot;-><init>(Lorg/checkerframework/com/google/common/util/concurrent/Service$State;)V

    iput-object v1, p0, Lorg/checkerframework/com/google/common/util/concurrent/AbstractService;->snapshot:Lorg/checkerframework/com/google/common/util/concurrent/AbstractService$StateSnapshot;

    .line 270
    sget-object v1, Lorg/checkerframework/com/google/common/util/concurrent/Service$State;->NEW:Lorg/checkerframework/com/google/common/util/concurrent/Service$State;

    invoke-direct {p0, v1}, Lorg/checkerframework/com/google/common/util/concurrent/AbstractService;->enqueueTerminatedEvent(Lorg/checkerframework/com/google/common/util/concurrent/Service$State;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 271
    goto :goto_0

    .line 288
    .end local v0    # "previous":Lorg/checkerframework/com/google/common/util/concurrent/Service$State;
    :catchall_0
    move-exception v0

    .line 289
    .local v0, "shutdownFailure":Ljava/lang/Throwable;
    :try_start_1
    invoke-virtual {p0, v0}, Lorg/checkerframework/com/google/common/util/concurrent/AbstractService;->notifyFailed(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 291
    .end local v0    # "shutdownFailure":Ljava/lang/Throwable;
    :goto_0
    iget-object v0, p0, Lorg/checkerframework/com/google/common/util/concurrent/AbstractService;->monitor:Lorg/checkerframework/com/google/common/util/concurrent/Monitor;

    invoke-virtual {v0}, Lorg/checkerframework/com/google/common/util/concurrent/Monitor;->leave()V

    .line 292
    invoke-direct {p0}, Lorg/checkerframework/com/google/common/util/concurrent/AbstractService;->dispatchListenerEvents()V

    .line 293
    goto :goto_1

    .line 291
    :catchall_1
    move-exception v0

    iget-object v1, p0, Lorg/checkerframework/com/google/common/util/concurrent/AbstractService;->monitor:Lorg/checkerframework/com/google/common/util/concurrent/Monitor;

    invoke-virtual {v1}, Lorg/checkerframework/com/google/common/util/concurrent/Monitor;->leave()V

    .line 292
    invoke-direct {p0}, Lorg/checkerframework/com/google/common/util/concurrent/AbstractService;->dispatchListenerEvents()V

    .line 293
    throw v0

    .line 295
    :cond_0
    :goto_1
    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 492
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/util/concurrent/AbstractService;->state()Lorg/checkerframework/com/google/common/util/concurrent/Service$State;

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
