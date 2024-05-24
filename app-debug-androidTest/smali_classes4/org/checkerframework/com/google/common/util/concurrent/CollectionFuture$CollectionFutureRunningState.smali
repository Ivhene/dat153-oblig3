.class abstract Lorg/checkerframework/com/google/common/util/concurrent/CollectionFuture$CollectionFutureRunningState;
.super Lorg/checkerframework/com/google/common/util/concurrent/AggregateFuture$RunningState;
.source "CollectionFuture.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/com/google/common/util/concurrent/CollectionFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x400
    name = "CollectionFutureRunningState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/checkerframework/com/google/common/util/concurrent/AggregateFuture<",
        "TV;TC;>.RunningState;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/checkerframework/com/google/common/util/concurrent/CollectionFuture;

.field private values:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/checkerframework/com/google/common/base/Optional<",
            "TV;>;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lorg/checkerframework/com/google/common/util/concurrent/CollectionFuture;Lorg/checkerframework/com/google/common/collect/ImmutableCollection;Z)V
    .locals 3
    .param p1, "this$0"    # Lorg/checkerframework/com/google/common/util/concurrent/CollectionFuture;
    .param p3, "allMustSucceed"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/google/common/collect/ImmutableCollection<",
            "+",
            "Lorg/checkerframework/com/google/common/util/concurrent/ListenableFuture<",
            "+TV;>;>;Z)V"
        }
    .end annotation

    .line 38
    .local p0, "this":Lorg/checkerframework/com/google/common/util/concurrent/CollectionFuture$CollectionFutureRunningState;, "Lorg/checkerframework/com/google/common/util/concurrent/CollectionFuture<TV;TC;>.CollectionFutureRunningState;"
    .local p2, "futures":Lorg/checkerframework/com/google/common/collect/ImmutableCollection;, "Lorg/checkerframework/com/google/common/collect/ImmutableCollection<+Lorg/checkerframework/com/google/common/util/concurrent/ListenableFuture<+TV;>;>;"
    iput-object p1, p0, Lorg/checkerframework/com/google/common/util/concurrent/CollectionFuture$CollectionFutureRunningState;->this$0:Lorg/checkerframework/com/google/common/util/concurrent/CollectionFuture;

    .line 39
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/checkerframework/com/google/common/util/concurrent/AggregateFuture$RunningState;-><init>(Lorg/checkerframework/com/google/common/util/concurrent/AggregateFuture;Lorg/checkerframework/com/google/common/collect/ImmutableCollection;ZZ)V

    .line 41
    nop

    .line 42
    invoke-virtual {p2}, Lorg/checkerframework/com/google/common/collect/ImmutableCollection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 43
    invoke-static {}, Lorg/checkerframework/com/google/common/collect/ImmutableList;->of()Lorg/checkerframework/com/google/common/collect/ImmutableList;

    move-result-object v0

    goto :goto_0

    .line 44
    :cond_0
    invoke-virtual {p2}, Lorg/checkerframework/com/google/common/collect/ImmutableCollection;->size()I

    move-result v0

    invoke-static {v0}, Lorg/checkerframework/com/google/common/collect/Lists;->newArrayListWithCapacity(I)Ljava/util/ArrayList;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lorg/checkerframework/com/google/common/util/concurrent/CollectionFuture$CollectionFutureRunningState;->values:Ljava/util/List;

    .line 47
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-virtual {p2}, Lorg/checkerframework/com/google/common/collect/ImmutableCollection;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 48
    iget-object v1, p0, Lorg/checkerframework/com/google/common/util/concurrent/CollectionFuture$CollectionFutureRunningState;->values:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 47
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 50
    .end local v0    # "i":I
    :cond_1
    return-void
.end method


# virtual methods
.method final collectOneValue(ZILjava/lang/Object;)V
    .locals 3
    .param p1, "allMustSucceed"    # Z
    .param p2, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZITV;)V"
        }
    .end annotation

    .line 54
    .local p0, "this":Lorg/checkerframework/com/google/common/util/concurrent/CollectionFuture$CollectionFutureRunningState;, "Lorg/checkerframework/com/google/common/util/concurrent/CollectionFuture<TV;TC;>.CollectionFutureRunningState;"
    .local p3, "returnValue":Ljava/lang/Object;, "TV;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/util/concurrent/CollectionFuture$CollectionFutureRunningState;->values:Ljava/util/List;

    .line 56
    .local v0, "localValues":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/com/google/common/base/Optional<TV;>;>;"
    if-eqz v0, :cond_0

    .line 57
    invoke-static {p3}, Lorg/checkerframework/com/google/common/base/Optional;->fromNullable(Ljava/lang/Object;)Lorg/checkerframework/com/google/common/base/Optional;

    move-result-object v1

    invoke-interface {v0, p2, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 62
    :cond_0
    if-nez p1, :cond_2

    iget-object v1, p0, Lorg/checkerframework/com/google/common/util/concurrent/CollectionFuture$CollectionFutureRunningState;->this$0:Lorg/checkerframework/com/google/common/util/concurrent/CollectionFuture;

    .line 63
    invoke-virtual {v1}, Lorg/checkerframework/com/google/common/util/concurrent/CollectionFuture;->isCancelled()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v1, 0x1

    .line 62
    :goto_1
    const-string v2, "Future was done before all dependencies completed"

    invoke-static {v1, v2}, Lorg/checkerframework/com/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 65
    :goto_2
    return-void
.end method

.method abstract combine(Ljava/util/List;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/checkerframework/com/google/common/base/Optional<",
            "TV;>;>;)TC;"
        }
    .end annotation
.end method

.method final handleAllCompleted()V
    .locals 3

    .line 69
    .local p0, "this":Lorg/checkerframework/com/google/common/util/concurrent/CollectionFuture$CollectionFutureRunningState;, "Lorg/checkerframework/com/google/common/util/concurrent/CollectionFuture<TV;TC;>.CollectionFutureRunningState;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/util/concurrent/CollectionFuture$CollectionFutureRunningState;->values:Ljava/util/List;

    .line 70
    .local v0, "localValues":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/com/google/common/base/Optional<TV;>;>;"
    if-eqz v0, :cond_0

    .line 71
    iget-object v1, p0, Lorg/checkerframework/com/google/common/util/concurrent/CollectionFuture$CollectionFutureRunningState;->this$0:Lorg/checkerframework/com/google/common/util/concurrent/CollectionFuture;

    invoke-virtual {p0, v0}, Lorg/checkerframework/com/google/common/util/concurrent/CollectionFuture$CollectionFutureRunningState;->combine(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/checkerframework/com/google/common/util/concurrent/CollectionFuture;->set(Ljava/lang/Object;)Z

    goto :goto_0

    .line 73
    :cond_0
    iget-object v1, p0, Lorg/checkerframework/com/google/common/util/concurrent/CollectionFuture$CollectionFutureRunningState;->this$0:Lorg/checkerframework/com/google/common/util/concurrent/CollectionFuture;

    invoke-virtual {v1}, Lorg/checkerframework/com/google/common/util/concurrent/CollectionFuture;->isDone()Z

    move-result v1

    invoke-static {v1}, Lorg/checkerframework/com/google/common/base/Preconditions;->checkState(Z)V

    .line 75
    :goto_0
    return-void
.end method

.method releaseResourcesAfterFailure()V
    .locals 1

    .line 79
    .local p0, "this":Lorg/checkerframework/com/google/common/util/concurrent/CollectionFuture$CollectionFutureRunningState;, "Lorg/checkerframework/com/google/common/util/concurrent/CollectionFuture<TV;TC;>.CollectionFutureRunningState;"
    invoke-super {p0}, Lorg/checkerframework/com/google/common/util/concurrent/AggregateFuture$RunningState;->releaseResourcesAfterFailure()V

    .line 80
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/checkerframework/com/google/common/util/concurrent/CollectionFuture$CollectionFutureRunningState;->values:Ljava/util/List;

    .line 81
    return-void
.end method
