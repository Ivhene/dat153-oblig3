.class public final Lorg/checkerframework/com/google/common/util/concurrent/ServiceManager;
.super Ljava/lang/Object;
.source "ServiceManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/checkerframework/com/google/common/util/concurrent/ServiceManager$FailedService;,
        Lorg/checkerframework/com/google/common/util/concurrent/ServiceManager$EmptyServiceManagerWarning;,
        Lorg/checkerframework/com/google/common/util/concurrent/ServiceManager$NoOpService;,
        Lorg/checkerframework/com/google/common/util/concurrent/ServiceManager$ServiceListener;,
        Lorg/checkerframework/com/google/common/util/concurrent/ServiceManager$ServiceManagerState;,
        Lorg/checkerframework/com/google/common/util/concurrent/ServiceManager$Listener;
    }
.end annotation


# static fields
.field private static final HEALTHY_EVENT:Lorg/checkerframework/com/google/common/util/concurrent/ListenerCallQueue$Event;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/checkerframework/com/google/common/util/concurrent/ListenerCallQueue$Event<",
            "Lorg/checkerframework/com/google/common/util/concurrent/ServiceManager$Listener;",
            ">;"
        }
    .end annotation
.end field

.field private static final STOPPED_EVENT:Lorg/checkerframework/com/google/common/util/concurrent/ListenerCallQueue$Event;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/checkerframework/com/google/common/util/concurrent/ListenerCallQueue$Event<",
            "Lorg/checkerframework/com/google/common/util/concurrent/ServiceManager$Listener;",
            ">;"
        }
    .end annotation
.end field

.field private static final logger:Ljava/util/logging/Logger;


# instance fields
.field private final services:Lorg/checkerframework/com/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/checkerframework/com/google/common/collect/ImmutableList<",
            "Lorg/checkerframework/com/google/common/util/concurrent/Service;",
            ">;"
        }
    .end annotation
.end field

.field private final state:Lorg/checkerframework/com/google/common/util/concurrent/ServiceManager$ServiceManagerState;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 127
    const-class v0, Lorg/checkerframework/com/google/common/util/concurrent/ServiceManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/checkerframework/com/google/common/util/concurrent/ServiceManager;->logger:Ljava/util/logging/Logger;

    .line 128
    new-instance v0, Lorg/checkerframework/com/google/common/util/concurrent/ServiceManager$1;

    invoke-direct {v0}, Lorg/checkerframework/com/google/common/util/concurrent/ServiceManager$1;-><init>()V

    sput-object v0, Lorg/checkerframework/com/google/common/util/concurrent/ServiceManager;->HEALTHY_EVENT:Lorg/checkerframework/com/google/common/util/concurrent/ListenerCallQueue$Event;

    .line 140
    new-instance v0, Lorg/checkerframework/com/google/common/util/concurrent/ServiceManager$2;

    invoke-direct {v0}, Lorg/checkerframework/com/google/common/util/concurrent/ServiceManager$2;-><init>()V

    sput-object v0, Lorg/checkerframework/com/google/common/util/concurrent/ServiceManager;->STOPPED_EVENT:Lorg/checkerframework/com/google/common/util/concurrent/ListenerCallQueue$Event;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Iterable;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lorg/checkerframework/com/google/common/util/concurrent/Service;",
            ">;)V"
        }
    .end annotation

    .line 206
    .local p1, "services":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Lorg/checkerframework/com/google/common/util/concurrent/Service;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 207
    invoke-static {p1}, Lorg/checkerframework/com/google/common/collect/ImmutableList;->copyOf(Ljava/lang/Iterable;)Lorg/checkerframework/com/google/common/collect/ImmutableList;

    move-result-object v0

    .line 208
    .local v0, "copy":Lorg/checkerframework/com/google/common/collect/ImmutableList;, "Lorg/checkerframework/com/google/common/collect/ImmutableList<Lorg/checkerframework/com/google/common/util/concurrent/Service;>;"
    invoke-virtual {v0}, Lorg/checkerframework/com/google/common/collect/ImmutableList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 211
    sget-object v1, Lorg/checkerframework/com/google/common/util/concurrent/ServiceManager;->logger:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    new-instance v3, Lorg/checkerframework/com/google/common/util/concurrent/ServiceManager$EmptyServiceManagerWarning;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lorg/checkerframework/com/google/common/util/concurrent/ServiceManager$EmptyServiceManagerWarning;-><init>(Lorg/checkerframework/com/google/common/util/concurrent/ServiceManager$1;)V

    const-string v5, "ServiceManager configured with no services.  Is your application configured properly?"

    invoke-virtual {v1, v2, v5, v3}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 215
    new-instance v1, Lorg/checkerframework/com/google/common/util/concurrent/ServiceManager$NoOpService;

    invoke-direct {v1, v4}, Lorg/checkerframework/com/google/common/util/concurrent/ServiceManager$NoOpService;-><init>(Lorg/checkerframework/com/google/common/util/concurrent/ServiceManager$1;)V

    invoke-static {v1}, Lorg/checkerframework/com/google/common/collect/ImmutableList;->of(Ljava/lang/Object;)Lorg/checkerframework/com/google/common/collect/ImmutableList;

    move-result-object v0

    .line 217
    :cond_0
    new-instance v1, Lorg/checkerframework/com/google/common/util/concurrent/ServiceManager$ServiceManagerState;

    invoke-direct {v1, v0}, Lorg/checkerframework/com/google/common/util/concurrent/ServiceManager$ServiceManagerState;-><init>(Lorg/checkerframework/com/google/common/collect/ImmutableCollection;)V

    iput-object v1, p0, Lorg/checkerframework/com/google/common/util/concurrent/ServiceManager;->state:Lorg/checkerframework/com/google/common/util/concurrent/ServiceManager$ServiceManagerState;

    .line 218
    iput-object v0, p0, Lorg/checkerframework/com/google/common/util/concurrent/ServiceManager;->services:Lorg/checkerframework/com/google/common/collect/ImmutableList;

    .line 219
    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    move-object v1, v2

    .line 220
    .local v1, "stateReference":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lorg/checkerframework/com/google/common/util/concurrent/ServiceManager$ServiceManagerState;>;"
    invoke-virtual {v0}, Lorg/checkerframework/com/google/common/collect/ImmutableList;->iterator()Lorg/checkerframework/com/google/common/collect/UnmodifiableIterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/checkerframework/com/google/common/util/concurrent/Service;

    .line 221
    .local v3, "service":Lorg/checkerframework/com/google/common/util/concurrent/Service;
    new-instance v4, Lorg/checkerframework/com/google/common/util/concurrent/ServiceManager$ServiceListener;

    invoke-direct {v4, v3, v1}, Lorg/checkerframework/com/google/common/util/concurrent/ServiceManager$ServiceListener;-><init>(Lorg/checkerframework/com/google/common/util/concurrent/Service;Ljava/lang/ref/WeakReference;)V

    invoke-static {}, Lorg/checkerframework/com/google/common/util/concurrent/MoreExecutors;->directExecutor()Ljava/util/concurrent/Executor;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Lorg/checkerframework/com/google/common/util/concurrent/Service;->addListener(Lorg/checkerframework/com/google/common/util/concurrent/Service$Listener;Ljava/util/concurrent/Executor;)V

    .line 224
    invoke-interface {v3}, Lorg/checkerframework/com/google/common/util/concurrent/Service;->state()Lorg/checkerframework/com/google/common/util/concurrent/Service$State;

    move-result-object v4

    sget-object v5, Lorg/checkerframework/com/google/common/util/concurrent/Service$State;->NEW:Lorg/checkerframework/com/google/common/util/concurrent/Service$State;

    if-ne v4, v5, :cond_1

    const/4 v4, 0x1

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    :goto_1
    const-string v5, "Can only manage NEW services, %s"

    invoke-static {v4, v5, v3}, Lorg/checkerframework/com/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;Ljava/lang/Object;)V

    .line 225
    .end local v3    # "service":Lorg/checkerframework/com/google/common/util/concurrent/Service;
    goto :goto_0

    .line 228
    :cond_2
    iget-object v2, p0, Lorg/checkerframework/com/google/common/util/concurrent/ServiceManager;->state:Lorg/checkerframework/com/google/common/util/concurrent/ServiceManager$ServiceManagerState;

    invoke-virtual {v2}, Lorg/checkerframework/com/google/common/util/concurrent/ServiceManager$ServiceManagerState;->markReady()V

    .line 229
    return-void
.end method

.method static synthetic access$200()Ljava/util/logging/Logger;
    .locals 1

    .line 126
    sget-object v0, Lorg/checkerframework/com/google/common/util/concurrent/ServiceManager;->logger:Ljava/util/logging/Logger;

    return-object v0
.end method

.method static synthetic access$300()Lorg/checkerframework/com/google/common/util/concurrent/ListenerCallQueue$Event;
    .locals 1

    .line 126
    sget-object v0, Lorg/checkerframework/com/google/common/util/concurrent/ServiceManager;->STOPPED_EVENT:Lorg/checkerframework/com/google/common/util/concurrent/ListenerCallQueue$Event;

    return-object v0
.end method

.method static synthetic access$400()Lorg/checkerframework/com/google/common/util/concurrent/ListenerCallQueue$Event;
    .locals 1

    .line 126
    sget-object v0, Lorg/checkerframework/com/google/common/util/concurrent/ServiceManager;->HEALTHY_EVENT:Lorg/checkerframework/com/google/common/util/concurrent/ListenerCallQueue$Event;

    return-object v0
.end method


# virtual methods
.method public addListener(Lorg/checkerframework/com/google/common/util/concurrent/ServiceManager$Listener;)V
    .locals 2
    .param p1, "listener"    # Lorg/checkerframework/com/google/common/util/concurrent/ServiceManager$Listener;

    .line 275
    iget-object v0, p0, Lorg/checkerframework/com/google/common/util/concurrent/ServiceManager;->state:Lorg/checkerframework/com/google/common/util/concurrent/ServiceManager$ServiceManagerState;

    invoke-static {}, Lorg/checkerframework/com/google/common/util/concurrent/MoreExecutors;->directExecutor()Ljava/util/concurrent/Executor;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lorg/checkerframework/com/google/common/util/concurrent/ServiceManager$ServiceManagerState;->addListener(Lorg/checkerframework/com/google/common/util/concurrent/ServiceManager$Listener;Ljava/util/concurrent/Executor;)V

    .line 276
    return-void
.end method

.method public addListener(Lorg/checkerframework/com/google/common/util/concurrent/ServiceManager$Listener;Ljava/util/concurrent/Executor;)V
    .locals 1
    .param p1, "listener"    # Lorg/checkerframework/com/google/common/util/concurrent/ServiceManager$Listener;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;

    .line 255
    iget-object v0, p0, Lorg/checkerframework/com/google/common/util/concurrent/ServiceManager;->state:Lorg/checkerframework/com/google/common/util/concurrent/ServiceManager$ServiceManagerState;

    invoke-virtual {v0, p1, p2}, Lorg/checkerframework/com/google/common/util/concurrent/ServiceManager$ServiceManagerState;->addListener(Lorg/checkerframework/com/google/common/util/concurrent/ServiceManager$Listener;Ljava/util/concurrent/Executor;)V

    .line 256
    return-void
.end method

.method public awaitHealthy()V
    .locals 1

    .line 316
    iget-object v0, p0, Lorg/checkerframework/com/google/common/util/concurrent/ServiceManager;->state:Lorg/checkerframework/com/google/common/util/concurrent/ServiceManager$ServiceManagerState;

    invoke-virtual {v0}, Lorg/checkerframework/com/google/common/util/concurrent/ServiceManager$ServiceManagerState;->awaitHealthy()V

    .line 317
    return-void
.end method

.method public awaitHealthy(JLjava/util/concurrent/TimeUnit;)V
    .locals 1
    .param p1, "timeout"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    .line 347
    iget-object v0, p0, Lorg/checkerframework/com/google/common/util/concurrent/ServiceManager;->state:Lorg/checkerframework/com/google/common/util/concurrent/ServiceManager$ServiceManagerState;

    invoke-virtual {v0, p1, p2, p3}, Lorg/checkerframework/com/google/common/util/concurrent/ServiceManager$ServiceManagerState;->awaitHealthy(JLjava/util/concurrent/TimeUnit;)V

    .line 348
    return-void
.end method

.method public awaitHealthy(Ljava/time/Duration;)V
    .locals 3
    .param p1, "timeout"    # Ljava/time/Duration;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    .line 331
    invoke-static {p1}, Lorg/checkerframework/com/google/common/util/concurrent/Internal;->saturatedToNanos(Ljava/time/Duration;)J

    move-result-wide v0

    sget-object v2, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p0, v0, v1, v2}, Lorg/checkerframework/com/google/common/util/concurrent/ServiceManager;->awaitHealthy(JLjava/util/concurrent/TimeUnit;)V

    .line 332
    return-void
.end method

.method public awaitStopped()V
    .locals 1

    .line 370
    iget-object v0, p0, Lorg/checkerframework/com/google/common/util/concurrent/ServiceManager;->state:Lorg/checkerframework/com/google/common/util/concurrent/ServiceManager$ServiceManagerState;

    invoke-virtual {v0}, Lorg/checkerframework/com/google/common/util/concurrent/ServiceManager$ServiceManagerState;->awaitStopped()V

    .line 371
    return-void
.end method

.method public awaitStopped(JLjava/util/concurrent/TimeUnit;)V
    .locals 1
    .param p1, "timeout"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    .line 397
    iget-object v0, p0, Lorg/checkerframework/com/google/common/util/concurrent/ServiceManager;->state:Lorg/checkerframework/com/google/common/util/concurrent/ServiceManager$ServiceManagerState;

    invoke-virtual {v0, p1, p2, p3}, Lorg/checkerframework/com/google/common/util/concurrent/ServiceManager$ServiceManagerState;->awaitStopped(JLjava/util/concurrent/TimeUnit;)V

    .line 398
    return-void
.end method

.method public awaitStopped(Ljava/time/Duration;)V
    .locals 3
    .param p1, "timeout"    # Ljava/time/Duration;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    .line 383
    invoke-static {p1}, Lorg/checkerframework/com/google/common/util/concurrent/Internal;->saturatedToNanos(Ljava/time/Duration;)J

    move-result-wide v0

    sget-object v2, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p0, v0, v1, v2}, Lorg/checkerframework/com/google/common/util/concurrent/ServiceManager;->awaitStopped(JLjava/util/concurrent/TimeUnit;)V

    .line 384
    return-void
.end method

.method public isHealthy()Z
    .locals 3

    .line 407
    iget-object v0, p0, Lorg/checkerframework/com/google/common/util/concurrent/ServiceManager;->services:Lorg/checkerframework/com/google/common/collect/ImmutableList;

    invoke-virtual {v0}, Lorg/checkerframework/com/google/common/collect/ImmutableList;->iterator()Lorg/checkerframework/com/google/common/collect/UnmodifiableIterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/checkerframework/com/google/common/util/concurrent/Service;

    .line 408
    .local v1, "service":Lorg/checkerframework/com/google/common/util/concurrent/Service;
    invoke-interface {v1}, Lorg/checkerframework/com/google/common/util/concurrent/Service;->isRunning()Z

    move-result v2

    if-nez v2, :cond_0

    .line 409
    const/4 v0, 0x0

    return v0

    .line 411
    .end local v1    # "service":Lorg/checkerframework/com/google/common/util/concurrent/Service;
    :cond_0
    goto :goto_0

    .line 412
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public servicesByState()Lorg/checkerframework/com/google/common/collect/ImmutableMultimap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/checkerframework/com/google/common/collect/ImmutableMultimap<",
            "Lorg/checkerframework/com/google/common/util/concurrent/Service$State;",
            "Lorg/checkerframework/com/google/common/util/concurrent/Service;",
            ">;"
        }
    .end annotation

    .line 422
    iget-object v0, p0, Lorg/checkerframework/com/google/common/util/concurrent/ServiceManager;->state:Lorg/checkerframework/com/google/common/util/concurrent/ServiceManager$ServiceManagerState;

    invoke-virtual {v0}, Lorg/checkerframework/com/google/common/util/concurrent/ServiceManager$ServiceManagerState;->servicesByState()Lorg/checkerframework/com/google/common/collect/ImmutableMultimap;

    move-result-object v0

    return-object v0
.end method

.method public startAsync()Lorg/checkerframework/com/google/common/util/concurrent/ServiceManager;
    .locals 7

    .line 288
    iget-object v0, p0, Lorg/checkerframework/com/google/common/util/concurrent/ServiceManager;->services:Lorg/checkerframework/com/google/common/collect/ImmutableList;

    invoke-virtual {v0}, Lorg/checkerframework/com/google/common/collect/ImmutableList;->iterator()Lorg/checkerframework/com/google/common/collect/UnmodifiableIterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/checkerframework/com/google/common/util/concurrent/Service;

    .line 289
    .local v1, "service":Lorg/checkerframework/com/google/common/util/concurrent/Service;
    invoke-interface {v1}, Lorg/checkerframework/com/google/common/util/concurrent/Service;->state()Lorg/checkerframework/com/google/common/util/concurrent/Service$State;

    move-result-object v2

    .line 290
    .local v2, "state":Lorg/checkerframework/com/google/common/util/concurrent/Service$State;
    sget-object v3, Lorg/checkerframework/com/google/common/util/concurrent/Service$State;->NEW:Lorg/checkerframework/com/google/common/util/concurrent/Service$State;

    if-ne v2, v3, :cond_0

    const/4 v3, 0x1

    goto :goto_1

    :cond_0
    const/4 v3, 0x0

    :goto_1
    const-string v4, "Service %s is %s, cannot start it."

    invoke-static {v3, v4, v1, v2}, Lorg/checkerframework/com/google/common/base/Preconditions;->checkState(ZLjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 291
    .end local v1    # "service":Lorg/checkerframework/com/google/common/util/concurrent/Service;
    .end local v2    # "state":Lorg/checkerframework/com/google/common/util/concurrent/Service$State;
    goto :goto_0

    .line 292
    :cond_1
    iget-object v0, p0, Lorg/checkerframework/com/google/common/util/concurrent/ServiceManager;->services:Lorg/checkerframework/com/google/common/collect/ImmutableList;

    invoke-virtual {v0}, Lorg/checkerframework/com/google/common/collect/ImmutableList;->iterator()Lorg/checkerframework/com/google/common/collect/UnmodifiableIterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/checkerframework/com/google/common/util/concurrent/Service;

    .line 294
    .restart local v1    # "service":Lorg/checkerframework/com/google/common/util/concurrent/Service;
    :try_start_0
    iget-object v2, p0, Lorg/checkerframework/com/google/common/util/concurrent/ServiceManager;->state:Lorg/checkerframework/com/google/common/util/concurrent/ServiceManager$ServiceManagerState;

    invoke-virtual {v2, v1}, Lorg/checkerframework/com/google/common/util/concurrent/ServiceManager$ServiceManagerState;->tryStartTiming(Lorg/checkerframework/com/google/common/util/concurrent/Service;)V

    .line 295
    invoke-interface {v1}, Lorg/checkerframework/com/google/common/util/concurrent/Service;->startAsync()Lorg/checkerframework/com/google/common/util/concurrent/Service;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 302
    goto :goto_3

    .line 296
    :catch_0
    move-exception v2

    .line 301
    .local v2, "e":Ljava/lang/IllegalStateException;
    sget-object v3, Lorg/checkerframework/com/google/common/util/concurrent/ServiceManager;->logger:Ljava/util/logging/Logger;

    sget-object v4, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unable to start Service "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 303
    .end local v1    # "service":Lorg/checkerframework/com/google/common/util/concurrent/Service;
    .end local v2    # "e":Ljava/lang/IllegalStateException;
    :goto_3
    goto :goto_2

    .line 304
    :cond_2
    return-object p0
.end method

.method public startupTimes()Lorg/checkerframework/com/google/common/collect/ImmutableMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/checkerframework/com/google/common/collect/ImmutableMap<",
            "Lorg/checkerframework/com/google/common/util/concurrent/Service;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 433
    iget-object v0, p0, Lorg/checkerframework/com/google/common/util/concurrent/ServiceManager;->state:Lorg/checkerframework/com/google/common/util/concurrent/ServiceManager$ServiceManagerState;

    invoke-virtual {v0}, Lorg/checkerframework/com/google/common/util/concurrent/ServiceManager$ServiceManagerState;->startupTimes()Lorg/checkerframework/com/google/common/collect/ImmutableMap;

    move-result-object v0

    return-object v0
.end method

.method public stopAsync()Lorg/checkerframework/com/google/common/util/concurrent/ServiceManager;
    .locals 2

    .line 358
    iget-object v0, p0, Lorg/checkerframework/com/google/common/util/concurrent/ServiceManager;->services:Lorg/checkerframework/com/google/common/collect/ImmutableList;

    invoke-virtual {v0}, Lorg/checkerframework/com/google/common/collect/ImmutableList;->iterator()Lorg/checkerframework/com/google/common/collect/UnmodifiableIterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/checkerframework/com/google/common/util/concurrent/Service;

    .line 359
    .local v1, "service":Lorg/checkerframework/com/google/common/util/concurrent/Service;
    invoke-interface {v1}, Lorg/checkerframework/com/google/common/util/concurrent/Service;->stopAsync()Lorg/checkerframework/com/google/common/util/concurrent/Service;

    .line 360
    .end local v1    # "service":Lorg/checkerframework/com/google/common/util/concurrent/Service;
    goto :goto_0

    .line 361
    :cond_0
    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 438
    const-class v0, Lorg/checkerframework/com/google/common/util/concurrent/ServiceManager;

    invoke-static {v0}, Lorg/checkerframework/com/google/common/base/MoreObjects;->toStringHelper(Ljava/lang/Class;)Lorg/checkerframework/com/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    iget-object v1, p0, Lorg/checkerframework/com/google/common/util/concurrent/ServiceManager;->services:Lorg/checkerframework/com/google/common/collect/ImmutableList;

    const-class v2, Lorg/checkerframework/com/google/common/util/concurrent/ServiceManager$NoOpService;

    .line 439
    invoke-static {v2}, Lorg/checkerframework/com/google/common/base/Predicates;->instanceOf(Ljava/lang/Class;)Lorg/checkerframework/com/google/common/base/Predicate;

    move-result-object v2

    invoke-static {v2}, Lorg/checkerframework/com/google/common/base/Predicates;->not(Lorg/checkerframework/com/google/common/base/Predicate;)Lorg/checkerframework/com/google/common/base/Predicate;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/checkerframework/com/google/common/collect/Collections2;->filter(Ljava/util/Collection;Lorg/checkerframework/com/google/common/base/Predicate;)Ljava/util/Collection;

    move-result-object v1

    const-string v2, "services"

    invoke-virtual {v0, v2, v1}, Lorg/checkerframework/com/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lorg/checkerframework/com/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    .line 440
    invoke-virtual {v0}, Lorg/checkerframework/com/google/common/base/MoreObjects$ToStringHelper;->toString()Ljava/lang/String;

    move-result-object v0

    .line 438
    return-object v0
.end method
