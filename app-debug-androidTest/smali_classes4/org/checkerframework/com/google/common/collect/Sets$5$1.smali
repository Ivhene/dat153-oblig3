.class Lorg/checkerframework/com/google/common/collect/Sets$5$1;
.super Lorg/checkerframework/com/google/common/collect/AbstractIterator;
.source "Sets.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/checkerframework/com/google/common/collect/Sets$5;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/checkerframework/com/google/common/collect/AbstractIterator<",
        "Ljava/util/Set<",
        "TE;>;>;"
    }
.end annotation


# instance fields
.field final bits:Ljava/util/BitSet;

.field final synthetic this$0:Lorg/checkerframework/com/google/common/collect/Sets$5;


# direct methods
.method constructor <init>(Lorg/checkerframework/com/google/common/collect/Sets$5;)V
    .locals 2
    .param p1, "this$0"    # Lorg/checkerframework/com/google/common/collect/Sets$5;

    .line 1646
    iput-object p1, p0, Lorg/checkerframework/com/google/common/collect/Sets$5$1;->this$0:Lorg/checkerframework/com/google/common/collect/Sets$5;

    invoke-direct {p0}, Lorg/checkerframework/com/google/common/collect/AbstractIterator;-><init>()V

    .line 1647
    new-instance v0, Ljava/util/BitSet;

    iget-object v1, p1, Lorg/checkerframework/com/google/common/collect/Sets$5;->val$index:Lorg/checkerframework/com/google/common/collect/ImmutableMap;

    invoke-virtual {v1}, Lorg/checkerframework/com/google/common/collect/ImmutableMap;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/BitSet;-><init>(I)V

    iput-object v0, p0, Lorg/checkerframework/com/google/common/collect/Sets$5$1;->bits:Ljava/util/BitSet;

    return-void
.end method


# virtual methods
.method protected bridge synthetic computeNext()Ljava/lang/Object;
    .locals 1

    .line 1646
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/Sets$5$1;->computeNext()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method protected computeNext()Ljava/util/Set;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TE;>;"
        }
    .end annotation

    .line 1651
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/Sets$5$1;->bits:Ljava/util/BitSet;

    invoke-virtual {v0}, Ljava/util/BitSet;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1652
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/Sets$5$1;->bits:Ljava/util/BitSet;

    iget-object v2, p0, Lorg/checkerframework/com/google/common/collect/Sets$5$1;->this$0:Lorg/checkerframework/com/google/common/collect/Sets$5;

    iget v2, v2, Lorg/checkerframework/com/google/common/collect/Sets$5;->val$size:I

    invoke-virtual {v0, v1, v2}, Ljava/util/BitSet;->set(II)V

    goto :goto_0

    .line 1654
    :cond_0
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/Sets$5$1;->bits:Ljava/util/BitSet;

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v0

    .line 1655
    .local v0, "firstSetBit":I
    iget-object v2, p0, Lorg/checkerframework/com/google/common/collect/Sets$5$1;->bits:Ljava/util/BitSet;

    invoke-virtual {v2, v0}, Ljava/util/BitSet;->nextClearBit(I)I

    move-result v2

    .line 1657
    .local v2, "bitToFlip":I
    iget-object v3, p0, Lorg/checkerframework/com/google/common/collect/Sets$5$1;->this$0:Lorg/checkerframework/com/google/common/collect/Sets$5;

    iget-object v3, v3, Lorg/checkerframework/com/google/common/collect/Sets$5;->val$index:Lorg/checkerframework/com/google/common/collect/ImmutableMap;

    invoke-virtual {v3}, Lorg/checkerframework/com/google/common/collect/ImmutableMap;->size()I

    move-result v3

    if-ne v2, v3, :cond_1

    .line 1658
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/Sets$5$1;->endOfData()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    return-object v1

    .line 1674
    :cond_1
    iget-object v3, p0, Lorg/checkerframework/com/google/common/collect/Sets$5$1;->bits:Ljava/util/BitSet;

    sub-int v4, v2, v0

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v3, v1, v4}, Ljava/util/BitSet;->set(II)V

    .line 1675
    iget-object v1, p0, Lorg/checkerframework/com/google/common/collect/Sets$5$1;->bits:Ljava/util/BitSet;

    sub-int v3, v2, v0

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v1, v3, v2}, Ljava/util/BitSet;->clear(II)V

    .line 1676
    iget-object v1, p0, Lorg/checkerframework/com/google/common/collect/Sets$5$1;->bits:Ljava/util/BitSet;

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    .line 1678
    .end local v0    # "firstSetBit":I
    .end local v2    # "bitToFlip":I
    :goto_0
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/Sets$5$1;->bits:Ljava/util/BitSet;

    invoke-virtual {v0}, Ljava/util/BitSet;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/BitSet;

    .line 1679
    .local v0, "copy":Ljava/util/BitSet;
    new-instance v1, Lorg/checkerframework/com/google/common/collect/Sets$5$1$1;

    invoke-direct {v1, p0, v0}, Lorg/checkerframework/com/google/common/collect/Sets$5$1$1;-><init>(Lorg/checkerframework/com/google/common/collect/Sets$5$1;Ljava/util/BitSet;)V

    return-object v1
.end method
