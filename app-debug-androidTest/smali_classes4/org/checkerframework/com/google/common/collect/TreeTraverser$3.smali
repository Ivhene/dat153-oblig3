.class Lorg/checkerframework/com/google/common/collect/TreeTraverser$3;
.super Lorg/checkerframework/com/google/common/collect/FluentIterable;
.source "TreeTraverser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/checkerframework/com/google/common/collect/TreeTraverser;->postOrderTraversal(Ljava/lang/Object;)Lorg/checkerframework/com/google/common/collect/FluentIterable;
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

    .line 182
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/TreeTraverser$3;, "Lorg/checkerframework/com/google/common/collect/TreeTraverser$3;"
    iput-object p1, p0, Lorg/checkerframework/com/google/common/collect/TreeTraverser$3;->this$0:Lorg/checkerframework/com/google/common/collect/TreeTraverser;

    iput-object p2, p0, Lorg/checkerframework/com/google/common/collect/TreeTraverser$3;->val$root:Ljava/lang/Object;

    invoke-direct {p0}, Lorg/checkerframework/com/google/common/collect/FluentIterable;-><init>()V

    return-void
.end method


# virtual methods
.method public forEach(Ljava/util/function/Consumer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "-TT;>;)V"
        }
    .end annotation

    .line 190
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/TreeTraverser$3;, "Lorg/checkerframework/com/google/common/collect/TreeTraverser$3;"
    .local p1, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TT;>;"
    invoke-static {p1}, Lorg/checkerframework/com/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 191
    new-instance v0, Lorg/checkerframework/com/google/common/collect/TreeTraverser$3$1;

    invoke-direct {v0, p0, p1}, Lorg/checkerframework/com/google/common/collect/TreeTraverser$3$1;-><init>(Lorg/checkerframework/com/google/common/collect/TreeTraverser$3;Ljava/util/function/Consumer;)V

    iget-object v1, p0, Lorg/checkerframework/com/google/common/collect/TreeTraverser$3;->val$root:Ljava/lang/Object;

    .line 197
    invoke-virtual {v0, v1}, Lorg/checkerframework/com/google/common/collect/TreeTraverser$3$1;->accept(Ljava/lang/Object;)V

    .line 198
    return-void
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .line 182
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/TreeTraverser$3;, "Lorg/checkerframework/com/google/common/collect/TreeTraverser$3;"
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/TreeTraverser$3;->iterator()Lorg/checkerframework/com/google/common/collect/UnmodifiableIterator;

    move-result-object v0

    return-object v0
.end method

.method public iterator()Lorg/checkerframework/com/google/common/collect/UnmodifiableIterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/checkerframework/com/google/common/collect/UnmodifiableIterator<",
            "TT;>;"
        }
    .end annotation

    .line 185
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/TreeTraverser$3;, "Lorg/checkerframework/com/google/common/collect/TreeTraverser$3;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/TreeTraverser$3;->this$0:Lorg/checkerframework/com/google/common/collect/TreeTraverser;

    iget-object v1, p0, Lorg/checkerframework/com/google/common/collect/TreeTraverser$3;->val$root:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lorg/checkerframework/com/google/common/collect/TreeTraverser;->postOrderIterator(Ljava/lang/Object;)Lorg/checkerframework/com/google/common/collect/UnmodifiableIterator;

    move-result-object v0

    return-object v0
.end method