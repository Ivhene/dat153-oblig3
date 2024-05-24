.class Lorg/checkerframework/com/google/common/util/concurrent/Futures$FutureCombiner$1;
.super Ljava/lang/Object;
.source "Futures.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/checkerframework/com/google/common/util/concurrent/Futures$FutureCombiner;->run(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)Lorg/checkerframework/com/google/common/util/concurrent/ListenableFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/checkerframework/com/google/common/util/concurrent/Futures$FutureCombiner;

.field final synthetic val$combiner:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lorg/checkerframework/com/google/common/util/concurrent/Futures$FutureCombiner;Ljava/lang/Runnable;)V
    .locals 0
    .param p1, "this$0"    # Lorg/checkerframework/com/google/common/util/concurrent/Futures$FutureCombiner;

    .line 697
    .local p0, "this":Lorg/checkerframework/com/google/common/util/concurrent/Futures$FutureCombiner$1;, "Lorg/checkerframework/com/google/common/util/concurrent/Futures$FutureCombiner$1;"
    iput-object p1, p0, Lorg/checkerframework/com/google/common/util/concurrent/Futures$FutureCombiner$1;->this$0:Lorg/checkerframework/com/google/common/util/concurrent/Futures$FutureCombiner;

    iput-object p2, p0, Lorg/checkerframework/com/google/common/util/concurrent/Futures$FutureCombiner$1;->val$combiner:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 697
    .local p0, "this":Lorg/checkerframework/com/google/common/util/concurrent/Futures$FutureCombiner$1;, "Lorg/checkerframework/com/google/common/util/concurrent/Futures$FutureCombiner$1;"
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/util/concurrent/Futures$FutureCombiner$1;->call()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/lang/Void;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 700
    .local p0, "this":Lorg/checkerframework/com/google/common/util/concurrent/Futures$FutureCombiner$1;, "Lorg/checkerframework/com/google/common/util/concurrent/Futures$FutureCombiner$1;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/util/concurrent/Futures$FutureCombiner$1;->val$combiner:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 701
    const/4 v0, 0x0

    return-object v0
.end method
