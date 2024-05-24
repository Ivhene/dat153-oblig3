.class final Lorg/checkerframework/com/google/common/util/concurrent/Futures$InCompletionOrderFuture;
.super Lorg/checkerframework/com/google/common/util/concurrent/AbstractFuture;
.source "Futures.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/com/google/common/util/concurrent/Futures;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "InCompletionOrderFuture"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/checkerframework/com/google/common/util/concurrent/AbstractFuture<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private state:Lorg/checkerframework/com/google/common/util/concurrent/Futures$InCompletionOrderState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/checkerframework/com/google/common/util/concurrent/Futures$InCompletionOrderState<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lorg/checkerframework/com/google/common/util/concurrent/Futures$InCompletionOrderState;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/google/common/util/concurrent/Futures$InCompletionOrderState<",
            "TT;>;)V"
        }
    .end annotation

    .line 863
    .local p0, "this":Lorg/checkerframework/com/google/common/util/concurrent/Futures$InCompletionOrderFuture;, "Lorg/checkerframework/com/google/common/util/concurrent/Futures$InCompletionOrderFuture<TT;>;"
    .local p1, "state":Lorg/checkerframework/com/google/common/util/concurrent/Futures$InCompletionOrderState;, "Lorg/checkerframework/com/google/common/util/concurrent/Futures$InCompletionOrderState<TT;>;"
    invoke-direct {p0}, Lorg/checkerframework/com/google/common/util/concurrent/AbstractFuture;-><init>()V

    .line 864
    iput-object p1, p0, Lorg/checkerframework/com/google/common/util/concurrent/Futures$InCompletionOrderFuture;->state:Lorg/checkerframework/com/google/common/util/concurrent/Futures$InCompletionOrderState;

    .line 865
    return-void
.end method

.method synthetic constructor <init>(Lorg/checkerframework/com/google/common/util/concurrent/Futures$InCompletionOrderState;Lorg/checkerframework/com/google/common/util/concurrent/Futures$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/checkerframework/com/google/common/util/concurrent/Futures$InCompletionOrderState;
    .param p2, "x1"    # Lorg/checkerframework/com/google/common/util/concurrent/Futures$1;

    .line 860
    .local p0, "this":Lorg/checkerframework/com/google/common/util/concurrent/Futures$InCompletionOrderFuture;, "Lorg/checkerframework/com/google/common/util/concurrent/Futures$InCompletionOrderFuture<TT;>;"
    invoke-direct {p0, p1}, Lorg/checkerframework/com/google/common/util/concurrent/Futures$InCompletionOrderFuture;-><init>(Lorg/checkerframework/com/google/common/util/concurrent/Futures$InCompletionOrderState;)V

    return-void
.end method


# virtual methods
.method protected afterDone()V
    .locals 1

    .line 879
    .local p0, "this":Lorg/checkerframework/com/google/common/util/concurrent/Futures$InCompletionOrderFuture;, "Lorg/checkerframework/com/google/common/util/concurrent/Futures$InCompletionOrderFuture<TT;>;"
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/checkerframework/com/google/common/util/concurrent/Futures$InCompletionOrderFuture;->state:Lorg/checkerframework/com/google/common/util/concurrent/Futures$InCompletionOrderState;

    .line 880
    return-void
.end method

.method public cancel(Z)Z
    .locals 2
    .param p1, "interruptIfRunning"    # Z

    .line 869
    .local p0, "this":Lorg/checkerframework/com/google/common/util/concurrent/Futures$InCompletionOrderFuture;, "Lorg/checkerframework/com/google/common/util/concurrent/Futures$InCompletionOrderFuture<TT;>;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/util/concurrent/Futures$InCompletionOrderFuture;->state:Lorg/checkerframework/com/google/common/util/concurrent/Futures$InCompletionOrderState;

    .line 870
    .local v0, "localState":Lorg/checkerframework/com/google/common/util/concurrent/Futures$InCompletionOrderState;, "Lorg/checkerframework/com/google/common/util/concurrent/Futures$InCompletionOrderState<TT;>;"
    invoke-super {p0, p1}, Lorg/checkerframework/com/google/common/util/concurrent/AbstractFuture;->cancel(Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 871
    invoke-static {v0, p1}, Lorg/checkerframework/com/google/common/util/concurrent/Futures$InCompletionOrderState;->access$400(Lorg/checkerframework/com/google/common/util/concurrent/Futures$InCompletionOrderState;Z)V

    .line 872
    const/4 v1, 0x1

    return v1

    .line 874
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method protected pendingToString()Ljava/lang/String;
    .locals 3

    .line 884
    .local p0, "this":Lorg/checkerframework/com/google/common/util/concurrent/Futures$InCompletionOrderFuture;, "Lorg/checkerframework/com/google/common/util/concurrent/Futures$InCompletionOrderFuture<TT;>;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/util/concurrent/Futures$InCompletionOrderFuture;->state:Lorg/checkerframework/com/google/common/util/concurrent/Futures$InCompletionOrderState;

    .line 885
    .local v0, "localState":Lorg/checkerframework/com/google/common/util/concurrent/Futures$InCompletionOrderState;, "Lorg/checkerframework/com/google/common/util/concurrent/Futures$InCompletionOrderState<TT;>;"
    if-eqz v0, :cond_0

    .line 888
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "inputCount=["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 889
    invoke-static {v0}, Lorg/checkerframework/com/google/common/util/concurrent/Futures$InCompletionOrderState;->access$500(Lorg/checkerframework/com/google/common/util/concurrent/Futures$InCompletionOrderState;)[Lorg/checkerframework/com/google/common/util/concurrent/ListenableFuture;

    move-result-object v2

    array-length v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "], remaining=["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 891
    invoke-static {v0}, Lorg/checkerframework/com/google/common/util/concurrent/Futures$InCompletionOrderState;->access$600(Lorg/checkerframework/com/google/common/util/concurrent/Futures$InCompletionOrderState;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 888
    return-object v1

    .line 894
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method
