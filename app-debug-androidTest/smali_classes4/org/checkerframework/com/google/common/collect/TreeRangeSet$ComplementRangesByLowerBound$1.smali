.class Lorg/checkerframework/com/google/common/collect/TreeRangeSet$ComplementRangesByLowerBound$1;
.super Lorg/checkerframework/com/google/common/collect/AbstractIterator;
.source "TreeRangeSet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/checkerframework/com/google/common/collect/TreeRangeSet$ComplementRangesByLowerBound;->entryIterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/checkerframework/com/google/common/collect/AbstractIterator<",
        "Ljava/util/Map$Entry<",
        "Lorg/checkerframework/com/google/common/collect/Cut<",
        "TC;>;",
        "Lorg/checkerframework/com/google/common/collect/Range<",
        "TC;>;>;>;"
    }
.end annotation


# instance fields
.field nextComplementRangeLowerBound:Lorg/checkerframework/com/google/common/collect/Cut;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/checkerframework/com/google/common/collect/Cut<",
            "TC;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lorg/checkerframework/com/google/common/collect/TreeRangeSet$ComplementRangesByLowerBound;

.field final synthetic val$firstComplementRangeLowerBound:Lorg/checkerframework/com/google/common/collect/Cut;

.field final synthetic val$positiveItr:Lorg/checkerframework/com/google/common/collect/PeekingIterator;


# direct methods
.method constructor <init>(Lorg/checkerframework/com/google/common/collect/TreeRangeSet$ComplementRangesByLowerBound;Lorg/checkerframework/com/google/common/collect/Cut;Lorg/checkerframework/com/google/common/collect/PeekingIterator;)V
    .locals 0
    .param p1, "this$0"    # Lorg/checkerframework/com/google/common/collect/TreeRangeSet$ComplementRangesByLowerBound;

    .line 534
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/TreeRangeSet$ComplementRangesByLowerBound$1;, "Lorg/checkerframework/com/google/common/collect/TreeRangeSet$ComplementRangesByLowerBound$1;"
    iput-object p1, p0, Lorg/checkerframework/com/google/common/collect/TreeRangeSet$ComplementRangesByLowerBound$1;->this$0:Lorg/checkerframework/com/google/common/collect/TreeRangeSet$ComplementRangesByLowerBound;

    iput-object p2, p0, Lorg/checkerframework/com/google/common/collect/TreeRangeSet$ComplementRangesByLowerBound$1;->val$firstComplementRangeLowerBound:Lorg/checkerframework/com/google/common/collect/Cut;

    iput-object p3, p0, Lorg/checkerframework/com/google/common/collect/TreeRangeSet$ComplementRangesByLowerBound$1;->val$positiveItr:Lorg/checkerframework/com/google/common/collect/PeekingIterator;

    invoke-direct {p0}, Lorg/checkerframework/com/google/common/collect/AbstractIterator;-><init>()V

    .line 535
    iput-object p2, p0, Lorg/checkerframework/com/google/common/collect/TreeRangeSet$ComplementRangesByLowerBound$1;->nextComplementRangeLowerBound:Lorg/checkerframework/com/google/common/collect/Cut;

    return-void
.end method


# virtual methods
.method protected bridge synthetic computeNext()Ljava/lang/Object;
    .locals 1

    .line 534
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/TreeRangeSet$ComplementRangesByLowerBound$1;, "Lorg/checkerframework/com/google/common/collect/TreeRangeSet$ComplementRangesByLowerBound$1;"
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/TreeRangeSet$ComplementRangesByLowerBound$1;->computeNext()Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method protected computeNext()Ljava/util/Map$Entry;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry<",
            "Lorg/checkerframework/com/google/common/collect/Cut<",
            "TC;>;",
            "Lorg/checkerframework/com/google/common/collect/Range<",
            "TC;>;>;"
        }
    .end annotation

    .line 539
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/TreeRangeSet$ComplementRangesByLowerBound$1;, "Lorg/checkerframework/com/google/common/collect/TreeRangeSet$ComplementRangesByLowerBound$1;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/TreeRangeSet$ComplementRangesByLowerBound$1;->this$0:Lorg/checkerframework/com/google/common/collect/TreeRangeSet$ComplementRangesByLowerBound;

    invoke-static {v0}, Lorg/checkerframework/com/google/common/collect/TreeRangeSet$ComplementRangesByLowerBound;->access$100(Lorg/checkerframework/com/google/common/collect/TreeRangeSet$ComplementRangesByLowerBound;)Lorg/checkerframework/com/google/common/collect/Range;

    move-result-object v0

    iget-object v0, v0, Lorg/checkerframework/com/google/common/collect/Range;->upperBound:Lorg/checkerframework/com/google/common/collect/Cut;

    iget-object v1, p0, Lorg/checkerframework/com/google/common/collect/TreeRangeSet$ComplementRangesByLowerBound$1;->nextComplementRangeLowerBound:Lorg/checkerframework/com/google/common/collect/Cut;

    invoke-virtual {v0, v1}, Lorg/checkerframework/com/google/common/collect/Cut;->isLessThan(Ljava/lang/Comparable;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/TreeRangeSet$ComplementRangesByLowerBound$1;->nextComplementRangeLowerBound:Lorg/checkerframework/com/google/common/collect/Cut;

    .line 540
    invoke-static {}, Lorg/checkerframework/com/google/common/collect/Cut;->aboveAll()Lorg/checkerframework/com/google/common/collect/Cut;

    move-result-object v1

    if-ne v0, v1, :cond_0

    goto :goto_1

    .line 544
    :cond_0
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/TreeRangeSet$ComplementRangesByLowerBound$1;->val$positiveItr:Lorg/checkerframework/com/google/common/collect/PeekingIterator;

    invoke-interface {v0}, Lorg/checkerframework/com/google/common/collect/PeekingIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 545
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/TreeRangeSet$ComplementRangesByLowerBound$1;->val$positiveItr:Lorg/checkerframework/com/google/common/collect/PeekingIterator;

    invoke-interface {v0}, Lorg/checkerframework/com/google/common/collect/PeekingIterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/google/common/collect/Range;

    .line 546
    .local v0, "positiveRange":Lorg/checkerframework/com/google/common/collect/Range;, "Lorg/checkerframework/com/google/common/collect/Range<TC;>;"
    iget-object v1, p0, Lorg/checkerframework/com/google/common/collect/TreeRangeSet$ComplementRangesByLowerBound$1;->nextComplementRangeLowerBound:Lorg/checkerframework/com/google/common/collect/Cut;

    iget-object v2, v0, Lorg/checkerframework/com/google/common/collect/Range;->lowerBound:Lorg/checkerframework/com/google/common/collect/Cut;

    invoke-static {v1, v2}, Lorg/checkerframework/com/google/common/collect/Range;->create(Lorg/checkerframework/com/google/common/collect/Cut;Lorg/checkerframework/com/google/common/collect/Cut;)Lorg/checkerframework/com/google/common/collect/Range;

    move-result-object v1

    .line 547
    .local v1, "negativeRange":Lorg/checkerframework/com/google/common/collect/Range;, "Lorg/checkerframework/com/google/common/collect/Range<TC;>;"
    iget-object v2, v0, Lorg/checkerframework/com/google/common/collect/Range;->upperBound:Lorg/checkerframework/com/google/common/collect/Cut;

    iput-object v2, p0, Lorg/checkerframework/com/google/common/collect/TreeRangeSet$ComplementRangesByLowerBound$1;->nextComplementRangeLowerBound:Lorg/checkerframework/com/google/common/collect/Cut;

    .line 548
    .end local v0    # "positiveRange":Lorg/checkerframework/com/google/common/collect/Range;, "Lorg/checkerframework/com/google/common/collect/Range<TC;>;"
    goto :goto_0

    .line 549
    .end local v1    # "negativeRange":Lorg/checkerframework/com/google/common/collect/Range;, "Lorg/checkerframework/com/google/common/collect/Range<TC;>;"
    :cond_1
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/TreeRangeSet$ComplementRangesByLowerBound$1;->nextComplementRangeLowerBound:Lorg/checkerframework/com/google/common/collect/Cut;

    invoke-static {}, Lorg/checkerframework/com/google/common/collect/Cut;->aboveAll()Lorg/checkerframework/com/google/common/collect/Cut;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/checkerframework/com/google/common/collect/Range;->create(Lorg/checkerframework/com/google/common/collect/Cut;Lorg/checkerframework/com/google/common/collect/Cut;)Lorg/checkerframework/com/google/common/collect/Range;

    move-result-object v1

    .line 550
    .restart local v1    # "negativeRange":Lorg/checkerframework/com/google/common/collect/Range;, "Lorg/checkerframework/com/google/common/collect/Range<TC;>;"
    invoke-static {}, Lorg/checkerframework/com/google/common/collect/Cut;->aboveAll()Lorg/checkerframework/com/google/common/collect/Cut;

    move-result-object v0

    iput-object v0, p0, Lorg/checkerframework/com/google/common/collect/TreeRangeSet$ComplementRangesByLowerBound$1;->nextComplementRangeLowerBound:Lorg/checkerframework/com/google/common/collect/Cut;

    .line 552
    :goto_0
    iget-object v0, v1, Lorg/checkerframework/com/google/common/collect/Range;->lowerBound:Lorg/checkerframework/com/google/common/collect/Cut;

    invoke-static {v0, v1}, Lorg/checkerframework/com/google/common/collect/Maps;->immutableEntry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0

    .line 541
    .end local v1    # "negativeRange":Lorg/checkerframework/com/google/common/collect/Range;, "Lorg/checkerframework/com/google/common/collect/Range<TC;>;"
    :cond_2
    :goto_1
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/TreeRangeSet$ComplementRangesByLowerBound$1;->endOfData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    return-object v0
.end method
