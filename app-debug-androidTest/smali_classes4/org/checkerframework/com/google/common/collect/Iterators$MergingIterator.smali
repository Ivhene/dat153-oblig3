.class Lorg/checkerframework/com/google/common/collect/Iterators$MergingIterator;
.super Lorg/checkerframework/com/google/common/collect/UnmodifiableIterator;
.source "Iterators.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/com/google/common/collect/Iterators;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MergingIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/checkerframework/com/google/common/collect/UnmodifiableIterator<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final queue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lorg/checkerframework/com/google/common/collect/PeekingIterator<",
            "TT;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Iterable;Ljava/util/Comparator;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Ljava/util/Iterator<",
            "+TT;>;>;",
            "Ljava/util/Comparator<",
            "-TT;>;)V"
        }
    .end annotation

    .line 1247
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/Iterators$MergingIterator;, "Lorg/checkerframework/com/google/common/collect/Iterators$MergingIterator<TT;>;"
    .local p1, "iterators":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Ljava/util/Iterator<+TT;>;>;"
    .local p2, "itemComparator":Ljava/util/Comparator;, "Ljava/util/Comparator<-TT;>;"
    invoke-direct {p0}, Lorg/checkerframework/com/google/common/collect/UnmodifiableIterator;-><init>()V

    .line 1250
    new-instance v0, Lorg/checkerframework/com/google/common/collect/Iterators$MergingIterator$1;

    invoke-direct {v0, p0, p2}, Lorg/checkerframework/com/google/common/collect/Iterators$MergingIterator$1;-><init>(Lorg/checkerframework/com/google/common/collect/Iterators$MergingIterator;Ljava/util/Comparator;)V

    .line 1258
    .local v0, "heapComparator":Ljava/util/Comparator;, "Ljava/util/Comparator<Lorg/checkerframework/com/google/common/collect/PeekingIterator<TT;>;>;"
    new-instance v1, Ljava/util/PriorityQueue;

    const/4 v2, 0x2

    invoke-direct {v1, v2, v0}, Ljava/util/PriorityQueue;-><init>(ILjava/util/Comparator;)V

    iput-object v1, p0, Lorg/checkerframework/com/google/common/collect/Iterators$MergingIterator;->queue:Ljava/util/Queue;

    .line 1260
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Iterator;

    .line 1261
    .local v2, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<+TT;>;"
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1262
    iget-object v3, p0, Lorg/checkerframework/com/google/common/collect/Iterators$MergingIterator;->queue:Ljava/util/Queue;

    invoke-static {v2}, Lorg/checkerframework/com/google/common/collect/Iterators;->peekingIterator(Ljava/util/Iterator;)Lorg/checkerframework/com/google/common/collect/PeekingIterator;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 1264
    .end local v2    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<+TT;>;"
    :cond_0
    goto :goto_0

    .line 1265
    :cond_1
    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .line 1269
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/Iterators$MergingIterator;, "Lorg/checkerframework/com/google/common/collect/Iterators$MergingIterator<TT;>;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/Iterators$MergingIterator;->queue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 1274
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/Iterators$MergingIterator;, "Lorg/checkerframework/com/google/common/collect/Iterators$MergingIterator<TT;>;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/Iterators$MergingIterator;->queue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/google/common/collect/PeekingIterator;

    .line 1275
    .local v0, "nextIter":Lorg/checkerframework/com/google/common/collect/PeekingIterator;, "Lorg/checkerframework/com/google/common/collect/PeekingIterator<TT;>;"
    invoke-interface {v0}, Lorg/checkerframework/com/google/common/collect/PeekingIterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 1276
    .local v1, "next":Ljava/lang/Object;, "TT;"
    invoke-interface {v0}, Lorg/checkerframework/com/google/common/collect/PeekingIterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1277
    iget-object v2, p0, Lorg/checkerframework/com/google/common/collect/Iterators$MergingIterator;->queue:Ljava/util/Queue;

    invoke-interface {v2, v0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 1279
    :cond_0
    return-object v1
.end method
