.class final Lorg/checkerframework/com/google/common/collect/TreeTraverser$1;
.super Lorg/checkerframework/com/google/common/collect/TreeTraverser;
.source "TreeTraverser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/checkerframework/com/google/common/collect/TreeTraverser;->using(Lorg/checkerframework/com/google/common/base/Function;)Lorg/checkerframework/com/google/common/collect/TreeTraverser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/checkerframework/com/google/common/collect/TreeTraverser<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final synthetic val$nodeToChildrenFunction:Lorg/checkerframework/com/google/common/base/Function;


# direct methods
.method constructor <init>(Lorg/checkerframework/com/google/common/base/Function;)V
    .locals 0

    .line 93
    iput-object p1, p0, Lorg/checkerframework/com/google/common/collect/TreeTraverser$1;->val$nodeToChildrenFunction:Lorg/checkerframework/com/google/common/base/Function;

    invoke-direct {p0}, Lorg/checkerframework/com/google/common/collect/TreeTraverser;-><init>()V

    return-void
.end method


# virtual methods
.method public children(Ljava/lang/Object;)Ljava/lang/Iterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Ljava/lang/Iterable<",
            "TT;>;"
        }
    .end annotation

    .line 96
    .local p1, "root":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/TreeTraverser$1;->val$nodeToChildrenFunction:Lorg/checkerframework/com/google/common/base/Function;

    invoke-interface {v0, p1}, Lorg/checkerframework/com/google/common/base/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    return-object v0
.end method
