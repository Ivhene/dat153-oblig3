.class public final Lorg/checkerframework/com/google/common/util/concurrent/Futures$FutureCombiner;
.super Ljava/lang/Object;
.source "Futures.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/com/google/common/util/concurrent/Futures;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "FutureCombiner"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final allMustSucceed:Z

.field private final futures:Lorg/checkerframework/com/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/checkerframework/com/google/common/collect/ImmutableList<",
            "Lorg/checkerframework/com/google/common/util/concurrent/ListenableFuture<",
            "+TV;>;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(ZLorg/checkerframework/com/google/common/collect/ImmutableList;)V
    .locals 0
    .param p1, "allMustSucceed"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lorg/checkerframework/com/google/common/collect/ImmutableList<",
            "Lorg/checkerframework/com/google/common/util/concurrent/ListenableFuture<",
            "+TV;>;>;)V"
        }
    .end annotation

    .line 642
    .local p0, "this":Lorg/checkerframework/com/google/common/util/concurrent/Futures$FutureCombiner;, "Lorg/checkerframework/com/google/common/util/concurrent/Futures$FutureCombiner<TV;>;"
    .local p2, "futures":Lorg/checkerframework/com/google/common/collect/ImmutableList;, "Lorg/checkerframework/com/google/common/collect/ImmutableList<Lorg/checkerframework/com/google/common/util/concurrent/ListenableFuture<+TV;>;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 643
    iput-boolean p1, p0, Lorg/checkerframework/com/google/common/util/concurrent/Futures$FutureCombiner;->allMustSucceed:Z

    .line 644
    iput-object p2, p0, Lorg/checkerframework/com/google/common/util/concurrent/Futures$FutureCombiner;->futures:Lorg/checkerframework/com/google/common/collect/ImmutableList;

    .line 645
    return-void
.end method

.method synthetic constructor <init>(ZLorg/checkerframework/com/google/common/collect/ImmutableList;Lorg/checkerframework/com/google/common/util/concurrent/Futures$1;)V
    .locals 0
    .param p1, "x0"    # Z
    .param p2, "x1"    # Lorg/checkerframework/com/google/common/collect/ImmutableList;
    .param p3, "x2"    # Lorg/checkerframework/com/google/common/util/concurrent/Futures$1;

    .line 637
    .local p0, "this":Lorg/checkerframework/com/google/common/util/concurrent/Futures$FutureCombiner;, "Lorg/checkerframework/com/google/common/util/concurrent/Futures$FutureCombiner<TV;>;"
    invoke-direct {p0, p1, p2}, Lorg/checkerframework/com/google/common/util/concurrent/Futures$FutureCombiner;-><init>(ZLorg/checkerframework/com/google/common/collect/ImmutableList;)V

    return-void
.end method


# virtual methods
.method public call(Ljava/util/concurrent/Callable;Ljava/util/concurrent/Executor;)Lorg/checkerframework/com/google/common/util/concurrent/ListenableFuture;
    .locals 3
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable<",
            "TC;>;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Lorg/checkerframework/com/google/common/util/concurrent/ListenableFuture<",
            "TC;>;"
        }
    .end annotation

    .line 681
    .local p0, "this":Lorg/checkerframework/com/google/common/util/concurrent/Futures$FutureCombiner;, "Lorg/checkerframework/com/google/common/util/concurrent/Futures$FutureCombiner<TV;>;"
    .local p1, "combiner":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<TC;>;"
    new-instance v0, Lorg/checkerframework/com/google/common/util/concurrent/CombinedFuture;

    iget-object v1, p0, Lorg/checkerframework/com/google/common/util/concurrent/Futures$FutureCombiner;->futures:Lorg/checkerframework/com/google/common/collect/ImmutableList;

    iget-boolean v2, p0, Lorg/checkerframework/com/google/common/util/concurrent/Futures$FutureCombiner;->allMustSucceed:Z

    invoke-direct {v0, v1, v2, p2, p1}, Lorg/checkerframework/com/google/common/util/concurrent/CombinedFuture;-><init>(Lorg/checkerframework/com/google/common/collect/ImmutableCollection;ZLjava/util/concurrent/Executor;Ljava/util/concurrent/Callable;)V

    return-object v0
.end method

.method public callAsync(Lorg/checkerframework/com/google/common/util/concurrent/AsyncCallable;Ljava/util/concurrent/Executor;)Lorg/checkerframework/com/google/common/util/concurrent/ListenableFuture;
    .locals 3
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/checkerframework/com/google/common/util/concurrent/AsyncCallable<",
            "TC;>;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Lorg/checkerframework/com/google/common/util/concurrent/ListenableFuture<",
            "TC;>;"
        }
    .end annotation

    .line 662
    .local p0, "this":Lorg/checkerframework/com/google/common/util/concurrent/Futures$FutureCombiner;, "Lorg/checkerframework/com/google/common/util/concurrent/Futures$FutureCombiner<TV;>;"
    .local p1, "combiner":Lorg/checkerframework/com/google/common/util/concurrent/AsyncCallable;, "Lorg/checkerframework/com/google/common/util/concurrent/AsyncCallable<TC;>;"
    new-instance v0, Lorg/checkerframework/com/google/common/util/concurrent/CombinedFuture;

    iget-object v1, p0, Lorg/checkerframework/com/google/common/util/concurrent/Futures$FutureCombiner;->futures:Lorg/checkerframework/com/google/common/collect/ImmutableList;

    iget-boolean v2, p0, Lorg/checkerframework/com/google/common/util/concurrent/Futures$FutureCombiner;->allMustSucceed:Z

    invoke-direct {v0, v1, v2, p2, p1}, Lorg/checkerframework/com/google/common/util/concurrent/CombinedFuture;-><init>(Lorg/checkerframework/com/google/common/collect/ImmutableCollection;ZLjava/util/concurrent/Executor;Lorg/checkerframework/com/google/common/util/concurrent/AsyncCallable;)V

    return-object v0
.end method

.method public run(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)Lorg/checkerframework/com/google/common/util/concurrent/ListenableFuture;
    .locals 1
    .param p1, "combiner"    # Ljava/lang/Runnable;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Runnable;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Lorg/checkerframework/com/google/common/util/concurrent/ListenableFuture<",
            "*>;"
        }
    .end annotation

    .line 696
    .local p0, "this":Lorg/checkerframework/com/google/common/util/concurrent/Futures$FutureCombiner;, "Lorg/checkerframework/com/google/common/util/concurrent/Futures$FutureCombiner<TV;>;"
    new-instance v0, Lorg/checkerframework/com/google/common/util/concurrent/Futures$FutureCombiner$1;

    invoke-direct {v0, p0, p1}, Lorg/checkerframework/com/google/common/util/concurrent/Futures$FutureCombiner$1;-><init>(Lorg/checkerframework/com/google/common/util/concurrent/Futures$FutureCombiner;Ljava/lang/Runnable;)V

    invoke-virtual {p0, v0, p2}, Lorg/checkerframework/com/google/common/util/concurrent/Futures$FutureCombiner;->call(Ljava/util/concurrent/Callable;Ljava/util/concurrent/Executor;)Lorg/checkerframework/com/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0
.end method