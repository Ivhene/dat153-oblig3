.class Lorg/checkerframework/com/google/common/collect/ImmutableList$ReverseImmutableList;
.super Lorg/checkerframework/com/google/common/collect/ImmutableList;
.source "ImmutableList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/com/google/common/collect/ImmutableList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ReverseImmutableList"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/checkerframework/com/google/common/collect/ImmutableList<",
        "TE;>;"
    }
.end annotation


# instance fields
.field private final transient forwardList:Lorg/checkerframework/com/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/checkerframework/com/google/common/collect/ImmutableList<",
            "TE;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lorg/checkerframework/com/google/common/collect/ImmutableList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/google/common/collect/ImmutableList<",
            "TE;>;)V"
        }
    .end annotation

    .line 600
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ImmutableList$ReverseImmutableList;, "Lorg/checkerframework/com/google/common/collect/ImmutableList$ReverseImmutableList<TE;>;"
    .local p1, "backingList":Lorg/checkerframework/com/google/common/collect/ImmutableList;, "Lorg/checkerframework/com/google/common/collect/ImmutableList<TE;>;"
    invoke-direct {p0}, Lorg/checkerframework/com/google/common/collect/ImmutableList;-><init>()V

    .line 601
    iput-object p1, p0, Lorg/checkerframework/com/google/common/collect/ImmutableList$ReverseImmutableList;->forwardList:Lorg/checkerframework/com/google/common/collect/ImmutableList;

    .line 602
    return-void
.end method

.method private reverseIndex(I)I
    .locals 1
    .param p1, "index"    # I

    .line 605
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ImmutableList$ReverseImmutableList;, "Lorg/checkerframework/com/google/common/collect/ImmutableList$ReverseImmutableList<TE;>;"
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/ImmutableList$ReverseImmutableList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    sub-int/2addr v0, p1

    return v0
.end method

.method private reversePosition(I)I
    .locals 1
    .param p1, "index"    # I

    .line 609
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ImmutableList$ReverseImmutableList;, "Lorg/checkerframework/com/google/common/collect/ImmutableList$ReverseImmutableList<TE;>;"
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/ImmutableList$ReverseImmutableList;->size()I

    move-result v0

    sub-int/2addr v0, p1

    return v0
.end method


# virtual methods
.method public contains(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "object"    # Ljava/lang/Object;

    .line 619
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ImmutableList$ReverseImmutableList;, "Lorg/checkerframework/com/google/common/collect/ImmutableList$ReverseImmutableList<TE;>;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/ImmutableList$ReverseImmutableList;->forwardList:Lorg/checkerframework/com/google/common/collect/ImmutableList;

    invoke-virtual {v0, p1}, Lorg/checkerframework/com/google/common/collect/ImmutableList;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public get(I)Ljava/lang/Object;
    .locals 2
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .line 642
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ImmutableList$ReverseImmutableList;, "Lorg/checkerframework/com/google/common/collect/ImmutableList$ReverseImmutableList<TE;>;"
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/ImmutableList$ReverseImmutableList;->size()I

    move-result v0

    invoke-static {p1, v0}, Lorg/checkerframework/com/google/common/base/Preconditions;->checkElementIndex(II)I

    .line 643
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/ImmutableList$ReverseImmutableList;->forwardList:Lorg/checkerframework/com/google/common/collect/ImmutableList;

    invoke-direct {p0, p1}, Lorg/checkerframework/com/google/common/collect/ImmutableList$ReverseImmutableList;->reverseIndex(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/checkerframework/com/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public indexOf(Ljava/lang/Object;)I
    .locals 2
    .param p1, "object"    # Ljava/lang/Object;

    .line 624
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ImmutableList$ReverseImmutableList;, "Lorg/checkerframework/com/google/common/collect/ImmutableList$ReverseImmutableList<TE;>;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/ImmutableList$ReverseImmutableList;->forwardList:Lorg/checkerframework/com/google/common/collect/ImmutableList;

    invoke-virtual {v0, p1}, Lorg/checkerframework/com/google/common/collect/ImmutableList;->lastIndexOf(Ljava/lang/Object;)I

    move-result v0

    .line 625
    .local v0, "index":I
    if-ltz v0, :cond_0

    invoke-direct {p0, v0}, Lorg/checkerframework/com/google/common/collect/ImmutableList$ReverseImmutableList;->reverseIndex(I)I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, -0x1

    :goto_0
    return v1
.end method

.method isPartialView()Z
    .locals 1

    .line 653
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ImmutableList$ReverseImmutableList;, "Lorg/checkerframework/com/google/common/collect/ImmutableList$ReverseImmutableList<TE;>;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/ImmutableList$ReverseImmutableList;->forwardList:Lorg/checkerframework/com/google/common/collect/ImmutableList;

    invoke-virtual {v0}, Lorg/checkerframework/com/google/common/collect/ImmutableList;->isPartialView()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .line 597
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ImmutableList$ReverseImmutableList;, "Lorg/checkerframework/com/google/common/collect/ImmutableList$ReverseImmutableList<TE;>;"
    invoke-super {p0}, Lorg/checkerframework/com/google/common/collect/ImmutableList;->iterator()Lorg/checkerframework/com/google/common/collect/UnmodifiableIterator;

    move-result-object v0

    return-object v0
.end method

.method public lastIndexOf(Ljava/lang/Object;)I
    .locals 2
    .param p1, "object"    # Ljava/lang/Object;

    .line 630
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ImmutableList$ReverseImmutableList;, "Lorg/checkerframework/com/google/common/collect/ImmutableList$ReverseImmutableList<TE;>;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/ImmutableList$ReverseImmutableList;->forwardList:Lorg/checkerframework/com/google/common/collect/ImmutableList;

    invoke-virtual {v0, p1}, Lorg/checkerframework/com/google/common/collect/ImmutableList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 631
    .local v0, "index":I
    if-ltz v0, :cond_0

    invoke-direct {p0, v0}, Lorg/checkerframework/com/google/common/collect/ImmutableList$ReverseImmutableList;->reverseIndex(I)I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, -0x1

    :goto_0
    return v1
.end method

.method public bridge synthetic listIterator()Ljava/util/ListIterator;
    .locals 1

    .line 597
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ImmutableList$ReverseImmutableList;, "Lorg/checkerframework/com/google/common/collect/ImmutableList$ReverseImmutableList<TE;>;"
    invoke-super {p0}, Lorg/checkerframework/com/google/common/collect/ImmutableList;->listIterator()Lorg/checkerframework/com/google/common/collect/UnmodifiableListIterator;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic listIterator(I)Ljava/util/ListIterator;
    .locals 0

    .line 597
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ImmutableList$ReverseImmutableList;, "Lorg/checkerframework/com/google/common/collect/ImmutableList$ReverseImmutableList<TE;>;"
    invoke-super {p0, p1}, Lorg/checkerframework/com/google/common/collect/ImmutableList;->listIterator(I)Lorg/checkerframework/com/google/common/collect/UnmodifiableListIterator;

    move-result-object p1

    return-object p1
.end method

.method public reverse()Lorg/checkerframework/com/google/common/collect/ImmutableList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/checkerframework/com/google/common/collect/ImmutableList<",
            "TE;>;"
        }
    .end annotation

    .line 614
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ImmutableList$ReverseImmutableList;, "Lorg/checkerframework/com/google/common/collect/ImmutableList$ReverseImmutableList<TE;>;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/ImmutableList$ReverseImmutableList;->forwardList:Lorg/checkerframework/com/google/common/collect/ImmutableList;

    return-object v0
.end method

.method public size()I
    .locals 1

    .line 648
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ImmutableList$ReverseImmutableList;, "Lorg/checkerframework/com/google/common/collect/ImmutableList$ReverseImmutableList<TE;>;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/ImmutableList$ReverseImmutableList;->forwardList:Lorg/checkerframework/com/google/common/collect/ImmutableList;

    invoke-virtual {v0}, Lorg/checkerframework/com/google/common/collect/ImmutableList;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic subList(II)Ljava/util/List;
    .locals 0

    .line 597
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ImmutableList$ReverseImmutableList;, "Lorg/checkerframework/com/google/common/collect/ImmutableList$ReverseImmutableList<TE;>;"
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/google/common/collect/ImmutableList$ReverseImmutableList;->subList(II)Lorg/checkerframework/com/google/common/collect/ImmutableList;

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

    .line 636
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ImmutableList$ReverseImmutableList;, "Lorg/checkerframework/com/google/common/collect/ImmutableList$ReverseImmutableList<TE;>;"
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/ImmutableList$ReverseImmutableList;->size()I

    move-result v0

    invoke-static {p1, p2, v0}, Lorg/checkerframework/com/google/common/base/Preconditions;->checkPositionIndexes(III)V

    .line 637
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/ImmutableList$ReverseImmutableList;->forwardList:Lorg/checkerframework/com/google/common/collect/ImmutableList;

    invoke-direct {p0, p2}, Lorg/checkerframework/com/google/common/collect/ImmutableList$ReverseImmutableList;->reversePosition(I)I

    move-result v1

    invoke-direct {p0, p1}, Lorg/checkerframework/com/google/common/collect/ImmutableList$ReverseImmutableList;->reversePosition(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/checkerframework/com/google/common/collect/ImmutableList;->subList(II)Lorg/checkerframework/com/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/com/google/common/collect/ImmutableList;->reverse()Lorg/checkerframework/com/google/common/collect/ImmutableList;

    move-result-object v0

    return-object v0
.end method
