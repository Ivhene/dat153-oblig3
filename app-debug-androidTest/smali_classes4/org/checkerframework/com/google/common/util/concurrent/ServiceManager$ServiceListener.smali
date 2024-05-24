.class final Lorg/checkerframework/com/google/common/util/concurrent/ServiceManager$ServiceListener;
.super Lorg/checkerframework/com/google/common/util/concurrent/Service$Listener;
.source "ServiceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/com/google/common/util/concurrent/ServiceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ServiceListener"
.end annotation


# instance fields
.field final service:Lorg/checkerframework/com/google/common/util/concurrent/Service;

.field final state:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lorg/checkerframework/com/google/common/util/concurrent/ServiceManager$ServiceManagerState;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lorg/checkerframework/com/google/common/util/concurrent/Service;Ljava/lang/ref/WeakReference;)V
    .locals 0
    .param p1, "service"    # Lorg/checkerframework/com/google/common/util/concurrent/Service;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/google/common/util/concurrent/Service;",
            "Ljava/lang/ref/WeakReference<",
            "Lorg/checkerframework/com/google/common/util/concurrent/ServiceManager$ServiceManagerState;",
            ">;)V"
        }
    .end annotation

    .line 793
    .local p2, "state":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lorg/checkerframework/com/google/common/util/concurrent/ServiceManager$ServiceManagerState;>;"
    invoke-direct {p0}, Lorg/checkerframework/com/google/common/util/concurrent/Service$Listener;-><init>()V

    .line 794
    iput-object p1, p0, Lorg/checkerframework/com/google/common/util/concurrent/ServiceManager$ServiceListener;->service:Lorg/checkerframework/com/google/common/util/concurrent/Service;

    .line 795
    iput-object p2, p0, Lorg/checkerframework/com/google/common/util/concurrent/ServiceManager$ServiceListener;->state:Ljava/lang/ref/WeakReference;

    .line 796
    return-void
.end method


# virtual methods
.method public failed(Lorg/checkerframework/com/google/common/util/concurrent/Service$State;Ljava/lang/Throwable;)V
    .locals 6
    .param p1, "from"    # Lorg/checkerframework/com/google/common/util/concurrent/Service$State;
    .param p2, "failure"    # Ljava/lang/Throwable;

    .line 841
    iget-object v0, p0, Lorg/checkerframework/com/google/common/util/concurrent/ServiceManager$ServiceListener;->state:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/google/common/util/concurrent/ServiceManager$ServiceManagerState;

    .line 842
    .local v0, "state":Lorg/checkerframework/com/google/common/util/concurrent/ServiceManager$ServiceManagerState;
    if-eqz v0, :cond_2

    .line 845
    iget-object v1, p0, Lorg/checkerframework/com/google/common/util/concurrent/ServiceManager$ServiceListener;->service:Lorg/checkerframework/com/google/common/util/concurrent/Service;

    instance-of v1, v1, Lorg/checkerframework/com/google/common/util/concurrent/ServiceManager$NoOpService;

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    .line 850
    .local v1, "log":Z
    sget-object v3, Lorg/checkerframework/com/google/common/util/concurrent/Service$State;->STARTING:Lorg/checkerframework/com/google/common/util/concurrent/Service$State;

    if-eq p1, v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    and-int/2addr v1, v2

    .line 851
    if-eqz v1, :cond_1

    .line 852
    invoke-static {}, Lorg/checkerframework/com/google/common/util/concurrent/ServiceManager;->access$200()Ljava/util/logging/Logger;

    move-result-object v2

    sget-object v3, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Service "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lorg/checkerframework/com/google/common/util/concurrent/ServiceManager$ServiceListener;->service:Lorg/checkerframework/com/google/common/util/concurrent/Service;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " has failed in the "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " state."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4, p2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 857
    :cond_1
    iget-object v2, p0, Lorg/checkerframework/com/google/common/util/concurrent/ServiceManager$ServiceListener;->service:Lorg/checkerframework/com/google/common/util/concurrent/Service;

    sget-object v3, Lorg/checkerframework/com/google/common/util/concurrent/Service$State;->FAILED:Lorg/checkerframework/com/google/common/util/concurrent/Service$State;

    invoke-virtual {v0, v2, p1, v3}, Lorg/checkerframework/com/google/common/util/concurrent/ServiceManager$ServiceManagerState;->transitionService(Lorg/checkerframework/com/google/common/util/concurrent/Service;Lorg/checkerframework/com/google/common/util/concurrent/Service$State;Lorg/checkerframework/com/google/common/util/concurrent/Service$State;)V

    .line 859
    .end local v1    # "log":Z
    :cond_2
    return-void
.end method

.method public running()V
    .locals 4

    .line 811
    iget-object v0, p0, Lorg/checkerframework/com/google/common/util/concurrent/ServiceManager$ServiceListener;->state:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/google/common/util/concurrent/ServiceManager$ServiceManagerState;

    .line 812
    .local v0, "state":Lorg/checkerframework/com/google/common/util/concurrent/ServiceManager$ServiceManagerState;
    if-eqz v0, :cond_0

    .line 813
    iget-object v1, p0, Lorg/checkerframework/com/google/common/util/concurrent/ServiceManager$ServiceListener;->service:Lorg/checkerframework/com/google/common/util/concurrent/Service;

    sget-object v2, Lorg/checkerframework/com/google/common/util/concurrent/Service$State;->STARTING:Lorg/checkerframework/com/google/common/util/concurrent/Service$State;

    sget-object v3, Lorg/checkerframework/com/google/common/util/concurrent/Service$State;->RUNNING:Lorg/checkerframework/com/google/common/util/concurrent/Service$State;

    invoke-virtual {v0, v1, v2, v3}, Lorg/checkerframework/com/google/common/util/concurrent/ServiceManager$ServiceManagerState;->transitionService(Lorg/checkerframework/com/google/common/util/concurrent/Service;Lorg/checkerframework/com/google/common/util/concurrent/Service$State;Lorg/checkerframework/com/google/common/util/concurrent/Service$State;)V

    .line 815
    :cond_0
    return-void
.end method

.method public starting()V
    .locals 5

    .line 800
    iget-object v0, p0, Lorg/checkerframework/com/google/common/util/concurrent/ServiceManager$ServiceListener;->state:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/google/common/util/concurrent/ServiceManager$ServiceManagerState;

    .line 801
    .local v0, "state":Lorg/checkerframework/com/google/common/util/concurrent/ServiceManager$ServiceManagerState;
    if-eqz v0, :cond_0

    .line 802
    iget-object v1, p0, Lorg/checkerframework/com/google/common/util/concurrent/ServiceManager$ServiceListener;->service:Lorg/checkerframework/com/google/common/util/concurrent/Service;

    sget-object v2, Lorg/checkerframework/com/google/common/util/concurrent/Service$State;->NEW:Lorg/checkerframework/com/google/common/util/concurrent/Service$State;

    sget-object v3, Lorg/checkerframework/com/google/common/util/concurrent/Service$State;->STARTING:Lorg/checkerframework/com/google/common/util/concurrent/Service$State;

    invoke-virtual {v0, v1, v2, v3}, Lorg/checkerframework/com/google/common/util/concurrent/ServiceManager$ServiceManagerState;->transitionService(Lorg/checkerframework/com/google/common/util/concurrent/Service;Lorg/checkerframework/com/google/common/util/concurrent/Service$State;Lorg/checkerframework/com/google/common/util/concurrent/Service$State;)V

    .line 803
    iget-object v1, p0, Lorg/checkerframework/com/google/common/util/concurrent/ServiceManager$ServiceListener;->service:Lorg/checkerframework/com/google/common/util/concurrent/Service;

    instance-of v1, v1, Lorg/checkerframework/com/google/common/util/concurrent/ServiceManager$NoOpService;

    if-nez v1, :cond_0

    .line 804
    invoke-static {}, Lorg/checkerframework/com/google/common/util/concurrent/ServiceManager;->access$200()Ljava/util/logging/Logger;

    move-result-object v1

    sget-object v2, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v3, "Starting {0}."

    iget-object v4, p0, Lorg/checkerframework/com/google/common/util/concurrent/ServiceManager$ServiceListener;->service:Lorg/checkerframework/com/google/common/util/concurrent/Service;

    invoke-virtual {v1, v2, v3, v4}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Object;)V

    .line 807
    :cond_0
    return-void
.end method

.method public stopping(Lorg/checkerframework/com/google/common/util/concurrent/Service$State;)V
    .locals 3
    .param p1, "from"    # Lorg/checkerframework/com/google/common/util/concurrent/Service$State;

    .line 819
    iget-object v0, p0, Lorg/checkerframework/com/google/common/util/concurrent/ServiceManager$ServiceListener;->state:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/google/common/util/concurrent/ServiceManager$ServiceManagerState;

    .line 820
    .local v0, "state":Lorg/checkerframework/com/google/common/util/concurrent/ServiceManager$ServiceManagerState;
    if-eqz v0, :cond_0

    .line 821
    iget-object v1, p0, Lorg/checkerframework/com/google/common/util/concurrent/ServiceManager$ServiceListener;->service:Lorg/checkerframework/com/google/common/util/concurrent/Service;

    sget-object v2, Lorg/checkerframework/com/google/common/util/concurrent/Service$State;->STOPPING:Lorg/checkerframework/com/google/common/util/concurrent/Service$State;

    invoke-virtual {v0, v1, p1, v2}, Lorg/checkerframework/com/google/common/util/concurrent/ServiceManager$ServiceManagerState;->transitionService(Lorg/checkerframework/com/google/common/util/concurrent/Service;Lorg/checkerframework/com/google/common/util/concurrent/Service$State;Lorg/checkerframework/com/google/common/util/concurrent/Service$State;)V

    .line 823
    :cond_0
    return-void
.end method

.method public terminated(Lorg/checkerframework/com/google/common/util/concurrent/Service$State;)V
    .locals 5
    .param p1, "from"    # Lorg/checkerframework/com/google/common/util/concurrent/Service$State;

    .line 827
    iget-object v0, p0, Lorg/checkerframework/com/google/common/util/concurrent/ServiceManager$ServiceListener;->state:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/google/common/util/concurrent/ServiceManager$ServiceManagerState;

    .line 828
    .local v0, "state":Lorg/checkerframework/com/google/common/util/concurrent/ServiceManager$ServiceManagerState;
    if-eqz v0, :cond_1

    .line 829
    iget-object v1, p0, Lorg/checkerframework/com/google/common/util/concurrent/ServiceManager$ServiceListener;->service:Lorg/checkerframework/com/google/common/util/concurrent/Service;

    instance-of v1, v1, Lorg/checkerframework/com/google/common/util/concurrent/ServiceManager$NoOpService;

    if-nez v1, :cond_0

    .line 830
    invoke-static {}, Lorg/checkerframework/com/google/common/util/concurrent/ServiceManager;->access$200()Ljava/util/logging/Logger;

    move-result-object v1

    sget-object v2, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    iget-object v3, p0, Lorg/checkerframework/com/google/common/util/concurrent/ServiceManager$ServiceListener;->service:Lorg/checkerframework/com/google/common/util/concurrent/Service;

    filled-new-array {v3, p1}, [Ljava/lang/Object;

    move-result-object v3

    const-string v4, "Service {0} has terminated. Previous state was: {1}"

    invoke-virtual {v1, v2, v4, v3}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 835
    :cond_0
    iget-object v1, p0, Lorg/checkerframework/com/google/common/util/concurrent/ServiceManager$ServiceListener;->service:Lorg/checkerframework/com/google/common/util/concurrent/Service;

    sget-object v2, Lorg/checkerframework/com/google/common/util/concurrent/Service$State;->TERMINATED:Lorg/checkerframework/com/google/common/util/concurrent/Service$State;

    invoke-virtual {v0, v1, p1, v2}, Lorg/checkerframework/com/google/common/util/concurrent/ServiceManager$ServiceManagerState;->transitionService(Lorg/checkerframework/com/google/common/util/concurrent/Service;Lorg/checkerframework/com/google/common/util/concurrent/Service$State;Lorg/checkerframework/com/google/common/util/concurrent/Service$State;)V

    .line 837
    :cond_1
    return-void
.end method
