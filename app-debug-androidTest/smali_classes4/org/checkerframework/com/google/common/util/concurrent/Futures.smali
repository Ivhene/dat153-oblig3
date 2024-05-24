.class public final Lorg/checkerframework/com/google/common/util/concurrent/Futures;
.super Lorg/checkerframework/com/google/common/util/concurrent/GwtFuturesCatchingSpecialization;
.source "Futures.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/checkerframework/com/google/common/util/concurrent/Futures$CallbackListener;,
        Lorg/checkerframework/com/google/common/util/concurrent/Futures$InCompletionOrderState;,
        Lorg/checkerframework/com/google/common/util/concurrent/Futures$InCompletionOrderFuture;,
        Lorg/checkerframework/com/google/common/util/concurrent/Futures$NonCancellationPropagatingFuture;,
        Lorg/checkerframework/com/google/common/util/concurrent/Futures$FutureCombiner;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 121
    invoke-direct {p0}, Lorg/checkerframework/com/google/common/util/concurrent/GwtFuturesCatchingSpecialization;-><init>()V

    return-void
.end method

.method public static addCallback(Lorg/checkerframework/com/google/common/util/concurrent/ListenableFuture;Lorg/checkerframework/com/google/common/util/concurrent/FutureCallback;Ljava/util/concurrent/Executor;)V
    .locals 1
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/checkerframework/com/google/common/util/concurrent/ListenableFuture<",
            "TV;>;",
            "Lorg/checkerframework/com/google/common/util/concurrent/FutureCallback<",
            "-TV;>;",
            "Ljava/util/concurrent/Executor;",
            ")V"
        }
    .end annotation

    .line 995
    .local p0, "future":Lorg/checkerframework/com/google/common/util/concurrent/ListenableFuture;, "Lorg/checkerframework/com/google/common/util/concurrent/ListenableFuture<TV;>;"
    .local p1, "callback":Lorg/checkerframework/com/google/common/util/concurrent/FutureCallback;, "Lorg/checkerframework/com/google/common/util/concurrent/FutureCallback<-TV;>;"
    invoke-static {p1}, Lorg/checkerframework/com/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 996
    new-instance v0, Lorg/checkerframework/com/google/common/util/concurrent/Futures$CallbackListener;

    invoke-direct {v0, p0, p1}, Lorg/checkerframework/com/google/common/util/concurrent/Futures$CallbackListener;-><init>(Ljava/util/concurrent/Future;Lorg/checkerframework/com/google/common/util/concurrent/FutureCallback;)V

    invoke-interface {p0, v0, p2}, Lorg/checkerframework/com/google/common/util/concurrent/ListenableFuture;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 997
    return-void
.end method

.method public static allAsList(Ljava/lang/Iterable;)Lorg/checkerframework/com/google/common/util/concurrent/ListenableFuture;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "+",
            "Lorg/checkerframework/com/google/common/util/concurrent/ListenableFuture<",
            "+TV;>;>;)",
            "Lorg/checkerframework/com/google/common/util/concurrent/ListenableFuture<",
            "Ljava/util/List<",
            "TV;>;>;"
        }
    .end annotation

    .line 555
    .local p0, "futures":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Lorg/checkerframework/com/google/common/util/concurrent/ListenableFuture<+TV;>;>;"
    new-instance v0, Lorg/checkerframework/com/google/common/util/concurrent/CollectionFuture$ListFuture;

    invoke-static {p0}, Lorg/checkerframework/com/google/common/collect/ImmutableList;->copyOf(Ljava/lang/Iterable;)Lorg/checkerframework/com/google/common/collect/ImmutableList;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lorg/checkerframework/com/google/common/util/concurrent/CollectionFuture$ListFuture;-><init>(Lorg/checkerframework/com/google/common/collect/ImmutableCollection;Z)V

    return-object v0
.end method

.method public static varargs allAsList([Lorg/checkerframework/com/google/common/util/concurrent/ListenableFuture;)Lorg/checkerframework/com/google/common/util/concurrent/ListenableFuture;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">([",
            "Lorg/checkerframework/com/google/common/util/concurrent/ListenableFuture<",
            "+TV;>;)",
            "Lorg/checkerframework/com/google/common/util/concurrent/ListenableFuture<",
            "Ljava/util/List<",
            "TV;>;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    .line 536
    .local p0, "futures":[Lorg/checkerframework/com/google/common/util/concurrent/ListenableFuture;, "[Lorg/checkerframework/com/google/common/util/concurrent/ListenableFuture<+TV;>;"
    new-instance v0, Lorg/checkerframework/com/google/common/util/concurrent/CollectionFuture$ListFuture;

    invoke-static {p0}, Lorg/checkerframework/com/google/common/collect/ImmutableList;->copyOf([Ljava/lang/Object;)Lorg/checkerframework/com/google/common/collect/ImmutableList;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lorg/checkerframework/com/google/common/util/concurrent/CollectionFuture$ListFuture;-><init>(Lorg/checkerframework/com/google/common/collect/ImmutableCollection;Z)V

    return-object v0
.end method

.method public static catching(Lorg/checkerframework/com/google/common/util/concurrent/ListenableFuture;Ljava/lang/Class;Lorg/checkerframework/com/google/common/base/Function;Ljava/util/concurrent/Executor;)Lorg/checkerframework/com/google/common/util/concurrent/ListenableFuture;
    .locals 1
    .param p3, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            "X:",
            "Ljava/lang/Throwable;",
            ">(",
            "Lorg/checkerframework/com/google/common/util/concurrent/ListenableFuture<",
            "+TV;>;",
            "Ljava/lang/Class<",
            "TX;>;",
            "Lorg/checkerframework/com/google/common/base/Function<",
            "-TX;+TV;>;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Lorg/checkerframework/com/google/common/util/concurrent/ListenableFuture<",
            "TV;>;"
        }
    .end annotation

    .line 259
    .local p0, "input":Lorg/checkerframework/com/google/common/util/concurrent/ListenableFuture;, "Lorg/checkerframework/com/google/common/util/concurrent/ListenableFuture<+TV;>;"
    .local p1, "exceptionType":Ljava/lang/Class;, "Ljava/lang/Class<TX;>;"
    .local p2, "fallback":Lorg/checkerframework/com/google/common/base/Function;, "Lorg/checkerframework/com/google/common/base/Function<-TX;+TV;>;"
    invoke-static {p0, p1, p2, p3}, Lorg/checkerframework/com/google/common/util/concurrent/AbstractCatchingFuture;->create(Lorg/checkerframework/com/google/common/util/concurrent/ListenableFuture;Ljava/lang/Class;Lorg/checkerframework/com/google/common/base/Function;Ljava/util/concurrent/Executor;)Lorg/checkerframework/com/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0
.end method

.method public static catchingAsync(Lorg/checkerframework/com/google/common/util/concurrent/ListenableFuture;Ljava/lang/Class;Lorg/checkerframework/com/google/common/util/concurrent/AsyncFunction;Ljava/util/concurrent/Executor;)Lorg/checkerframework/com/google/common/util/concurrent/ListenableFuture;
    .locals 1
    .param p3, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            "X:",
            "Ljava/lang/Throwable;",
            ">(",
            "Lorg/checkerframework/com/google/common/util/concurrent/ListenableFuture<",
            "+TV;>;",
            "Ljava/lang/Class<",
            "TX;>;",
            "Lorg/checkerframework/com/google/common/util/concurrent/AsyncFunction<",
            "-TX;+TV;>;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Lorg/checkerframework/com/google/common/util/concurrent/ListenableFuture<",
            "TV;>;"
        }
    .end annotation

    .line 328
    .local p0, "input":Lorg/checkerframework/com/google/common/util/concurrent/ListenableFuture;, "Lorg/checkerframework/com/google/common/util/concurrent/ListenableFuture<+TV;>;"
    .local p1, "exceptionType":Ljava/lang/Class;, "Ljava/lang/Class<TX;>;"
    .local p2, "fallback":Lorg/checkerframework/com/google/common/util/concurrent/AsyncFunction;, "Lorg/checkerframework/com/google/common/util/concurrent/AsyncFunction<-TX;+TV;>;"
    invoke-static {p0, p1, p2, p3}, Lorg/checkerframework/com/google/common/util/concurrent/AbstractCatchingFuture;->create(Lorg/checkerframework/com/google/common/util/concurrent/ListenableFuture;Ljava/lang/Class;Lorg/checkerframework/com/google/common/util/concurrent/AsyncFunction;Ljava/util/concurrent/Executor;)Lorg/checkerframework/com/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0
.end method

.method public static getChecked(Ljava/util/concurrent/Future;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            "X:",
            "Ljava/lang/Exception;",
            ">(",
            "Ljava/util/concurrent/Future<",
            "TV;>;",
            "Ljava/lang/Class<",
            "TX;>;)TV;^TX;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1114
    .local p0, "future":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<TV;>;"
    .local p1, "exceptionClass":Ljava/lang/Class;, "Ljava/lang/Class<TX;>;"
    invoke-static {p0, p1}, Lorg/checkerframework/com/google/common/util/concurrent/FuturesGetChecked;->getChecked(Ljava/util/concurrent/Future;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static getChecked(Ljava/util/concurrent/Future;Ljava/lang/Class;JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .locals 1
    .param p2, "timeout"    # J
    .param p4, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            "X:",
            "Ljava/lang/Exception;",
            ">(",
            "Ljava/util/concurrent/Future<",
            "TV;>;",
            "Ljava/lang/Class<",
            "TX;>;J",
            "Ljava/util/concurrent/TimeUnit;",
            ")TV;^TX;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1217
    .local p0, "future":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<TV;>;"
    .local p1, "exceptionClass":Ljava/lang/Class;, "Ljava/lang/Class<TX;>;"
    invoke-static {p0, p1, p2, p3, p4}, Lorg/checkerframework/com/google/common/util/concurrent/FuturesGetChecked;->getChecked(Ljava/util/concurrent/Future;Ljava/lang/Class;JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static getChecked(Ljava/util/concurrent/Future;Ljava/lang/Class;Ljava/time/Duration;)Ljava/lang/Object;
    .locals 3
    .param p2, "timeout"    # Ljava/time/Duration;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            "X:",
            "Ljava/lang/Exception;",
            ">(",
            "Ljava/util/concurrent/Future<",
            "TV;>;",
            "Ljava/lang/Class<",
            "TX;>;",
            "Ljava/time/Duration;",
            ")TV;^TX;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1165
    .local p0, "future":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<TV;>;"
    .local p1, "exceptionClass":Ljava/lang/Class;, "Ljava/lang/Class<TX;>;"
    invoke-static {p2}, Lorg/checkerframework/com/google/common/util/concurrent/Internal;->saturatedToNanos(Ljava/time/Duration;)J

    move-result-wide v0

    sget-object v2, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {p0, p1, v0, v1, v2}, Lorg/checkerframework/com/google/common/util/concurrent/Futures;->getChecked(Ljava/util/concurrent/Future;Ljava/lang/Class;JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static getDone(Ljava/util/concurrent/Future;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Future<",
            "TV;>;)TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    .line 1063
    .local p0, "future":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<TV;>;"
    invoke-interface {p0}, Ljava/util/concurrent/Future;->isDone()Z

    move-result v0

    const-string v1, "Future was expected to be done: %s"

    invoke-static {v0, v1, p0}, Lorg/checkerframework/com/google/common/base/Preconditions;->checkState(ZLjava/lang/String;Ljava/lang/Object;)V

    .line 1064
    invoke-static {p0}, Lorg/checkerframework/com/google/common/util/concurrent/Uninterruptibles;->getUninterruptibly(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static getUnchecked(Ljava/util/concurrent/Future;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Future<",
            "TV;>;)TV;"
        }
    .end annotation

    .line 1256
    .local p0, "future":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<TV;>;"
    invoke-static {p0}, Lorg/checkerframework/com/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1258
    :try_start_0
    invoke-static {p0}, Lorg/checkerframework/com/google/common/util/concurrent/Uninterruptibles;->getUninterruptibly(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 1259
    :catch_0
    move-exception v0

    .line 1260
    .local v0, "e":Ljava/util/concurrent/ExecutionException;
    invoke-virtual {v0}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    invoke-static {v1}, Lorg/checkerframework/com/google/common/util/concurrent/Futures;->wrapAndThrowUnchecked(Ljava/lang/Throwable;)V

    .line 1261
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1
.end method

.method public static immediateCancelledFuture()Lorg/checkerframework/com/google/common/util/concurrent/ListenableFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">()",
            "Lorg/checkerframework/com/google/common/util/concurrent/ListenableFuture<",
            "TV;>;"
        }
    .end annotation

    .line 157
    new-instance v0, Lorg/checkerframework/com/google/common/util/concurrent/ImmediateFuture$ImmediateCancelledFuture;

    invoke-direct {v0}, Lorg/checkerframework/com/google/common/util/concurrent/ImmediateFuture$ImmediateCancelledFuture;-><init>()V

    return-object v0
.end method

.method public static immediateFailedFuture(Ljava/lang/Throwable;)Lorg/checkerframework/com/google/common/util/concurrent/ListenableFuture;
    .locals 1
    .param p0, "throwable"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Throwable;",
            ")",
            "Lorg/checkerframework/com/google/common/util/concurrent/ListenableFuture<",
            "TV;>;"
        }
    .end annotation

    .line 146
    invoke-static {p0}, Lorg/checkerframework/com/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    new-instance v0, Lorg/checkerframework/com/google/common/util/concurrent/ImmediateFuture$ImmediateFailedFuture;

    invoke-direct {v0, p0}, Lorg/checkerframework/com/google/common/util/concurrent/ImmediateFuture$ImmediateFailedFuture;-><init>(Ljava/lang/Throwable;)V

    return-object v0
.end method

.method public static immediateFuture(Ljava/lang/Object;)Lorg/checkerframework/com/google/common/util/concurrent/ListenableFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(TV;)",
            "Lorg/checkerframework/com/google/common/util/concurrent/ListenableFuture<",
            "TV;>;"
        }
    .end annotation

    .line 129
    .local p0, "value":Ljava/lang/Object;, "TV;"
    if-nez p0, :cond_0

    .line 132
    sget-object v0, Lorg/checkerframework/com/google/common/util/concurrent/ImmediateFuture$ImmediateSuccessfulFuture;->NULL:Lorg/checkerframework/com/google/common/util/concurrent/ImmediateFuture$ImmediateSuccessfulFuture;

    .line 133
    .local v0, "typedNull":Lorg/checkerframework/com/google/common/util/concurrent/ListenableFuture;, "Lorg/checkerframework/com/google/common/util/concurrent/ListenableFuture<TV;>;"
    return-object v0

    .line 135
    .end local v0    # "typedNull":Lorg/checkerframework/com/google/common/util/concurrent/ListenableFuture;, "Lorg/checkerframework/com/google/common/util/concurrent/ListenableFuture<TV;>;"
    :cond_0
    new-instance v0, Lorg/checkerframework/com/google/common/util/concurrent/ImmediateFuture$ImmediateSuccessfulFuture;

    invoke-direct {v0, p0}, Lorg/checkerframework/com/google/common/util/concurrent/ImmediateFuture$ImmediateSuccessfulFuture;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public static inCompletionOrder(Ljava/lang/Iterable;)Lorg/checkerframework/com/google/common/collect/ImmutableList;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "+",
            "Lorg/checkerframework/com/google/common/util/concurrent/ListenableFuture<",
            "+TT;>;>;)",
            "Lorg/checkerframework/com/google/common/collect/ImmutableList<",
            "Lorg/checkerframework/com/google/common/util/concurrent/ListenableFuture<",
            "TT;>;>;"
        }
    .end annotation

    .line 824
    .local p0, "futures":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Lorg/checkerframework/com/google/common/util/concurrent/ListenableFuture<+TT;>;>;"
    instance-of v0, p0, Ljava/util/Collection;

    if-eqz v0, :cond_0

    .line 825
    move-object v0, p0

    check-cast v0, Ljava/util/Collection;

    .local v0, "collection":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/checkerframework/com/google/common/util/concurrent/ListenableFuture<+TT;>;>;"
    goto :goto_0

    .line 827
    .end local v0    # "collection":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/checkerframework/com/google/common/util/concurrent/ListenableFuture<+TT;>;>;"
    :cond_0
    invoke-static {p0}, Lorg/checkerframework/com/google/common/collect/ImmutableList;->copyOf(Ljava/lang/Iterable;)Lorg/checkerframework/com/google/common/collect/ImmutableList;

    move-result-object v0

    .line 830
    .restart local v0    # "collection":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/checkerframework/com/google/common/util/concurrent/ListenableFuture<+TT;>;>;"
    :goto_0
    nop

    .line 832
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v1

    new-array v1, v1, [Lorg/checkerframework/com/google/common/util/concurrent/ListenableFuture;

    invoke-interface {v0, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lorg/checkerframework/com/google/common/util/concurrent/ListenableFuture;

    check-cast v1, [Lorg/checkerframework/com/google/common/util/concurrent/ListenableFuture;

    .line 833
    .local v1, "copy":[Lorg/checkerframework/com/google/common/util/concurrent/ListenableFuture;, "[Lorg/checkerframework/com/google/common/util/concurrent/ListenableFuture<+TT;>;"
    new-instance v2, Lorg/checkerframework/com/google/common/util/concurrent/Futures$InCompletionOrderState;

    const/4 v3, 0x0

    invoke-direct {v2, v1, v3}, Lorg/checkerframework/com/google/common/util/concurrent/Futures$InCompletionOrderState;-><init>([Lorg/checkerframework/com/google/common/util/concurrent/ListenableFuture;Lorg/checkerframework/com/google/common/util/concurrent/Futures$1;)V

    .line 834
    .local v2, "state":Lorg/checkerframework/com/google/common/util/concurrent/Futures$InCompletionOrderState;, "Lorg/checkerframework/com/google/common/util/concurrent/Futures$InCompletionOrderState<TT;>;"
    invoke-static {}, Lorg/checkerframework/com/google/common/collect/ImmutableList;->builder()Lorg/checkerframework/com/google/common/collect/ImmutableList$Builder;

    move-result-object v4

    .line 835
    .local v4, "delegatesBuilder":Lorg/checkerframework/com/google/common/collect/ImmutableList$Builder;, "Lorg/checkerframework/com/google/common/collect/ImmutableList$Builder<Lorg/checkerframework/com/google/common/util/concurrent/AbstractFuture<TT;>;>;"
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    array-length v6, v1

    if-ge v5, v6, :cond_1

    .line 836
    new-instance v6, Lorg/checkerframework/com/google/common/util/concurrent/Futures$InCompletionOrderFuture;

    invoke-direct {v6, v2, v3}, Lorg/checkerframework/com/google/common/util/concurrent/Futures$InCompletionOrderFuture;-><init>(Lorg/checkerframework/com/google/common/util/concurrent/Futures$InCompletionOrderState;Lorg/checkerframework/com/google/common/util/concurrent/Futures$1;)V

    invoke-virtual {v4, v6}, Lorg/checkerframework/com/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lorg/checkerframework/com/google/common/collect/ImmutableList$Builder;

    .line 835
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 839
    .end local v5    # "i":I
    :cond_1
    invoke-virtual {v4}, Lorg/checkerframework/com/google/common/collect/ImmutableList$Builder;->build()Lorg/checkerframework/com/google/common/collect/ImmutableList;

    move-result-object v3

    .line 840
    .local v3, "delegates":Lorg/checkerframework/com/google/common/collect/ImmutableList;, "Lorg/checkerframework/com/google/common/collect/ImmutableList<Lorg/checkerframework/com/google/common/util/concurrent/AbstractFuture<TT;>;>;"
    const/4 v5, 0x0

    .restart local v5    # "i":I
    :goto_2
    array-length v6, v1

    if-ge v5, v6, :cond_2

    .line 841
    move v6, v5

    .line 842
    .local v6, "localI":I
    aget-object v7, v1, v5

    new-instance v8, Lorg/checkerframework/com/google/common/util/concurrent/Futures$3;

    invoke-direct {v8, v2, v3, v6}, Lorg/checkerframework/com/google/common/util/concurrent/Futures$3;-><init>(Lorg/checkerframework/com/google/common/util/concurrent/Futures$InCompletionOrderState;Lorg/checkerframework/com/google/common/collect/ImmutableList;I)V

    .line 849
    invoke-static {}, Lorg/checkerframework/com/google/common/util/concurrent/MoreExecutors;->directExecutor()Ljava/util/concurrent/Executor;

    move-result-object v9

    .line 842
    invoke-interface {v7, v8, v9}, Lorg/checkerframework/com/google/common/util/concurrent/ListenableFuture;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 840
    .end local v6    # "localI":I
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 853
    .end local v5    # "i":I
    :cond_2
    move-object v5, v3

    .line 854
    .local v5, "delegatesCast":Lorg/checkerframework/com/google/common/collect/ImmutableList;, "Lorg/checkerframework/com/google/common/collect/ImmutableList<Lorg/checkerframework/com/google/common/util/concurrent/ListenableFuture<TT;>;>;"
    return-object v5
.end method

.method public static lazyTransform(Ljava/util/concurrent/Future;Lorg/checkerframework/com/google/common/base/Function;)Ljava/util/concurrent/Future;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<I:",
            "Ljava/lang/Object;",
            "O:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Future<",
            "TI;>;",
            "Lorg/checkerframework/com/google/common/base/Function<",
            "-TI;+TO;>;)",
            "Ljava/util/concurrent/Future<",
            "TO;>;"
        }
    .end annotation

    .line 480
    .local p0, "input":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<TI;>;"
    .local p1, "function":Lorg/checkerframework/com/google/common/base/Function;, "Lorg/checkerframework/com/google/common/base/Function<-TI;+TO;>;"
    invoke-static {p0}, Lorg/checkerframework/com/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 481
    invoke-static {p1}, Lorg/checkerframework/com/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 482
    new-instance v0, Lorg/checkerframework/com/google/common/util/concurrent/Futures$2;

    invoke-direct {v0, p0, p1}, Lorg/checkerframework/com/google/common/util/concurrent/Futures$2;-><init>(Ljava/util/concurrent/Future;Lorg/checkerframework/com/google/common/base/Function;)V

    return-object v0
.end method

.method public static nonCancellationPropagating(Lorg/checkerframework/com/google/common/util/concurrent/ListenableFuture;)Lorg/checkerframework/com/google/common/util/concurrent/ListenableFuture;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/checkerframework/com/google/common/util/concurrent/ListenableFuture<",
            "TV;>;)",
            "Lorg/checkerframework/com/google/common/util/concurrent/ListenableFuture<",
            "TV;>;"
        }
    .end annotation

    .line 717
    .local p0, "future":Lorg/checkerframework/com/google/common/util/concurrent/ListenableFuture;, "Lorg/checkerframework/com/google/common/util/concurrent/ListenableFuture<TV;>;"
    invoke-interface {p0}, Lorg/checkerframework/com/google/common/util/concurrent/ListenableFuture;->isDone()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 718
    return-object p0

    .line 720
    :cond_0
    new-instance v0, Lorg/checkerframework/com/google/common/util/concurrent/Futures$NonCancellationPropagatingFuture;

    invoke-direct {v0, p0}, Lorg/checkerframework/com/google/common/util/concurrent/Futures$NonCancellationPropagatingFuture;-><init>(Lorg/checkerframework/com/google/common/util/concurrent/ListenableFuture;)V

    .line 721
    .local v0, "output":Lorg/checkerframework/com/google/common/util/concurrent/Futures$NonCancellationPropagatingFuture;, "Lorg/checkerframework/com/google/common/util/concurrent/Futures$NonCancellationPropagatingFuture<TV;>;"
    invoke-static {}, Lorg/checkerframework/com/google/common/util/concurrent/MoreExecutors;->directExecutor()Ljava/util/concurrent/Executor;

    move-result-object v1

    invoke-interface {p0, v0, v1}, Lorg/checkerframework/com/google/common/util/concurrent/ListenableFuture;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 722
    return-object v0
.end method

.method public static scheduleAsync(Lorg/checkerframework/com/google/common/util/concurrent/AsyncCallable;JLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ScheduledExecutorService;)Lorg/checkerframework/com/google/common/util/concurrent/ListenableFuture;
    .locals 4
    .param p1, "delay"    # J
    .param p3, "timeUnit"    # Ljava/util/concurrent/TimeUnit;
    .param p4, "executorService"    # Ljava/util/concurrent/ScheduledExecutorService;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<O:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/checkerframework/com/google/common/util/concurrent/AsyncCallable<",
            "TO;>;J",
            "Ljava/util/concurrent/TimeUnit;",
            "Ljava/util/concurrent/ScheduledExecutorService;",
            ")",
            "Lorg/checkerframework/com/google/common/util/concurrent/ListenableFuture<",
            "TO;>;"
        }
    .end annotation

    .line 200
    .local p0, "callable":Lorg/checkerframework/com/google/common/util/concurrent/AsyncCallable;, "Lorg/checkerframework/com/google/common/util/concurrent/AsyncCallable<TO;>;"
    invoke-static {p0}, Lorg/checkerframework/com/google/common/util/concurrent/TrustedListenableFutureTask;->create(Lorg/checkerframework/com/google/common/util/concurrent/AsyncCallable;)Lorg/checkerframework/com/google/common/util/concurrent/TrustedListenableFutureTask;

    move-result-object v0

    .line 201
    .local v0, "task":Lorg/checkerframework/com/google/common/util/concurrent/TrustedListenableFutureTask;, "Lorg/checkerframework/com/google/common/util/concurrent/TrustedListenableFutureTask<TO;>;"
    invoke-interface {p4, v0, p1, p2, p3}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v1

    .line 202
    .local v1, "scheduled":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<*>;"
    new-instance v2, Lorg/checkerframework/com/google/common/util/concurrent/Futures$1;

    invoke-direct {v2, v1}, Lorg/checkerframework/com/google/common/util/concurrent/Futures$1;-><init>(Ljava/util/concurrent/Future;)V

    .line 210
    invoke-static {}, Lorg/checkerframework/com/google/common/util/concurrent/MoreExecutors;->directExecutor()Ljava/util/concurrent/Executor;

    move-result-object v3

    .line 202
    invoke-virtual {v0, v2, v3}, Lorg/checkerframework/com/google/common/util/concurrent/TrustedListenableFutureTask;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 211
    return-object v0
.end method

.method public static scheduleAsync(Lorg/checkerframework/com/google/common/util/concurrent/AsyncCallable;Ljava/time/Duration;Ljava/util/concurrent/ScheduledExecutorService;)Lorg/checkerframework/com/google/common/util/concurrent/ListenableFuture;
    .locals 3
    .param p1, "delay"    # Ljava/time/Duration;
    .param p2, "executorService"    # Ljava/util/concurrent/ScheduledExecutorService;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<O:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/checkerframework/com/google/common/util/concurrent/AsyncCallable<",
            "TO;>;",
            "Ljava/time/Duration;",
            "Ljava/util/concurrent/ScheduledExecutorService;",
            ")",
            "Lorg/checkerframework/com/google/common/util/concurrent/ListenableFuture<",
            "TO;>;"
        }
    .end annotation

    .line 183
    .local p0, "callable":Lorg/checkerframework/com/google/common/util/concurrent/AsyncCallable;, "Lorg/checkerframework/com/google/common/util/concurrent/AsyncCallable<TO;>;"
    invoke-static {p1}, Lorg/checkerframework/com/google/common/util/concurrent/Internal;->saturatedToNanos(Ljava/time/Duration;)J

    move-result-wide v0

    sget-object v2, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {p0, v0, v1, v2, p2}, Lorg/checkerframework/com/google/common/util/concurrent/Futures;->scheduleAsync(Lorg/checkerframework/com/google/common/util/concurrent/AsyncCallable;JLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ScheduledExecutorService;)Lorg/checkerframework/com/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0
.end method

.method public static submitAsync(Lorg/checkerframework/com/google/common/util/concurrent/AsyncCallable;Ljava/util/concurrent/Executor;)Lorg/checkerframework/com/google/common/util/concurrent/ListenableFuture;
    .locals 1
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<O:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/checkerframework/com/google/common/util/concurrent/AsyncCallable<",
            "TO;>;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Lorg/checkerframework/com/google/common/util/concurrent/ListenableFuture<",
            "TO;>;"
        }
    .end annotation

    .line 168
    .local p0, "callable":Lorg/checkerframework/com/google/common/util/concurrent/AsyncCallable;, "Lorg/checkerframework/com/google/common/util/concurrent/AsyncCallable<TO;>;"
    invoke-static {p0}, Lorg/checkerframework/com/google/common/util/concurrent/TrustedListenableFutureTask;->create(Lorg/checkerframework/com/google/common/util/concurrent/AsyncCallable;)Lorg/checkerframework/com/google/common/util/concurrent/TrustedListenableFutureTask;

    move-result-object v0

    .line 169
    .local v0, "task":Lorg/checkerframework/com/google/common/util/concurrent/TrustedListenableFutureTask;, "Lorg/checkerframework/com/google/common/util/concurrent/TrustedListenableFutureTask<TO;>;"
    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 170
    return-object v0
.end method

.method public static successfulAsList(Ljava/lang/Iterable;)Lorg/checkerframework/com/google/common/util/concurrent/ListenableFuture;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "+",
            "Lorg/checkerframework/com/google/common/util/concurrent/ListenableFuture<",
            "+TV;>;>;)",
            "Lorg/checkerframework/com/google/common/util/concurrent/ListenableFuture<",
            "Ljava/util/List<",
            "TV;>;>;"
        }
    .end annotation

    .line 795
    .local p0, "futures":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Lorg/checkerframework/com/google/common/util/concurrent/ListenableFuture<+TV;>;>;"
    new-instance v0, Lorg/checkerframework/com/google/common/util/concurrent/CollectionFuture$ListFuture;

    invoke-static {p0}, Lorg/checkerframework/com/google/common/collect/ImmutableList;->copyOf(Ljava/lang/Iterable;)Lorg/checkerframework/com/google/common/collect/ImmutableList;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/checkerframework/com/google/common/util/concurrent/CollectionFuture$ListFuture;-><init>(Lorg/checkerframework/com/google/common/collect/ImmutableCollection;Z)V

    return-object v0
.end method

.method public static varargs successfulAsList([Lorg/checkerframework/com/google/common/util/concurrent/ListenableFuture;)Lorg/checkerframework/com/google/common/util/concurrent/ListenableFuture;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">([",
            "Lorg/checkerframework/com/google/common/util/concurrent/ListenableFuture<",
            "+TV;>;)",
            "Lorg/checkerframework/com/google/common/util/concurrent/ListenableFuture<",
            "Ljava/util/List<",
            "TV;>;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    .line 776
    .local p0, "futures":[Lorg/checkerframework/com/google/common/util/concurrent/ListenableFuture;, "[Lorg/checkerframework/com/google/common/util/concurrent/ListenableFuture<+TV;>;"
    new-instance v0, Lorg/checkerframework/com/google/common/util/concurrent/CollectionFuture$ListFuture;

    invoke-static {p0}, Lorg/checkerframework/com/google/common/collect/ImmutableList;->copyOf([Ljava/lang/Object;)Lorg/checkerframework/com/google/common/collect/ImmutableList;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/checkerframework/com/google/common/util/concurrent/CollectionFuture$ListFuture;-><init>(Lorg/checkerframework/com/google/common/collect/ImmutableCollection;Z)V

    return-object v0
.end method

.method public static transform(Lorg/checkerframework/com/google/common/util/concurrent/ListenableFuture;Lorg/checkerframework/com/google/common/base/Function;Ljava/util/concurrent/Executor;)Lorg/checkerframework/com/google/common/util/concurrent/ListenableFuture;
    .locals 1
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

    .line 453
    .local p0, "input":Lorg/checkerframework/com/google/common/util/concurrent/ListenableFuture;, "Lorg/checkerframework/com/google/common/util/concurrent/ListenableFuture<TI;>;"
    .local p1, "function":Lorg/checkerframework/com/google/common/base/Function;, "Lorg/checkerframework/com/google/common/base/Function<-TI;+TO;>;"
    invoke-static {p0, p1, p2}, Lorg/checkerframework/com/google/common/util/concurrent/AbstractTransformFuture;->create(Lorg/checkerframework/com/google/common/util/concurrent/ListenableFuture;Lorg/checkerframework/com/google/common/base/Function;Ljava/util/concurrent/Executor;)Lorg/checkerframework/com/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0
.end method

.method public static transformAsync(Lorg/checkerframework/com/google/common/util/concurrent/ListenableFuture;Lorg/checkerframework/com/google/common/util/concurrent/AsyncFunction;Ljava/util/concurrent/Executor;)Lorg/checkerframework/com/google/common/util/concurrent/ListenableFuture;
    .locals 1
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

    .line 416
    .local p0, "input":Lorg/checkerframework/com/google/common/util/concurrent/ListenableFuture;, "Lorg/checkerframework/com/google/common/util/concurrent/ListenableFuture<TI;>;"
    .local p1, "function":Lorg/checkerframework/com/google/common/util/concurrent/AsyncFunction;, "Lorg/checkerframework/com/google/common/util/concurrent/AsyncFunction<-TI;+TO;>;"
    invoke-static {p0, p1, p2}, Lorg/checkerframework/com/google/common/util/concurrent/AbstractTransformFuture;->create(Lorg/checkerframework/com/google/common/util/concurrent/ListenableFuture;Lorg/checkerframework/com/google/common/util/concurrent/AsyncFunction;Ljava/util/concurrent/Executor;)Lorg/checkerframework/com/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0
.end method

.method public static whenAllComplete(Ljava/lang/Iterable;)Lorg/checkerframework/com/google/common/util/concurrent/Futures$FutureCombiner;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "+",
            "Lorg/checkerframework/com/google/common/util/concurrent/ListenableFuture<",
            "+TV;>;>;)",
            "Lorg/checkerframework/com/google/common/util/concurrent/Futures$FutureCombiner<",
            "TV;>;"
        }
    .end annotation

    .line 579
    .local p0, "futures":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Lorg/checkerframework/com/google/common/util/concurrent/ListenableFuture<+TV;>;>;"
    new-instance v0, Lorg/checkerframework/com/google/common/util/concurrent/Futures$FutureCombiner;

    invoke-static {p0}, Lorg/checkerframework/com/google/common/collect/ImmutableList;->copyOf(Ljava/lang/Iterable;)Lorg/checkerframework/com/google/common/collect/ImmutableList;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v3, v1, v2}, Lorg/checkerframework/com/google/common/util/concurrent/Futures$FutureCombiner;-><init>(ZLorg/checkerframework/com/google/common/collect/ImmutableList;Lorg/checkerframework/com/google/common/util/concurrent/Futures$1;)V

    return-object v0
.end method

.method public static varargs whenAllComplete([Lorg/checkerframework/com/google/common/util/concurrent/ListenableFuture;)Lorg/checkerframework/com/google/common/util/concurrent/Futures$FutureCombiner;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">([",
            "Lorg/checkerframework/com/google/common/util/concurrent/ListenableFuture<",
            "+TV;>;)",
            "Lorg/checkerframework/com/google/common/util/concurrent/Futures$FutureCombiner<",
            "TV;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    .line 567
    .local p0, "futures":[Lorg/checkerframework/com/google/common/util/concurrent/ListenableFuture;, "[Lorg/checkerframework/com/google/common/util/concurrent/ListenableFuture<+TV;>;"
    new-instance v0, Lorg/checkerframework/com/google/common/util/concurrent/Futures$FutureCombiner;

    invoke-static {p0}, Lorg/checkerframework/com/google/common/collect/ImmutableList;->copyOf([Ljava/lang/Object;)Lorg/checkerframework/com/google/common/collect/ImmutableList;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v3, v1, v2}, Lorg/checkerframework/com/google/common/util/concurrent/Futures$FutureCombiner;-><init>(ZLorg/checkerframework/com/google/common/collect/ImmutableList;Lorg/checkerframework/com/google/common/util/concurrent/Futures$1;)V

    return-object v0
.end method

.method public static whenAllSucceed(Ljava/lang/Iterable;)Lorg/checkerframework/com/google/common/util/concurrent/Futures$FutureCombiner;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "+",
            "Lorg/checkerframework/com/google/common/util/concurrent/ListenableFuture<",
            "+TV;>;>;)",
            "Lorg/checkerframework/com/google/common/util/concurrent/Futures$FutureCombiner<",
            "TV;>;"
        }
    .end annotation

    .line 605
    .local p0, "futures":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Lorg/checkerframework/com/google/common/util/concurrent/ListenableFuture<+TV;>;>;"
    new-instance v0, Lorg/checkerframework/com/google/common/util/concurrent/Futures$FutureCombiner;

    invoke-static {p0}, Lorg/checkerframework/com/google/common/collect/ImmutableList;->copyOf(Ljava/lang/Iterable;)Lorg/checkerframework/com/google/common/collect/ImmutableList;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v3, v1, v2}, Lorg/checkerframework/com/google/common/util/concurrent/Futures$FutureCombiner;-><init>(ZLorg/checkerframework/com/google/common/collect/ImmutableList;Lorg/checkerframework/com/google/common/util/concurrent/Futures$1;)V

    return-object v0
.end method

.method public static varargs whenAllSucceed([Lorg/checkerframework/com/google/common/util/concurrent/ListenableFuture;)Lorg/checkerframework/com/google/common/util/concurrent/Futures$FutureCombiner;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">([",
            "Lorg/checkerframework/com/google/common/util/concurrent/ListenableFuture<",
            "+TV;>;)",
            "Lorg/checkerframework/com/google/common/util/concurrent/Futures$FutureCombiner<",
            "TV;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    .line 592
    .local p0, "futures":[Lorg/checkerframework/com/google/common/util/concurrent/ListenableFuture;, "[Lorg/checkerframework/com/google/common/util/concurrent/ListenableFuture<+TV;>;"
    new-instance v0, Lorg/checkerframework/com/google/common/util/concurrent/Futures$FutureCombiner;

    invoke-static {p0}, Lorg/checkerframework/com/google/common/collect/ImmutableList;->copyOf([Ljava/lang/Object;)Lorg/checkerframework/com/google/common/collect/ImmutableList;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v3, v1, v2}, Lorg/checkerframework/com/google/common/util/concurrent/Futures$FutureCombiner;-><init>(ZLorg/checkerframework/com/google/common/collect/ImmutableList;Lorg/checkerframework/com/google/common/util/concurrent/Futures$1;)V

    return-object v0
.end method

.method public static withTimeout(Lorg/checkerframework/com/google/common/util/concurrent/ListenableFuture;JLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ScheduledExecutorService;)Lorg/checkerframework/com/google/common/util/concurrent/ListenableFuture;
    .locals 1
    .param p1, "time"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
    .param p4, "scheduledExecutor"    # Ljava/util/concurrent/ScheduledExecutorService;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/checkerframework/com/google/common/util/concurrent/ListenableFuture<",
            "TV;>;J",
            "Ljava/util/concurrent/TimeUnit;",
            "Ljava/util/concurrent/ScheduledExecutorService;",
            ")",
            "Lorg/checkerframework/com/google/common/util/concurrent/ListenableFuture<",
            "TV;>;"
        }
    .end annotation

    .line 369
    .local p0, "delegate":Lorg/checkerframework/com/google/common/util/concurrent/ListenableFuture;, "Lorg/checkerframework/com/google/common/util/concurrent/ListenableFuture<TV;>;"
    invoke-interface {p0}, Lorg/checkerframework/com/google/common/util/concurrent/ListenableFuture;->isDone()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 370
    return-object p0

    .line 372
    :cond_0
    invoke-static {p0, p1, p2, p3, p4}, Lorg/checkerframework/com/google/common/util/concurrent/TimeoutFuture;->create(Lorg/checkerframework/com/google/common/util/concurrent/ListenableFuture;JLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ScheduledExecutorService;)Lorg/checkerframework/com/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0
.end method

.method public static withTimeout(Lorg/checkerframework/com/google/common/util/concurrent/ListenableFuture;Ljava/time/Duration;Ljava/util/concurrent/ScheduledExecutorService;)Lorg/checkerframework/com/google/common/util/concurrent/ListenableFuture;
    .locals 3
    .param p1, "time"    # Ljava/time/Duration;
    .param p2, "scheduledExecutor"    # Ljava/util/concurrent/ScheduledExecutorService;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/checkerframework/com/google/common/util/concurrent/ListenableFuture<",
            "TV;>;",
            "Ljava/time/Duration;",
            "Ljava/util/concurrent/ScheduledExecutorService;",
            ")",
            "Lorg/checkerframework/com/google/common/util/concurrent/ListenableFuture<",
            "TV;>;"
        }
    .end annotation

    .line 346
    .local p0, "delegate":Lorg/checkerframework/com/google/common/util/concurrent/ListenableFuture;, "Lorg/checkerframework/com/google/common/util/concurrent/ListenableFuture<TV;>;"
    invoke-static {p1}, Lorg/checkerframework/com/google/common/util/concurrent/Internal;->saturatedToNanos(Ljava/time/Duration;)J

    move-result-wide v0

    sget-object v2, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {p0, v0, v1, v2, p2}, Lorg/checkerframework/com/google/common/util/concurrent/Futures;->withTimeout(Lorg/checkerframework/com/google/common/util/concurrent/ListenableFuture;JLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ScheduledExecutorService;)Lorg/checkerframework/com/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0
.end method

.method private static wrapAndThrowUnchecked(Ljava/lang/Throwable;)V
    .locals 2
    .param p0, "cause"    # Ljava/lang/Throwable;

    .line 1266
    instance-of v0, p0, Ljava/lang/Error;

    if-eqz v0, :cond_0

    .line 1267
    new-instance v0, Lorg/checkerframework/com/google/common/util/concurrent/ExecutionError;

    move-object v1, p0

    check-cast v1, Ljava/lang/Error;

    invoke-direct {v0, v1}, Lorg/checkerframework/com/google/common/util/concurrent/ExecutionError;-><init>(Ljava/lang/Error;)V

    throw v0

    .line 1274
    :cond_0
    new-instance v0, Lorg/checkerframework/com/google/common/util/concurrent/UncheckedExecutionException;

    invoke-direct {v0, p0}, Lorg/checkerframework/com/google/common/util/concurrent/UncheckedExecutionException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method
