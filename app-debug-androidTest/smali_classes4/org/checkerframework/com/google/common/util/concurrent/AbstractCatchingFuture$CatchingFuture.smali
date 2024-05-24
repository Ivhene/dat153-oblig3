.class final Lorg/checkerframework/com/google/common/util/concurrent/AbstractCatchingFuture$CatchingFuture;
.super Lorg/checkerframework/com/google/common/util/concurrent/AbstractCatchingFuture;
.source "AbstractCatchingFuture.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/com/google/common/util/concurrent/AbstractCatchingFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "CatchingFuture"
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
        "Lorg/checkerframework/com/google/common/base/Function<",
        "-TX;+TV;>;TV;>;"
    }
.end annotation


# direct methods
.method constructor <init>(Lorg/checkerframework/com/google/common/util/concurrent/ListenableFuture;Ljava/lang/Class;Lorg/checkerframework/com/google/common/base/Function;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/google/common/util/concurrent/ListenableFuture<",
            "+TV;>;",
            "Ljava/lang/Class<",
            "TX;>;",
            "Lorg/checkerframework/com/google/common/base/Function<",
            "-TX;+TV;>;)V"
        }
    .end annotation

    .line 200
    .local p0, "this":Lorg/checkerframework/com/google/common/util/concurrent/AbstractCatchingFuture$CatchingFuture;, "Lorg/checkerframework/com/google/common/util/concurrent/AbstractCatchingFuture$CatchingFuture<TV;TX;>;"
    .local p1, "input":Lorg/checkerframework/com/google/common/util/concurrent/ListenableFuture;, "Lorg/checkerframework/com/google/common/util/concurrent/ListenableFuture<+TV;>;"
    .local p2, "exceptionType":Ljava/lang/Class;, "Ljava/lang/Class<TX;>;"
    .local p3, "fallback":Lorg/checkerframework/com/google/common/base/Function;, "Lorg/checkerframework/com/google/common/base/Function<-TX;+TV;>;"
    invoke-direct {p0, p1, p2, p3}, Lorg/checkerframework/com/google/common/util/concurrent/AbstractCatchingFuture;-><init>(Lorg/checkerframework/com/google/common/util/concurrent/ListenableFuture;Ljava/lang/Class;Ljava/lang/Object;)V

    .line 201
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

    .line 194
    .local p0, "this":Lorg/checkerframework/com/google/common/util/concurrent/AbstractCatchingFuture$CatchingFuture;, "Lorg/checkerframework/com/google/common/util/concurrent/AbstractCatchingFuture$CatchingFuture<TV;TX;>;"
    check-cast p1, Lorg/checkerframework/com/google/common/base/Function;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/google/common/util/concurrent/AbstractCatchingFuture$CatchingFuture;->doFallback(Lorg/checkerframework/com/google/common/base/Function;Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method doFallback(Lorg/checkerframework/com/google/common/base/Function;Ljava/lang/Throwable;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/google/common/base/Function<",
            "-TX;+TV;>;TX;)TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 206
    .local p0, "this":Lorg/checkerframework/com/google/common/util/concurrent/AbstractCatchingFuture$CatchingFuture;, "Lorg/checkerframework/com/google/common/util/concurrent/AbstractCatchingFuture$CatchingFuture<TV;TX;>;"
    .local p1, "fallback":Lorg/checkerframework/com/google/common/base/Function;, "Lorg/checkerframework/com/google/common/base/Function<-TX;+TV;>;"
    .local p2, "cause":Ljava/lang/Throwable;, "TX;"
    invoke-interface {p1, p2}, Lorg/checkerframework/com/google/common/base/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method setResult(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)V"
        }
    .end annotation

    .line 211
    .local p0, "this":Lorg/checkerframework/com/google/common/util/concurrent/AbstractCatchingFuture$CatchingFuture;, "Lorg/checkerframework/com/google/common/util/concurrent/AbstractCatchingFuture$CatchingFuture<TV;TX;>;"
    .local p1, "result":Ljava/lang/Object;, "TV;"
    invoke-virtual {p0, p1}, Lorg/checkerframework/com/google/common/util/concurrent/AbstractCatchingFuture$CatchingFuture;->set(Ljava/lang/Object;)Z

    .line 212
    return-void
.end method
