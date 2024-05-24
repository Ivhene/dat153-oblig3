.class final Lorg/checkerframework/com/google/common/util/concurrent/CombinedFuture$AsyncCallableInterruptibleTask;
.super Lorg/checkerframework/com/google/common/util/concurrent/CombinedFuture$CombinedFutureInterruptibleTask;
.source "CombinedFuture.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/com/google/common/util/concurrent/CombinedFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "AsyncCallableInterruptibleTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/checkerframework/com/google/common/util/concurrent/CombinedFuture<",
        "TV;>.CombinedFutureInterruptibleTask<",
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

.field final synthetic this$0:Lorg/checkerframework/com/google/common/util/concurrent/CombinedFuture;


# direct methods
.method public constructor <init>(Lorg/checkerframework/com/google/common/util/concurrent/CombinedFuture;Lorg/checkerframework/com/google/common/util/concurrent/AsyncCallable;Ljava/util/concurrent/Executor;)V
    .locals 0
    .param p3, "listenerExecutor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/google/common/util/concurrent/AsyncCallable<",
            "TV;>;",
            "Ljava/util/concurrent/Executor;",
            ")V"
        }
    .end annotation

    .line 141
    .local p0, "this":Lorg/checkerframework/com/google/common/util/concurrent/CombinedFuture$AsyncCallableInterruptibleTask;, "Lorg/checkerframework/com/google/common/util/concurrent/CombinedFuture<TV;>.AsyncCallableInterruptibleTask;"
    .local p2, "callable":Lorg/checkerframework/com/google/common/util/concurrent/AsyncCallable;, "Lorg/checkerframework/com/google/common/util/concurrent/AsyncCallable<TV;>;"
    iput-object p1, p0, Lorg/checkerframework/com/google/common/util/concurrent/CombinedFuture$AsyncCallableInterruptibleTask;->this$0:Lorg/checkerframework/com/google/common/util/concurrent/CombinedFuture;

    .line 142
    invoke-direct {p0, p1, p3}, Lorg/checkerframework/com/google/common/util/concurrent/CombinedFuture$CombinedFutureInterruptibleTask;-><init>(Lorg/checkerframework/com/google/common/util/concurrent/CombinedFuture;Ljava/util/concurrent/Executor;)V

    .line 143
    invoke-static {p2}, Lorg/checkerframework/com/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/checkerframework/com/google/common/util/concurrent/AsyncCallable;

    iput-object p1, p0, Lorg/checkerframework/com/google/common/util/concurrent/CombinedFuture$AsyncCallableInterruptibleTask;->callable:Lorg/checkerframework/com/google/common/util/concurrent/AsyncCallable;

    .line 144
    return-void
.end method


# virtual methods
.method bridge synthetic runInterruptibly()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 136
    .local p0, "this":Lorg/checkerframework/com/google/common/util/concurrent/CombinedFuture$AsyncCallableInterruptibleTask;, "Lorg/checkerframework/com/google/common/util/concurrent/CombinedFuture<TV;>.AsyncCallableInterruptibleTask;"
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/util/concurrent/CombinedFuture$AsyncCallableInterruptibleTask;->runInterruptibly()Lorg/checkerframework/com/google/common/util/concurrent/ListenableFuture;

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

    .line 148
    .local p0, "this":Lorg/checkerframework/com/google/common/util/concurrent/CombinedFuture$AsyncCallableInterruptibleTask;, "Lorg/checkerframework/com/google/common/util/concurrent/CombinedFuture<TV;>.AsyncCallableInterruptibleTask;"
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/checkerframework/com/google/common/util/concurrent/CombinedFuture$AsyncCallableInterruptibleTask;->thrownByExecute:Z

    .line 149
    iget-object v0, p0, Lorg/checkerframework/com/google/common/util/concurrent/CombinedFuture$AsyncCallableInterruptibleTask;->callable:Lorg/checkerframework/com/google/common/util/concurrent/AsyncCallable;

    invoke-interface {v0}, Lorg/checkerframework/com/google/common/util/concurrent/AsyncCallable;->call()Lorg/checkerframework/com/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    .line 150
    .local v0, "result":Lorg/checkerframework/com/google/common/util/concurrent/ListenableFuture;, "Lorg/checkerframework/com/google/common/util/concurrent/ListenableFuture<TV;>;"
    const-string v1, "AsyncCallable.call returned null instead of a Future. Did you mean to return immediateFuture(null)? %s"

    iget-object v2, p0, Lorg/checkerframework/com/google/common/util/concurrent/CombinedFuture$AsyncCallableInterruptibleTask;->callable:Lorg/checkerframework/com/google/common/util/concurrent/AsyncCallable;

    invoke-static {v0, v1, v2}, Lorg/checkerframework/com/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/checkerframework/com/google/common/util/concurrent/ListenableFuture;

    return-object v1
.end method

.method bridge synthetic setValue(Ljava/lang/Object;)V
    .locals 0

    .line 136
    .local p0, "this":Lorg/checkerframework/com/google/common/util/concurrent/CombinedFuture$AsyncCallableInterruptibleTask;, "Lorg/checkerframework/com/google/common/util/concurrent/CombinedFuture<TV;>.AsyncCallableInterruptibleTask;"
    check-cast p1, Lorg/checkerframework/com/google/common/util/concurrent/ListenableFuture;

    invoke-virtual {p0, p1}, Lorg/checkerframework/com/google/common/util/concurrent/CombinedFuture$AsyncCallableInterruptibleTask;->setValue(Lorg/checkerframework/com/google/common/util/concurrent/ListenableFuture;)V

    return-void
.end method

.method setValue(Lorg/checkerframework/com/google/common/util/concurrent/ListenableFuture;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/google/common/util/concurrent/ListenableFuture<",
            "TV;>;)V"
        }
    .end annotation

    .line 159
    .local p0, "this":Lorg/checkerframework/com/google/common/util/concurrent/CombinedFuture$AsyncCallableInterruptibleTask;, "Lorg/checkerframework/com/google/common/util/concurrent/CombinedFuture<TV;>.AsyncCallableInterruptibleTask;"
    .local p1, "value":Lorg/checkerframework/com/google/common/util/concurrent/ListenableFuture;, "Lorg/checkerframework/com/google/common/util/concurrent/ListenableFuture<TV;>;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/util/concurrent/CombinedFuture$AsyncCallableInterruptibleTask;->this$0:Lorg/checkerframework/com/google/common/util/concurrent/CombinedFuture;

    invoke-virtual {v0, p1}, Lorg/checkerframework/com/google/common/util/concurrent/CombinedFuture;->setFuture(Lorg/checkerframework/com/google/common/util/concurrent/ListenableFuture;)Z

    .line 162
    iget-object v0, p0, Lorg/checkerframework/com/google/common/util/concurrent/CombinedFuture$AsyncCallableInterruptibleTask;->this$0:Lorg/checkerframework/com/google/common/util/concurrent/CombinedFuture;

    invoke-virtual {v0}, Lorg/checkerframework/com/google/common/util/concurrent/CombinedFuture;->releaseResources()V

    .line 163
    return-void
.end method

.method toPendingString()Ljava/lang/String;
    .locals 1

    .line 167
    .local p0, "this":Lorg/checkerframework/com/google/common/util/concurrent/CombinedFuture$AsyncCallableInterruptibleTask;, "Lorg/checkerframework/com/google/common/util/concurrent/CombinedFuture<TV;>.AsyncCallableInterruptibleTask;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/util/concurrent/CombinedFuture$AsyncCallableInterruptibleTask;->callable:Lorg/checkerframework/com/google/common/util/concurrent/AsyncCallable;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
