.class Lorg/checkerframework/com/google/common/collect/ImmutableList$SubList;
.super Lorg/checkerframework/com/google/common/collect/ImmutableList;
.source "ImmutableList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/com/google/common/collect/ImmutableList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SubList"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/checkerframework/com/google/common/collect/ImmutableList<",
        "TE;>;"
    }
.end annotation


# instance fields
.field final transient length:I

.field final transient offset:I

.field final synthetic this$0:Lorg/checkerframework/com/google/common/collect/ImmutableList;


# direct methods
.method constructor <init>(Lorg/checkerframework/com/google/common/collect/ImmutableList;II)V
    .locals 0
    .param p1, "this$0"    # Lorg/checkerframework/com/google/common/collect/ImmutableList;
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .line 458
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ImmutableList$SubList;, "Lorg/checkerframework/com/google/common/collect/ImmutableList<TE;>.SubList;"
    iput-object p1, p0, Lorg/checkerframework/com/google/common/collect/ImmutableList$SubList;->this$0:Lorg/checkerframework/com/google/common/collect/ImmutableList;

    invoke-direct {p0}, Lorg/checkerframework/com/google/common/collect/ImmutableList;-><init>()V

    .line 459
    iput p2, p0, Lorg/checkerframework/com/google/common/collect/ImmutableList$SubList;->offset:I

    .line 460
    iput p3, p0, Lorg/checkerframework/com/google/common/collect/ImmutableList$SubList;->length:I

    .line 461
    return-void
.end method


# virtual methods
.method public get(I)Ljava/lang/Object;
    .locals 2
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .line 470
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ImmutableList$SubList;, "Lorg/checkerframework/com/google/common/collect/ImmutableList<TE;>.SubList;"
    iget v0, p0, Lorg/checkerframework/com/google/common/collect/ImmutableList$SubList;->length:I

    invoke-static {p1, v0}, Lorg/checkerframework/com/google/common/base/Preconditions;->checkElementIndex(II)I

    .line 471
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/ImmutableList$SubList;->this$0:Lorg/checkerframework/com/google/common/collect/ImmutableList;

    iget v1, p0, Lorg/checkerframework/com/google/common/collect/ImmutableList$SubList;->offset:I

    add-int/2addr v1, p1

    invoke-virtual {v0, v1}, Lorg/checkerframework/com/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method isPartialView()Z
    .locals 1

    .line 482
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ImmutableList$SubList;, "Lorg/checkerframework/com/google/common/collect/ImmutableList<TE;>.SubList;"
    const/4 v0, 0x1

    return v0
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .line 454
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ImmutableList$SubList;, "Lorg/checkerframework/com/google/common/collect/ImmutableList<TE;>.SubList;"
    invoke-super {p0}, Lorg/checkerframework/com/google/common/collect/ImmutableList;->iterator()Lorg/checkerframework/com/google/common/collect/UnmodifiableIterator;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic listIterator()Ljava/util/ListIterator;
    .locals 1

    .line 454
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ImmutableList$SubList;, "Lorg/checkerframework/com/google/common/collect/ImmutableList<TE;>.SubList;"
    invoke-super {p0}, Lorg/checkerframework/com/google/common/collect/ImmutableList;->listIterator()Lorg/checkerframework/com/google/common/collect/UnmodifiableListIterator;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic listIterator(I)Ljava/util/ListIterator;
    .locals 0

    .line 454
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ImmutableList$SubList;, "Lorg/checkerframework/com/google/common/collect/ImmutableList<TE;>.SubList;"
    invoke-super {p0, p1}, Lorg/checkerframework/com/google/common/collect/ImmutableList;->listIterator(I)Lorg/checkerframework/com/google/common/collect/UnmodifiableListIterator;

    move-result-object p1

    return-object p1
.end method

.method public size()I
    .locals 1

    .line 465
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ImmutableList$SubList;, "Lorg/checkerframework/com/google/common/collect/ImmutableList<TE;>.SubList;"
    iget v0, p0, Lorg/checkerframework/com/google/common/collect/ImmutableList$SubList;->length:I

    return v0
.end method

.method public bridge synthetic subList(II)Ljava/util/List;
    .locals 0

    .line 454
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ImmutableList$SubList;, "Lorg/checkerframework/com/google/common/collect/ImmutableList<TE;>.SubList;"
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/google/common/collect/ImmutableList$SubList;->subList(II)Lorg/checkerframework/com/google/common/collect/ImmutableList;

    move-result-object p1

    return-object p1
.end method

.method public subList(II)Lorg/checkerframework/com/google/common/collect/ImmutableList;
    .locals 3
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lorg/checkerframework/com/google/common/collect/ImmutableList<",
            "TE;>;"
        }
    .end annotation

    .line 476
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ImmutableList$SubList;, "Lorg/checkerframework/com/google/common/collect/ImmutableList<TE;>.SubList;"
    iget v0, p0, Lorg/checkerframework/com/google/common/collect/ImmutableList$SubList;->length:I

    invoke-static {p1, p2, v0}, Lorg/checkerframework/com/google/common/base/Preconditions;->checkPositionIndexes(III)V

    .line 477
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/ImmutableList$SubList;->this$0:Lorg/checkerframework/com/google/common/collect/ImmutableList;

    iget v1, p0, Lorg/checkerframework/com/google/common/collect/ImmutableList$SubList;->offset:I

    add-int v2, p1, v1

    add-int/2addr v1, p2

    invoke-virtual {v0, v2, v1}, Lorg/checkerframework/com/google/common/collect/ImmutableList;->subList(II)Lorg/checkerframework/com/google/common/collect/ImmutableList;

    move-result-object v0

    return-object v0
.end method
