.class final Lorg/checkerframework/com/google/common/collect/TreeRangeSet$Complement;
.super Lorg/checkerframework/com/google/common/collect/TreeRangeSet;
.source "TreeRangeSet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/com/google/common/collect/TreeRangeSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "Complement"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/checkerframework/com/google/common/collect/TreeRangeSet<",
        "TC;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/checkerframework/com/google/common/collect/TreeRangeSet;


# direct methods
.method constructor <init>(Lorg/checkerframework/com/google/common/collect/TreeRangeSet;)V
    .locals 1

    .line 650
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/TreeRangeSet$Complement;, "Lorg/checkerframework/com/google/common/collect/TreeRangeSet<TC;>.Complement;"
    iput-object p1, p0, Lorg/checkerframework/com/google/common/collect/TreeRangeSet$Complement;->this$0:Lorg/checkerframework/com/google/common/collect/TreeRangeSet;

    .line 651
    new-instance v0, Lorg/checkerframework/com/google/common/collect/TreeRangeSet$ComplementRangesByLowerBound;

    iget-object p1, p1, Lorg/checkerframework/com/google/common/collect/TreeRangeSet;->rangesByLowerBound:Ljava/util/NavigableMap;

    invoke-direct {v0, p1}, Lorg/checkerframework/com/google/common/collect/TreeRangeSet$ComplementRangesByLowerBound;-><init>(Ljava/util/NavigableMap;)V

    const/4 p1, 0x0

    invoke-direct {p0, v0, p1}, Lorg/checkerframework/com/google/common/collect/TreeRangeSet;-><init>(Ljava/util/NavigableMap;Lorg/checkerframework/com/google/common/collect/TreeRangeSet$1;)V

    .line 652
    return-void
.end method


# virtual methods
.method public add(Lorg/checkerframework/com/google/common/collect/Range;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/google/common/collect/Range<",
            "TC;>;)V"
        }
    .end annotation

    .line 656
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/TreeRangeSet$Complement;, "Lorg/checkerframework/com/google/common/collect/TreeRangeSet<TC;>.Complement;"
    .local p1, "rangeToAdd":Lorg/checkerframework/com/google/common/collect/Range;, "Lorg/checkerframework/com/google/common/collect/Range<TC;>;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/TreeRangeSet$Complement;->this$0:Lorg/checkerframework/com/google/common/collect/TreeRangeSet;

    invoke-virtual {v0, p1}, Lorg/checkerframework/com/google/common/collect/TreeRangeSet;->remove(Lorg/checkerframework/com/google/common/collect/Range;)V

    .line 657
    return-void
.end method

.method public complement()Lorg/checkerframework/com/google/common/collect/RangeSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/checkerframework/com/google/common/collect/RangeSet<",
            "TC;>;"
        }
    .end annotation

    .line 671
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/TreeRangeSet$Complement;, "Lorg/checkerframework/com/google/common/collect/TreeRangeSet<TC;>.Complement;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/TreeRangeSet$Complement;->this$0:Lorg/checkerframework/com/google/common/collect/TreeRangeSet;

    return-object v0
.end method

.method public contains(Ljava/lang/Comparable;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TC;)Z"
        }
    .end annotation

    .line 666
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/TreeRangeSet$Complement;, "Lorg/checkerframework/com/google/common/collect/TreeRangeSet<TC;>.Complement;"
    .local p1, "value":Ljava/lang/Comparable;, "TC;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/TreeRangeSet$Complement;->this$0:Lorg/checkerframework/com/google/common/collect/TreeRangeSet;

    invoke-virtual {v0, p1}, Lorg/checkerframework/com/google/common/collect/TreeRangeSet;->contains(Ljava/lang/Comparable;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public remove(Lorg/checkerframework/com/google/common/collect/Range;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/google/common/collect/Range<",
            "TC;>;)V"
        }
    .end annotation

    .line 661
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/TreeRangeSet$Complement;, "Lorg/checkerframework/com/google/common/collect/TreeRangeSet<TC;>.Complement;"
    .local p1, "rangeToRemove":Lorg/checkerframework/com/google/common/collect/Range;, "Lorg/checkerframework/com/google/common/collect/Range<TC;>;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/TreeRangeSet$Complement;->this$0:Lorg/checkerframework/com/google/common/collect/TreeRangeSet;

    invoke-virtual {v0, p1}, Lorg/checkerframework/com/google/common/collect/TreeRangeSet;->add(Lorg/checkerframework/com/google/common/collect/Range;)V

    .line 662
    return-void
.end method
