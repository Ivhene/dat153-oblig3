.class final Lorg/checkerframework/com/google/common/collect/TreeTraverser$PreOrderIterator;
.super Lorg/checkerframework/com/google/common/collect/UnmodifiableIterator;
.source "TreeTraverser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/com/google/common/collect/TreeTraverser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "PreOrderIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/checkerframework/com/google/common/collect/UnmodifiableIterator<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final stack:Ljava/util/Deque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Deque<",
            "Ljava/util/Iterator<",
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

    .line 144
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/TreeTraverser$PreOrderIterator;, "Lorg/checkerframework/com/google/common/collect/TreeTraverser<TT;>.PreOrderIterator;"
    .local p2, "root":Ljava/lang/Object;, "TT;"
    iput-object p1, p0, Lorg/checkerframework/com/google/common/collect/TreeTraverser$PreOrderIterator;->this$0:Lorg/checkerframework/com/google/common/collect/TreeTraverser;

    invoke-direct {p0}, Lorg/checkerframework/com/google/common/collect/UnmodifiableIterator;-><init>()V

    .line 145
    new-instance p1, Ljava/util/ArrayDeque;

    invoke-direct {p1}, Ljava/util/ArrayDeque;-><init>()V

    iput-object p1, p0, Lorg/checkerframework/com/google/common/collect/TreeTraverser$PreOrderIterator;->stack:Ljava/util/Deque;

    .line 146
    invoke-static {p2}, Lorg/checkerframework/com/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lorg/checkerframework/com/google/common/collect/Iterators;->singletonIterator(Ljava/lang/Object;)Lorg/checkerframework/com/google/common/collect/UnmodifiableIterator;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Deque;->addLast(Ljava/lang/Object;)V

    .line 147
    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .line 151
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/TreeTraverser$PreOrderIterator;, "Lorg/checkerframework/com/google/common/collect/TreeTraverser<TT;>.PreOrderIterator;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/TreeTraverser$PreOrderIterator;->stack:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 156
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/TreeTraverser$PreOrderIterator;, "Lorg/checkerframework/com/google/common/collect/TreeTraverser<TT;>.PreOrderIterator;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/TreeTraverser$PreOrderIterator;->stack:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->getLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Iterator;

    .line 157
    .local v0, "itr":Ljava/util/Iterator;, "Ljava/util/Iterator<TT;>;"
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lorg/checkerframework/com/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 158
    .local v1, "result":Ljava/lang/Object;, "TT;"
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 159
    iget-object v2, p0, Lorg/checkerframework/com/google/common/collect/TreeTraverser$PreOrderIterator;->stack:Ljava/util/Deque;

    invoke-interface {v2}, Ljava/util/Deque;->removeLast()Ljava/lang/Object;

    .line 161
    :cond_0
    iget-object v2, p0, Lorg/checkerframework/com/google/common/collect/TreeTraverser$PreOrderIterator;->this$0:Lorg/checkerframework/com/google/common/collect/TreeTraverser;

    invoke-virtual {v2, v1}, Lorg/checkerframework/com/google/common/collect/TreeTraverser;->children(Ljava/lang/Object;)Ljava/lang/Iterable;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 162
    .local v2, "childItr":Ljava/util/Iterator;, "Ljava/util/Iterator<TT;>;"
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 163
    iget-object v3, p0, Lorg/checkerframework/com/google/common/collect/TreeTraverser$PreOrderIterator;->stack:Ljava/util/Deque;

    invoke-interface {v3, v2}, Ljava/util/Deque;->addLast(Ljava/lang/Object;)V

    .line 165
    :cond_1
    return-object v1
.end method
