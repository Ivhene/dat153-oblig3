.class final Lorg/checkerframework/com/google/common/util/concurrent/Futures$InCompletionOrderState;
.super Ljava/lang/Object;
.source "Futures.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/com/google/common/util/concurrent/Futures;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "InCompletionOrderState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private volatile delegateIndex:I

.field private final incompleteOutputCount:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final inputFutures:[Lorg/checkerframework/com/google/common/util/concurrent/ListenableFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lorg/checkerframework/com/google/common/util/concurrent/ListenableFuture<",
            "+TT;>;"
        }
    .end annotation
.end field

.field private shouldInterrupt:Z

.field private wasCancelled:Z


# direct methods
.method private constructor <init>([Lorg/checkerframework/com/google/common/util/concurrent/ListenableFuture;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lorg/checkerframework/com/google/common/util/concurrent/ListenableFuture<",
            "+TT;>;)V"
        }
    .end annotation

    .line 908
    .local p0, "this":Lorg/checkerframework/com/google/common/util/concurrent/Futures$InCompletionOrderState;, "Lorg/checkerframework/com/google/common/util/concurrent/Futures$InCompletionOrderState<TT;>;"
    .local p1, "inputFutures":[Lorg/checkerframework/com/google/common/util/concurrent/ListenableFuture;, "[Lorg/checkerframework/com/google/common/util/concurrent/ListenableFuture<+TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 902
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/checkerframework/com/google/common/util/concurrent/Futures$InCompletionOrderState;->wasCancelled:Z

    .line 903
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/checkerframework/com/google/common/util/concurrent/Futures$InCompletionOrderState;->shouldInterrupt:Z

    .line 906
    iput v0, p0, Lorg/checkerframework/com/google/common/util/concurrent/Futures$InCompletionOrderState;->delegateIndex:I

    .line 909
    iput-object p1, p0, Lorg/checkerframework/com/google/common/util/concurrent/Futures$InCompletionOrderState;->inputFutures:[Lorg/checkerframework/com/google/common/util/concurrent/ListenableFuture;

    .line 910
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    array-length v1, p1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lorg/checkerframework/com/google/common/util/concurrent/Futures$InCompletionOrderState;->incompleteOutputCount:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 911
    return-void
.end method

.method synthetic constructor <init>([Lorg/checkerframework/com/google/common/util/concurrent/ListenableFuture;Lorg/checkerframework/com/google/common/util/concurrent/Futures$1;)V
    .locals 0
    .param p1, "x0"    # [Lorg/checkerframework/com/google/common/util/concurrent/ListenableFuture;
    .param p2, "x1"    # Lorg/checkerframework/com/google/common/util/concurrent/Futures$1;

    .line 898
    .local p0, "this":Lorg/checkerframework/com/google/common/util/concurrent/Futures$InCompletionOrderState;, "Lorg/checkerframework/com/google/common/util/concurrent/Futures$InCompletionOrderState<TT;>;"
    invoke-direct {p0, p1}, Lorg/checkerframework/com/google/common/util/concurrent/Futures$InCompletionOrderState;-><init>([Lorg/checkerframework/com/google/common/util/concurrent/ListenableFuture;)V

    return-void
.end method

.method static synthetic access$300(Lorg/checkerframework/com/google/common/util/concurrent/Futures$InCompletionOrderState;Lorg/checkerframework/com/google/common/collect/ImmutableList;I)V
    .locals 0
    .param p0, "x0"    # Lorg/checkerframework/com/google/common/util/concurrent/Futures$InCompletionOrderState;
    .param p1, "x1"    # Lorg/checkerframework/com/google/common/collect/ImmutableList;
    .param p2, "x2"    # I

    .line 898
    invoke-direct {p0, p1, p2}, Lorg/checkerframework/com/google/common/util/concurrent/Futures$InCompletionOrderState;->recordInputCompletion(Lorg/checkerframework/com/google/common/collect/ImmutableList;I)V

    return-void
.end method

.method static synthetic access$400(Lorg/checkerframework/com/google/common/util/concurrent/Futures$InCompletionOrderState;Z)V
    .locals 0
    .param p0, "x0"    # Lorg/checkerframework/com/google/common/util/concurrent/Futures$InCompletionOrderState;
    .param p1, "x1"    # Z

    .line 898
    invoke-direct {p0, p1}, Lorg/checkerframework/com/google/common/util/concurrent/Futures$InCompletionOrderState;->recordOutputCancellation(Z)V

    return-void
.end method

.method static synthetic access$500(Lorg/checkerframework/com/google/common/util/concurrent/Futures$InCompletionOrderState;)[Lorg/checkerframework/com/google/common/util/concurrent/ListenableFuture;
    .locals 1
    .param p0, "x0"    # Lorg/checkerframework/com/google/common/util/concurrent/Futures$InCompletionOrderState;

    .line 898
    iget-object v0, p0, Lorg/checkerframework/com/google/common/util/concurrent/Futures$InCompletionOrderState;->inputFutures:[Lorg/checkerframework/com/google/common/util/concurrent/ListenableFuture;

    return-object v0
.end method

.method static synthetic access$600(Lorg/checkerframework/com/google/common/util/concurrent/Futures$InCompletionOrderState;)Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 1
    .param p0, "x0"    # Lorg/checkerframework/com/google/common/util/concurrent/Futures$InCompletionOrderState;

    .line 898
    iget-object v0, p0, Lorg/checkerframework/com/google/common/util/concurrent/Futures$InCompletionOrderState;->incompleteOutputCount:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object v0
.end method

.method private recordCompletion()V
    .locals 5

    .line 943
    .local p0, "this":Lorg/checkerframework/com/google/common/util/concurrent/Futures$InCompletionOrderState;, "Lorg/checkerframework/com/google/common/util/concurrent/Futures$InCompletionOrderState<TT;>;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/util/concurrent/Futures$InCompletionOrderState;->incompleteOutputCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lorg/checkerframework/com/google/common/util/concurrent/Futures$InCompletionOrderState;->wasCancelled:Z

    if-eqz v0, :cond_1

    .line 944
    iget-object v0, p0, Lorg/checkerframework/com/google/common/util/concurrent/Futures$InCompletionOrderState;->inputFutures:[Lorg/checkerframework/com/google/common/util/concurrent/ListenableFuture;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 945
    .local v3, "toCancel":Lorg/checkerframework/com/google/common/util/concurrent/ListenableFuture;, "Lorg/checkerframework/com/google/common/util/concurrent/ListenableFuture<*>;"
    if-eqz v3, :cond_0

    .line 946
    iget-boolean v4, p0, Lorg/checkerframework/com/google/common/util/concurrent/Futures$InCompletionOrderState;->shouldInterrupt:Z

    invoke-interface {v3, v4}, Lorg/checkerframework/com/google/common/util/concurrent/ListenableFuture;->cancel(Z)Z

    .line 944
    .end local v3    # "toCancel":Lorg/checkerframework/com/google/common/util/concurrent/ListenableFuture;, "Lorg/checkerframework/com/google/common/util/concurrent/ListenableFuture<*>;"
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 950
    :cond_1
    return-void
.end method

.method private recordInputCompletion(Lorg/checkerframework/com/google/common/collect/ImmutableList;I)V
    .locals 3
    .param p2, "inputFutureIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/google/common/collect/ImmutableList<",
            "Lorg/checkerframework/com/google/common/util/concurrent/AbstractFuture<",
            "TT;>;>;I)V"
        }
    .end annotation

    .line 925
    .local p0, "this":Lorg/checkerframework/com/google/common/util/concurrent/Futures$InCompletionOrderState;, "Lorg/checkerframework/com/google/common/util/concurrent/Futures$InCompletionOrderState<TT;>;"
    .local p1, "delegates":Lorg/checkerframework/com/google/common/collect/ImmutableList;, "Lorg/checkerframework/com/google/common/collect/ImmutableList<Lorg/checkerframework/com/google/common/util/concurrent/AbstractFuture<TT;>;>;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/util/concurrent/Futures$InCompletionOrderState;->inputFutures:[Lorg/checkerframework/com/google/common/util/concurrent/ListenableFuture;

    aget-object v1, v0, p2

    .line 927
    .local v1, "inputFuture":Lorg/checkerframework/com/google/common/util/concurrent/ListenableFuture;, "Lorg/checkerframework/com/google/common/util/concurrent/ListenableFuture<+TT;>;"
    const/4 v2, 0x0

    aput-object v2, v0, p2

    .line 928
    iget v0, p0, Lorg/checkerframework/com/google/common/util/concurrent/Futures$InCompletionOrderState;->delegateIndex:I

    .local v0, "i":I
    :goto_0
    invoke-virtual {p1}, Lorg/checkerframework/com/google/common/collect/ImmutableList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 929
    invoke-virtual {p1, v0}, Lorg/checkerframework/com/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/checkerframework/com/google/common/util/concurrent/AbstractFuture;

    invoke-virtual {v2, v1}, Lorg/checkerframework/com/google/common/util/concurrent/AbstractFuture;->setFuture(Lorg/checkerframework/com/google/common/util/concurrent/ListenableFuture;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 930
    invoke-direct {p0}, Lorg/checkerframework/com/google/common/util/concurrent/Futures$InCompletionOrderState;->recordCompletion()V

    .line 932
    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lorg/checkerframework/com/google/common/util/concurrent/Futures$InCompletionOrderState;->delegateIndex:I

    .line 933
    return-void

    .line 928
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 939
    .end local v0    # "i":I
    :cond_1
    invoke-virtual {p1}, Lorg/checkerframework/com/google/common/collect/ImmutableList;->size()I

    move-result v0

    iput v0, p0, Lorg/checkerframework/com/google/common/util/concurrent/Futures$InCompletionOrderState;->delegateIndex:I

    .line 940
    return-void
.end method

.method private recordOutputCancellation(Z)V
    .locals 1
    .param p1, "interruptIfRunning"    # Z

    .line 914
    .local p0, "this":Lorg/checkerframework/com/google/common/util/concurrent/Futures$InCompletionOrderState;, "Lorg/checkerframework/com/google/common/util/concurrent/Futures$InCompletionOrderState<TT;>;"
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/checkerframework/com/google/common/util/concurrent/Futures$InCompletionOrderState;->wasCancelled:Z

    .line 917
    if-nez p1, :cond_0

    .line 918
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/checkerframework/com/google/common/util/concurrent/Futures$InCompletionOrderState;->shouldInterrupt:Z

    .line 920
    :cond_0
    invoke-direct {p0}, Lorg/checkerframework/com/google/common/util/concurrent/Futures$InCompletionOrderState;->recordCompletion()V

    .line 921
    return-void
.end method
