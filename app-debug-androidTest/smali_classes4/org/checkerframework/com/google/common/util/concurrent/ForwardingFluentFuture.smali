.class final Lorg/checkerframework/com/google/common/util/concurrent/ForwardingFluentFuture;
.super Lorg/checkerframework/com/google/common/util/concurrent/FluentFuture;
.source "ForwardingFluentFuture.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/checkerframework/com/google/common/util/concurrent/FluentFuture<",
        "TV;>;"
    }
.end annotation


# instance fields
.field private final delegate:Lorg/checkerframework/com/google/common/util/concurrent/ListenableFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/checkerframework/com/google/common/util/concurrent/ListenableFuture<",
            "TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lorg/checkerframework/com/google/common/util/concurrent/ListenableFuture;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/google/common/util/concurrent/ListenableFuture<",
            "TV;>;)V"
        }
    .end annotation

    .line 39
    .local p0, "this":Lorg/checkerframework/com/google/common/util/concurrent/ForwardingFluentFuture;, "Lorg/checkerframework/com/google/common/util/concurrent/ForwardingFluentFuture<TV;>;"
    .local p1, "delegate":Lorg/checkerframework/com/google/common/util/concurrent/ListenableFuture;, "Lorg/checkerframework/com/google/common/util/concurrent/ListenableFuture<TV;>;"
    invoke-direct {p0}, Lorg/checkerframework/com/google/common/util/concurrent/FluentFuture;-><init>()V

    .line 40
    invoke-static {p1}, Lorg/checkerframework/com/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/google/common/util/concurrent/ListenableFuture;

    iput-object v0, p0, Lorg/checkerframework/com/google/common/util/concurrent/ForwardingFluentFuture;->delegate:Lorg/checkerframework/com/google/common/util/concurrent/ListenableFuture;

    .line 41
    return-void
.end method


# virtual methods
.method public addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V
    .locals 1
    .param p1, "listener"    # Ljava/lang/Runnable;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;

    .line 45
    .local p0, "this":Lorg/checkerframework/com/google/common/util/concurrent/ForwardingFluentFuture;, "Lorg/checkerframework/com/google/common/util/concurrent/ForwardingFluentFuture<TV;>;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/util/concurrent/ForwardingFluentFuture;->delegate:Lorg/checkerframework/com/google/common/util/concurrent/ListenableFuture;

    invoke-interface {v0, p1, p2}, Lorg/checkerframework/com/google/common/util/concurrent/ListenableFuture;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 46
    return-void
.end method

.method public cancel(Z)Z
    .locals 1
    .param p1, "mayInterruptIfRunning"    # Z

    .line 50
    .local p0, "this":Lorg/checkerframework/com/google/common/util/concurrent/ForwardingFluentFuture;, "Lorg/checkerframework/com/google/common/util/concurrent/ForwardingFluentFuture<TV;>;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/util/concurrent/ForwardingFluentFuture;->delegate:Lorg/checkerframework/com/google/common/util/concurrent/ListenableFuture;

    invoke-interface {v0, p1}, Lorg/checkerframework/com/google/common/util/concurrent/ListenableFuture;->cancel(Z)Z

    move-result v0

    return v0
.end method

.method public get()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    .line 65
    .local p0, "this":Lorg/checkerframework/com/google/common/util/concurrent/ForwardingFluentFuture;, "Lorg/checkerframework/com/google/common/util/concurrent/ForwardingFluentFuture<TV;>;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/util/concurrent/ForwardingFluentFuture;->delegate:Lorg/checkerframework/com/google/common/util/concurrent/ListenableFuture;

    invoke-interface {v0}, Lorg/checkerframework/com/google/common/util/concurrent/ListenableFuture;->get()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .locals 1
    .param p1, "timeout"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;,
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    .line 71
    .local p0, "this":Lorg/checkerframework/com/google/common/util/concurrent/ForwardingFluentFuture;, "Lorg/checkerframework/com/google/common/util/concurrent/ForwardingFluentFuture<TV;>;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/util/concurrent/ForwardingFluentFuture;->delegate:Lorg/checkerframework/com/google/common/util/concurrent/ListenableFuture;

    invoke-interface {v0, p1, p2, p3}, Lorg/checkerframework/com/google/common/util/concurrent/ListenableFuture;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public isCancelled()Z
    .locals 1

    .line 55
    .local p0, "this":Lorg/checkerframework/com/google/common/util/concurrent/ForwardingFluentFuture;, "Lorg/checkerframework/com/google/common/util/concurrent/ForwardingFluentFuture<TV;>;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/util/concurrent/ForwardingFluentFuture;->delegate:Lorg/checkerframework/com/google/common/util/concurrent/ListenableFuture;

    invoke-interface {v0}, Lorg/checkerframework/com/google/common/util/concurrent/ListenableFuture;->isCancelled()Z

    move-result v0

    return v0
.end method

.method public isDone()Z
    .locals 1

    .line 60
    .local p0, "this":Lorg/checkerframework/com/google/common/util/concurrent/ForwardingFluentFuture;, "Lorg/checkerframework/com/google/common/util/concurrent/ForwardingFluentFuture<TV;>;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/util/concurrent/ForwardingFluentFuture;->delegate:Lorg/checkerframework/com/google/common/util/concurrent/ListenableFuture;

    invoke-interface {v0}, Lorg/checkerframework/com/google/common/util/concurrent/ListenableFuture;->isDone()Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 76
    .local p0, "this":Lorg/checkerframework/com/google/common/util/concurrent/ForwardingFluentFuture;, "Lorg/checkerframework/com/google/common/util/concurrent/ForwardingFluentFuture<TV;>;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/util/concurrent/ForwardingFluentFuture;->delegate:Lorg/checkerframework/com/google/common/util/concurrent/ListenableFuture;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
