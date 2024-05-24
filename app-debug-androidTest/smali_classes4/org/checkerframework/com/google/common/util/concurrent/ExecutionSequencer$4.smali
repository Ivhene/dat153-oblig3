.class Lorg/checkerframework/com/google/common/util/concurrent/ExecutionSequencer$4;
.super Ljava/lang/Object;
.source "ExecutionSequencer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/checkerframework/com/google/common/util/concurrent/ExecutionSequencer;->submitAsync(Lorg/checkerframework/com/google/common/util/concurrent/AsyncCallable;Ljava/util/concurrent/Executor;)Lorg/checkerframework/com/google/common/util/concurrent/ListenableFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/checkerframework/com/google/common/util/concurrent/ExecutionSequencer;

.field final synthetic val$newFuture:Lorg/checkerframework/com/google/common/util/concurrent/SettableFuture;

.field final synthetic val$oldFuture:Lorg/checkerframework/com/google/common/util/concurrent/ListenableFuture;

.field final synthetic val$outputFuture:Lorg/checkerframework/com/google/common/util/concurrent/ListenableFuture;

.field final synthetic val$runningState:Ljava/util/concurrent/atomic/AtomicReference;

.field final synthetic val$taskFuture:Lorg/checkerframework/com/google/common/util/concurrent/ListenableFuture;


# direct methods
.method constructor <init>(Lorg/checkerframework/com/google/common/util/concurrent/ExecutionSequencer;Lorg/checkerframework/com/google/common/util/concurrent/ListenableFuture;Lorg/checkerframework/com/google/common/util/concurrent/ListenableFuture;Ljava/util/concurrent/atomic/AtomicReference;Lorg/checkerframework/com/google/common/util/concurrent/SettableFuture;Lorg/checkerframework/com/google/common/util/concurrent/ListenableFuture;)V
    .locals 0
    .param p1, "this$0"    # Lorg/checkerframework/com/google/common/util/concurrent/ExecutionSequencer;

    .line 144
    iput-object p1, p0, Lorg/checkerframework/com/google/common/util/concurrent/ExecutionSequencer$4;->this$0:Lorg/checkerframework/com/google/common/util/concurrent/ExecutionSequencer;

    iput-object p2, p0, Lorg/checkerframework/com/google/common/util/concurrent/ExecutionSequencer$4;->val$taskFuture:Lorg/checkerframework/com/google/common/util/concurrent/ListenableFuture;

    iput-object p3, p0, Lorg/checkerframework/com/google/common/util/concurrent/ExecutionSequencer$4;->val$outputFuture:Lorg/checkerframework/com/google/common/util/concurrent/ListenableFuture;

    iput-object p4, p0, Lorg/checkerframework/com/google/common/util/concurrent/ExecutionSequencer$4;->val$runningState:Ljava/util/concurrent/atomic/AtomicReference;

    iput-object p5, p0, Lorg/checkerframework/com/google/common/util/concurrent/ExecutionSequencer$4;->val$newFuture:Lorg/checkerframework/com/google/common/util/concurrent/SettableFuture;

    iput-object p6, p0, Lorg/checkerframework/com/google/common/util/concurrent/ExecutionSequencer$4;->val$oldFuture:Lorg/checkerframework/com/google/common/util/concurrent/ListenableFuture;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 147
    iget-object v0, p0, Lorg/checkerframework/com/google/common/util/concurrent/ExecutionSequencer$4;->val$taskFuture:Lorg/checkerframework/com/google/common/util/concurrent/ListenableFuture;

    invoke-interface {v0}, Lorg/checkerframework/com/google/common/util/concurrent/ListenableFuture;->isDone()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/checkerframework/com/google/common/util/concurrent/ExecutionSequencer$4;->val$outputFuture:Lorg/checkerframework/com/google/common/util/concurrent/ListenableFuture;

    .line 151
    invoke-interface {v0}, Lorg/checkerframework/com/google/common/util/concurrent/ListenableFuture;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/checkerframework/com/google/common/util/concurrent/ExecutionSequencer$4;->val$runningState:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lorg/checkerframework/com/google/common/util/concurrent/ExecutionSequencer$RunningState;->NOT_RUN:Lorg/checkerframework/com/google/common/util/concurrent/ExecutionSequencer$RunningState;

    sget-object v2, Lorg/checkerframework/com/google/common/util/concurrent/ExecutionSequencer$RunningState;->CANCELLED:Lorg/checkerframework/com/google/common/util/concurrent/ExecutionSequencer$RunningState;

    invoke-static {v0, v1, v2}, Lcom/google/common/util/concurrent/ExecutionSequencer$2$$ExternalSyntheticBackportWithForwarding0;->m(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 155
    :cond_0
    iget-object v0, p0, Lorg/checkerframework/com/google/common/util/concurrent/ExecutionSequencer$4;->val$newFuture:Lorg/checkerframework/com/google/common/util/concurrent/SettableFuture;

    iget-object v1, p0, Lorg/checkerframework/com/google/common/util/concurrent/ExecutionSequencer$4;->val$oldFuture:Lorg/checkerframework/com/google/common/util/concurrent/ListenableFuture;

    invoke-virtual {v0, v1}, Lorg/checkerframework/com/google/common/util/concurrent/SettableFuture;->setFuture(Lorg/checkerframework/com/google/common/util/concurrent/ListenableFuture;)Z

    .line 157
    :cond_1
    return-void
.end method
