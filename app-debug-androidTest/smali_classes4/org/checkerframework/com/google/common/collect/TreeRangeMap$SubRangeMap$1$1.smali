.class Lorg/checkerframework/com/google/common/collect/TreeRangeMap$SubRangeMap$1$1;
.super Lorg/checkerframework/com/google/common/collect/AbstractIterator;
.source "TreeRangeMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/checkerframework/com/google/common/collect/TreeRangeMap$SubRangeMap$1;->entryIterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/checkerframework/com/google/common/collect/AbstractIterator<",
        "Ljava/util/Map$Entry<",
        "Lorg/checkerframework/com/google/common/collect/Range<",
        "TK;>;TV;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$2:Lorg/checkerframework/com/google/common/collect/TreeRangeMap$SubRangeMap$1;

.field final synthetic val$backingItr:Ljava/util/Iterator;


# direct methods
.method constructor <init>(Lorg/checkerframework/com/google/common/collect/TreeRangeMap$SubRangeMap$1;Ljava/util/Iterator;)V
    .locals 0
    .param p1, "this$2"    # Lorg/checkerframework/com/google/common/collect/TreeRangeMap$SubRangeMap$1;

    .line 589
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/TreeRangeMap$SubRangeMap$1$1;, "Lorg/checkerframework/com/google/common/collect/TreeRangeMap$SubRangeMap$1$1;"
    iput-object p1, p0, Lorg/checkerframework/com/google/common/collect/TreeRangeMap$SubRangeMap$1$1;->this$2:Lorg/checkerframework/com/google/common/collect/TreeRangeMap$SubRangeMap$1;

    iput-object p2, p0, Lorg/checkerframework/com/google/common/collect/TreeRangeMap$SubRangeMap$1$1;->val$backingItr:Ljava/util/Iterator;

    invoke-direct {p0}, Lorg/checkerframework/com/google/common/collect/AbstractIterator;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic computeNext()Ljava/lang/Object;
    .locals 1

    .line 589
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/TreeRangeMap$SubRangeMap$1$1;, "Lorg/checkerframework/com/google/common/collect/TreeRangeMap$SubRangeMap$1$1;"
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/TreeRangeMap$SubRangeMap$1$1;->computeNext()Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method protected computeNext()Ljava/util/Map$Entry;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry<",
            "Lorg/checkerframework/com/google/common/collect/Range<",
            "TK;>;TV;>;"
        }
    .end annotation

    .line 593
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/TreeRangeMap$SubRangeMap$1$1;, "Lorg/checkerframework/com/google/common/collect/TreeRangeMap$SubRangeMap$1$1;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/TreeRangeMap$SubRangeMap$1$1;->val$backingItr:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 594
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/TreeRangeMap$SubRangeMap$1$1;->val$backingItr:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/google/common/collect/TreeRangeMap$RangeMapEntry;

    .line 595
    .local v0, "entry":Lorg/checkerframework/com/google/common/collect/TreeRangeMap$RangeMapEntry;, "Lorg/checkerframework/com/google/common/collect/TreeRangeMap$RangeMapEntry<TK;TV;>;"
    invoke-virtual {v0}, Lorg/checkerframework/com/google/common/collect/TreeRangeMap$RangeMapEntry;->getUpperBound()Lorg/checkerframework/com/google/common/collect/Cut;

    move-result-object v1

    iget-object v2, p0, Lorg/checkerframework/com/google/common/collect/TreeRangeMap$SubRangeMap$1$1;->this$2:Lorg/checkerframework/com/google/common/collect/TreeRangeMap$SubRangeMap$1;

    iget-object v2, v2, Lorg/checkerframework/com/google/common/collect/TreeRangeMap$SubRangeMap$1;->this$1:Lorg/checkerframework/com/google/common/collect/TreeRangeMap$SubRangeMap;

    invoke-static {v2}, Lorg/checkerframework/com/google/common/collect/TreeRangeMap$SubRangeMap;->access$300(Lorg/checkerframework/com/google/common/collect/TreeRangeMap$SubRangeMap;)Lorg/checkerframework/com/google/common/collect/Range;

    move-result-object v2

    iget-object v2, v2, Lorg/checkerframework/com/google/common/collect/Range;->lowerBound:Lorg/checkerframework/com/google/common/collect/Cut;

    invoke-virtual {v1, v2}, Lorg/checkerframework/com/google/common/collect/Cut;->compareTo(Lorg/checkerframework/com/google/common/collect/Cut;)I

    move-result v1

    if-gtz v1, :cond_0

    .line 596
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/TreeRangeMap$SubRangeMap$1$1;->endOfData()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    return-object v1

    .line 598
    :cond_0
    invoke-virtual {v0}, Lorg/checkerframework/com/google/common/collect/TreeRangeMap$RangeMapEntry;->getKey()Lorg/checkerframework/com/google/common/collect/Range;

    move-result-object v1

    iget-object v2, p0, Lorg/checkerframework/com/google/common/collect/TreeRangeMap$SubRangeMap$1$1;->this$2:Lorg/checkerframework/com/google/common/collect/TreeRangeMap$SubRangeMap$1;

    iget-object v2, v2, Lorg/checkerframework/com/google/common/collect/TreeRangeMap$SubRangeMap$1;->this$1:Lorg/checkerframework/com/google/common/collect/TreeRangeMap$SubRangeMap;

    invoke-static {v2}, Lorg/checkerframework/com/google/common/collect/TreeRangeMap$SubRangeMap;->access$300(Lorg/checkerframework/com/google/common/collect/TreeRangeMap$SubRangeMap;)Lorg/checkerframework/com/google/common/collect/Range;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/checkerframework/com/google/common/collect/Range;->intersection(Lorg/checkerframework/com/google/common/collect/Range;)Lorg/checkerframework/com/google/common/collect/Range;

    move-result-object v1

    invoke-virtual {v0}, Lorg/checkerframework/com/google/common/collect/TreeRangeMap$RangeMapEntry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/checkerframework/com/google/common/collect/Maps;->immutableEntry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v1

    return-object v1

    .line 600
    .end local v0    # "entry":Lorg/checkerframework/com/google/common/collect/TreeRangeMap$RangeMapEntry;, "Lorg/checkerframework/com/google/common/collect/TreeRangeMap$RangeMapEntry<TK;TV;>;"
    :cond_1
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/TreeRangeMap$SubRangeMap$1$1;->endOfData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    return-object v0
.end method
