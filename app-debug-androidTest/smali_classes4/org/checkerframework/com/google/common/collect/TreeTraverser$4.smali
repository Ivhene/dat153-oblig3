.class Lorg/checkerframework/com/google/common/collect/TreeTraverser$4;
.super Lorg/checkerframework/com/google/common/collect/FluentIterable;
.source "TreeTraverser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/checkerframework/com/google/common/collect/TreeTraverser;->breadthFirstTraversal(Ljava/lang/Object;)Lorg/checkerframework/com/google/common/collect/FluentIterable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/checkerframework/com/google/common/collect/FluentIterable<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/checkerframework/com/google/common/collect/TreeTraverser;

.field final synthetic val$root:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lorg/checkerframework/com/google/common/collect/TreeTraverser;Ljava/lang/Object;)V
    .locals 0
    .param p1, "this$0"    # Lorg/checkerframework/com/google/common/collect/TreeTraverser;

    .line 257
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/TreeTraverser$4;, "Lorg/checkerframework/com/google/common/collect/TreeTraverser$4;"
    iput-object p1, p0, Lorg/checkerframework/com/google/common/collect/TreeTraverser$4;->this$0:Lorg/checkerframework/com/google/common/collect/TreeTraverser;

    iput-object p2, p0, Lorg/checkerframework/com/google/common/collect/TreeTraverser$4;->val$root:Ljava/lang/Object;

    invoke-direct {p0}, Lorg/checkerframework/com/google/common/collect/FluentIterable;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .line 257
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/TreeTraverser$4;, "Lorg/checkerframework/com/google/common/collect/TreeTraverser$4;"
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/TreeTraverser$4;->iterator()Lorg/checkerframework/com/google/common/collect/UnmodifiableIterator;

    move-result-object v0

    return-object v0
.end method

.method public iterator()Lorg/checkerframework/com/google/common/collect/UnmodifiableIterator;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/checkerframework/com/google/common/collect/UnmodifiableIterator<",
            "TT;>;"
        }
    .end annotation

    .line 260
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/TreeTraverser$4;, "Lorg/checkerframework/com/google/common/collect/TreeTraverser$4;"
    new-instance v0, Lorg/checkerframework/com/google/common/collect/TreeTraverser$BreadthFirstIterator;

    iget-object v1, p0, Lorg/checkerframework/com/google/common/collect/TreeTraverser$4;->this$0:Lorg/checkerframework/com/google/common/collect/TreeTraverser;

    iget-object v2, p0, Lorg/checkerframework/com/google/common/collect/TreeTraverser$4;->val$root:Ljava/lang/Object;

    invoke-direct {v0, v1, v2}, Lorg/checkerframework/com/google/common/collect/TreeTraverser$BreadthFirstIterator;-><init>(Lorg/checkerframework/com/google/common/collect/TreeTraverser;Ljava/lang/Object;)V

    return-object v0
.end method
