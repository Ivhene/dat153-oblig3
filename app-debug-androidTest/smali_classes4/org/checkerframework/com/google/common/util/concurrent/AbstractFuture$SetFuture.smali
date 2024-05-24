.class final Lorg/checkerframework/com/google/common/util/concurrent/AbstractFuture$SetFuture;
.super Ljava/lang/Object;
.source "AbstractFuture.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/com/google/common/util/concurrent/AbstractFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SetFuture"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# instance fields
.field final future:Lorg/checkerframework/com/google/common/util/concurrent/ListenableFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/checkerframework/com/google/common/util/concurrent/ListenableFuture<",
            "+TV;>;"
        }
    .end annotation
.end field

.field final owner:Lorg/checkerframework/com/google/common/util/concurrent/AbstractFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/checkerframework/com/google/common/util/concurrent/AbstractFuture<",
            "TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lorg/checkerframework/com/google/common/util/concurrent/AbstractFuture;Lorg/checkerframework/com/google/common/util/concurrent/ListenableFuture;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/google/common/util/concurrent/AbstractFuture<",
            "TV;>;",
            "Lorg/checkerframework/com/google/common/util/concurrent/ListenableFuture<",
            "+TV;>;)V"
        }
    .end annotation

    .line 316
    .local p0, "this":Lorg/checkerframework/com/google/common/util/concurrent/AbstractFuture$SetFuture;, "Lorg/checkerframework/com/google/common/util/concurrent/AbstractFuture$SetFuture<TV;>;"
    .local p1, "owner":Lorg/checkerframework/com/google/common/util/concurrent/AbstractFuture;, "Lorg/checkerframework/com/google/common/util/concurrent/AbstractFuture<TV;>;"
    .local p2, "future":Lorg/checkerframework/com/google/common/util/concurrent/ListenableFuture;, "Lorg/checkerframework/com/google/common/util/concurrent/ListenableFuture<+TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 317
    iput-object p1, p0, Lorg/checkerframework/com/google/common/util/concurrent/AbstractFuture$SetFuture;->owner:Lorg/checkerframework/com/google/common/util/concurrent/AbstractFuture;

    .line 318
    iput-object p2, p0, Lorg/checkerframework/com/google/common/util/concurrent/AbstractFuture$SetFuture;->future:Lorg/checkerframework/com/google/common/util/concurrent/ListenableFuture;

    .line 319
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 323
    .local p0, "this":Lorg/checkerframework/com/google/common/util/concurrent/AbstractFuture$SetFuture;, "Lorg/checkerframework/com/google/common/util/concurrent/AbstractFuture$SetFuture<TV;>;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/util/concurrent/AbstractFuture$SetFuture;->owner:Lorg/checkerframework/com/google/common/util/concurrent/AbstractFuture;

    invoke-static {v0}, Lorg/checkerframework/com/google/common/util/concurrent/AbstractFuture;->access$400(Lorg/checkerframework/com/google/common/util/concurrent/AbstractFuture;)Ljava/lang/Object;

    move-result-object v0

    if-eq v0, p0, :cond_0

    .line 325
    return-void

    .line 327
    :cond_0
    iget-object v0, p0, Lorg/checkerframework/com/google/common/util/concurrent/AbstractFuture$SetFuture;->future:Lorg/checkerframework/com/google/common/util/concurrent/ListenableFuture;

    invoke-static {v0}, Lorg/checkerframework/com/google/common/util/concurrent/AbstractFuture;->access$500(Lorg/checkerframework/com/google/common/util/concurrent/ListenableFuture;)Ljava/lang/Object;

    move-result-object v0

    .line 328
    .local v0, "valueToSet":Ljava/lang/Object;
    invoke-static {}, Lorg/checkerframework/com/google/common/util/concurrent/AbstractFuture;->access$200()Lorg/checkerframework/com/google/common/util/concurrent/AbstractFuture$AtomicHelper;

    move-result-object v1

    iget-object v2, p0, Lorg/checkerframework/com/google/common/util/concurrent/AbstractFuture$SetFuture;->owner:Lorg/checkerframework/com/google/common/util/concurrent/AbstractFuture;

    invoke-virtual {v1, v2, p0, v0}, Lorg/checkerframework/com/google/common/util/concurrent/AbstractFuture$AtomicHelper;->casValue(Lorg/checkerframework/com/google/common/util/concurrent/AbstractFuture;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 329
    iget-object v1, p0, Lorg/checkerframework/com/google/common/util/concurrent/AbstractFuture$SetFuture;->owner:Lorg/checkerframework/com/google/common/util/concurrent/AbstractFuture;

    invoke-static {v1}, Lorg/checkerframework/com/google/common/util/concurrent/AbstractFuture;->access$600(Lorg/checkerframework/com/google/common/util/concurrent/AbstractFuture;)V

    .line 331
    :cond_1
    return-void
.end method
