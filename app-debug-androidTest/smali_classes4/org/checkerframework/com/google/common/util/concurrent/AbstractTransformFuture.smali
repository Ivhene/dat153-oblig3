.class abstract Lorg/checkerframework/com/google/common/util/concurrent/AbstractTransformFuture;
.super Lorg/checkerframework/com/google/common/util/concurrent/FluentFuture$TrustedFuture;
.source "AbstractTransformFuture.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/checkerframework/com/google/common/util/concurrent/AbstractTransformFuture$TransformFuture;,
        Lorg/checkerframework/com/google/common/util/concurrent/AbstractTransformFuture$AsyncTransformFuture;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<I:",
        "Ljava/lang/Object;",
        "O:",
        "Ljava/lang/Object;",
        "F:",
        "Ljava/lang/Object;",
        "T:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/checkerframework/com/google/common/util/concurrent/FluentFuture$TrustedFuture<",
        "TO;>;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# instance fields
.field function:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TF;"
        }
    .end annotation
.end field

.field inputFuture:Lorg/checkerframework/com/google/common/util/concurrent/ListenableFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/checkerframework/com/google/common/util/concurrent/ListenableFuture<",
            "+TI;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lorg/checkerframework/com/google/common/util/concurrent/ListenableFuture;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/google/common/util/concurrent/ListenableFuture<",
            "+TI;>;TF;)V"
        }
    .end annotation

    .line 58
    .local p0, "this":Lorg/checkerframework/com/google/common/util/concurrent/AbstractTransformFuture;, "Lorg/checkerframework/com/google/common/util/concurrent/AbstractTransformFuture<TI;TO;TF;TT;>;"
    .local p1, "inputFuture":Lorg/checkerframework/com/google/common/util/concurrent/ListenableFuture;, "Lorg/checkerframework/com/google/common/util/concurrent/ListenableFuture<+TI;>;"
    .local p2, "function":Ljava/lang/Object;, "TF;"
    invoke-direct {p0}, Lorg/checkerframework/com/google/common/util/concurrent/FluentFuture$TrustedFuture;-><init>()V

    .line 59
    invoke-static {p1}, Lorg/checkerframework/com/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/google/common/util/concurrent/ListenableFuture;

    iput-object v0, p0, Lorg/checkerframework/com/google/common/util/concurrent/AbstractTransformFuture;->inputFuture:Lorg/checkerframework/com/google/common/util/concurrent/ListenableFuture;

    .line 60
    invoke-static {p2}, Lorg/checkerframework/com/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lorg/checkerframework/com/google/common/util/concurrent/AbstractTransformFuture;->function:Ljava/lang/Object;

    .line 61
    return-void
.end method

.method static create(Lorg/checkerframework/com/google/common/util/concurrent/ListenableFuture;Lorg/checkerframework/com/google/common/base/Function;Ljava/util/concurrent/Executor;)Lorg/checkerframework/com/google/common/util/concurrent/ListenableFuture;
    .locals 2
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<I:",
            "Ljava/lang/Object;",
            "O:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/checkerframework/com/google/common/util/concurrent/ListenableFuture<",
            "TI;>;",
            "Lorg/checkerframework/com/google/common/base/Function<",
            "-TI;+TO;>;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Lorg/checkerframework/com/google/common/util/concurrent/ListenableFuture<",
            "TO;>;"
        }
    .end annotation

    .line 45
    .local p0, "input":Lorg/checkerframework/com/google/common/util/concurrent/ListenableFuture;, "Lorg/checkerframework/com/google/common/util/concurrent/ListenableFuture<TI;>;"
    .local p1, "function":Lorg/checkerframework/com/google/common/base/Function;, "Lorg/checkerframework/com/google/common/base/Function<-TI;+TO;>;"
    invoke-static {p1}, Lorg/checkerframework/com/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    new-instance v0, Lorg/checkerframework/com/google/common/util/concurrent/AbstractTransformFuture$TransformFuture;

    invoke-direct {v0, p0, p1}, Lorg/checkerframework/com/google/common/util/concurrent/AbstractTransformFuture$TransformFuture;-><init>(Lorg/checkerframework/com/google/common/util/concurrent/ListenableFuture;Lorg/checkerframework/com/google/common/base/Function;)V

    .line 47
    .local v0, "output":Lorg/checkerframework/com/google/common/util/concurrent/AbstractTransformFuture$TransformFuture;, "Lorg/checkerframework/com/google/common/util/concurrent/AbstractTransformFuture$TransformFuture<TI;TO;>;"
    invoke-static {p2, v0}, Lorg/checkerframework/com/google/common/util/concurrent/MoreExecutors;->rejectionPropagatingExecutor(Ljava/util/concurrent/Executor;Lorg/checkerframework/com/google/common/util/concurrent/AbstractFuture;)Ljava/util/concurrent/Executor;

    move-result-object v1

    invoke-interface {p0, v0, v1}, Lorg/checkerframework/com/google/common/util/concurrent/ListenableFuture;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 48
    return-object v0
.end method

.method static create(Lorg/checkerframework/com/google/common/util/concurrent/ListenableFuture;Lorg/checkerframework/com/google/common/util/concurrent/AsyncFunction;Ljava/util/concurrent/Executor;)Lorg/checkerframework/com/google/common/util/concurrent/ListenableFuture;
    .locals 2
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<I:",
            "Ljava/lang/Object;",
            "O:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/checkerframework/com/google/common/util/concurrent/ListenableFuture<",
            "TI;>;",
            "Lorg/checkerframework/com/google/common/util/concurrent/AsyncFunction<",
            "-TI;+TO;>;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Lorg/checkerframework/com/google/common/util/concurrent/ListenableFuture<",
            "TO;>;"
        }
    .end annotation

    .line 37
    .local p0, "input":Lorg/checkerframework/com/google/common/util/concurrent/ListenableFuture;, "Lorg/checkerframework/com/google/common/util/concurrent/ListenableFuture<TI;>;"
    .local p1, "function":Lorg/checkerframework/com/google/common/util/concurrent/AsyncFunction;, "Lorg/checkerframework/com/google/common/util/concurrent/AsyncFunction<-TI;+TO;>;"
    invoke-static {p2}, Lorg/checkerframework/com/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    new-instance v0, Lorg/checkerframework/com/google/common/util/concurrent/AbstractTransformFuture$AsyncTransformFuture;

    invoke-direct {v0, p0, p1}, Lorg/checkerframework/com/google/common/util/concurrent/AbstractTransformFuture$AsyncTransformFuture;-><init>(Lorg/checkerframework/com/google/common/util/concurrent/ListenableFuture;Lorg/checkerframework/com/google/common/util/concurrent/AsyncFunction;)V

    .line 39
    .local v0, "output":Lorg/checkerframework/com/google/common/util/concurrent/AbstractTransformFuture$AsyncTransformFuture;, "Lorg/checkerframework/com/google/common/util/concurrent/AbstractTransformFuture$AsyncTransformFuture<TI;TO;>;"
    invoke-static {p2, v0}, Lorg/checkerframework/com/google/common/util/concurrent/MoreExecutors;->rejectionPropagatingExecutor(Ljava/util/concurrent/Executor;Lorg/checkerframework/com/google/common/util/concurrent/AbstractFuture;)Ljava/util/concurrent/Executor;

    move-result-object v1

    invoke-interface {p0, v0, v1}, Lorg/checkerframework/com/google/common/util/concurrent/ListenableFuture;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 40
    return-object v0
.end method


# virtual methods
.method protected final afterDone()V
    .locals 1

    .line 176
    .local p0, "this":Lorg/checkerframework/com/google/common/util/concurrent/AbstractTransformFuture;, "Lorg/checkerframework/com/google/common/util/concurrent/AbstractTransformFuture<TI;TO;TF;TT;>;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/util/concurrent/AbstractTransformFuture;->inputFuture:Lorg/checkerframework/com/google/common/util/concurrent/ListenableFuture;

    invoke-virtual {p0, v0}, Lorg/checkerframework/com/google/common/util/concurrent/AbstractTransformFuture;->maybePropagateCancellationTo(Ljava/util/concurrent/Future;)V

    .line 177
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/checkerframework/com/google/common/util/concurrent/AbstractTransformFuture;->inputFuture:Lorg/checkerframework/com/google/common/util/concurrent/ListenableFuture;

    .line 178
    iput-object v0, p0, Lorg/checkerframework/com/google/common/util/concurrent/AbstractTransformFuture;->function:Ljava/lang/Object;

    .line 179
    return-void
.end method

.method abstract doTransform(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TF;TI;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method protected pendingToString()Ljava/lang/String;
    .locals 6

    .line 183
    .local p0, "this":Lorg/checkerframework/com/google/common/util/concurrent/AbstractTransformFuture;, "Lorg/checkerframework/com/google/common/util/concurrent/AbstractTransformFuture<TI;TO;TF;TT;>;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/util/concurrent/AbstractTransformFuture;->inputFuture:Lorg/checkerframework/com/google/common/util/concurrent/ListenableFuture;

    .line 184
    .local v0, "localInputFuture":Lorg/checkerframework/com/google/common/util/concurrent/ListenableFuture;, "Lorg/checkerframework/com/google/common/util/concurrent/ListenableFuture<+TI;>;"
    iget-object v1, p0, Lorg/checkerframework/com/google/common/util/concurrent/AbstractTransformFuture;->function:Ljava/lang/Object;

    .line 185
    .local v1, "localFunction":Ljava/lang/Object;, "TF;"
    invoke-super {p0}, Lorg/checkerframework/com/google/common/util/concurrent/FluentFuture$TrustedFuture;->pendingToString()Ljava/lang/String;

    move-result-object v2

    .line 186
    .local v2, "superString":Ljava/lang/String;
    const-string v3, ""

    .line 187
    .local v3, "resultString":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 188
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "inputFuture=["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "], "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 190
    :cond_0
    if-eqz v1, :cond_1

    .line 191
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "function=["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 192
    :cond_1
    if-eqz v2, :cond_2

    .line 193
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 195
    :cond_2
    const/4 v4, 0x0

    return-object v4
.end method

.method public final run()V
    .locals 6

    .line 65
    .local p0, "this":Lorg/checkerframework/com/google/common/util/concurrent/AbstractTransformFuture;, "Lorg/checkerframework/com/google/common/util/concurrent/AbstractTransformFuture<TI;TO;TF;TT;>;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/util/concurrent/AbstractTransformFuture;->inputFuture:Lorg/checkerframework/com/google/common/util/concurrent/ListenableFuture;

    .line 66
    .local v0, "localInputFuture":Lorg/checkerframework/com/google/common/util/concurrent/ListenableFuture;, "Lorg/checkerframework/com/google/common/util/concurrent/ListenableFuture<+TI;>;"
    iget-object v1, p0, Lorg/checkerframework/com/google/common/util/concurrent/AbstractTransformFuture;->function:Ljava/lang/Object;

    .line 67
    .local v1, "localFunction":Ljava/lang/Object;, "TF;"
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/util/concurrent/AbstractTransformFuture;->isCancelled()Z

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v0, :cond_0

    move v5, v3

    goto :goto_0

    :cond_0
    move v5, v4

    :goto_0
    or-int/2addr v2, v5

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    move v3, v4

    :goto_1
    or-int/2addr v2, v3

    if-eqz v2, :cond_2

    .line 68
    return-void

    .line 70
    :cond_2
    const/4 v2, 0x0

    iput-object v2, p0, Lorg/checkerframework/com/google/common/util/concurrent/AbstractTransformFuture;->inputFuture:Lorg/checkerframework/com/google/common/util/concurrent/ListenableFuture;

    .line 72
    invoke-interface {v0}, Lorg/checkerframework/com/google/common/util/concurrent/ListenableFuture;->isCancelled()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 74
    nop

    .line 75
    invoke-virtual {p0, v0}, Lorg/checkerframework/com/google/common/util/concurrent/AbstractTransformFuture;->setFuture(Lorg/checkerframework/com/google/common/util/concurrent/ListenableFuture;)Z

    move-result v2

    .line 76
    .local v2, "unused":Z
    return-void

    .line 89
    .end local v2    # "unused":Z
    :cond_3
    :try_start_0
    invoke-static {v0}, Lorg/checkerframework/com/google/common/util/concurrent/Futures;->getDone(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object v3
    :try_end_0
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    .line 114
    .local v3, "sourceResult":Ljava/lang/Object;, "TI;"
    nop

    .line 118
    :try_start_1
    invoke-virtual {p0, v1, v3}, Lorg/checkerframework/com/google/common/util/concurrent/AbstractTransformFuture;->doTransform(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 124
    .local v4, "transformResult":Ljava/lang/Object;, "TT;"
    iput-object v2, p0, Lorg/checkerframework/com/google/common/util/concurrent/AbstractTransformFuture;->function:Ljava/lang/Object;

    .line 125
    nop

    .line 163
    invoke-virtual {p0, v4}, Lorg/checkerframework/com/google/common/util/concurrent/AbstractTransformFuture;->setResult(Ljava/lang/Object;)V

    .line 164
    return-void

    .line 119
    .end local v4    # "transformResult":Ljava/lang/Object;, "TT;"
    :catchall_0
    move-exception v4

    .line 121
    .local v4, "t":Ljava/lang/Throwable;
    :try_start_2
    invoke-virtual {p0, v4}, Lorg/checkerframework/com/google/common/util/concurrent/AbstractTransformFuture;->setException(Ljava/lang/Throwable;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 124
    iput-object v2, p0, Lorg/checkerframework/com/google/common/util/concurrent/AbstractTransformFuture;->function:Ljava/lang/Object;

    .line 122
    return-void

    .line 124
    .end local v4    # "t":Ljava/lang/Throwable;
    :catchall_1
    move-exception v4

    iput-object v2, p0, Lorg/checkerframework/com/google/common/util/concurrent/AbstractTransformFuture;->function:Ljava/lang/Object;

    .line 125
    throw v4

    .line 106
    .end local v3    # "sourceResult":Ljava/lang/Object;, "TI;"
    :catch_0
    move-exception v2

    .line 112
    .local v2, "e":Ljava/lang/Error;
    invoke-virtual {p0, v2}, Lorg/checkerframework/com/google/common/util/concurrent/AbstractTransformFuture;->setException(Ljava/lang/Throwable;)Z

    .line 113
    return-void

    .line 102
    .end local v2    # "e":Ljava/lang/Error;
    :catch_1
    move-exception v2

    .line 104
    .local v2, "e":Ljava/lang/RuntimeException;
    invoke-virtual {p0, v2}, Lorg/checkerframework/com/google/common/util/concurrent/AbstractTransformFuture;->setException(Ljava/lang/Throwable;)Z

    .line 105
    return-void

    .line 98
    .end local v2    # "e":Ljava/lang/RuntimeException;
    :catch_2
    move-exception v2

    .line 100
    .local v2, "e":Ljava/util/concurrent/ExecutionException;
    invoke-virtual {v2}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    invoke-virtual {p0, v3}, Lorg/checkerframework/com/google/common/util/concurrent/AbstractTransformFuture;->setException(Ljava/lang/Throwable;)Z

    .line 101
    return-void

    .line 90
    .end local v2    # "e":Ljava/util/concurrent/ExecutionException;
    :catch_3
    move-exception v2

    .line 96
    .local v2, "e":Ljava/util/concurrent/CancellationException;
    invoke-virtual {p0, v4}, Lorg/checkerframework/com/google/common/util/concurrent/AbstractTransformFuture;->cancel(Z)Z

    .line 97
    return-void
.end method

.method abstract setResult(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation
.end method
