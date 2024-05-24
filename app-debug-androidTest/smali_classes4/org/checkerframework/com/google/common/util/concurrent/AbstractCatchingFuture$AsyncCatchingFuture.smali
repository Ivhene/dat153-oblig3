.class final Lorg/checkerframework/com/google/common/util/concurrent/AbstractCatchingFuture$AsyncCatchingFuture;
.super Lorg/checkerframework/com/google/common/util/concurrent/AbstractCatchingFuture;
.source "AbstractCatchingFuture.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/com/google/common/util/concurrent/AbstractCatchingFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "AsyncCatchingFuture"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        "X:",
        "Ljava/lang/Throwable;",
        ">",
        "Lorg/checkerframework/com/google/common/util/concurrent/AbstractCatchingFuture<",
        "TV;TX;",
        "Lorg/checkerframework/com/google/common/util/concurrent/AsyncFunction<",
        "-TX;+TV;>;",
        "Lorg/checkerframework/com/google/common/util/concurrent/ListenableFuture<",
        "+TV;>;>;"
    }
.end annotation


# direct methods
.method constructor <init>(Lorg/checkerframework/com/google/common/util/concurrent/ListenableFuture;Ljava/lang/Class;Lorg/checkerframework/com/google/common/util/concurrent/AsyncFunction;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/google/common/util/concurrent/ListenableFuture<",
            "+TV;>;",
            "Ljava/lang/Class<",
            "TX;>;",
            "Lorg/checkerframework/com/google/common/util/concurrent/AsyncFunction<",
            "-TX;+TV;>;)V"
        }
    .end annotation

    .line 169
    .local p0, "this":Lorg/checkerframework/com/google/common/util/concurrent/AbstractCatchingFuture$AsyncCatchingFuture;, "Lorg/checkerframework/com/google/common/util/concurrent/AbstractCatchingFuture$AsyncCatchingFuture<TV;TX;>;"
    .local p1, "input":Lorg/checkerframework/com/google/common/util/concurrent/ListenableFuture;, "Lorg/checkerframework/com/google/common/util/concurrent/ListenableFuture<+TV;>;"
    .local p2, "exceptionType":Ljava/lang/Class;, "Ljava/lang/Class<TX;>;"
    .local p3, "fallback":Lorg/checkerframework/com/google/common/util/concurrent/AsyncFunction;, "Lorg/checkerframework/com/google/common/util/concurrent/AsyncFunction<-TX;+TV;>;"
    invoke-direct {p0, p1, p2, p3}, Lorg/checkerframework/com/google/common/util/concurrent/AbstractCatchingFuture;-><init>(Lorg/checkerframework/com/google/common/util/concurrent/ListenableFuture;Ljava/lang/Class;Ljava/lang/Object;)V

    .line 170
    return-void
.end method


# virtual methods
.method bridge synthetic doFallback(Ljava/lang/Object;Ljava/lang/Throwable;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 162
    .local p0, "this":Lorg/checkerframework/com/google/common/util/concurrent/AbstractCatchingFuture$AsyncCatchingFuture;, "Lorg/checkerframework/com/google/common/util/concurrent/AbstractCatchingFuture$AsyncCatchingFuture<TV;TX;>;"
    check-cast p1, Lorg/checkerframework/com/google/common/util/concurrent/AsyncFunction;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/google/common/util/concurrent/AbstractCatchingFuture$AsyncCatchingFuture;->doFallback(Lorg/checkerframework/com/google/common/util/concurrent/AsyncFunction;Ljava/lang/Throwable;)Lorg/checkerframework/com/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    return-object p1
.end method

.method doFallback(Lorg/checkerframework/com/google/common/util/concurrent/AsyncFunction;Ljava/lang/Throwable;)Lorg/checkerframework/com/google/common/util/concurrent/ListenableFuture;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/google/common/util/concurrent/AsyncFunction<",
            "-TX;+TV;>;TX;)",
            "Lorg/checkerframework/com/google/common/util/concurrent/ListenableFuture<",
            "+TV;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 175
    .local p0, "this":Lorg/checkerframework/com/google/common/util/concurrent/AbstractCatchingFuture$AsyncCatchingFuture;, "Lorg/checkerframework/com/google/common/util/concurrent/AbstractCatchingFuture$AsyncCatchingFuture<TV;TX;>;"
    .local p1, "fallback":Lorg/checkerframework/com/google/common/util/concurrent/AsyncFunction;, "Lorg/checkerframework/com/google/common/util/concurrent/AsyncFunction<-TX;+TV;>;"
    .local p2, "cause":Ljava/lang/Throwable;, "TX;"
    invoke-interface {p1, p2}, Lorg/checkerframework/com/google/common/util/concurrent/AsyncFunction;->apply(Ljava/lang/Object;)Lorg/checkerframework/com/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    .line 176
    .local v0, "replacement":Lorg/checkerframework/com/google/common/util/concurrent/ListenableFuture;, "Lorg/checkerframework/com/google/common/util/concurrent/ListenableFuture<+TV;>;"
    const-string v1, "AsyncFunction.apply returned null instead of a Future. Did you mean to return immediateFuture(null)? %s"

    invoke-static {v0, v1, p1}, Lorg/checkerframework/com/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 181
    return-object v0
.end method

.method bridge synthetic setResult(Ljava/lang/Object;)V
    .locals 0

    .line 162
    .local p0, "this":Lorg/checkerframework/com/google/common/util/concurrent/AbstractCatchingFuture$AsyncCatchingFuture;, "Lorg/checkerframework/com/google/common/util/concurrent/AbstractCatchingFuture$AsyncCatchingFuture<TV;TX;>;"
    check-cast p1, Lorg/checkerframework/com/google/common/util/concurrent/ListenableFuture;

    invoke-virtual {p0, p1}, Lorg/checkerframework/com/google/common/util/concurrent/AbstractCatchingFuture$AsyncCatchingFuture;->setResult(Lorg/checkerframework/com/google/common/util/concurrent/ListenableFuture;)V

    return-void
.end method

.method setResult(Lorg/checkerframework/com/google/common/util/concurrent/ListenableFuture;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/google/common/util/concurrent/ListenableFuture<",
            "+TV;>;)V"
        }
    .end annotation

    .line 186
    .local p0, "this":Lorg/checkerframework/com/google/common/util/concurrent/AbstractCatchingFuture$AsyncCatchingFuture;, "Lorg/checkerframework/com/google/common/util/concurrent/AbstractCatchingFuture$AsyncCatchingFuture<TV;TX;>;"
    .local p1, "result":Lorg/checkerframework/com/google/common/util/concurrent/ListenableFuture;, "Lorg/checkerframework/com/google/common/util/concurrent/ListenableFuture<+TV;>;"
    invoke-virtual {p0, p1}, Lorg/checkerframework/com/google/common/util/concurrent/AbstractCatchingFuture$AsyncCatchingFuture;->setFuture(Lorg/checkerframework/com/google/common/util/concurrent/ListenableFuture;)Z

    .line 187
    return-void
.end method
