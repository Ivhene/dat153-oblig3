.class final Lorg/checkerframework/com/google/common/collect/TreeTraverser$PostOrderIterator;
.super Lorg/checkerframework/com/google/common/collect/AbstractIterator;
.source "TreeTraverser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/com/google/common/collect/TreeTraverser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "PostOrderIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/checkerframework/com/google/common/collect/AbstractIterator<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final stack:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Lorg/checkerframework/com/google/common/collect/TreeTraverser$PostOrderNode<",
            "TT;>;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lorg/checkerframework/com/google/common/collect/TreeTraverser;


# direct methods
.method constructor <init>(Lorg/checkerframework/com/google/common/collect/TreeTraverser;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 219
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/TreeTraverser$PostOrderIterator;, "Lorg/checkerframework/com/google/common/collect/TreeTraverser<TT;>.PostOrderIterator;"
    .local p2, "root":Ljava/lang/Object;, "TT;"
    iput-object p1, p0, Lorg/checkerframework/com/google/common/collect/TreeTraverser$PostOrderIterator;->this$0:Lorg/checkerframework/com/google/common/collect/TreeTraverser;

    invoke-direct {p0}, Lorg/checkerframework/com/google/common/collect/AbstractIterator;-><init>()V

    .line 220
    new-instance p1, Ljava/util/ArrayDeque;

    invoke-direct {p1}, Ljava/util/ArrayDeque;-><init>()V

    iput-object p1, p0, Lorg/checkerframework/com/google/common/collect/TreeTraverser$PostOrderIterator;->stack:Ljava/util/ArrayDeque;

    .line 221
    invoke-direct {p0, p2}, Lorg/checkerframework/com/google/common/collect/TreeTraverser$PostOrderIterator;->expand(Ljava/lang/Object;)Lorg/checkerframework/com/google/common/collect/TreeTraverser$PostOrderNode;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayDeque;->addLast(Ljava/lang/Object;)V

    .line 222
    return-void
.end method

.method private expand(Ljava/lang/Object;)Lorg/checkerframework/com/google/common/collect/TreeTraverser$PostOrderNode;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lorg/checkerframework/com/google/common/collect/TreeTraverser$PostOrderNode<",
            "TT;>;"
        }
    .end annotation

    .line 240
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/TreeTraverser$PostOrderIterator;, "Lorg/checkerframework/com/google/common/collect/TreeTraverser<TT;>.PostOrderIterator;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    new-instance v0, Lorg/checkerframework/com/google/common/collect/TreeTraverser$PostOrderNode;

    iget-object v1, p0, Lorg/checkerframework/com/google/common/collect/TreeTraverser$PostOrderIterator;->this$0:Lorg/checkerframework/com/google/common/collect/TreeTraverser;

    invoke-virtual {v1, p1}, Lorg/checkerframework/com/google/common/collect/TreeTraverser;->children(Ljava/lang/Object;)Ljava/lang/Iterable;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lorg/checkerframework/com/google/common/collect/TreeTraverser$PostOrderNode;-><init>(Ljava/lang/Object;Ljava/util/Iterator;)V

    return-object v0
.end method


# virtual methods
.method protected computeNext()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 226
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/TreeTraverser$PostOrderIterator;, "Lorg/checkerframework/com/google/common/collect/TreeTraverser<TT;>.PostOrderIterator;"
    nop

    :goto_0
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/TreeTraverser$PostOrderIterator;->stack:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 227
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/TreeTraverser$PostOrderIterator;->stack:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->getLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/google/common/collect/TreeTraverser$PostOrderNode;

    .line 228
    .local v0, "top":Lorg/checkerframework/com/google/common/collect/TreeTraverser$PostOrderNode;, "Lorg/checkerframework/com/google/common/collect/TreeTraverser$PostOrderNode<TT;>;"
    iget-object v1, v0, Lorg/checkerframework/com/google/common/collect/TreeTraverser$PostOrderNode;->childIterator:Ljava/util/Iterator;

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 229
    iget-object v1, v0, Lorg/checkerframework/com/google/common/collect/TreeTraverser$PostOrderNode;->childIterator:Ljava/util/Iterator;

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 230
    .local v1, "child":Ljava/lang/Object;, "TT;"
    iget-object v2, p0, Lorg/checkerframework/com/google/common/collect/TreeTraverser$PostOrderIterator;->stack:Ljava/util/ArrayDeque;

    invoke-direct {p0, v1}, Lorg/checkerframework/com/google/common/collect/TreeTraverser$PostOrderIterator;->expand(Ljava/lang/Object;)Lorg/checkerframework/com/google/common/collect/TreeTraverser$PostOrderNode;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayDeque;->addLast(Ljava/lang/Object;)V

    .line 231
    .end local v1    # "child":Ljava/lang/Object;, "TT;"
    nop

    .line 235
    .end local v0    # "top":Lorg/checkerframework/com/google/common/collect/TreeTraverser$PostOrderNode;, "Lorg/checkerframework/com/google/common/collect/TreeTraverser$PostOrderNode<TT;>;"
    goto :goto_0

    .line 232
    .restart local v0    # "top":Lorg/checkerframework/com/google/common/collect/TreeTraverser$PostOrderNode;, "Lorg/checkerframework/com/google/common/collect/TreeTraverser$PostOrderNode<TT;>;"
    :cond_0
    iget-object v1, p0, Lorg/checkerframework/com/google/common/collect/TreeTraverser$PostOrderIterator;->stack:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->removeLast()Ljava/lang/Object;

    .line 233
    iget-object v1, v0, Lorg/checkerframework/com/google/common/collect/TreeTraverser$PostOrderNode;->root:Ljava/lang/Object;

    return-object v1

    .line 236
    .end local v0    # "top":Lorg/checkerframework/com/google/common/collect/TreeTraverser$PostOrderNode;, "Lorg/checkerframework/com/google/common/collect/TreeTraverser$PostOrderNode<TT;>;"
    :cond_1
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/TreeTraverser$PostOrderIterator;->endOfData()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
