.class Lorg/checkerframework/com/google/common/util/concurrent/AggregateFuture$RunningState$1;
.super Ljava/lang/Object;
.source "AggregateFuture.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/checkerframework/com/google/common/util/concurrent/AggregateFuture$RunningState;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/checkerframework/com/google/common/util/concurrent/AggregateFuture$RunningState;

.field final synthetic val$index:I

.field final synthetic val$listenable:Lorg/checkerframework/com/google/common/util/concurrent/ListenableFuture;


# direct methods
.method constructor <init>(Lorg/checkerframework/com/google/common/util/concurrent/AggregateFuture$RunningState;ILorg/checkerframework/com/google/common/util/concurrent/ListenableFuture;)V
    .locals 0
    .param p1, "this$1"    # Lorg/checkerframework/com/google/common/util/concurrent/AggregateFuture$RunningState;

    .line 147
    .local p0, "this":Lorg/checkerframework/com/google/common/util/concurrent/AggregateFuture$RunningState$1;, "Lorg/checkerframework/com/google/common/util/concurrent/AggregateFuture$RunningState$1;"
    iput-object p1, p0, Lorg/checkerframework/com/google/common/util/concurrent/AggregateFuture$RunningState$1;->this$1:Lorg/checkerframework/com/google/common/util/concurrent/AggregateFuture$RunningState;

    iput p2, p0, Lorg/checkerframework/com/google/common/util/concurrent/AggregateFuture$RunningState$1;->val$index:I

    iput-object p3, p0, Lorg/checkerframework/com/google/common/util/concurrent/AggregateFuture$RunningState$1;->val$listenable:Lorg/checkerframework/com/google/common/util/concurrent/ListenableFuture;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 151
    .local p0, "this":Lorg/checkerframework/com/google/common/util/concurrent/AggregateFuture$RunningState$1;, "Lorg/checkerframework/com/google/common/util/concurrent/AggregateFuture$RunningState$1;"
    :try_start_0
    iget-object v0, p0, Lorg/checkerframework/com/google/common/util/concurrent/AggregateFuture$RunningState$1;->this$1:Lorg/checkerframework/com/google/common/util/concurrent/AggregateFuture$RunningState;

    iget v1, p0, Lorg/checkerframework/com/google/common/util/concurrent/AggregateFuture$RunningState$1;->val$index:I

    iget-object v2, p0, Lorg/checkerframework/com/google/common/util/concurrent/AggregateFuture$RunningState$1;->val$listenable:Lorg/checkerframework/com/google/common/util/concurrent/ListenableFuture;

    invoke-static {v0, v1, v2}, Lorg/checkerframework/com/google/common/util/concurrent/AggregateFuture$RunningState;->access$200(Lorg/checkerframework/com/google/common/util/concurrent/AggregateFuture$RunningState;ILjava/util/concurrent/Future;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 153
    iget-object v0, p0, Lorg/checkerframework/com/google/common/util/concurrent/AggregateFuture$RunningState$1;->this$1:Lorg/checkerframework/com/google/common/util/concurrent/AggregateFuture$RunningState;

    invoke-static {v0}, Lorg/checkerframework/com/google/common/util/concurrent/AggregateFuture$RunningState;->access$300(Lorg/checkerframework/com/google/common/util/concurrent/AggregateFuture$RunningState;)V

    .line 154
    nop

    .line 155
    return-void

    .line 153
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/checkerframework/com/google/common/util/concurrent/AggregateFuture$RunningState$1;->this$1:Lorg/checkerframework/com/google/common/util/concurrent/AggregateFuture$RunningState;

    invoke-static {v1}, Lorg/checkerframework/com/google/common/util/concurrent/AggregateFuture$RunningState;->access$300(Lorg/checkerframework/com/google/common/util/concurrent/AggregateFuture$RunningState;)V

    .line 154
    throw v0
.end method
