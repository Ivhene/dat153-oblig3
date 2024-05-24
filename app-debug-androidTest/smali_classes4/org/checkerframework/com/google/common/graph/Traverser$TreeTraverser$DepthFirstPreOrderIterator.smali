.class final Lorg/checkerframework/com/google/common/graph/Traverser$TreeTraverser$DepthFirstPreOrderIterator;
.super Lorg/checkerframework/com/google/common/collect/UnmodifiableIterator;
.source "Traverser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/com/google/common/graph/Traverser$TreeTraverser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "DepthFirstPreOrderIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/checkerframework/com/google/common/collect/UnmodifiableIterator<",
        "TN;>;"
    }
.end annotation


# instance fields
.field private final stack:Ljava/util/Deque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Deque<",
            "Ljava/util/Iterator<",
            "+TN;>;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lorg/checkerframework/com/google/common/graph/Traverser$TreeTraverser;


# direct methods
.method constructor <init>(Lorg/checkerframework/com/google/common/graph/Traverser$TreeTraverser;Ljava/lang/Iterable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+TN;>;)V"
        }
    .end annotation

    .line 592
    .local p0, "this":Lorg/checkerframework/com/google/common/graph/Traverser$TreeTraverser$DepthFirstPreOrderIterator;, "Lorg/checkerframework/com/google/common/graph/Traverser$TreeTraverser<TN;>.DepthFirstPreOrderIterator;"
    .local p2, "roots":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+TN;>;"
    iput-object p1, p0, Lorg/checkerframework/com/google/common/graph/Traverser$TreeTraverser$DepthFirstPreOrderIterator;->this$0:Lorg/checkerframework/com/google/common/graph/Traverser$TreeTraverser;

    invoke-direct {p0}, Lorg/checkerframework/com/google/common/collect/UnmodifiableIterator;-><init>()V

    .line 590
    new-instance p1, Ljava/util/ArrayDeque;

    invoke-direct {p1}, Ljava/util/ArrayDeque;-><init>()V

    iput-object p1, p0, Lorg/checkerframework/com/google/common/graph/Traverser$TreeTraverser$DepthFirstPreOrderIterator;->stack:Ljava/util/Deque;

    .line 593
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Deque;->addLast(Ljava/lang/Object;)V

    .line 594
    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .line 598
    .local p0, "this":Lorg/checkerframework/com/google/common/graph/Traverser$TreeTraverser$DepthFirstPreOrderIterator;, "Lorg/checkerframework/com/google/common/graph/Traverser$TreeTraverser<TN;>.DepthFirstPreOrderIterator;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/graph/Traverser$TreeTraverser$DepthFirstPreOrderIterator;->stack:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TN;"
        }
    .end annotation

    .line 603
    .local p0, "this":Lorg/checkerframework/com/google/common/graph/Traverser$TreeTraverser$DepthFirstPreOrderIterator;, "Lorg/checkerframework/com/google/common/graph/Traverser$TreeTraverser<TN;>.DepthFirstPreOrderIterator;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/graph/Traverser$TreeTraverser$DepthFirstPreOrderIterator;->stack:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->getLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Iterator;

    .line 604
    .local v0, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<+TN;>;"
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lorg/checkerframework/com/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 605
    .local v1, "result":Ljava/lang/Object;, "TN;"
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 606
    iget-object v2, p0, Lorg/checkerframework/com/google/common/graph/Traverser$TreeTraverser$DepthFirstPreOrderIterator;->stack:Ljava/util/Deque;

    invoke-interface {v2}, Ljava/util/Deque;->removeLast()Ljava/lang/Object;

    .line 608
    :cond_0
    iget-object v2, p0, Lorg/checkerframework/com/google/common/graph/Traverser$TreeTraverser$DepthFirstPreOrderIterator;->this$0:Lorg/checkerframework/com/google/common/graph/Traverser$TreeTraverser;

    invoke-static {v2}, Lorg/checkerframework/com/google/common/graph/Traverser$TreeTraverser;->access$200(Lorg/checkerframework/com/google/common/graph/Traverser$TreeTraverser;)Lorg/checkerframework/com/google/common/graph/SuccessorsFunction;

    move-result-object v2

    invoke-interface {v2, v1}, Lorg/checkerframework/com/google/common/graph/SuccessorsFunction;->successors(Ljava/lang/Object;)Ljava/lang/Iterable;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 609
    .local v2, "childIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<+TN;>;"
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 610
    iget-object v3, p0, Lorg/checkerframework/com/google/common/graph/Traverser$TreeTraverser$DepthFirstPreOrderIterator;->stack:Ljava/util/Deque;

    invoke-interface {v3, v2}, Ljava/util/Deque;->addLast(Ljava/lang/Object;)V

    .line 612
    :cond_1
    return-object v1
.end method
