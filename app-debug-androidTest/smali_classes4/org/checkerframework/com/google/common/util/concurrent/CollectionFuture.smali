.class abstract Lorg/checkerframework/com/google/common/util/concurrent/CollectionFuture;
.super Lorg/checkerframework/com/google/common/util/concurrent/AggregateFuture;
.source "CollectionFuture.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/checkerframework/com/google/common/util/concurrent/CollectionFuture$ListFuture;,
        Lorg/checkerframework/com/google/common/util/concurrent/CollectionFuture$CollectionFutureRunningState;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        "C:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/checkerframework/com/google/common/util/concurrent/AggregateFuture<",
        "TV;TC;>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 31
    .local p0, "this":Lorg/checkerframework/com/google/common/util/concurrent/CollectionFuture;, "Lorg/checkerframework/com/google/common/util/concurrent/CollectionFuture<TV;TC;>;"
    invoke-direct {p0}, Lorg/checkerframework/com/google/common/util/concurrent/AggregateFuture;-><init>()V

    return-void
.end method
