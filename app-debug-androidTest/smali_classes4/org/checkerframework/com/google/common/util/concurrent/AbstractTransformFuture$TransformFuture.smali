.class final Lorg/checkerframework/com/google/common/util/concurrent/AbstractTransformFuture$TransformFuture;
.super Lorg/checkerframework/com/google/common/util/concurrent/AbstractTransformFuture;
.source "AbstractTransformFuture.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/com/google/common/util/concurrent/AbstractTransformFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "TransformFuture"
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
        "Lorg/checkerframework/com/google/common/base/Function<",
        "-TI;+TO;>;TO;>;"
    }
.end annotation


# direct methods
.method constructor <init>(Lorg/checkerframework/com/google/common/util/concurrent/ListenableFuture;Lorg/checkerframework/com/google/common/base/Function;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/google/common/util/concurrent/ListenableFuture<",
            "+TI;>;",
            "Lorg/checkerframework/com/google/common/base/Function<",
            "-TI;+TO;>;)V"
        }
    .end annotation

    .line 236
    .local p0, "this":Lorg/checkerframework/com/google/common/util/concurrent/AbstractTransformFuture$TransformFuture;, "Lorg/checkerframework/com/google/common/util/concurrent/AbstractTransformFuture$TransformFuture<TI;TO;>;"
    .local p1, "inputFuture":Lorg/checkerframework/com/google/common/util/concurrent/ListenableFuture;, "Lorg/checkerframework/com/google/common/util/concurrent/ListenableFuture<+TI;>;"
    .local p2, "function":Lorg/checkerframework/com/google/common/base/Function;, "Lorg/checkerframework/com/google/common/base/Function<-TI;+TO;>;"
    invoke-direct {p0, p1, p2}, Lorg/checkerframework/com/google/common/util/concurrent/AbstractTransformFuture;-><init>(Lorg/checkerframework/com/google/common/util/concurrent/ListenableFuture;Ljava/lang/Object;)V

    .line 237
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

    .line 232
    .local p0, "this":Lorg/checkerframework/com/google/common/util/concurrent/AbstractTransformFuture$TransformFuture;, "Lorg/checkerframework/com/google/common/util/concurrent/AbstractTransformFuture$TransformFuture<TI;TO;>;"
    check-cast p1, Lorg/checkerframework/com/google/common/base/Function;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/google/common/util/concurrent/AbstractTransformFuture$TransformFuture;->doTransform(Lorg/checkerframework/com/google/common/base/Function;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method doTransform(Lorg/checkerframework/com/google/common/base/Function;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/google/common/base/Function<",
            "-TI;+TO;>;TI;)TO;"
        }
    .end annotation

    .line 242
    .local p0, "this":Lorg/checkerframework/com/google/common/util/concurrent/AbstractTransformFuture$TransformFuture;, "Lorg/checkerframework/com/google/common/util/concurrent/AbstractTransformFuture$TransformFuture<TI;TO;>;"
    .local p1, "function":Lorg/checkerframework/com/google/common/base/Function;, "Lorg/checkerframework/com/google/common/base/Function<-TI;+TO;>;"
    .local p2, "input":Ljava/lang/Object;, "TI;"
    invoke-interface {p1, p2}, Lorg/checkerframework/com/google/common/base/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method setResult(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TO;)V"
        }
    .end annotation

    .line 247
    .local p0, "this":Lorg/checkerframework/com/google/common/util/concurrent/AbstractTransformFuture$TransformFuture;, "Lorg/checkerframework/com/google/common/util/concurrent/AbstractTransformFuture$TransformFuture<TI;TO;>;"
    .local p1, "result":Ljava/lang/Object;, "TO;"
    invoke-virtual {p0, p1}, Lorg/checkerframework/com/google/common/util/concurrent/AbstractTransformFuture$TransformFuture;->set(Ljava/lang/Object;)Z

    .line 248
    return-void
.end method
