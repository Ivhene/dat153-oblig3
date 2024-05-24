.class final Lorg/checkerframework/com/google/common/collect/TreeTraverser$BreadthFirstIterator;
.super Lorg/checkerframework/com/google/common/collect/UnmodifiableIterator;
.source "TreeTraverser.java"

# interfaces
.implements Lorg/checkerframework/com/google/common/collect/PeekingIterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/com/google/common/collect/TreeTraverser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "BreadthFirstIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/checkerframework/com/google/common/collect/UnmodifiableIterator<",
        "TT;>;",
        "Lorg/checkerframework/com/google/common/collect/PeekingIterator<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final queue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "TT;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lorg/checkerframework/com/google/common/collect/TreeTraverser;


# direct methods
.method constructor <init>(Lorg/checkerframework/com/google/common/collect/TreeTraverser;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 269
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/TreeTraverser$BreadthFirstIterator;, "Lorg/checkerframework/com/google/common/collect/TreeTraverser<TT;>.BreadthFirstIterator;"
    .local p2, "root":Ljava/lang/Object;, "TT;"
    iput-object p1, p0, Lorg/checkerframework/com/google/common/collect/TreeTraverser$BreadthFirstIterator;->this$0:Lorg/checkerframework/com/google/common/collect/TreeTraverser;

    invoke-direct {p0}, Lorg/checkerframework/com/google/common/collect/UnmodifiableIterator;-><init>()V

    .line 270
    new-instance p1, Ljava/util/ArrayDeque;

    invoke-direct {p1}, Ljava/util/ArrayDeque;-><init>()V

    iput-object p1, p0, Lorg/checkerframework/com/google/common/collect/TreeTraverser$BreadthFirstIterator;->queue:Ljava/util/Queue;

    .line 271
    invoke-interface {p1, p2}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 272
    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .line 276
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/TreeTraverser$BreadthFirstIterator;, "Lorg/checkerframework/com/google/common/collect/TreeTraverser<TT;>.BreadthFirstIterator;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/TreeTraverser$BreadthFirstIterator;->queue:Ljava/util/Queue;

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

    .line 286
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/TreeTraverser$BreadthFirstIterator;, "Lorg/checkerframework/com/google/common/collect/TreeTraverser<TT;>.BreadthFirstIterator;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/TreeTraverser$BreadthFirstIterator;->queue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    move-result-object v0

    .line 287
    .local v0, "result":Ljava/lang/Object;, "TT;"
    iget-object v1, p0, Lorg/checkerframework/com/google/common/collect/TreeTraverser$BreadthFirstIterator;->queue:Ljava/util/Queue;

    iget-object v2, p0, Lorg/checkerframework/com/google/common/collect/TreeTraverser$BreadthFirstIterator;->this$0:Lorg/checkerframework/com/google/common/collect/TreeTraverser;

    invoke-virtual {v2, v0}, Lorg/checkerframework/com/google/common/collect/TreeTraverser;->children(Ljava/lang/Object;)Ljava/lang/Iterable;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/checkerframework/com/google/common/collect/Iterables;->addAll(Ljava/util/Collection;Ljava/lang/Iterable;)Z

    .line 288
    return-object v0
.end method

.method public peek()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 281
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/TreeTraverser$BreadthFirstIterator;, "Lorg/checkerframework/com/google/common/collect/TreeTraverser<TT;>.BreadthFirstIterator;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/TreeTraverser$BreadthFirstIterator;->queue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->element()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
