.class public abstract Lorg/checkerframework/com/google/common/util/concurrent/FluentFuture;
.super Lorg/checkerframework/com/google/common/util/concurrent/GwtFluentFutureCatchingSpecialization;
.source "FluentFuture.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/checkerframework/com/google/common/util/concurrent/FluentFuture$TrustedFuture;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/checkerframework/com/google/common/util/concurrent/GwtFluentFutureCatchingSpecialization<",
        "TV;>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 118
    .local p0, "this":Lorg/checkerframework/com/google/common/util/concurrent/FluentFuture;, "Lorg/checkerframework/com/google/common/util/concurrent/FluentFuture<TV;>;"
    invoke-direct {p0}, Lorg/checkerframework/com/google/common/util/concurrent/GwtFluentFutureCatchingSpecialization;-><init>()V

    return-void
.end method

.method public static from(Lorg/checkerframework/com/google/common/util/concurrent/FluentFuture;)Lorg/checkerframework/com/google/common/util/concurrent/FluentFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/checkerframework/com/google/common/util/concurrent/FluentFuture<",
            "TV;>;)",
            "Lorg/checkerframework/com/google/common/util/concurrent/FluentFuture<",
            "TV;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 141
    .local p0, "future":Lorg/checkerframework/com/google/common/util/concurrent/FluentFuture;, "Lorg/checkerframework/com/google/common/util/concurrent/FluentFuture<TV;>;"
    invoke-static {p0}, Lorg/checkerframework/com/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/google/common/util/concurrent/FluentFuture;

    return-object v0
.end method

.method public static from(Lorg/checkerframework/com/google/common/util/concurrent/ListenableFuture;)Lorg/checkerframework/com/google/common/util/concurrent/FluentFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/checkerframework/com/google/common/util/concurrent/ListenableFuture<",
            "TV;>;)",
            "Lorg/checkerframework/com/google/common/util/concurrent/FluentFuture<",
            "TV;>;"
        }
    .end annotation

    .line 128
    .local p0, "future":Lorg/checkerframework/com/google/common/util/concurrent/ListenableFuture;, "Lorg/checkerframework/com/google/common/util/concurrent/ListenableFuture<TV;>;"
    instance-of v0, p0, Lorg/checkerframework/com/google/common/util/concurrent/FluentFuture;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Lorg/checkerframework/com/google/common/util/concurrent/FluentFuture;

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/checkerframework/com/google/common/util/concurrent/ForwardingFluentFuture;

    invoke-direct {v0, p0}, Lorg/checkerframework/com/google/common/util/concurrent/ForwardingFluentFuture;-><init>(Lorg/checkerframework/com/google/common/util/concurrent/ListenableFuture;)V

    :goto_0
    return-object v0
.end method


# virtual methods
.method public final addCallback(Lorg/checkerframework/com/google/common/util/concurrent/FutureCallback;Ljava/util/concurrent/Executor;)V
    .locals 0
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/google/common/util/concurrent/FutureCallback<",
            "-TV;>;",
            "Ljava/util/concurrent/Executor;",
            ")V"
        }
    .end annotation

    .line 402
    .local p0, "this":Lorg/checkerframework/com/google/common/util/concurrent/FluentFuture;, "Lorg/checkerframework/com/google/common/util/concurrent/FluentFuture<TV;>;"
    .local p1, "callback":Lorg/checkerframework/com/google/common/util/concurrent/FutureCallback;, "Lorg/checkerframework/com/google/common/util/concurrent/FutureCallback<-TV;>;"
    invoke-static {p0, p1, p2}, Lorg/checkerframework/com/google/common/util/concurrent/Futures;->addCallback(Lorg/checkerframework/com/google/common/util/concurrent/ListenableFuture;Lorg/checkerframework/com/google/common/util/concurrent/FutureCallback;Ljava/util/concurrent/Executor;)V

    .line 403
    return-void
.end method

.method public final catching(Ljava/lang/Class;Lorg/checkerframework/com/google/common/base/Function;Ljava/util/concurrent/Executor;)Lorg/checkerframework/com/google/common/util/concurrent/FluentFuture;
    .locals 1
    .param p3, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X:",
            "Ljava/lang/Throwable;",
            ">(",
            "Ljava/lang/Class<",
            "TX;>;",
            "Lorg/checkerframework/com/google/common/base/Function<",
            "-TX;+TV;>;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Lorg/checkerframework/com/google/common/util/concurrent/FluentFuture<",
            "TV;>;"
        }
    .end annotation

    .line 184
    .local p0, "this":Lorg/checkerframework/com/google/common/util/concurrent/FluentFuture;, "Lorg/checkerframework/com/google/common/util/concurrent/FluentFuture<TV;>;"
    .local p1, "exceptionType":Ljava/lang/Class;, "Ljava/lang/Class<TX;>;"
    .local p2, "fallback":Lorg/checkerframework/com/google/common/base/Function;, "Lorg/checkerframework/com/google/common/base/Function<-TX;+TV;>;"
    invoke-static {p0, p1, p2, p3}, Lorg/checkerframework/com/google/common/util/concurrent/Futures;->catching(Lorg/checkerframework/com/google/common/util/concurrent/ListenableFuture;Ljava/lang/Class;Lorg/checkerframework/com/google/common/base/Function;Ljava/util/concurrent/Executor;)Lorg/checkerframework/com/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/google/common/util/concurrent/FluentFuture;

    return-object v0
.end method

.method public final catchingAsync(Ljava/lang/Class;Lorg/checkerframework/com/google/common/util/concurrent/AsyncFunction;Ljava/util/concurrent/Executor;)Lorg/checkerframework/com/google/common/util/concurrent/FluentFuture;
    .locals 1
    .param p3, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X:",
            "Ljava/lang/Throwable;",
            ">(",
            "Ljava/lang/Class<",
            "TX;>;",
            "Lorg/checkerframework/com/google/common/util/concurrent/AsyncFunction<",
            "-TX;+TV;>;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Lorg/checkerframework/com/google/common/util/concurrent/FluentFuture<",
            "TV;>;"
        }
    .end annotation

    .line 248
    .local p0, "this":Lorg/checkerframework/com/google/common/util/concurrent/FluentFuture;, "Lorg/checkerframework/com/google/common/util/concurrent/FluentFuture<TV;>;"
    .local p1, "exceptionType":Ljava/lang/Class;, "Ljava/lang/Class<TX;>;"
    .local p2, "fallback":Lorg/checkerframework/com/google/common/util/concurrent/AsyncFunction;, "Lorg/checkerframework/com/google/common/util/concurrent/AsyncFunction<-TX;+TV;>;"
    invoke-static {p0, p1, p2, p3}, Lorg/checkerframework/com/google/common/util/concurrent/Futures;->catchingAsync(Lorg/checkerframework/com/google/common/util/concurrent/ListenableFuture;Ljava/lang/Class;Lorg/checkerframework/com/google/common/util/concurrent/AsyncFunction;Ljava/util/concurrent/Executor;)Lorg/checkerframework/com/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/google/common/util/concurrent/FluentFuture;

    return-object v0
.end method

.method public final transform(Lorg/checkerframework/com/google/common/base/Function;Ljava/util/concurrent/Executor;)Lorg/checkerframework/com/google/common/util/concurrent/FluentFuture;
    .locals 1
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/checkerframework/com/google/common/base/Function<",
            "-TV;TT;>;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Lorg/checkerframework/com/google/common/util/concurrent/FluentFuture<",
            "TT;>;"
        }
    .end annotation

    .line 361
    .local p0, "this":Lorg/checkerframework/com/google/common/util/concurrent/FluentFuture;, "Lorg/checkerframework/com/google/common/util/concurrent/FluentFuture<TV;>;"
    .local p1, "function":Lorg/checkerframework/com/google/common/base/Function;, "Lorg/checkerframework/com/google/common/base/Function<-TV;TT;>;"
    invoke-static {p0, p1, p2}, Lorg/checkerframework/com/google/common/util/concurrent/Futures;->transform(Lorg/checkerframework/com/google/common/util/concurrent/ListenableFuture;Lorg/checkerframework/com/google/common/base/Function;Ljava/util/concurrent/Executor;)Lorg/checkerframework/com/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/google/common/util/concurrent/FluentFuture;

    return-object v0
.end method

.method public final transformAsync(Lorg/checkerframework/com/google/common/util/concurrent/AsyncFunction;Ljava/util/concurrent/Executor;)Lorg/checkerframework/com/google/common/util/concurrent/FluentFuture;
    .locals 1
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/checkerframework/com/google/common/util/concurrent/AsyncFunction<",
            "-TV;TT;>;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Lorg/checkerframework/com/google/common/util/concurrent/FluentFuture<",
            "TT;>;"
        }
    .end annotation

    .line 325
    .local p0, "this":Lorg/checkerframework/com/google/common/util/concurrent/FluentFuture;, "Lorg/checkerframework/com/google/common/util/concurrent/FluentFuture<TV;>;"
    .local p1, "function":Lorg/checkerframework/com/google/common/util/concurrent/AsyncFunction;, "Lorg/checkerframework/com/google/common/util/concurrent/AsyncFunction<-TV;TT;>;"
    invoke-static {p0, p1, p2}, Lorg/checkerframework/com/google/common/util/concurrent/Futures;->transformAsync(Lorg/checkerframework/com/google/common/util/concurrent/ListenableFuture;Lorg/checkerframework/com/google/common/util/concurrent/AsyncFunction;Ljava/util/concurrent/Executor;)Lorg/checkerframework/com/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/google/common/util/concurrent/FluentFuture;

    return-object v0
.end method

.method public final withTimeout(JLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ScheduledExecutorService;)Lorg/checkerframework/com/google/common/util/concurrent/FluentFuture;
    .locals 1
    .param p1, "timeout"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
    .param p4, "scheduledExecutor"    # Ljava/util/concurrent/ScheduledExecutorService;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            "Ljava/util/concurrent/ScheduledExecutorService;",
            ")",
            "Lorg/checkerframework/com/google/common/util/concurrent/FluentFuture<",
            "TV;>;"
        }
    .end annotation

    .line 281
    .local p0, "this":Lorg/checkerframework/com/google/common/util/concurrent/FluentFuture;, "Lorg/checkerframework/com/google/common/util/concurrent/FluentFuture<TV;>;"
    invoke-static {p0, p1, p2, p3, p4}, Lorg/checkerframework/com/google/common/util/concurrent/Futures;->withTimeout(Lorg/checkerframework/com/google/common/util/concurrent/ListenableFuture;JLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ScheduledExecutorService;)Lorg/checkerframework/com/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/google/common/util/concurrent/FluentFuture;

    return-object v0
.end method

.method public final withTimeout(Ljava/time/Duration;Ljava/util/concurrent/ScheduledExecutorService;)Lorg/checkerframework/com/google/common/util/concurrent/FluentFuture;
    .locals 3
    .param p1, "timeout"    # Ljava/time/Duration;
    .param p2, "scheduledExecutor"    # Ljava/util/concurrent/ScheduledExecutorService;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/time/Duration;",
            "Ljava/util/concurrent/ScheduledExecutorService;",
            ")",
            "Lorg/checkerframework/com/google/common/util/concurrent/FluentFuture<",
            "TV;>;"
        }
    .end annotation

    .line 264
    .local p0, "this":Lorg/checkerframework/com/google/common/util/concurrent/FluentFuture;, "Lorg/checkerframework/com/google/common/util/concurrent/FluentFuture<TV;>;"
    invoke-static {p1}, Lorg/checkerframework/com/google/common/util/concurrent/Internal;->saturatedToNanos(Ljava/time/Duration;)J

    move-result-wide v0

    sget-object v2, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p0, v0, v1, v2, p2}, Lorg/checkerframework/com/google/common/util/concurrent/FluentFuture;->withTimeout(JLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ScheduledExecutorService;)Lorg/checkerframework/com/google/common/util/concurrent/FluentFuture;

    move-result-object v0

    return-object v0
.end method
