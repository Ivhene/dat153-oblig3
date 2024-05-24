.class final Lorg/checkerframework/com/google/common/util/concurrent/ServiceManager$ServiceManagerState;
.super Ljava/lang/Object;
.source "ServiceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/com/google/common/util/concurrent/ServiceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ServiceManagerState"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/checkerframework/com/google/common/util/concurrent/ServiceManager$ServiceManagerState$StoppedGuard;,
        Lorg/checkerframework/com/google/common/util/concurrent/ServiceManager$ServiceManagerState$AwaitHealthGuard;
    }
.end annotation


# instance fields
.field final awaitHealthGuard:Lorg/checkerframework/com/google/common/util/concurrent/Monitor$Guard;

.field final listeners:Lorg/checkerframework/com/google/common/util/concurrent/ListenerCallQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/checkerframework/com/google/common/util/concurrent/ListenerCallQueue<",
            "Lorg/checkerframework/com/google/common/util/concurrent/ServiceManager$Listener;",
            ">;"
        }
    .end annotation
.end field

.field final monitor:Lorg/checkerframework/com/google/common/util/concurrent/Monitor;

.field final numberOfServices:I

.field ready:Z

.field final servicesByState:Lorg/checkerframework/com/google/common/collect/SetMultimap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/checkerframework/com/google/common/collect/SetMultimap<",
            "Lorg/checkerframework/com/google/common/util/concurrent/Service$State;",
            "Lorg/checkerframework/com/google/common/util/concurrent/Service;",
            ">;"
        }
    .end annotation
.end field

.field final startupTimers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lorg/checkerframework/com/google/common/util/concurrent/Service;",
            "Lorg/checkerframework/com/google/common/base/Stopwatch;",
            ">;"
        }
    .end annotation
.end field

.field final states:Lorg/checkerframework/com/google/common/collect/Multiset;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/checkerframework/com/google/common/collect/Multiset<",
            "Lorg/checkerframework/com/google/common/util/concurrent/Service$State;",
            ">;"
        }
    .end annotation
.end field

.field final stoppedGuard:Lorg/checkerframework/com/google/common/util/concurrent/Monitor$Guard;

.field transitioned:Z


# direct methods
.method constructor <init>(Lorg/checkerframework/com/google/common/collect/ImmutableCollection;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/google/common/collect/ImmutableCollection<",
            "Lorg/checkerframework/com/google/common/util/concurrent/Service;",
            ">;)V"
        }
    .end annotation

    .line 529
    .local p1, "services":Lorg/checkerframework/com/google/common/collect/ImmutableCollection;, "Lorg/checkerframework/com/google/common/collect/ImmutableCollection<Lorg/checkerframework/com/google/common/util/concurrent/Service;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 448
    new-instance v0, Lorg/checkerframework/com/google/common/util/concurrent/Monitor;

    invoke-direct {v0}, Lorg/checkerframework/com/google/common/util/concurrent/Monitor;-><init>()V

    iput-object v0, p0, Lorg/checkerframework/com/google/common/util/concurrent/ServiceManager$ServiceManagerState;->monitor:Lorg/checkerframework/com/google/common/util/concurrent/Monitor;

    .line 450
    const-class v0, Lorg/checkerframework/com/google/common/util/concurrent/Service$State;

    .line 452
    invoke-static {v0}, Lorg/checkerframework/com/google/common/collect/MultimapBuilder;->enumKeys(Ljava/lang/Class;)Lorg/checkerframework/com/google/common/collect/MultimapBuilder$MultimapBuilderWithKeys;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/com/google/common/collect/MultimapBuilder$MultimapBuilderWithKeys;->linkedHashSetValues()Lorg/checkerframework/com/google/common/collect/MultimapBuilder$SetMultimapBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/com/google/common/collect/MultimapBuilder$SetMultimapBuilder;->build()Lorg/checkerframework/com/google/common/collect/SetMultimap;

    move-result-object v0

    iput-object v0, p0, Lorg/checkerframework/com/google/common/util/concurrent/ServiceManager$ServiceManagerState;->servicesByState:Lorg/checkerframework/com/google/common/collect/SetMultimap;

    .line 454
    nop

    .line 455
    invoke-interface {v0}, Lorg/checkerframework/com/google/common/collect/SetMultimap;->keys()Lorg/checkerframework/com/google/common/collect/Multiset;

    move-result-object v1

    iput-object v1, p0, Lorg/checkerframework/com/google/common/util/concurrent/ServiceManager$ServiceManagerState;->states:Lorg/checkerframework/com/google/common/collect/Multiset;

    .line 457
    nop

    .line 458
    invoke-static {}, Lorg/checkerframework/com/google/common/collect/Maps;->newIdentityHashMap()Ljava/util/IdentityHashMap;

    move-result-object v1

    iput-object v1, p0, Lorg/checkerframework/com/google/common/util/concurrent/ServiceManager$ServiceManagerState;->startupTimers:Ljava/util/Map;

    .line 485
    new-instance v1, Lorg/checkerframework/com/google/common/util/concurrent/ServiceManager$ServiceManagerState$AwaitHealthGuard;

    invoke-direct {v1, p0}, Lorg/checkerframework/com/google/common/util/concurrent/ServiceManager$ServiceManagerState$AwaitHealthGuard;-><init>(Lorg/checkerframework/com/google/common/util/concurrent/ServiceManager$ServiceManagerState;)V

    iput-object v1, p0, Lorg/checkerframework/com/google/common/util/concurrent/ServiceManager$ServiceManagerState;->awaitHealthGuard:Lorg/checkerframework/com/google/common/util/concurrent/Monitor$Guard;

    .line 505
    new-instance v1, Lorg/checkerframework/com/google/common/util/concurrent/ServiceManager$ServiceManagerState$StoppedGuard;

    invoke-direct {v1, p0}, Lorg/checkerframework/com/google/common/util/concurrent/ServiceManager$ServiceManagerState$StoppedGuard;-><init>(Lorg/checkerframework/com/google/common/util/concurrent/ServiceManager$ServiceManagerState;)V

    iput-object v1, p0, Lorg/checkerframework/com/google/common/util/concurrent/ServiceManager$ServiceManagerState;->stoppedGuard:Lorg/checkerframework/com/google/common/util/concurrent/Monitor$Guard;

    .line 521
    new-instance v1, Lorg/checkerframework/com/google/common/util/concurrent/ListenerCallQueue;

    invoke-direct {v1}, Lorg/checkerframework/com/google/common/util/concurrent/ListenerCallQueue;-><init>()V

    iput-object v1, p0, Lorg/checkerframework/com/google/common/util/concurrent/ServiceManager$ServiceManagerState;->listeners:Lorg/checkerframework/com/google/common/util/concurrent/ListenerCallQueue;

    .line 530
    invoke-virtual {p1}, Lorg/checkerframework/com/google/common/collect/ImmutableCollection;->size()I

    move-result v1

    iput v1, p0, Lorg/checkerframework/com/google/common/util/concurrent/ServiceManager$ServiceManagerState;->numberOfServices:I

    .line 531
    sget-object v1, Lorg/checkerframework/com/google/common/util/concurrent/Service$State;->NEW:Lorg/checkerframework/com/google/common/util/concurrent/Service$State;

    invoke-interface {v0, v1, p1}, Lorg/checkerframework/com/google/common/collect/SetMultimap;->putAll(Ljava/lang/Object;Ljava/lang/Iterable;)Z

    .line 532
    return-void
.end method


# virtual methods
.method addListener(Lorg/checkerframework/com/google/common/util/concurrent/ServiceManager$Listener;Ljava/util/concurrent/Executor;)V
    .locals 1
    .param p1, "listener"    # Lorg/checkerframework/com/google/common/util/concurrent/ServiceManager$Listener;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;

    .line 579
    iget-object v0, p0, Lorg/checkerframework/com/google/common/util/concurrent/ServiceManager$ServiceManagerState;->listeners:Lorg/checkerframework/com/google/common/util/concurrent/ListenerCallQueue;

    invoke-virtual {v0, p1, p2}, Lorg/checkerframework/com/google/common/util/concurrent/ListenerCallQueue;->addListener(Ljava/lang/Object;Ljava/util/concurrent/Executor;)V

    .line 580
    return-void
.end method

.method awaitHealthy()V
    .locals 2

    .line 583
    iget-object v0, p0, Lorg/checkerframework/com/google/common/util/concurrent/ServiceManager$ServiceManagerState;->monitor:Lorg/checkerframework/com/google/common/util/concurrent/Monitor;

    iget-object v1, p0, Lorg/checkerframework/com/google/common/util/concurrent/ServiceManager$ServiceManagerState;->awaitHealthGuard:Lorg/checkerframework/com/google/common/util/concurrent/Monitor$Guard;

    invoke-virtual {v0, v1}, Lorg/checkerframework/com/google/common/util/concurrent/Monitor;->enterWhenUninterruptibly(Lorg/checkerframework/com/google/common/util/concurrent/Monitor$Guard;)V

    .line 585
    :try_start_0
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/util/concurrent/ServiceManager$ServiceManagerState;->checkHealthy()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 587
    iget-object v0, p0, Lorg/checkerframework/com/google/common/util/concurrent/ServiceManager$ServiceManagerState;->monitor:Lorg/checkerframework/com/google/common/util/concurrent/Monitor;

    invoke-virtual {v0}, Lorg/checkerframework/com/google/common/util/concurrent/Monitor;->leave()V

    .line 588
    nop

    .line 589
    return-void

    .line 587
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/checkerframework/com/google/common/util/concurrent/ServiceManager$ServiceManagerState;->monitor:Lorg/checkerframework/com/google/common/util/concurrent/Monitor;

    invoke-virtual {v1}, Lorg/checkerframework/com/google/common/util/concurrent/Monitor;->leave()V

    .line 588
    throw v0
.end method

.method awaitHealthy(JLjava/util/concurrent/TimeUnit;)V
    .locals 5
    .param p1, "timeout"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    .line 592
    iget-object v0, p0, Lorg/checkerframework/com/google/common/util/concurrent/ServiceManager$ServiceManagerState;->monitor:Lorg/checkerframework/com/google/common/util/concurrent/Monitor;

    invoke-virtual {v0}, Lorg/checkerframework/com/google/common/util/concurrent/Monitor;->enter()V

    .line 594
    :try_start_0
    iget-object v0, p0, Lorg/checkerframework/com/google/common/util/concurrent/ServiceManager$ServiceManagerState;->monitor:Lorg/checkerframework/com/google/common/util/concurrent/Monitor;

    iget-object v1, p0, Lorg/checkerframework/com/google/common/util/concurrent/ServiceManager$ServiceManagerState;->awaitHealthGuard:Lorg/checkerframework/com/google/common/util/concurrent/Monitor$Guard;

    invoke-virtual {v0, v1, p1, p2, p3}, Lorg/checkerframework/com/google/common/util/concurrent/Monitor;->waitForUninterruptibly(Lorg/checkerframework/com/google/common/util/concurrent/Monitor$Guard;JLjava/util/concurrent/TimeUnit;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 600
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/util/concurrent/ServiceManager$ServiceManagerState;->checkHealthy()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 602
    iget-object v0, p0, Lorg/checkerframework/com/google/common/util/concurrent/ServiceManager$ServiceManagerState;->monitor:Lorg/checkerframework/com/google/common/util/concurrent/Monitor;

    invoke-virtual {v0}, Lorg/checkerframework/com/google/common/util/concurrent/Monitor;->leave()V

    .line 603
    nop

    .line 604
    return-void

    .line 595
    :cond_0
    :try_start_1
    new-instance v0, Ljava/util/concurrent/TimeoutException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Timeout waiting for the services to become healthy. The following services have not started: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/checkerframework/com/google/common/util/concurrent/ServiceManager$ServiceManagerState;->servicesByState:Lorg/checkerframework/com/google/common/collect/SetMultimap;

    sget-object v3, Lorg/checkerframework/com/google/common/util/concurrent/Service$State;->NEW:Lorg/checkerframework/com/google/common/util/concurrent/Service$State;

    sget-object v4, Lorg/checkerframework/com/google/common/util/concurrent/Service$State;->STARTING:Lorg/checkerframework/com/google/common/util/concurrent/Service$State;

    .line 598
    invoke-static {v3, v4}, Lorg/checkerframework/com/google/common/collect/ImmutableSet;->of(Ljava/lang/Object;Ljava/lang/Object;)Lorg/checkerframework/com/google/common/collect/ImmutableSet;

    move-result-object v3

    invoke-static {v3}, Lorg/checkerframework/com/google/common/base/Predicates;->in(Ljava/util/Collection;)Lorg/checkerframework/com/google/common/base/Predicate;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/checkerframework/com/google/common/collect/Multimaps;->filterKeys(Lorg/checkerframework/com/google/common/collect/SetMultimap;Lorg/checkerframework/com/google/common/base/Predicate;)Lorg/checkerframework/com/google/common/collect/SetMultimap;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/concurrent/TimeoutException;-><init>(Ljava/lang/String;)V

    .end local p1    # "timeout":J
    .end local p3    # "unit":Ljava/util/concurrent/TimeUnit;
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 602
    .restart local p1    # "timeout":J
    .restart local p3    # "unit":Ljava/util/concurrent/TimeUnit;
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/checkerframework/com/google/common/util/concurrent/ServiceManager$ServiceManagerState;->monitor:Lorg/checkerframework/com/google/common/util/concurrent/Monitor;

    invoke-virtual {v1}, Lorg/checkerframework/com/google/common/util/concurrent/Monitor;->leave()V

    .line 603
    throw v0
.end method

.method awaitStopped()V
    .locals 2

    .line 607
    iget-object v0, p0, Lorg/checkerframework/com/google/common/util/concurrent/ServiceManager$ServiceManagerState;->monitor:Lorg/checkerframework/com/google/common/util/concurrent/Monitor;

    iget-object v1, p0, Lorg/checkerframework/com/google/common/util/concurrent/ServiceManager$ServiceManagerState;->stoppedGuard:Lorg/checkerframework/com/google/common/util/concurrent/Monitor$Guard;

    invoke-virtual {v0, v1}, Lorg/checkerframework/com/google/common/util/concurrent/Monitor;->enterWhenUninterruptibly(Lorg/checkerframework/com/google/common/util/concurrent/Monitor$Guard;)V

    .line 608
    iget-object v0, p0, Lorg/checkerframework/com/google/common/util/concurrent/ServiceManager$ServiceManagerState;->monitor:Lorg/checkerframework/com/google/common/util/concurrent/Monitor;

    invoke-virtual {v0}, Lorg/checkerframework/com/google/common/util/concurrent/Monitor;->leave()V

    .line 609
    return-void
.end method

.method awaitStopped(JLjava/util/concurrent/TimeUnit;)V
    .locals 5
    .param p1, "timeout"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    .line 612
    iget-object v0, p0, Lorg/checkerframework/com/google/common/util/concurrent/ServiceManager$ServiceManagerState;->monitor:Lorg/checkerframework/com/google/common/util/concurrent/Monitor;

    invoke-virtual {v0}, Lorg/checkerframework/com/google/common/util/concurrent/Monitor;->enter()V

    .line 614
    :try_start_0
    iget-object v0, p0, Lorg/checkerframework/com/google/common/util/concurrent/ServiceManager$ServiceManagerState;->monitor:Lorg/checkerframework/com/google/common/util/concurrent/Monitor;

    iget-object v1, p0, Lorg/checkerframework/com/google/common/util/concurrent/ServiceManager$ServiceManagerState;->stoppedGuard:Lorg/checkerframework/com/google/common/util/concurrent/Monitor$Guard;

    invoke-virtual {v0, v1, p1, p2, p3}, Lorg/checkerframework/com/google/common/util/concurrent/Monitor;->waitForUninterruptibly(Lorg/checkerframework/com/google/common/util/concurrent/Monitor$Guard;JLjava/util/concurrent/TimeUnit;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 621
    iget-object v0, p0, Lorg/checkerframework/com/google/common/util/concurrent/ServiceManager$ServiceManagerState;->monitor:Lorg/checkerframework/com/google/common/util/concurrent/Monitor;

    invoke-virtual {v0}, Lorg/checkerframework/com/google/common/util/concurrent/Monitor;->leave()V

    .line 622
    nop

    .line 623
    return-void

    .line 615
    :cond_0
    :try_start_1
    new-instance v0, Ljava/util/concurrent/TimeoutException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Timeout waiting for the services to stop. The following services have not stopped: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/checkerframework/com/google/common/util/concurrent/ServiceManager$ServiceManagerState;->servicesByState:Lorg/checkerframework/com/google/common/collect/SetMultimap;

    sget-object v3, Lorg/checkerframework/com/google/common/util/concurrent/Service$State;->TERMINATED:Lorg/checkerframework/com/google/common/util/concurrent/Service$State;

    sget-object v4, Lorg/checkerframework/com/google/common/util/concurrent/Service$State;->FAILED:Lorg/checkerframework/com/google/common/util/concurrent/Service$State;

    .line 618
    invoke-static {v3, v4}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v3

    invoke-static {v3}, Lorg/checkerframework/com/google/common/base/Predicates;->in(Ljava/util/Collection;)Lorg/checkerframework/com/google/common/base/Predicate;

    move-result-object v3

    invoke-static {v3}, Lorg/checkerframework/com/google/common/base/Predicates;->not(Lorg/checkerframework/com/google/common/base/Predicate;)Lorg/checkerframework/com/google/common/base/Predicate;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/checkerframework/com/google/common/collect/Multimaps;->filterKeys(Lorg/checkerframework/com/google/common/collect/SetMultimap;Lorg/checkerframework/com/google/common/base/Predicate;)Lorg/checkerframework/com/google/common/collect/SetMultimap;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/concurrent/TimeoutException;-><init>(Ljava/lang/String;)V

    .end local p1    # "timeout":J
    .end local p3    # "unit":Ljava/util/concurrent/TimeUnit;
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 621
    .restart local p1    # "timeout":J
    .restart local p3    # "unit":Ljava/util/concurrent/TimeUnit;
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/checkerframework/com/google/common/util/concurrent/ServiceManager$ServiceManagerState;->monitor:Lorg/checkerframework/com/google/common/util/concurrent/Monitor;

    invoke-virtual {v1}, Lorg/checkerframework/com/google/common/util/concurrent/Monitor;->leave()V

    .line 622
    throw v0
.end method

.method checkHealthy()V
    .locals 4

    .line 769
    iget-object v0, p0, Lorg/checkerframework/com/google/common/util/concurrent/ServiceManager$ServiceManagerState;->states:Lorg/checkerframework/com/google/common/collect/Multiset;

    sget-object v1, Lorg/checkerframework/com/google/common/util/concurrent/Service$State;->RUNNING:Lorg/checkerframework/com/google/common/util/concurrent/Service$State;

    invoke-interface {v0, v1}, Lorg/checkerframework/com/google/common/collect/Multiset;->count(Ljava/lang/Object;)I

    move-result v0

    iget v1, p0, Lorg/checkerframework/com/google/common/util/concurrent/ServiceManager$ServiceManagerState;->numberOfServices:I

    if-eq v0, v1, :cond_1

    .line 770
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected to be healthy after starting. The following services are not running: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/checkerframework/com/google/common/util/concurrent/ServiceManager$ServiceManagerState;->servicesByState:Lorg/checkerframework/com/google/common/collect/SetMultimap;

    sget-object v3, Lorg/checkerframework/com/google/common/util/concurrent/Service$State;->RUNNING:Lorg/checkerframework/com/google/common/util/concurrent/Service$State;

    .line 773
    invoke-static {v3}, Lorg/checkerframework/com/google/common/base/Predicates;->equalTo(Ljava/lang/Object;)Lorg/checkerframework/com/google/common/base/Predicate;

    move-result-object v3

    invoke-static {v3}, Lorg/checkerframework/com/google/common/base/Predicates;->not(Lorg/checkerframework/com/google/common/base/Predicate;)Lorg/checkerframework/com/google/common/base/Predicate;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/checkerframework/com/google/common/collect/Multimaps;->filterKeys(Lorg/checkerframework/com/google/common/collect/SetMultimap;Lorg/checkerframework/com/google/common/base/Predicate;)Lorg/checkerframework/com/google/common/collect/SetMultimap;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 774
    .local v0, "exception":Ljava/lang/IllegalStateException;
    iget-object v1, p0, Lorg/checkerframework/com/google/common/util/concurrent/ServiceManager$ServiceManagerState;->servicesByState:Lorg/checkerframework/com/google/common/collect/SetMultimap;

    sget-object v2, Lorg/checkerframework/com/google/common/util/concurrent/Service$State;->FAILED:Lorg/checkerframework/com/google/common/util/concurrent/Service$State;

    invoke-interface {v1, v2}, Lorg/checkerframework/com/google/common/collect/SetMultimap;->get(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/checkerframework/com/google/common/util/concurrent/Service;

    .line 775
    .local v2, "service":Lorg/checkerframework/com/google/common/util/concurrent/Service;
    new-instance v3, Lorg/checkerframework/com/google/common/util/concurrent/ServiceManager$FailedService;

    invoke-direct {v3, v2}, Lorg/checkerframework/com/google/common/util/concurrent/ServiceManager$FailedService;-><init>(Lorg/checkerframework/com/google/common/util/concurrent/Service;)V

    invoke-virtual {v0, v3}, Ljava/lang/IllegalStateException;->addSuppressed(Ljava/lang/Throwable;)V

    .line 776
    .end local v2    # "service":Lorg/checkerframework/com/google/common/util/concurrent/Service;
    goto :goto_0

    .line 777
    :cond_0
    throw v0

    .line 779
    .end local v0    # "exception":Ljava/lang/IllegalStateException;
    :cond_1
    return-void
.end method

.method dispatchListenerEvents()V
    .locals 2

    .line 761
    iget-object v0, p0, Lorg/checkerframework/com/google/common/util/concurrent/ServiceManager$ServiceManagerState;->monitor:Lorg/checkerframework/com/google/common/util/concurrent/Monitor;

    .line 762
    invoke-virtual {v0}, Lorg/checkerframework/com/google/common/util/concurrent/Monitor;->isOccupiedByCurrentThread()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 761
    const-string v1, "It is incorrect to execute listeners with the monitor held."

    invoke-static {v0, v1}, Lorg/checkerframework/com/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 764
    iget-object v0, p0, Lorg/checkerframework/com/google/common/util/concurrent/ServiceManager$ServiceManagerState;->listeners:Lorg/checkerframework/com/google/common/util/concurrent/ListenerCallQueue;

    invoke-virtual {v0}, Lorg/checkerframework/com/google/common/util/concurrent/ListenerCallQueue;->dispatch()V

    .line 765
    return-void
.end method

.method enqueueFailedEvent(Lorg/checkerframework/com/google/common/util/concurrent/Service;)V
    .locals 2
    .param p1, "service"    # Lorg/checkerframework/com/google/common/util/concurrent/Service;

    .line 745
    iget-object v0, p0, Lorg/checkerframework/com/google/common/util/concurrent/ServiceManager$ServiceManagerState;->listeners:Lorg/checkerframework/com/google/common/util/concurrent/ListenerCallQueue;

    new-instance v1, Lorg/checkerframework/com/google/common/util/concurrent/ServiceManager$ServiceManagerState$2;

    invoke-direct {v1, p0, p1}, Lorg/checkerframework/com/google/common/util/concurrent/ServiceManager$ServiceManagerState$2;-><init>(Lorg/checkerframework/com/google/common/util/concurrent/ServiceManager$ServiceManagerState;Lorg/checkerframework/com/google/common/util/concurrent/Service;)V

    invoke-virtual {v0, v1}, Lorg/checkerframework/com/google/common/util/concurrent/ListenerCallQueue;->enqueue(Lorg/checkerframework/com/google/common/util/concurrent/ListenerCallQueue$Event;)V

    .line 757
    return-void
.end method

.method enqueueHealthyEvent()V
    .locals 2

    .line 741
    iget-object v0, p0, Lorg/checkerframework/com/google/common/util/concurrent/ServiceManager$ServiceManagerState;->listeners:Lorg/checkerframework/com/google/common/util/concurrent/ListenerCallQueue;

    invoke-static {}, Lorg/checkerframework/com/google/common/util/concurrent/ServiceManager;->access$400()Lorg/checkerframework/com/google/common/util/concurrent/ListenerCallQueue$Event;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/checkerframework/com/google/common/util/concurrent/ListenerCallQueue;->enqueue(Lorg/checkerframework/com/google/common/util/concurrent/ListenerCallQueue$Event;)V

    .line 742
    return-void
.end method

.method enqueueStoppedEvent()V
    .locals 2

    .line 737
    iget-object v0, p0, Lorg/checkerframework/com/google/common/util/concurrent/ServiceManager$ServiceManagerState;->listeners:Lorg/checkerframework/com/google/common/util/concurrent/ListenerCallQueue;

    invoke-static {}, Lorg/checkerframework/com/google/common/util/concurrent/ServiceManager;->access$300()Lorg/checkerframework/com/google/common/util/concurrent/ListenerCallQueue$Event;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/checkerframework/com/google/common/util/concurrent/ListenerCallQueue;->enqueue(Lorg/checkerframework/com/google/common/util/concurrent/ListenerCallQueue$Event;)V

    .line 738
    return-void
.end method

.method markReady()V
    .locals 5

    .line 555
    iget-object v0, p0, Lorg/checkerframework/com/google/common/util/concurrent/ServiceManager$ServiceManagerState;->monitor:Lorg/checkerframework/com/google/common/util/concurrent/Monitor;

    invoke-virtual {v0}, Lorg/checkerframework/com/google/common/util/concurrent/Monitor;->enter()V

    .line 557
    :try_start_0
    iget-boolean v0, p0, Lorg/checkerframework/com/google/common/util/concurrent/ServiceManager$ServiceManagerState;->transitioned:Z

    if-nez v0, :cond_0

    .line 559
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/checkerframework/com/google/common/util/concurrent/ServiceManager$ServiceManagerState;->ready:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 574
    iget-object v0, p0, Lorg/checkerframework/com/google/common/util/concurrent/ServiceManager$ServiceManagerState;->monitor:Lorg/checkerframework/com/google/common/util/concurrent/Monitor;

    invoke-virtual {v0}, Lorg/checkerframework/com/google/common/util/concurrent/Monitor;->leave()V

    .line 575
    nop

    .line 576
    return-void

    .line 562
    :cond_0
    :try_start_1
    invoke-static {}, Lorg/checkerframework/com/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    .line 563
    .local v0, "servicesInBadStates":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/com/google/common/util/concurrent/Service;>;"
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/util/concurrent/ServiceManager$ServiceManagerState;->servicesByState()Lorg/checkerframework/com/google/common/collect/ImmutableMultimap;

    move-result-object v1

    invoke-virtual {v1}, Lorg/checkerframework/com/google/common/collect/ImmutableMultimap;->values()Lorg/checkerframework/com/google/common/collect/ImmutableCollection;

    move-result-object v1

    invoke-virtual {v1}, Lorg/checkerframework/com/google/common/collect/ImmutableCollection;->iterator()Lorg/checkerframework/com/google/common/collect/UnmodifiableIterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/checkerframework/com/google/common/util/concurrent/Service;

    .line 564
    .local v2, "service":Lorg/checkerframework/com/google/common/util/concurrent/Service;
    invoke-interface {v2}, Lorg/checkerframework/com/google/common/util/concurrent/Service;->state()Lorg/checkerframework/com/google/common/util/concurrent/Service$State;

    move-result-object v3

    sget-object v4, Lorg/checkerframework/com/google/common/util/concurrent/Service$State;->NEW:Lorg/checkerframework/com/google/common/util/concurrent/Service$State;

    if-eq v3, v4, :cond_1

    .line 565
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 567
    .end local v2    # "service":Lorg/checkerframework/com/google/common/util/concurrent/Service;
    :cond_1
    goto :goto_0

    .line 568
    :cond_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Services started transitioning asynchronously before the ServiceManager was constructed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 574
    .end local v0    # "servicesInBadStates":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/com/google/common/util/concurrent/Service;>;"
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/checkerframework/com/google/common/util/concurrent/ServiceManager$ServiceManagerState;->monitor:Lorg/checkerframework/com/google/common/util/concurrent/Monitor;

    invoke-virtual {v1}, Lorg/checkerframework/com/google/common/util/concurrent/Monitor;->leave()V

    .line 575
    throw v0
.end method

.method servicesByState()Lorg/checkerframework/com/google/common/collect/ImmutableMultimap;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/checkerframework/com/google/common/collect/ImmutableMultimap<",
            "Lorg/checkerframework/com/google/common/util/concurrent/Service$State;",
            "Lorg/checkerframework/com/google/common/util/concurrent/Service;",
            ">;"
        }
    .end annotation

    .line 626
    invoke-static {}, Lorg/checkerframework/com/google/common/collect/ImmutableSetMultimap;->builder()Lorg/checkerframework/com/google/common/collect/ImmutableSetMultimap$Builder;

    move-result-object v0

    .line 627
    .local v0, "builder":Lorg/checkerframework/com/google/common/collect/ImmutableSetMultimap$Builder;, "Lorg/checkerframework/com/google/common/collect/ImmutableSetMultimap$Builder<Lorg/checkerframework/com/google/common/util/concurrent/Service$State;Lorg/checkerframework/com/google/common/util/concurrent/Service;>;"
    iget-object v1, p0, Lorg/checkerframework/com/google/common/util/concurrent/ServiceManager$ServiceManagerState;->monitor:Lorg/checkerframework/com/google/common/util/concurrent/Monitor;

    invoke-virtual {v1}, Lorg/checkerframework/com/google/common/util/concurrent/Monitor;->enter()V

    .line 629
    :try_start_0
    iget-object v1, p0, Lorg/checkerframework/com/google/common/util/concurrent/ServiceManager$ServiceManagerState;->servicesByState:Lorg/checkerframework/com/google/common/collect/SetMultimap;

    invoke-interface {v1}, Lorg/checkerframework/com/google/common/collect/SetMultimap;->entries()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 630
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lorg/checkerframework/com/google/common/util/concurrent/Service$State;Lorg/checkerframework/com/google/common/util/concurrent/Service;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Lorg/checkerframework/com/google/common/util/concurrent/ServiceManager$NoOpService;

    if-nez v3, :cond_0

    .line 631
    invoke-virtual {v0, v2}, Lorg/checkerframework/com/google/common/collect/ImmutableSetMultimap$Builder;->put(Ljava/util/Map$Entry;)Lorg/checkerframework/com/google/common/collect/ImmutableSetMultimap$Builder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 633
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lorg/checkerframework/com/google/common/util/concurrent/Service$State;Lorg/checkerframework/com/google/common/util/concurrent/Service;>;"
    :cond_0
    goto :goto_0

    .line 635
    :cond_1
    iget-object v1, p0, Lorg/checkerframework/com/google/common/util/concurrent/ServiceManager$ServiceManagerState;->monitor:Lorg/checkerframework/com/google/common/util/concurrent/Monitor;

    invoke-virtual {v1}, Lorg/checkerframework/com/google/common/util/concurrent/Monitor;->leave()V

    .line 636
    nop

    .line 637
    invoke-virtual {v0}, Lorg/checkerframework/com/google/common/collect/ImmutableSetMultimap$Builder;->build()Lorg/checkerframework/com/google/common/collect/ImmutableSetMultimap;

    move-result-object v1

    return-object v1

    .line 635
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lorg/checkerframework/com/google/common/util/concurrent/ServiceManager$ServiceManagerState;->monitor:Lorg/checkerframework/com/google/common/util/concurrent/Monitor;

    invoke-virtual {v2}, Lorg/checkerframework/com/google/common/util/concurrent/Monitor;->leave()V

    .line 636
    throw v1
.end method

.method startupTimes()Lorg/checkerframework/com/google/common/collect/ImmutableMap;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/checkerframework/com/google/common/collect/ImmutableMap<",
            "Lorg/checkerframework/com/google/common/util/concurrent/Service;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 642
    iget-object v0, p0, Lorg/checkerframework/com/google/common/util/concurrent/ServiceManager$ServiceManagerState;->monitor:Lorg/checkerframework/com/google/common/util/concurrent/Monitor;

    invoke-virtual {v0}, Lorg/checkerframework/com/google/common/util/concurrent/Monitor;->enter()V

    .line 644
    :try_start_0
    iget-object v0, p0, Lorg/checkerframework/com/google/common/util/concurrent/ServiceManager$ServiceManagerState;->startupTimers:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    invoke-static {v0}, Lorg/checkerframework/com/google/common/collect/Lists;->newArrayListWithCapacity(I)Ljava/util/ArrayList;

    move-result-object v0

    .line 646
    .local v0, "loadTimes":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map$Entry<Lorg/checkerframework/com/google/common/util/concurrent/Service;Ljava/lang/Long;>;>;"
    iget-object v1, p0, Lorg/checkerframework/com/google/common/util/concurrent/ServiceManager$ServiceManagerState;->startupTimers:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 647
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lorg/checkerframework/com/google/common/util/concurrent/Service;Lorg/checkerframework/com/google/common/base/Stopwatch;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/checkerframework/com/google/common/util/concurrent/Service;

    .line 648
    .local v3, "service":Lorg/checkerframework/com/google/common/util/concurrent/Service;
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/checkerframework/com/google/common/base/Stopwatch;

    .line 649
    .local v4, "stopWatch":Lorg/checkerframework/com/google/common/base/Stopwatch;
    invoke-virtual {v4}, Lorg/checkerframework/com/google/common/base/Stopwatch;->isRunning()Z

    move-result v5

    if-nez v5, :cond_0

    instance-of v5, v3, Lorg/checkerframework/com/google/common/util/concurrent/ServiceManager$NoOpService;

    if-nez v5, :cond_0

    .line 650
    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v4, v5}, Lorg/checkerframework/com/google/common/base/Stopwatch;->elapsed(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-static {v3, v5}, Lorg/checkerframework/com/google/common/collect/Maps;->immutableEntry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 652
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lorg/checkerframework/com/google/common/util/concurrent/Service;Lorg/checkerframework/com/google/common/base/Stopwatch;>;"
    .end local v3    # "service":Lorg/checkerframework/com/google/common/util/concurrent/Service;
    .end local v4    # "stopWatch":Lorg/checkerframework/com/google/common/base/Stopwatch;
    :cond_0
    goto :goto_0

    .line 654
    :cond_1
    iget-object v1, p0, Lorg/checkerframework/com/google/common/util/concurrent/ServiceManager$ServiceManagerState;->monitor:Lorg/checkerframework/com/google/common/util/concurrent/Monitor;

    invoke-virtual {v1}, Lorg/checkerframework/com/google/common/util/concurrent/Monitor;->leave()V

    .line 655
    nop

    .line 656
    nop

    .line 658
    invoke-static {}, Lorg/checkerframework/com/google/common/collect/Ordering;->natural()Lorg/checkerframework/com/google/common/collect/Ordering;

    move-result-object v1

    new-instance v2, Lorg/checkerframework/com/google/common/util/concurrent/ServiceManager$ServiceManagerState$1;

    invoke-direct {v2, p0}, Lorg/checkerframework/com/google/common/util/concurrent/ServiceManager$ServiceManagerState$1;-><init>(Lorg/checkerframework/com/google/common/util/concurrent/ServiceManager$ServiceManagerState;)V

    .line 659
    invoke-virtual {v1, v2}, Lorg/checkerframework/com/google/common/collect/Ordering;->onResultOf(Lorg/checkerframework/com/google/common/base/Function;)Lorg/checkerframework/com/google/common/collect/Ordering;

    move-result-object v1

    .line 656
    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 666
    invoke-static {v0}, Lorg/checkerframework/com/google/common/collect/ImmutableMap;->copyOf(Ljava/lang/Iterable;)Lorg/checkerframework/com/google/common/collect/ImmutableMap;

    move-result-object v1

    return-object v1

    .line 654
    .end local v0    # "loadTimes":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map$Entry<Lorg/checkerframework/com/google/common/util/concurrent/Service;Ljava/lang/Long;>;>;"
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/checkerframework/com/google/common/util/concurrent/ServiceManager$ServiceManagerState;->monitor:Lorg/checkerframework/com/google/common/util/concurrent/Monitor;

    invoke-virtual {v1}, Lorg/checkerframework/com/google/common/util/concurrent/Monitor;->leave()V

    .line 655
    throw v0
.end method

.method transitionService(Lorg/checkerframework/com/google/common/util/concurrent/Service;Lorg/checkerframework/com/google/common/util/concurrent/Service$State;Lorg/checkerframework/com/google/common/util/concurrent/Service$State;)V
    .locals 5
    .param p1, "service"    # Lorg/checkerframework/com/google/common/util/concurrent/Service;
    .param p2, "from"    # Lorg/checkerframework/com/google/common/util/concurrent/Service$State;
    .param p3, "to"    # Lorg/checkerframework/com/google/common/util/concurrent/Service$State;

    .line 682
    invoke-static {p1}, Lorg/checkerframework/com/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 683
    const/4 v0, 0x1

    if-eq p2, p3, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Lorg/checkerframework/com/google/common/base/Preconditions;->checkArgument(Z)V

    .line 684
    iget-object v1, p0, Lorg/checkerframework/com/google/common/util/concurrent/ServiceManager$ServiceManagerState;->monitor:Lorg/checkerframework/com/google/common/util/concurrent/Monitor;

    invoke-virtual {v1}, Lorg/checkerframework/com/google/common/util/concurrent/Monitor;->enter()V

    .line 686
    :try_start_0
    iput-boolean v0, p0, Lorg/checkerframework/com/google/common/util/concurrent/ServiceManager$ServiceManagerState;->transitioned:Z

    .line 687
    iget-boolean v0, p0, Lorg/checkerframework/com/google/common/util/concurrent/ServiceManager$ServiceManagerState;->ready:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    .line 730
    iget-object v0, p0, Lorg/checkerframework/com/google/common/util/concurrent/ServiceManager$ServiceManagerState;->monitor:Lorg/checkerframework/com/google/common/util/concurrent/Monitor;

    invoke-virtual {v0}, Lorg/checkerframework/com/google/common/util/concurrent/Monitor;->leave()V

    .line 732
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/util/concurrent/ServiceManager$ServiceManagerState;->dispatchListenerEvents()V

    .line 688
    return-void

    .line 691
    :cond_1
    :try_start_1
    iget-object v0, p0, Lorg/checkerframework/com/google/common/util/concurrent/ServiceManager$ServiceManagerState;->servicesByState:Lorg/checkerframework/com/google/common/collect/SetMultimap;

    .line 692
    invoke-interface {v0, p2, p1}, Lorg/checkerframework/com/google/common/collect/SetMultimap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "Service %s not at the expected location in the state map %s"

    .line 691
    invoke-static {v0, v1, p1, p2}, Lorg/checkerframework/com/google/common/base/Preconditions;->checkState(ZLjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 696
    iget-object v0, p0, Lorg/checkerframework/com/google/common/util/concurrent/ServiceManager$ServiceManagerState;->servicesByState:Lorg/checkerframework/com/google/common/collect/SetMultimap;

    .line 697
    invoke-interface {v0, p3, p1}, Lorg/checkerframework/com/google/common/collect/SetMultimap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "Service %s in the state map unexpectedly at %s"

    .line 696
    invoke-static {v0, v1, p1, p3}, Lorg/checkerframework/com/google/common/base/Preconditions;->checkState(ZLjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 702
    iget-object v0, p0, Lorg/checkerframework/com/google/common/util/concurrent/ServiceManager$ServiceManagerState;->startupTimers:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/google/common/base/Stopwatch;

    .line 703
    .local v0, "stopwatch":Lorg/checkerframework/com/google/common/base/Stopwatch;
    if-nez v0, :cond_2

    .line 705
    invoke-static {}, Lorg/checkerframework/com/google/common/base/Stopwatch;->createStarted()Lorg/checkerframework/com/google/common/base/Stopwatch;

    move-result-object v1

    move-object v0, v1

    .line 706
    iget-object v1, p0, Lorg/checkerframework/com/google/common/util/concurrent/ServiceManager$ServiceManagerState;->startupTimers:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 708
    :cond_2
    sget-object v1, Lorg/checkerframework/com/google/common/util/concurrent/Service$State;->RUNNING:Lorg/checkerframework/com/google/common/util/concurrent/Service$State;

    invoke-virtual {p3, v1}, Lorg/checkerframework/com/google/common/util/concurrent/Service$State;->compareTo(Ljava/lang/Enum;)I

    move-result v1

    if-ltz v1, :cond_3

    invoke-virtual {v0}, Lorg/checkerframework/com/google/common/base/Stopwatch;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 710
    invoke-virtual {v0}, Lorg/checkerframework/com/google/common/base/Stopwatch;->stop()Lorg/checkerframework/com/google/common/base/Stopwatch;

    .line 711
    instance-of v1, p1, Lorg/checkerframework/com/google/common/util/concurrent/ServiceManager$NoOpService;

    if-nez v1, :cond_3

    .line 712
    invoke-static {}, Lorg/checkerframework/com/google/common/util/concurrent/ServiceManager;->access$200()Ljava/util/logging/Logger;

    move-result-object v1

    sget-object v2, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v3, "Started {0} in {1}."

    filled-new-array {p1, v0}, [Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 718
    :cond_3
    sget-object v1, Lorg/checkerframework/com/google/common/util/concurrent/Service$State;->FAILED:Lorg/checkerframework/com/google/common/util/concurrent/Service$State;

    if-ne p3, v1, :cond_4

    .line 719
    invoke-virtual {p0, p1}, Lorg/checkerframework/com/google/common/util/concurrent/ServiceManager$ServiceManagerState;->enqueueFailedEvent(Lorg/checkerframework/com/google/common/util/concurrent/Service;)V

    .line 722
    :cond_4
    iget-object v1, p0, Lorg/checkerframework/com/google/common/util/concurrent/ServiceManager$ServiceManagerState;->states:Lorg/checkerframework/com/google/common/collect/Multiset;

    sget-object v2, Lorg/checkerframework/com/google/common/util/concurrent/Service$State;->RUNNING:Lorg/checkerframework/com/google/common/util/concurrent/Service$State;

    invoke-interface {v1, v2}, Lorg/checkerframework/com/google/common/collect/Multiset;->count(Ljava/lang/Object;)I

    move-result v1

    iget v2, p0, Lorg/checkerframework/com/google/common/util/concurrent/ServiceManager$ServiceManagerState;->numberOfServices:I

    if-ne v1, v2, :cond_5

    .line 725
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/util/concurrent/ServiceManager$ServiceManagerState;->enqueueHealthyEvent()V

    goto :goto_1

    .line 726
    :cond_5
    iget-object v1, p0, Lorg/checkerframework/com/google/common/util/concurrent/ServiceManager$ServiceManagerState;->states:Lorg/checkerframework/com/google/common/collect/Multiset;

    sget-object v2, Lorg/checkerframework/com/google/common/util/concurrent/Service$State;->TERMINATED:Lorg/checkerframework/com/google/common/util/concurrent/Service$State;

    invoke-interface {v1, v2}, Lorg/checkerframework/com/google/common/collect/Multiset;->count(Ljava/lang/Object;)I

    move-result v1

    iget-object v2, p0, Lorg/checkerframework/com/google/common/util/concurrent/ServiceManager$ServiceManagerState;->states:Lorg/checkerframework/com/google/common/collect/Multiset;

    sget-object v3, Lorg/checkerframework/com/google/common/util/concurrent/Service$State;->FAILED:Lorg/checkerframework/com/google/common/util/concurrent/Service$State;

    invoke-interface {v2, v3}, Lorg/checkerframework/com/google/common/collect/Multiset;->count(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v1, v2

    iget v2, p0, Lorg/checkerframework/com/google/common/util/concurrent/ServiceManager$ServiceManagerState;->numberOfServices:I

    if-ne v1, v2, :cond_6

    .line 727
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/util/concurrent/ServiceManager$ServiceManagerState;->enqueueStoppedEvent()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 730
    .end local v0    # "stopwatch":Lorg/checkerframework/com/google/common/base/Stopwatch;
    :cond_6
    :goto_1
    iget-object v0, p0, Lorg/checkerframework/com/google/common/util/concurrent/ServiceManager$ServiceManagerState;->monitor:Lorg/checkerframework/com/google/common/util/concurrent/Monitor;

    invoke-virtual {v0}, Lorg/checkerframework/com/google/common/util/concurrent/Monitor;->leave()V

    .line 732
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/util/concurrent/ServiceManager$ServiceManagerState;->dispatchListenerEvents()V

    .line 733
    nop

    .line 734
    return-void

    .line 730
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/checkerframework/com/google/common/util/concurrent/ServiceManager$ServiceManagerState;->monitor:Lorg/checkerframework/com/google/common/util/concurrent/Monitor;

    invoke-virtual {v1}, Lorg/checkerframework/com/google/common/util/concurrent/Monitor;->leave()V

    .line 732
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/util/concurrent/ServiceManager$ServiceManagerState;->dispatchListenerEvents()V

    .line 733
    throw v0
.end method

.method tryStartTiming(Lorg/checkerframework/com/google/common/util/concurrent/Service;)V
    .locals 3
    .param p1, "service"    # Lorg/checkerframework/com/google/common/util/concurrent/Service;

    .line 539
    iget-object v0, p0, Lorg/checkerframework/com/google/common/util/concurrent/ServiceManager$ServiceManagerState;->monitor:Lorg/checkerframework/com/google/common/util/concurrent/Monitor;

    invoke-virtual {v0}, Lorg/checkerframework/com/google/common/util/concurrent/Monitor;->enter()V

    .line 541
    :try_start_0
    iget-object v0, p0, Lorg/checkerframework/com/google/common/util/concurrent/ServiceManager$ServiceManagerState;->startupTimers:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/google/common/base/Stopwatch;

    .line 542
    .local v0, "stopwatch":Lorg/checkerframework/com/google/common/base/Stopwatch;
    if-nez v0, :cond_0

    .line 543
    iget-object v1, p0, Lorg/checkerframework/com/google/common/util/concurrent/ServiceManager$ServiceManagerState;->startupTimers:Ljava/util/Map;

    invoke-static {}, Lorg/checkerframework/com/google/common/base/Stopwatch;->createStarted()Lorg/checkerframework/com/google/common/base/Stopwatch;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 546
    .end local v0    # "stopwatch":Lorg/checkerframework/com/google/common/base/Stopwatch;
    :cond_0
    iget-object v0, p0, Lorg/checkerframework/com/google/common/util/concurrent/ServiceManager$ServiceManagerState;->monitor:Lorg/checkerframework/com/google/common/util/concurrent/Monitor;

    invoke-virtual {v0}, Lorg/checkerframework/com/google/common/util/concurrent/Monitor;->leave()V

    .line 547
    nop

    .line 548
    return-void

    .line 546
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/checkerframework/com/google/common/util/concurrent/ServiceManager$ServiceManagerState;->monitor:Lorg/checkerframework/com/google/common/util/concurrent/Monitor;

    invoke-virtual {v1}, Lorg/checkerframework/com/google/common/util/concurrent/Monitor;->leave()V

    .line 547
    throw v0
.end method
