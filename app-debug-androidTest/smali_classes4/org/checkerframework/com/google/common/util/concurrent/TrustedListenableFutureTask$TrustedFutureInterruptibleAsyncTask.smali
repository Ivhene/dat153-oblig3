.class final Lorg/checkerframework/com/google/common/util/concurrent/TrustedListenableFutureTask$TrustedFutureInterruptibleAsyncTask;
.super Lorg/checkerframework/com/google/common/util/concurrent/InterruptibleTask;
.source "TrustedListenableFutureTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/com/google/common/util/concurrent/TrustedListenableFutureTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "TrustedFutureInterruptibleAsyncTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/checkerframework/com/google/common/util/concurrent/InterruptibleTask<",
        "Lorg/checkerframework/com/google/common/util/concurrent/ListenableFuture<",
        "TV;>;>;"
    }
.end annotation


# instance fields
.field private final callable:Lorg/checkerframework/com/google/common/util/concurrent/AsyncCallable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/checkerframework/com/google/common/util/concurrent/AsyncCallable<",
            "TV;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lorg/checkerframework/com/google/common/util/concurrent/TrustedListenableFutureTask;


# direct methods
.method constructor <init>(Lorg/checkerframework/com/google/common/util/concurrent/TrustedListenableFutureTask;Lorg/checkerframework/com/google/common/util/concurrent/AsyncCallable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/google/common/util/concurrent/AsyncCallable<",
            "TV;>;)V"
        }
    .end annotation

    .line 148
    .local p0, "this":Lorg/checkerframework/com/google/common/util/concurrent/TrustedListenableFutureTask$TrustedFutureInterruptibleAsyncTask;, "Lorg/checkerframework/com/google/common/util/concurrent/TrustedListenableFutureTask<TV;>.TrustedFutureInterruptibleAsyncTask;"
    .local p2, "callable":Lorg/checkerframework/com/google/common/util/concurrent/AsyncCallable;, "Lorg/checkerframework/com/google/common/util/concurrent/AsyncCallable<TV;>;"
    iput-object p1, p0, Lorg/checkerframework/com/google/common/util/concurrent/TrustedListenableFutureTask$TrustedFutureInterruptibleAsyncTask;->this$0:Lorg/checkerframework/com/google/common/util/concurrent/TrustedListenableFutureTask;

    invoke-direct {p0}, Lorg/checkerframework/com/google/common/util/concurrent/InterruptibleTask;-><init>()V

    .line 149
    invoke-static {p2}, Lorg/checkerframework/com/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/checkerframework/com/google/common/util/concurrent/AsyncCallable;

    iput-object p1, p0, Lorg/checkerframework/com/google/common/util/concurrent/TrustedListenableFutureTask$TrustedFutureInterruptibleAsyncTask;->callable:Lorg/checkerframework/com/google/common/util/concurrent/AsyncCallable;

    .line 150
    return-void
.end method


# virtual methods
.method bridge synthetic afterRanInterruptibly(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 0

    .line 143
    .local p0, "this":Lorg/checkerframework/com/google/common/util/concurrent/TrustedListenableFutureTask$TrustedFutureInterruptibleAsyncTask;, "Lorg/checkerframework/com/google/common/util/concurrent/TrustedListenableFutureTask<TV;>.TrustedFutureInterruptibleAsyncTask;"
    check-cast p1, Lorg/checkerframework/com/google/common/util/concurrent/ListenableFuture;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/google/common/util/concurrent/TrustedListenableFutureTask$TrustedFutureInterruptibleAsyncTask;->afterRanInterruptibly(Lorg/checkerframework/com/google/common/util/concurrent/ListenableFuture;Ljava/lang/Throwable;)V

    return-void
.end method

.method afterRanInterruptibly(Lorg/checkerframework/com/google/common/util/concurrent/ListenableFuture;Ljava/lang/Throwable;)V
    .locals 1
    .param p2, "error"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/google/common/util/concurrent/ListenableFuture<",
            "TV;>;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .line 168
    .local p0, "this":Lorg/checkerframework/com/google/common/util/concurrent/TrustedListenableFutureTask$TrustedFutureInterruptibleAsyncTask;, "Lorg/checkerframework/com/google/common/util/concurrent/TrustedListenableFutureTask<TV;>.TrustedFutureInterruptibleAsyncTask;"
    .local p1, "result":Lorg/checkerframework/com/google/common/util/concurrent/ListenableFuture;, "Lorg/checkerframework/com/google/common/util/concurrent/ListenableFuture<TV;>;"
    if-nez p2, :cond_0

    .line 169
    iget-object v0, p0, Lorg/checkerframework/com/google/common/util/concurrent/TrustedListenableFutureTask$TrustedFutureInterruptibleAsyncTask;->this$0:Lorg/checkerframework/com/google/common/util/concurrent/TrustedListenableFutureTask;

    invoke-virtual {v0, p1}, Lorg/checkerframework/com/google/common/util/concurrent/TrustedListenableFutureTask;->setFuture(Lorg/checkerframework/com/google/common/util/concurrent/ListenableFuture;)Z

    goto :goto_0

    .line 171
    :cond_0
    iget-object v0, p0, Lorg/checkerframework/com/google/common/util/concurrent/TrustedListenableFutureTask$TrustedFutureInterruptibleAsyncTask;->this$0:Lorg/checkerframework/com/google/common/util/concurrent/TrustedListenableFutureTask;

    invoke-virtual {v0, p2}, Lorg/checkerframework/com/google/common/util/concurrent/TrustedListenableFutureTask;->setException(Ljava/lang/Throwable;)Z

    .line 173
    :goto_0
    return-void
.end method

.method final isDone()Z
    .locals 1

    .line 154
    .local p0, "this":Lorg/checkerframework/com/google/common/util/concurrent/TrustedListenableFutureTask$TrustedFutureInterruptibleAsyncTask;, "Lorg/checkerframework/com/google/common/util/concurrent/TrustedListenableFutureTask<TV;>.TrustedFutureInterruptibleAsyncTask;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/util/concurrent/TrustedListenableFutureTask$TrustedFutureInterruptibleAsyncTask;->this$0:Lorg/checkerframework/com/google/common/util/concurrent/TrustedListenableFutureTask;

    invoke-virtual {v0}, Lorg/checkerframework/com/google/common/util/concurrent/TrustedListenableFutureTask;->isDone()Z

    move-result v0

    return v0
.end method

.method bridge synthetic runInterruptibly()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 143
    .local p0, "this":Lorg/checkerframework/com/google/common/util/concurrent/TrustedListenableFutureTask$TrustedFutureInterruptibleAsyncTask;, "Lorg/checkerframework/com/google/common/util/concurrent/TrustedListenableFutureTask<TV;>.TrustedFutureInterruptibleAsyncTask;"
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/util/concurrent/TrustedListenableFutureTask$TrustedFutureInterruptibleAsyncTask;->runInterruptibly()Lorg/checkerframework/com/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0
.end method

.method runInterruptibly()Lorg/checkerframework/com/google/common/util/concurrent/ListenableFuture;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/checkerframework/com/google/common/util/concurrent/ListenableFuture<",
            "TV;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 159
    .local p0, "this":Lorg/checkerframework/com/google/common/util/concurrent/TrustedListenableFutureTask$TrustedFutureInterruptibleAsyncTask;, "Lorg/checkerframework/com/google/common/util/concurrent/TrustedListenableFutureTask<TV;>.TrustedFutureInterruptibleAsyncTask;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/util/concurrent/TrustedListenableFutureTask$TrustedFutureInterruptibleAsyncTask;->callable:Lorg/checkerframework/com/google/common/util/concurrent/AsyncCallable;

    .line 160
    invoke-interface {v0}, Lorg/checkerframework/com/google/common/util/concurrent/AsyncCallable;->call()Lorg/checkerframework/com/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    iget-object v1, p0, Lorg/checkerframework/com/google/common/util/concurrent/TrustedListenableFutureTask$TrustedFutureInterruptibleAsyncTask;->callable:Lorg/checkerframework/com/google/common/util/concurrent/AsyncCallable;

    .line 159
    const-string v2, "AsyncCallable.call returned null instead of a Future. Did you mean to return immediateFuture(null)? %s"

    invoke-static {v0, v2, v1}, Lorg/checkerframework/com/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/google/common/util/concurrent/ListenableFuture;

    return-object v0
.end method

.method toPendingString()Ljava/lang/String;
    .locals 1

    .line 177
    .local p0, "this":Lorg/checkerframework/com/google/common/util/concurrent/TrustedListenableFutureTask$TrustedFutureInterruptibleAsyncTask;, "Lorg/checkerframework/com/google/common/util/concurrent/TrustedListenableFutureTask<TV;>.TrustedFutureInterruptibleAsyncTask;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/util/concurrent/TrustedListenableFutureTask$TrustedFutureInterruptibleAsyncTask;->callable:Lorg/checkerframework/com/google/common/util/concurrent/AsyncCallable;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
