.class final Lorg/checkerframework/com/google/common/collect/Iterables$8;
.super Lorg/checkerframework/com/google/common/collect/FluentIterable;
.source "Iterables.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/checkerframework/com/google/common/collect/Iterables;->consumingIterable(Ljava/lang/Iterable;)Ljava/lang/Iterable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/checkerframework/com/google/common/collect/FluentIterable<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final synthetic val$iterable:Ljava/lang/Iterable;


# direct methods
.method constructor <init>(Ljava/lang/Iterable;)V
    .locals 0

    .line 956
    iput-object p1, p0, Lorg/checkerframework/com/google/common/collect/Iterables$8;->val$iterable:Ljava/lang/Iterable;

    invoke-direct {p0}, Lorg/checkerframework/com/google/common/collect/FluentIterable;-><init>()V

    return-void
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TT;>;"
        }
    .end annotation

    .line 959
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/Iterables$8;->val$iterable:Ljava/lang/Iterable;

    instance-of v1, v0, Ljava/util/Queue;

    if-eqz v1, :cond_0

    new-instance v0, Lorg/checkerframework/com/google/common/collect/ConsumingQueueIterator;

    iget-object v1, p0, Lorg/checkerframework/com/google/common/collect/Iterables$8;->val$iterable:Ljava/lang/Iterable;

    check-cast v1, Ljava/util/Queue;

    invoke-direct {v0, v1}, Lorg/checkerframework/com/google/common/collect/ConsumingQueueIterator;-><init>(Ljava/util/Queue;)V

    goto :goto_0

    .line 961
    :cond_0
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0}, Lorg/checkerframework/com/google/common/collect/Iterators;->consumingIterator(Ljava/util/Iterator;)Ljava/util/Iterator;

    move-result-object v0

    .line 959
    :goto_0
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 966
    const-string v0, "Iterables.consumingIterable(...)"

    return-object v0
.end method
