.class final Lorg/checkerframework/com/google/common/util/concurrent/CombinedFuture$CombinedFutureRunningState;
.super Lorg/checkerframework/com/google/common/util/concurrent/AggregateFuture$RunningState;
.source "CombinedFuture.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/com/google/common/util/concurrent/CombinedFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "CombinedFutureRunningState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/checkerframework/com/google/common/util/concurrent/AggregateFuture<",
        "Ljava/lang/Object;",
        "TV;>.RunningState;"
    }
.end annotation


# instance fields
.field private task:Lorg/checkerframework/com/google/common/util/concurrent/CombinedFuture$CombinedFutureInterruptibleTask;

.field final synthetic this$0:Lorg/checkerframework/com/google/common/util/concurrent/CombinedFuture;


# direct methods
.method constructor <init>(Lorg/checkerframework/com/google/common/util/concurrent/CombinedFuture;Lorg/checkerframework/com/google/common/collect/ImmutableCollection;ZLorg/checkerframework/com/google/common/util/concurrent/CombinedFuture$CombinedFutureInterruptibleTask;)V
    .locals 1
    .param p3, "allMustSucceed"    # Z
    .param p4, "task"    # Lorg/checkerframework/com/google/common/util/concurrent/CombinedFuture$CombinedFutureInterruptibleTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/google/common/collect/ImmutableCollection<",
            "+",
            "Lorg/checkerframework/com/google/common/util/concurrent/ListenableFuture<",
            "*>;>;Z",
            "Lorg/checkerframework/com/google/common/util/concurrent/CombinedFuture$CombinedFutureInterruptibleTask;",
            ")V"
        }
    .end annotation

    .line 61
    .local p0, "this":Lorg/checkerframework/com/google/common/util/concurrent/CombinedFuture$CombinedFutureRunningState;, "Lorg/checkerframework/com/google/common/util/concurrent/CombinedFuture<TV;>.CombinedFutureRunningState;"
    .local p2, "futures":Lorg/checkerframework/com/google/common/collect/ImmutableCollection;, "Lorg/checkerframework/com/google/common/collect/ImmutableCollection<+Lorg/checkerframework/com/google/common/util/concurrent/ListenableFuture<*>;>;"
    iput-object p1, p0, Lorg/checkerframework/com/google/common/util/concurrent/CombinedFuture$CombinedFutureRunningState;->this$0:Lorg/checkerframework/com/google/common/util/concurrent/CombinedFuture;

    .line 62
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/checkerframework/com/google/common/util/concurrent/AggregateFuture$RunningState;-><init>(Lorg/checkerframework/com/google/common/util/concurrent/AggregateFuture;Lorg/checkerframework/com/google/common/collect/ImmutableCollection;ZZ)V

    .line 63
    iput-object p4, p0, Lorg/checkerframework/com/google/common/util/concurrent/CombinedFuture$CombinedFutureRunningState;->task:Lorg/checkerframework/com/google/common/util/concurrent/CombinedFuture$CombinedFutureInterruptibleTask;

    .line 64
    return-void
.end method


# virtual methods
.method collectOneValue(ZILjava/lang/Object;)V
    .locals 0
    .param p1, "allMustSucceed"    # Z
    .param p2, "index"    # I
    .param p3, "returnValue"    # Ljava/lang/Object;

    .line 67
    .local p0, "this":Lorg/checkerframework/com/google/common/util/concurrent/CombinedFuture$CombinedFutureRunningState;, "Lorg/checkerframework/com/google/common/util/concurrent/CombinedFuture<TV;>.CombinedFutureRunningState;"
    return-void
.end method

.method handleAllCompleted()V
    .locals 2

    .line 71
    .local p0, "this":Lorg/checkerframework/com/google/common/util/concurrent/CombinedFuture$CombinedFutureRunningState;, "Lorg/checkerframework/com/google/common/util/concurrent/CombinedFuture<TV;>.CombinedFutureRunningState;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/util/concurrent/CombinedFuture$CombinedFutureRunningState;->task:Lorg/checkerframework/com/google/common/util/concurrent/CombinedFuture$CombinedFutureInterruptibleTask;

    .line 72
    .local v0, "localTask":Lorg/checkerframework/com/google/common/util/concurrent/CombinedFuture$CombinedFutureInterruptibleTask;
    if-eqz v0, :cond_0

    .line 73
    invoke-virtual {v0}, Lorg/checkerframework/com/google/common/util/concurrent/CombinedFuture$CombinedFutureInterruptibleTask;->execute()V

    goto :goto_0

    .line 75
    :cond_0
    iget-object v1, p0, Lorg/checkerframework/com/google/common/util/concurrent/CombinedFuture$CombinedFutureRunningState;->this$0:Lorg/checkerframework/com/google/common/util/concurrent/CombinedFuture;

    invoke-virtual {v1}, Lorg/checkerframework/com/google/common/util/concurrent/CombinedFuture;->isDone()Z

    move-result v1

    invoke-static {v1}, Lorg/checkerframework/com/google/common/base/Preconditions;->checkState(Z)V

    .line 77
    :goto_0
    return-void
.end method

.method interruptTask()V
    .locals 1

    .line 87
    .local p0, "this":Lorg/checkerframework/com/google/common/util/concurrent/CombinedFuture$CombinedFutureRunningState;, "Lorg/checkerframework/com/google/common/util/concurrent/CombinedFuture<TV;>.CombinedFutureRunningState;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/util/concurrent/CombinedFuture$CombinedFutureRunningState;->task:Lorg/checkerframework/com/google/common/util/concurrent/CombinedFuture$CombinedFutureInterruptibleTask;

    .line 88
    .local v0, "localTask":Lorg/checkerframework/com/google/common/util/concurrent/CombinedFuture$CombinedFutureInterruptibleTask;
    if-eqz v0, :cond_0

    .line 89
    invoke-virtual {v0}, Lorg/checkerframework/com/google/common/util/concurrent/CombinedFuture$CombinedFutureInterruptibleTask;->interruptTask()V

    .line 91
    :cond_0
    return-void
.end method

.method releaseResourcesAfterFailure()V
    .locals 1

    .line 81
    .local p0, "this":Lorg/checkerframework/com/google/common/util/concurrent/CombinedFuture$CombinedFutureRunningState;, "Lorg/checkerframework/com/google/common/util/concurrent/CombinedFuture<TV;>.CombinedFutureRunningState;"
    invoke-super {p0}, Lorg/checkerframework/com/google/common/util/concurrent/AggregateFuture$RunningState;->releaseResourcesAfterFailure()V

    .line 82
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/checkerframework/com/google/common/util/concurrent/CombinedFuture$CombinedFutureRunningState;->task:Lorg/checkerframework/com/google/common/util/concurrent/CombinedFuture$CombinedFutureInterruptibleTask;

    .line 83
    return-void
.end method
