.class public abstract Lorg/checkerframework/com/google/common/util/concurrent/ForwardingListeningExecutorService;
.super Lorg/checkerframework/com/google/common/util/concurrent/ForwardingExecutorService;
.source "ForwardingListeningExecutorService.java"

# interfaces
.implements Lorg/checkerframework/com/google/common/util/concurrent/ListeningExecutorService;


# direct methods
.method protected constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Lorg/checkerframework/com/google/common/util/concurrent/ForwardingExecutorService;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic delegate()Ljava/lang/Object;
    .locals 1

    .line 30
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/util/concurrent/ForwardingListeningExecutorService;->delegate()Lorg/checkerframework/com/google/common/util/concurrent/ListeningExecutorService;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic delegate()Ljava/util/concurrent/ExecutorService;
    .locals 1

    .line 30
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/util/concurrent/ForwardingListeningExecutorService;->delegate()Lorg/checkerframework/com/google/common/util/concurrent/ListeningExecutorService;

    move-result-object v0

    return-object v0
.end method

.method protected abstract delegate()Lorg/checkerframework/com/google/common/util/concurrent/ListeningExecutorService;
.end method

.method public bridge synthetic submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    .locals 0

    .line 30
    invoke-virtual {p0, p1}, Lorg/checkerframework/com/google/common/util/concurrent/ForwardingListeningExecutorService;->submit(Ljava/lang/Runnable;)Lorg/checkerframework/com/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic submit(Ljava/lang/Runnable;Ljava/lang/Object;)Ljava/util/concurrent/Future;
    .locals 0

    .line 30
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/google/common/util/concurrent/ForwardingListeningExecutorService;->submit(Ljava/lang/Runnable;Ljava/lang/Object;)Lorg/checkerframework/com/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;
    .locals 0

    .line 30
    invoke-virtual {p0, p1}, Lorg/checkerframework/com/google/common/util/concurrent/ForwardingListeningExecutorService;->submit(Ljava/util/concurrent/Callable;)Lorg/checkerframework/com/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    return-object p1
.end method

.method public submit(Ljava/lang/Runnable;)Lorg/checkerframework/com/google/common/util/concurrent/ListenableFuture;
    .locals 1
    .param p1, "task"    # Ljava/lang/Runnable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Runnable;",
            ")",
            "Lorg/checkerframework/com/google/common/util/concurrent/ListenableFuture<",
            "*>;"
        }
    .end annotation

    .line 47
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/util/concurrent/ForwardingListeningExecutorService;->delegate()Lorg/checkerframework/com/google/common/util/concurrent/ListeningExecutorService;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/checkerframework/com/google/common/util/concurrent/ListeningExecutorService;->submit(Ljava/lang/Runnable;)Lorg/checkerframework/com/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0
.end method

.method public submit(Ljava/lang/Runnable;Ljava/lang/Object;)Lorg/checkerframework/com/google/common/util/concurrent/ListenableFuture;
    .locals 1
    .param p1, "task"    # Ljava/lang/Runnable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Runnable;",
            "TT;)",
            "Lorg/checkerframework/com/google/common/util/concurrent/ListenableFuture<",
            "TT;>;"
        }
    .end annotation

    .line 52
    .local p2, "result":Ljava/lang/Object;, "TT;"
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/util/concurrent/ForwardingListeningExecutorService;->delegate()Lorg/checkerframework/com/google/common/util/concurrent/ListeningExecutorService;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lorg/checkerframework/com/google/common/util/concurrent/ListeningExecutorService;->submit(Ljava/lang/Runnable;Ljava/lang/Object;)Lorg/checkerframework/com/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0
.end method

.method public submit(Ljava/util/concurrent/Callable;)Lorg/checkerframework/com/google/common/util/concurrent/ListenableFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable<",
            "TT;>;)",
            "Lorg/checkerframework/com/google/common/util/concurrent/ListenableFuture<",
            "TT;>;"
        }
    .end annotation

    .line 42
    .local p1, "task":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<TT;>;"
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/util/concurrent/ForwardingListeningExecutorService;->delegate()Lorg/checkerframework/com/google/common/util/concurrent/ListeningExecutorService;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/checkerframework/com/google/common/util/concurrent/ListeningExecutorService;->submit(Ljava/util/concurrent/Callable;)Lorg/checkerframework/com/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0
.end method
