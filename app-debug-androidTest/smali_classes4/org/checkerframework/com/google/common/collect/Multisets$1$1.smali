.class Lorg/checkerframework/com/google/common/collect/Multisets$1$1;
.super Lorg/checkerframework/com/google/common/collect/AbstractIterator;
.source "Multisets.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/checkerframework/com/google/common/collect/Multisets$1;->entryIterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/checkerframework/com/google/common/collect/AbstractIterator<",
        "Lorg/checkerframework/com/google/common/collect/Multiset$Entry<",
        "TE;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/checkerframework/com/google/common/collect/Multisets$1;

.field final synthetic val$iterator1:Ljava/util/Iterator;

.field final synthetic val$iterator2:Ljava/util/Iterator;


# direct methods
.method constructor <init>(Lorg/checkerframework/com/google/common/collect/Multisets$1;Ljava/util/Iterator;Ljava/util/Iterator;)V
    .locals 0
    .param p1, "this$0"    # Lorg/checkerframework/com/google/common/collect/Multisets$1;

    .line 443
    iput-object p1, p0, Lorg/checkerframework/com/google/common/collect/Multisets$1$1;->this$0:Lorg/checkerframework/com/google/common/collect/Multisets$1;

    iput-object p2, p0, Lorg/checkerframework/com/google/common/collect/Multisets$1$1;->val$iterator1:Ljava/util/Iterator;

    iput-object p3, p0, Lorg/checkerframework/com/google/common/collect/Multisets$1$1;->val$iterator2:Ljava/util/Iterator;

    invoke-direct {p0}, Lorg/checkerframework/com/google/common/collect/AbstractIterator;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic computeNext()Ljava/lang/Object;
    .locals 1

    .line 443
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/Multisets$1$1;->computeNext()Lorg/checkerframework/com/google/common/collect/Multiset$Entry;

    move-result-object v0

    return-object v0
.end method

.method protected computeNext()Lorg/checkerframework/com/google/common/collect/Multiset$Entry;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/checkerframework/com/google/common/collect/Multiset$Entry<",
            "TE;>;"
        }
    .end annotation

    .line 446
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/Multisets$1$1;->val$iterator1:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 447
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/Multisets$1$1;->val$iterator1:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/google/common/collect/Multiset$Entry;

    .line 448
    .local v0, "entry1":Lorg/checkerframework/com/google/common/collect/Multiset$Entry;, "Lorg/checkerframework/com/google/common/collect/Multiset$Entry<+TE;>;"
    invoke-interface {v0}, Lorg/checkerframework/com/google/common/collect/Multiset$Entry;->getElement()Ljava/lang/Object;

    move-result-object v1

    .line 449
    .local v1, "element":Ljava/lang/Object;, "TE;"
    invoke-interface {v0}, Lorg/checkerframework/com/google/common/collect/Multiset$Entry;->getCount()I

    move-result v2

    iget-object v3, p0, Lorg/checkerframework/com/google/common/collect/Multisets$1$1;->this$0:Lorg/checkerframework/com/google/common/collect/Multisets$1;

    iget-object v3, v3, Lorg/checkerframework/com/google/common/collect/Multisets$1;->val$multiset2:Lorg/checkerframework/com/google/common/collect/Multiset;

    invoke-interface {v3, v1}, Lorg/checkerframework/com/google/common/collect/Multiset;->count(Ljava/lang/Object;)I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 450
    .local v2, "count":I
    invoke-static {v1, v2}, Lorg/checkerframework/com/google/common/collect/Multisets;->immutableEntry(Ljava/lang/Object;I)Lorg/checkerframework/com/google/common/collect/Multiset$Entry;

    move-result-object v3

    return-object v3

    .line 452
    .end local v0    # "entry1":Lorg/checkerframework/com/google/common/collect/Multiset$Entry;, "Lorg/checkerframework/com/google/common/collect/Multiset$Entry<+TE;>;"
    .end local v1    # "element":Ljava/lang/Object;, "TE;"
    .end local v2    # "count":I
    :cond_0
    :goto_0
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/Multisets$1$1;->val$iterator2:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 453
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/Multisets$1$1;->val$iterator2:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/google/common/collect/Multiset$Entry;

    .line 454
    .local v0, "entry2":Lorg/checkerframework/com/google/common/collect/Multiset$Entry;, "Lorg/checkerframework/com/google/common/collect/Multiset$Entry<+TE;>;"
    invoke-interface {v0}, Lorg/checkerframework/com/google/common/collect/Multiset$Entry;->getElement()Ljava/lang/Object;

    move-result-object v1

    .line 455
    .restart local v1    # "element":Ljava/lang/Object;, "TE;"
    iget-object v2, p0, Lorg/checkerframework/com/google/common/collect/Multisets$1$1;->this$0:Lorg/checkerframework/com/google/common/collect/Multisets$1;

    iget-object v2, v2, Lorg/checkerframework/com/google/common/collect/Multisets$1;->val$multiset1:Lorg/checkerframework/com/google/common/collect/Multiset;

    invoke-interface {v2, v1}, Lorg/checkerframework/com/google/common/collect/Multiset;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 456
    invoke-interface {v0}, Lorg/checkerframework/com/google/common/collect/Multiset$Entry;->getCount()I

    move-result v2

    invoke-static {v1, v2}, Lorg/checkerframework/com/google/common/collect/Multisets;->immutableEntry(Ljava/lang/Object;I)Lorg/checkerframework/com/google/common/collect/Multiset$Entry;

    move-result-object v2

    return-object v2

    .line 458
    .end local v0    # "entry2":Lorg/checkerframework/com/google/common/collect/Multiset$Entry;, "Lorg/checkerframework/com/google/common/collect/Multiset$Entry<+TE;>;"
    .end local v1    # "element":Ljava/lang/Object;, "TE;"
    :cond_1
    goto :goto_0

    .line 459
    :cond_2
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/Multisets$1$1;->endOfData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/google/common/collect/Multiset$Entry;

    return-object v0
.end method
