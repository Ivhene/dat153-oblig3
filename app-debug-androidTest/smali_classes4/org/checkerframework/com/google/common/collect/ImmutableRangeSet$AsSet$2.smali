.class Lorg/checkerframework/com/google/common/collect/ImmutableRangeSet$AsSet$2;
.super Lorg/checkerframework/com/google/common/collect/AbstractIterator;
.source "ImmutableRangeSet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/checkerframework/com/google/common/collect/ImmutableRangeSet$AsSet;->descendingIterator()Lorg/checkerframework/com/google/common/collect/UnmodifiableIterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/checkerframework/com/google/common/collect/AbstractIterator<",
        "TC;>;"
    }
.end annotation


# instance fields
.field elemItr:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "TC;>;"
        }
    .end annotation
.end field

.field final rangeItr:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "Lorg/checkerframework/com/google/common/collect/Range<",
            "TC;>;>;"
        }
    .end annotation
.end field

.field final synthetic this$1:Lorg/checkerframework/com/google/common/collect/ImmutableRangeSet$AsSet;


# direct methods
.method constructor <init>(Lorg/checkerframework/com/google/common/collect/ImmutableRangeSet$AsSet;)V
    .locals 1
    .param p1, "this$1"    # Lorg/checkerframework/com/google/common/collect/ImmutableRangeSet$AsSet;

    .line 586
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ImmutableRangeSet$AsSet$2;, "Lorg/checkerframework/com/google/common/collect/ImmutableRangeSet$AsSet$2;"
    iput-object p1, p0, Lorg/checkerframework/com/google/common/collect/ImmutableRangeSet$AsSet$2;->this$1:Lorg/checkerframework/com/google/common/collect/ImmutableRangeSet$AsSet;

    invoke-direct {p0}, Lorg/checkerframework/com/google/common/collect/AbstractIterator;-><init>()V

    .line 587
    iget-object v0, p1, Lorg/checkerframework/com/google/common/collect/ImmutableRangeSet$AsSet;->this$0:Lorg/checkerframework/com/google/common/collect/ImmutableRangeSet;

    invoke-static {v0}, Lorg/checkerframework/com/google/common/collect/ImmutableRangeSet;->access$000(Lorg/checkerframework/com/google/common/collect/ImmutableRangeSet;)Lorg/checkerframework/com/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/com/google/common/collect/ImmutableList;->reverse()Lorg/checkerframework/com/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/com/google/common/collect/ImmutableList;->iterator()Lorg/checkerframework/com/google/common/collect/UnmodifiableIterator;

    move-result-object v0

    iput-object v0, p0, Lorg/checkerframework/com/google/common/collect/ImmutableRangeSet$AsSet$2;->rangeItr:Ljava/util/Iterator;

    .line 588
    invoke-static {}, Lorg/checkerframework/com/google/common/collect/Iterators;->emptyIterator()Lorg/checkerframework/com/google/common/collect/UnmodifiableIterator;

    move-result-object v0

    iput-object v0, p0, Lorg/checkerframework/com/google/common/collect/ImmutableRangeSet$AsSet$2;->elemItr:Ljava/util/Iterator;

    return-void
.end method


# virtual methods
.method protected computeNext()Ljava/lang/Comparable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TC;"
        }
    .end annotation

    .line 592
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ImmutableRangeSet$AsSet$2;, "Lorg/checkerframework/com/google/common/collect/ImmutableRangeSet$AsSet$2;"
    nop

    :goto_0
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/ImmutableRangeSet$AsSet$2;->elemItr:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    .line 593
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/ImmutableRangeSet$AsSet$2;->rangeItr:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 594
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/ImmutableRangeSet$AsSet$2;->rangeItr:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/google/common/collect/Range;

    iget-object v1, p0, Lorg/checkerframework/com/google/common/collect/ImmutableRangeSet$AsSet$2;->this$1:Lorg/checkerframework/com/google/common/collect/ImmutableRangeSet$AsSet;

    invoke-static {v1}, Lorg/checkerframework/com/google/common/collect/ImmutableRangeSet$AsSet;->access$100(Lorg/checkerframework/com/google/common/collect/ImmutableRangeSet$AsSet;)Lorg/checkerframework/com/google/common/collect/DiscreteDomain;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/checkerframework/com/google/common/collect/ContiguousSet;->create(Lorg/checkerframework/com/google/common/collect/Range;Lorg/checkerframework/com/google/common/collect/DiscreteDomain;)Lorg/checkerframework/com/google/common/collect/ContiguousSet;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/com/google/common/collect/ContiguousSet;->descendingIterator()Lorg/checkerframework/com/google/common/collect/UnmodifiableIterator;

    move-result-object v0

    iput-object v0, p0, Lorg/checkerframework/com/google/common/collect/ImmutableRangeSet$AsSet$2;->elemItr:Ljava/util/Iterator;

    goto :goto_0

    .line 596
    :cond_0
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/ImmutableRangeSet$AsSet$2;->endOfData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Comparable;

    return-object v0

    .line 599
    :cond_1
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/ImmutableRangeSet$AsSet$2;->elemItr:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Comparable;

    return-object v0
.end method

.method protected bridge synthetic computeNext()Ljava/lang/Object;
    .locals 1

    .line 586
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ImmutableRangeSet$AsSet$2;, "Lorg/checkerframework/com/google/common/collect/ImmutableRangeSet$AsSet$2;"
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/ImmutableRangeSet$AsSet$2;->computeNext()Ljava/lang/Comparable;

    move-result-object v0

    return-object v0
.end method
