.class public final Lorg/checkerframework/com/google/common/util/concurrent/JdkFutureAdapters;
.super Ljava/lang/Object;
.source "JdkFutureAdapters.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/checkerframework/com/google/common/util/concurrent/JdkFutureAdapters$ListenableFutureAdapter;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 170
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static listenInPoolThread(Ljava/util/concurrent/Future;)Lorg/checkerframework/com/google/common/util/concurrent/ListenableFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Future<",
            "TV;>;)",
            "Lorg/checkerframework/com/google/common/util/concurrent/ListenableFuture<",
            "TV;>;"
        }
    .end annotation

    .line 53
    .local p0, "future":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<TV;>;"
    instance-of v0, p0, Lorg/checkerframework/com/google/common/util/concurrent/ListenableFuture;

    if-eqz v0, :cond_0

    .line 54
    move-object v0, p0

    check-cast v0, Lorg/checkerframework/com/google/common/util/concurrent/ListenableFuture;

    return-object v0

    .line 56
    :cond_0
    new-instance v0, Lorg/checkerframework/com/google/common/util/concurrent/JdkFutureAdapters$ListenableFutureAdapter;

    invoke-direct {v0, p0}, Lorg/checkerframework/com/google/common/util/concurrent/JdkFutureAdapters$ListenableFutureAdapter;-><init>(Ljava/util/concurrent/Future;)V

    return-object v0
.end method

.method public static listenInPoolThread(Ljava/util/concurrent/Future;Ljava/util/concurrent/Executor;)Lorg/checkerframework/com/google/common/util/concurrent/ListenableFuture;
    .locals 1
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Future<",
            "TV;>;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Lorg/checkerframework/com/google/common/util/concurrent/ListenableFuture<",
            "TV;>;"
        }
    .end annotation

    .line 80
    .local p0, "future":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<TV;>;"
    invoke-static {p1}, Lorg/checkerframework/com/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    instance-of v0, p0, Lorg/checkerframework/com/google/common/util/concurrent/ListenableFuture;

    if-eqz v0, :cond_0

    .line 82
    move-object v0, p0

    check-cast v0, Lorg/checkerframework/com/google/common/util/concurrent/ListenableFuture;

    return-object v0

    .line 84
    :cond_0
    new-instance v0, Lorg/checkerframework/com/google/common/util/concurrent/JdkFutureAdapters$ListenableFutureAdapter;

    invoke-direct {v0, p0, p1}, Lorg/checkerframework/com/google/common/util/concurrent/JdkFutureAdapters$ListenableFutureAdapter;-><init>(Ljava/util/concurrent/Future;Ljava/util/concurrent/Executor;)V

    return-object v0
.end method