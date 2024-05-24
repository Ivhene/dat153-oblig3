.class final Lorg/checkerframework/com/google/common/util/concurrent/CombinedFuture$CallableInterruptibleTask;
.super Lorg/checkerframework/com/google/common/util/concurrent/CombinedFuture$CombinedFutureInterruptibleTask;
.source "CombinedFuture.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/com/google/common/util/concurrent/CombinedFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "CallableInterruptibleTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/checkerframework/com/google/common/util/concurrent/CombinedFuture<",
        "TV;>.CombinedFutureInterruptibleTask<TV;>;"
    }
.end annotation


# instance fields
.field private final callable:Ljava/util/concurrent/Callable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Callable<",
            "TV;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lorg/checkerframework/com/google/common/util/concurrent/CombinedFuture;


# direct methods
.method public constructor <init>(Lorg/checkerframework/com/google/common/util/concurrent/CombinedFuture;Ljava/util/concurrent/Callable;Ljava/util/concurrent/Executor;)V
    .locals 0
    .param p3, "listenerExecutor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Callable<",
            "TV;>;",
            "Ljava/util/concurrent/Executor;",
            ")V"
        }
    .end annotation

    .line 175
    .local p0, "this":Lorg/checkerframework/com/google/common/util/concurrent/CombinedFuture$CallableInterruptibleTask;, "Lorg/checkerframework/com/google/common/util/concurrent/CombinedFuture<TV;>.CallableInterruptibleTask;"
    .local p2, "callable":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<TV;>;"
    iput-object p1, p0, Lorg/checkerframework/com/google/common/util/concurrent/CombinedFuture$CallableInterruptibleTask;->this$0:Lorg/checkerframework/com/google/common/util/concurrent/CombinedFuture;

    .line 176
    invoke-direct {p0, p1, p3}, Lorg/checkerframework/com/google/common/util/concurrent/CombinedFuture$CombinedFutureInterruptibleTask;-><init>(Lorg/checkerframework/com/google/common/util/concurrent/CombinedFuture;Ljava/util/concurrent/Executor;)V

    .line 177
    invoke-static {p2}, Lorg/checkerframework/com/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/concurrent/Callable;

    iput-object p1, p0, Lorg/checkerframework/com/google/common/util/concurrent/CombinedFuture$CallableInterruptibleTask;->callable:Ljava/util/concurrent/Callable;

    .line 178
    return-void
.end method


# virtual methods
.method runInterruptibly()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 182
    .local p0, "this":Lorg/checkerframework/com/google/common/util/concurrent/CombinedFuture$CallableInterruptibleTask;, "Lorg/checkerframework/com/google/common/util/concurrent/CombinedFuture<TV;>.CallableInterruptibleTask;"
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/checkerframework/com/google/common/util/concurrent/CombinedFuture$CallableInterruptibleTask;->thrownByExecute:Z

    .line 183
    iget-object v0, p0, Lorg/checkerframework/com/google/common/util/concurrent/CombinedFuture$CallableInterruptibleTask;->callable:Ljava/util/concurrent/Callable;

    invoke-interface {v0}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method setValue(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)V"
        }
    .end annotation

    .line 188
    .local p0, "this":Lorg/checkerframework/com/google/common/util/concurrent/CombinedFuture$CallableInterruptibleTask;, "Lorg/checkerframework/com/google/common/util/concurrent/CombinedFuture<TV;>.CallableInterruptibleTask;"
    .local p1, "value":Ljava/lang/Object;, "TV;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/util/concurrent/CombinedFuture$CallableInterruptibleTask;->this$0:Lorg/checkerframework/com/google/common/util/concurrent/CombinedFuture;

    invoke-virtual {v0, p1}, Lorg/checkerframework/com/google/common/util/concurrent/CombinedFuture;->set(Ljava/lang/Object;)Z

    .line 189
    return-void
.end method

.method toPendingString()Ljava/lang/String;
    .locals 1

    .line 193
    .local p0, "this":Lorg/checkerframework/com/google/common/util/concurrent/CombinedFuture$CallableInterruptibleTask;, "Lorg/checkerframework/com/google/common/util/concurrent/CombinedFuture<TV;>.CallableInterruptibleTask;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/util/concurrent/CombinedFuture$CallableInterruptibleTask;->callable:Ljava/util/concurrent/Callable;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
