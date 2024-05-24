.class final Lorg/checkerframework/com/google/common/util/concurrent/AbstractTransformFuture$AsyncTransformFuture;
.super Lorg/checkerframework/com/google/common/util/concurrent/AbstractTransformFuture;
.source "AbstractTransformFuture.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/com/google/common/util/concurrent/AbstractTransformFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "AsyncTransformFuture"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<I:",
        "Ljava/lang/Object;",
        "O:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/checkerframework/com/google/common/util/concurrent/AbstractTransformFuture<",
        "TI;TO;",
        "Lorg/checkerframework/com/google/common/util/concurrent/AsyncFunction<",
        "-TI;+TO;>;",
        "Lorg/checkerframework/com/google/common/util/concurrent/ListenableFuture<",
        "+TO;>;>;"
    }
.end annotation


# direct methods
.method constructor <init>(Lorg/checkerframework/com/google/common/util/concurrent/ListenableFuture;Lorg/checkerframework/com/google/common/util/concurrent/AsyncFunction;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/google/common/util/concurrent/ListenableFuture<",
            "+TI;>;",
            "Lorg/checkerframework/com/google/common/util/concurrent/AsyncFunction<",
            "-TI;+TO;>;)V"
        }
    .end annotation

    .line 207
    .local p0, "this":Lorg/checkerframework/com/google/common/util/concurrent/AbstractTransformFuture$AsyncTransformFuture;, "Lorg/checkerframework/com/google/common/util/concurrent/AbstractTransformFuture$AsyncTransformFuture<TI;TO;>;"
    .local p1, "inputFuture":Lorg/checkerframework/com/google/common/util/concurrent/ListenableFuture;, "Lorg/checkerframework/com/google/common/util/concurrent/ListenableFuture<+TI;>;"
    .local p2, "function":Lorg/checkerframework/com/google/common/util/concurrent/AsyncFunction;, "Lorg/checkerframework/com/google/common/util/concurrent/AsyncFunction<-TI;+TO;>;"
    invoke-direct {p0, p1, p2}, Lorg/checkerframework/com/google/common/util/concurrent/AbstractTransformFuture;-><init>(Lorg/checkerframework/com/google/common/util/concurrent/ListenableFuture;Ljava/lang/Object;)V

    .line 208
    return-void
.end method


# virtual methods
.method bridge synthetic doTransform(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 202
    .local p0, "this":Lorg/checkerframework/com/google/common/util/concurrent/AbstractTransformFuture$AsyncTransformFuture;, "Lorg/checkerframework/com/google/common/util/concurrent/AbstractTransformFuture$AsyncTransformFuture<TI;TO;>;"
    check-cast p1, Lorg/checkerframework/com/google/common/util/concurrent/AsyncFunction;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/google/common/util/concurrent/AbstractTransformFuture$AsyncTransformFuture;->doTransform(Lorg/checkerframework/com/google/common/util/concurrent/AsyncFunction;Ljava/lang/Object;)Lorg/checkerframework/com/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    return-object p1
.end method

.method doTransform(Lorg/checkerframework/com/google/common/util/concurrent/AsyncFunction;Ljava/lang/Object;)Lorg/checkerframework/com/google/common/util/concurrent/ListenableFuture;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/google/common/util/concurrent/AsyncFunction<",
            "-TI;+TO;>;TI;)",
            "Lorg/checkerframework/com/google/common/util/concurrent/ListenableFuture<",
            "+TO;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 213
    .local p0, "this":Lorg/checkerframework/com/google/common/util/concurrent/AbstractTransformFuture$AsyncTransformFuture;, "Lorg/checkerframework/com/google/common/util/concurrent/AbstractTransformFuture$AsyncTransformFuture<TI;TO;>;"
    .local p1, "function":Lorg/checkerframework/com/google/common/util/concurrent/AsyncFunction;, "Lorg/checkerframework/com/google/common/util/concurrent/AsyncFunction<-TI;+TO;>;"
    .local p2, "input":Ljava/lang/Object;, "TI;"
    invoke-interface {p1, p2}, Lorg/checkerframework/com/google/common/util/concurrent/AsyncFunction;->apply(Ljava/lang/Object;)Lorg/checkerframework/com/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    .line 214
    .local v0, "outputFuture":Lorg/checkerframework/com/google/common/util/concurrent/ListenableFuture;, "Lorg/checkerframework/com/google/common/util/concurrent/ListenableFuture<+TO;>;"
    const-string v1, "AsyncFunction.apply returned null instead of a Future. Did you mean to return immediateFuture(null)? %s"

    invoke-static {v0, v1, p1}, Lorg/checkerframework/com/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 219
    return-object v0
.end method

.method bridge synthetic setResult(Ljava/lang/Object;)V
    .locals 0

    .line 202
    .local p0, "this":Lorg/checkerframework/com/google/common/util/concurrent/AbstractTransformFuture$AsyncTransformFuture;, "Lorg/checkerframework/com/google/common/util/concurrent/AbstractTransformFuture$AsyncTransformFuture<TI;TO;>;"
    check-cast p1, Lorg/checkerframework/com/google/common/util/concurrent/ListenableFuture;

    invoke-virtual {p0, p1}, Lorg/checkerframework/com/google/common/util/concurrent/AbstractTransformFuture$AsyncTransformFuture;->setResult(Lorg/checkerframework/com/google/common/util/concurrent/ListenableFuture;)V

    return-void
.end method

.method setResult(Lorg/checkerframework/com/google/common/util/concurrent/ListenableFuture;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/google/common/util/concurrent/ListenableFuture<",
            "+TO;>;)V"
        }
    .end annotation

    .line 224
    .local p0, "this":Lorg/checkerframework/com/google/common/util/concurrent/AbstractTransformFuture$AsyncTransformFuture;, "Lorg/checkerframework/com/google/common/util/concurrent/AbstractTransformFuture$AsyncTransformFuture<TI;TO;>;"
    .local p1, "result":Lorg/checkerframework/com/google/common/util/concurrent/ListenableFuture;, "Lorg/checkerframework/com/google/common/util/concurrent/ListenableFuture<+TO;>;"
    invoke-virtual {p0, p1}, Lorg/checkerframework/com/google/common/util/concurrent/AbstractTransformFuture$AsyncTransformFuture;->setFuture(Lorg/checkerframework/com/google/common/util/concurrent/ListenableFuture;)Z

    .line 225
    return-void
.end method
