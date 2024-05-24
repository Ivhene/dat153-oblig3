.class final Lorg/checkerframework/com/google/common/util/concurrent/CombinedFuture;
.super Lorg/checkerframework/com/google/common/util/concurrent/AggregateFuture;
.source "CombinedFuture.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/checkerframework/com/google/common/util/concurrent/CombinedFuture$CallableInterruptibleTask;,
        Lorg/checkerframework/com/google/common/util/concurrent/CombinedFuture$AsyncCallableInterruptibleTask;,
        Lorg/checkerframework/com/google/common/util/concurrent/CombinedFuture$CombinedFutureInterruptibleTask;,
        Lorg/checkerframework/com/google/common/util/concurrent/CombinedFuture$CombinedFutureRunningState;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/checkerframework/com/google/common/util/concurrent/AggregateFuture<",
        "Ljava/lang/Object;",
        "TV;>;"
    }
.end annotation


# direct methods
.method constructor <init>(Lorg/checkerframework/com/google/common/collect/ImmutableCollection;ZLjava/util/concurrent/Executor;Ljava/util/concurrent/Callable;)V
    .locals 2
    .param p2, "allMustSucceed"    # Z
    .param p3, "listenerExecutor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/google/common/collect/ImmutableCollection<",
            "+",
            "Lorg/checkerframework/com/google/common/util/concurrent/ListenableFuture<",
            "*>;>;Z",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/concurrent/Callable<",
            "TV;>;)V"
        }
    .end annotation

    .line 49
    .local p0, "this":Lorg/checkerframework/com/google/common/util/concurrent/CombinedFuture;, "Lorg/checkerframework/com/google/common/util/concurrent/CombinedFuture<TV;>;"
    .local p1, "futures":Lorg/checkerframework/com/google/common/collect/ImmutableCollection;, "Lorg/checkerframework/com/google/common/collect/ImmutableCollection<+Lorg/checkerframework/com/google/common/util/concurrent/ListenableFuture<*>;>;"
    .local p4, "callable":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<TV;>;"
    invoke-direct {p0}, Lorg/checkerframework/com/google/common/util/concurrent/AggregateFuture;-><init>()V

    .line 50
    new-instance v0, Lorg/checkerframework/com/google/common/util/concurrent/CombinedFuture$CombinedFutureRunningState;

    new-instance v1, Lorg/checkerframework/com/google/common/util/concurrent/CombinedFuture$CallableInterruptibleTask;

    invoke-direct {v1, p0, p4, p3}, Lorg/checkerframework/com/google/common/util/concurrent/CombinedFuture$CallableInterruptibleTask;-><init>(Lorg/checkerframework/com/google/common/util/concurrent/CombinedFuture;Ljava/util/concurrent/Callable;Ljava/util/concurrent/Executor;)V

    invoke-direct {v0, p0, p1, p2, v1}, Lorg/checkerframework/com/google/common/util/concurrent/CombinedFuture$CombinedFutureRunningState;-><init>(Lorg/checkerframework/com/google/common/util/concurrent/CombinedFuture;Lorg/checkerframework/com/google/common/collect/ImmutableCollection;ZLorg/checkerframework/com/google/common/util/concurrent/CombinedFuture$CombinedFutureInterruptibleTask;)V

    invoke-virtual {p0, v0}, Lorg/checkerframework/com/google/common/util/concurrent/CombinedFuture;->init(Lorg/checkerframework/com/google/common/util/concurrent/AggregateFuture$RunningState;)V

    .line 53
    return-void
.end method

.method constructor <init>(Lorg/checkerframework/com/google/common/collect/ImmutableCollection;ZLjava/util/concurrent/Executor;Lorg/checkerframework/com/google/common/util/concurrent/AsyncCallable;)V
    .locals 2
    .param p2, "allMustSucceed"    # Z
    .param p3, "listenerExecutor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/google/common/collect/ImmutableCollection<",
            "+",
            "Lorg/checkerframework/com/google/common/util/concurrent/ListenableFuture<",
            "*>;>;Z",
            "Ljava/util/concurrent/Executor;",
            "Lorg/checkerframework/com/google/common/util/concurrent/AsyncCallable<",
            "TV;>;)V"
        }
    .end annotation

    .line 37
    .local p0, "this":Lorg/checkerframework/com/google/common/util/concurrent/CombinedFuture;, "Lorg/checkerframework/com/google/common/util/concurrent/CombinedFuture<TV;>;"
    .local p1, "futures":Lorg/checkerframework/com/google/common/collect/ImmutableCollection;, "Lorg/checkerframework/com/google/common/collect/ImmutableCollection<+Lorg/checkerframework/com/google/common/util/concurrent/ListenableFuture<*>;>;"
    .local p4, "callable":Lorg/checkerframework/com/google/common/util/concurrent/AsyncCallable;, "Lorg/checkerframework/com/google/common/util/concurrent/AsyncCallable<TV;>;"
    invoke-direct {p0}, Lorg/checkerframework/com/google/common/util/concurrent/AggregateFuture;-><init>()V

    .line 38
    new-instance v0, Lorg/checkerframework/com/google/common/util/concurrent/CombinedFuture$CombinedFutureRunningState;

    new-instance v1, Lorg/checkerframework/com/google/common/util/concurrent/CombinedFuture$AsyncCallableInterruptibleTask;

    invoke-direct {v1, p0, p4, p3}, Lorg/checkerframework/com/google/common/util/concurrent/CombinedFuture$AsyncCallableInterruptibleTask;-><init>(Lorg/checkerframework/com/google/common/util/concurrent/CombinedFuture;Lorg/checkerframework/com/google/common/util/concurrent/AsyncCallable;Ljava/util/concurrent/Executor;)V

    invoke-direct {v0, p0, p1, p2, v1}, Lorg/checkerframework/com/google/common/util/concurrent/CombinedFuture$CombinedFutureRunningState;-><init>(Lorg/checkerframework/com/google/common/util/concurrent/CombinedFuture;Lorg/checkerframework/com/google/common/collect/ImmutableCollection;ZLorg/checkerframework/com/google/common/util/concurrent/CombinedFuture$CombinedFutureInterruptibleTask;)V

    invoke-virtual {p0, v0}, Lorg/checkerframework/com/google/common/util/concurrent/CombinedFuture;->init(Lorg/checkerframework/com/google/common/util/concurrent/AggregateFuture$RunningState;)V

    .line 43
    return-void
.end method
