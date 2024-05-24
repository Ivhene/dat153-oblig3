.class Lorg/checkerframework/com/google/common/collect/CartesianList$1;
.super Lorg/checkerframework/com/google/common/collect/ImmutableList;
.source "CartesianList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/checkerframework/com/google/common/collect/CartesianList;->get(I)Lorg/checkerframework/com/google/common/collect/ImmutableList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/checkerframework/com/google/common/collect/ImmutableList<",
        "TE;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/checkerframework/com/google/common/collect/CartesianList;

.field final synthetic val$index:I


# direct methods
.method constructor <init>(Lorg/checkerframework/com/google/common/collect/CartesianList;I)V
    .locals 0
    .param p1, "this$0"    # Lorg/checkerframework/com/google/common/collect/CartesianList;

    .line 94
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/CartesianList$1;, "Lorg/checkerframework/com/google/common/collect/CartesianList$1;"
    iput-object p1, p0, Lorg/checkerframework/com/google/common/collect/CartesianList$1;->this$0:Lorg/checkerframework/com/google/common/collect/CartesianList;

    iput p2, p0, Lorg/checkerframework/com/google/common/collect/CartesianList$1;->val$index:I

    invoke-direct {p0}, Lorg/checkerframework/com/google/common/collect/ImmutableList;-><init>()V

    return-void
.end method


# virtual methods
.method public get(I)Ljava/lang/Object;
    .locals 2
    .param p1, "axis"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .line 103
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/CartesianList$1;, "Lorg/checkerframework/com/google/common/collect/CartesianList$1;"
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/CartesianList$1;->size()I

    move-result v0

    invoke-static {p1, v0}, Lorg/checkerframework/com/google/common/base/Preconditions;->checkElementIndex(II)I

    .line 104
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/CartesianList$1;->this$0:Lorg/checkerframework/com/google/common/collect/CartesianList;

    iget v1, p0, Lorg/checkerframework/com/google/common/collect/CartesianList$1;->val$index:I

    invoke-static {v0, v1, p1}, Lorg/checkerframework/com/google/common/collect/CartesianList;->access$100(Lorg/checkerframework/com/google/common/collect/CartesianList;II)I

    move-result v0

    .line 105
    .local v0, "axisIndex":I
    iget-object v1, p0, Lorg/checkerframework/com/google/common/collect/CartesianList$1;->this$0:Lorg/checkerframework/com/google/common/collect/CartesianList;

    invoke-static {v1}, Lorg/checkerframework/com/google/common/collect/CartesianList;->access$000(Lorg/checkerframework/com/google/common/collect/CartesianList;)Lorg/checkerframework/com/google/common/collect/ImmutableList;

    move-result-object v1

    invoke-virtual {v1, p1}, Lorg/checkerframework/com/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method isPartialView()Z
    .locals 1

    .line 110
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/CartesianList$1;, "Lorg/checkerframework/com/google/common/collect/CartesianList$1;"
    const/4 v0, 0x1

    return v0
.end method

.method public size()I
    .locals 1

    .line 98
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/CartesianList$1;, "Lorg/checkerframework/com/google/common/collect/CartesianList$1;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/CartesianList$1;->this$0:Lorg/checkerframework/com/google/common/collect/CartesianList;

    invoke-static {v0}, Lorg/checkerframework/com/google/common/collect/CartesianList;->access$000(Lorg/checkerframework/com/google/common/collect/CartesianList;)Lorg/checkerframework/com/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/com/google/common/collect/ImmutableList;->size()I

    move-result v0

    return v0
.end method
