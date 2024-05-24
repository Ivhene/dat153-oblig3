.class final Lorg/checkerframework/com/google/common/util/concurrent/CollectionFuture$ListFuture;
.super Lorg/checkerframework/com/google/common/util/concurrent/CollectionFuture;
.source "CollectionFuture.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/com/google/common/util/concurrent/CollectionFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ListFuture"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/checkerframework/com/google/common/util/concurrent/CollectionFuture$ListFuture$ListFutureRunningState;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/checkerframework/com/google/common/util/concurrent/CollectionFuture<",
        "TV;",
        "Ljava/util/List<",
        "TV;>;>;"
    }
.end annotation


# direct methods
.method constructor <init>(Lorg/checkerframework/com/google/common/collect/ImmutableCollection;Z)V
    .locals 1
    .param p2, "allMustSucceed"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/google/common/collect/ImmutableCollection<",
            "+",
            "Lorg/checkerframework/com/google/common/util/concurrent/ListenableFuture<",
            "+TV;>;>;Z)V"
        }
    .end annotation

    .line 90
    .local p0, "this":Lorg/checkerframework/com/google/common/util/concurrent/CollectionFuture$ListFuture;, "Lorg/checkerframework/com/google/common/util/concurrent/CollectionFuture$ListFuture<TV;>;"
    .local p1, "futures":Lorg/checkerframework/com/google/common/collect/ImmutableCollection;, "Lorg/checkerframework/com/google/common/collect/ImmutableCollection<+Lorg/checkerframework/com/google/common/util/concurrent/ListenableFuture<+TV;>;>;"
    invoke-direct {p0}, Lorg/checkerframework/com/google/common/util/concurrent/CollectionFuture;-><init>()V

    .line 91
    new-instance v0, Lorg/checkerframework/com/google/common/util/concurrent/CollectionFuture$ListFuture$ListFutureRunningState;

    invoke-direct {v0, p0, p1, p2}, Lorg/checkerframework/com/google/common/util/concurrent/CollectionFuture$ListFuture$ListFutureRunningState;-><init>(Lorg/checkerframework/com/google/common/util/concurrent/CollectionFuture$ListFuture;Lorg/checkerframework/com/google/common/collect/ImmutableCollection;Z)V

    invoke-virtual {p0, v0}, Lorg/checkerframework/com/google/common/util/concurrent/CollectionFuture$ListFuture;->init(Lorg/checkerframework/com/google/common/util/concurrent/AggregateFuture$RunningState;)V

    .line 92
    return-void
.end method
