.class final Lorg/checkerframework/com/google/common/graph/Traverser$GraphTraverser$BreadthFirstIterator;
.super Lorg/checkerframework/com/google/common/collect/UnmodifiableIterator;
.source "Traverser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/com/google/common/graph/Traverser$GraphTraverser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "BreadthFirstIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/checkerframework/com/google/common/collect/UnmodifiableIterator<",
        "TN;>;"
    }
.end annotation


# instance fields
.field private final queue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "TN;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lorg/checkerframework/com/google/common/graph/Traverser$GraphTraverser;

.field private final visited:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "TN;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lorg/checkerframework/com/google/common/graph/Traverser$GraphTraverser;Ljava/lang/Iterable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+TN;>;)V"
        }
    .end annotation

    .line 405
    .local p0, "this":Lorg/checkerframework/com/google/common/graph/Traverser$GraphTraverser$BreadthFirstIterator;, "Lorg/checkerframework/com/google/common/graph/Traverser$GraphTraverser<TN;>.BreadthFirstIterator;"
    .local p2, "roots":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+TN;>;"
    iput-object p1, p0, Lorg/checkerframework/com/google/common/graph/Traverser$GraphTraverser$BreadthFirstIterator;->this$0:Lorg/checkerframework/com/google/common/graph/Traverser$GraphTraverser;

    invoke-direct {p0}, Lorg/checkerframework/com/google/common/collect/UnmodifiableIterator;-><init>()V

    .line 402
    new-instance p1, Ljava/util/ArrayDeque;

    invoke-direct {p1}, Ljava/util/ArrayDeque;-><init>()V

    iput-object p1, p0, Lorg/checkerframework/com/google/common/graph/Traverser$GraphTraverser$BreadthFirstIterator;->queue:Ljava/util/Queue;

    .line 403
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lorg/checkerframework/com/google/common/graph/Traverser$GraphTraverser$BreadthFirstIterator;->visited:Ljava/util/Set;

    .line 406
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 408
    .local v0, "root":Ljava/lang/Object;, "TN;"
    iget-object v1, p0, Lorg/checkerframework/com/google/common/graph/Traverser$GraphTraverser$BreadthFirstIterator;->visited:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 409
    iget-object v1, p0, Lorg/checkerframework/com/google/common/graph/Traverser$GraphTraverser$BreadthFirstIterator;->queue:Ljava/util/Queue;

    invoke-interface {v1, v0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 411
    .end local v0    # "root":Ljava/lang/Object;, "TN;"
    :cond_0
    goto :goto_0

    .line 412
    :cond_1
    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .line 416
    .local p0, "this":Lorg/checkerframework/com/google/common/graph/Traverser$GraphTraverser$BreadthFirstIterator;, "Lorg/checkerframework/com/google/common/graph/Traverser$GraphTraverser<TN;>.BreadthFirstIterator;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/graph/Traverser$GraphTraverser$BreadthFirstIterator;->queue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

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

    .line 421
    .local p0, "this":Lorg/checkerframework/com/google/common/graph/Traverser$GraphTraverser$BreadthFirstIterator;, "Lorg/checkerframework/com/google/common/graph/Traverser$GraphTraverser<TN;>.BreadthFirstIterator;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/graph/Traverser$GraphTraverser$BreadthFirstIterator;->queue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    move-result-object v0

    .line 422
    .local v0, "current":Ljava/lang/Object;, "TN;"
    iget-object v1, p0, Lorg/checkerframework/com/google/common/graph/Traverser$GraphTraverser$BreadthFirstIterator;->this$0:Lorg/checkerframework/com/google/common/graph/Traverser$GraphTraverser;

    invoke-static {v1}, Lorg/checkerframework/com/google/common/graph/Traverser$GraphTraverser;->access$100(Lorg/checkerframework/com/google/common/graph/Traverser$GraphTraverser;)Lorg/checkerframework/com/google/common/graph/SuccessorsFunction;

    move-result-object v1

    invoke-interface {v1, v0}, Lorg/checkerframework/com/google/common/graph/SuccessorsFunction;->successors(Ljava/lang/Object;)Ljava/lang/Iterable;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 423
    .local v2, "neighbor":Ljava/lang/Object;, "TN;"
    iget-object v3, p0, Lorg/checkerframework/com/google/common/graph/Traverser$GraphTraverser$BreadthFirstIterator;->visited:Ljava/util/Set;

    invoke-interface {v3, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 424
    iget-object v3, p0, Lorg/checkerframework/com/google/common/graph/Traverser$GraphTraverser$BreadthFirstIterator;->queue:Ljava/util/Queue;

    invoke-interface {v3, v2}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 426
    .end local v2    # "neighbor":Ljava/lang/Object;, "TN;"
    :cond_0
    goto :goto_0

    .line 427
    :cond_1
    return-object v0
.end method
