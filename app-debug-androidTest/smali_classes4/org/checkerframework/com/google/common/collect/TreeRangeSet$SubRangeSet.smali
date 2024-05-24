.class final Lorg/checkerframework/com/google/common/collect/TreeRangeSet$SubRangeSet;
.super Lorg/checkerframework/com/google/common/collect/TreeRangeSet;
.source "TreeRangeSet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/com/google/common/collect/TreeRangeSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SubRangeSet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/checkerframework/com/google/common/collect/TreeRangeSet<",
        "TC;>;"
    }
.end annotation


# instance fields
.field private final restriction:Lorg/checkerframework/com/google/common/collect/Range;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/checkerframework/com/google/common/collect/Range<",
            "TC;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lorg/checkerframework/com/google/common/collect/TreeRangeSet;


# direct methods
.method constructor <init>(Lorg/checkerframework/com/google/common/collect/TreeRangeSet;Lorg/checkerframework/com/google/common/collect/Range;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/google/common/collect/Range<",
            "TC;>;)V"
        }
    .end annotation

    .line 863
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/TreeRangeSet$SubRangeSet;, "Lorg/checkerframework/com/google/common/collect/TreeRangeSet<TC;>.SubRangeSet;"
    .local p2, "restriction":Lorg/checkerframework/com/google/common/collect/Range;, "Lorg/checkerframework/com/google/common/collect/Range<TC;>;"
    iput-object p1, p0, Lorg/checkerframework/com/google/common/collect/TreeRangeSet$SubRangeSet;->this$0:Lorg/checkerframework/com/google/common/collect/TreeRangeSet;

    .line 864
    new-instance v0, Lorg/checkerframework/com/google/common/collect/TreeRangeSet$SubRangeSetRangesByLowerBound;

    .line 866
    invoke-static {}, Lorg/checkerframework/com/google/common/collect/Range;->all()Lorg/checkerframework/com/google/common/collect/Range;

    move-result-object v1

    iget-object p1, p1, Lorg/checkerframework/com/google/common/collect/TreeRangeSet;->rangesByLowerBound:Ljava/util/NavigableMap;

    const/4 v2, 0x0

    invoke-direct {v0, v1, p2, p1, v2}, Lorg/checkerframework/com/google/common/collect/TreeRangeSet$SubRangeSetRangesByLowerBound;-><init>(Lorg/checkerframework/com/google/common/collect/Range;Lorg/checkerframework/com/google/common/collect/Range;Ljava/util/NavigableMap;Lorg/checkerframework/com/google/common/collect/TreeRangeSet$1;)V

    .line 864
    invoke-direct {p0, v0, v2}, Lorg/checkerframework/com/google/common/collect/TreeRangeSet;-><init>(Ljava/util/NavigableMap;Lorg/checkerframework/com/google/common/collect/TreeRangeSet$1;)V

    .line 867
    iput-object p2, p0, Lorg/checkerframework/com/google/common/collect/TreeRangeSet$SubRangeSet;->restriction:Lorg/checkerframework/com/google/common/collect/Range;

    .line 868
    return-void
.end method


# virtual methods
.method public add(Lorg/checkerframework/com/google/common/collect/Range;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/google/common/collect/Range<",
            "TC;>;)V"
        }
    .end annotation

    .line 890
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/TreeRangeSet$SubRangeSet;, "Lorg/checkerframework/com/google/common/collect/TreeRangeSet<TC;>.SubRangeSet;"
    .local p1, "rangeToAdd":Lorg/checkerframework/com/google/common/collect/Range;, "Lorg/checkerframework/com/google/common/collect/Range<TC;>;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/TreeRangeSet$SubRangeSet;->restriction:Lorg/checkerframework/com/google/common/collect/Range;

    .line 891
    invoke-virtual {v0, p1}, Lorg/checkerframework/com/google/common/collect/Range;->encloses(Lorg/checkerframework/com/google/common/collect/Range;)Z

    move-result v0

    iget-object v1, p0, Lorg/checkerframework/com/google/common/collect/TreeRangeSet$SubRangeSet;->restriction:Lorg/checkerframework/com/google/common/collect/Range;

    .line 890
    const-string v2, "Cannot add range %s to subRangeSet(%s)"

    invoke-static {v0, v2, p1, v1}, Lorg/checkerframework/com/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 895
    invoke-super {p0, p1}, Lorg/checkerframework/com/google/common/collect/TreeRangeSet;->add(Lorg/checkerframework/com/google/common/collect/Range;)V

    .line 896
    return-void
.end method

.method public clear()V
    .locals 2

    .line 912
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/TreeRangeSet$SubRangeSet;, "Lorg/checkerframework/com/google/common/collect/TreeRangeSet<TC;>.SubRangeSet;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/TreeRangeSet$SubRangeSet;->this$0:Lorg/checkerframework/com/google/common/collect/TreeRangeSet;

    iget-object v1, p0, Lorg/checkerframework/com/google/common/collect/TreeRangeSet$SubRangeSet;->restriction:Lorg/checkerframework/com/google/common/collect/Range;

    invoke-virtual {v0, v1}, Lorg/checkerframework/com/google/common/collect/TreeRangeSet;->remove(Lorg/checkerframework/com/google/common/collect/Range;)V

    .line 913
    return-void
.end method

.method public contains(Ljava/lang/Comparable;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TC;)Z"
        }
    .end annotation

    .line 907
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/TreeRangeSet$SubRangeSet;, "Lorg/checkerframework/com/google/common/collect/TreeRangeSet<TC;>.SubRangeSet;"
    .local p1, "value":Ljava/lang/Comparable;, "TC;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/TreeRangeSet$SubRangeSet;->restriction:Lorg/checkerframework/com/google/common/collect/Range;

    invoke-virtual {v0, p1}, Lorg/checkerframework/com/google/common/collect/Range;->contains(Ljava/lang/Comparable;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/TreeRangeSet$SubRangeSet;->this$0:Lorg/checkerframework/com/google/common/collect/TreeRangeSet;

    invoke-virtual {v0, p1}, Lorg/checkerframework/com/google/common/collect/TreeRangeSet;->contains(Ljava/lang/Comparable;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public encloses(Lorg/checkerframework/com/google/common/collect/Range;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/google/common/collect/Range<",
            "TC;>;)Z"
        }
    .end annotation

    .line 872
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/TreeRangeSet$SubRangeSet;, "Lorg/checkerframework/com/google/common/collect/TreeRangeSet<TC;>.SubRangeSet;"
    .local p1, "range":Lorg/checkerframework/com/google/common/collect/Range;, "Lorg/checkerframework/com/google/common/collect/Range<TC;>;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/TreeRangeSet$SubRangeSet;->restriction:Lorg/checkerframework/com/google/common/collect/Range;

    invoke-virtual {v0}, Lorg/checkerframework/com/google/common/collect/Range;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/TreeRangeSet$SubRangeSet;->restriction:Lorg/checkerframework/com/google/common/collect/Range;

    invoke-virtual {v0, p1}, Lorg/checkerframework/com/google/common/collect/Range;->encloses(Lorg/checkerframework/com/google/common/collect/Range;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 873
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/TreeRangeSet$SubRangeSet;->this$0:Lorg/checkerframework/com/google/common/collect/TreeRangeSet;

    invoke-static {v0, p1}, Lorg/checkerframework/com/google/common/collect/TreeRangeSet;->access$600(Lorg/checkerframework/com/google/common/collect/TreeRangeSet;Lorg/checkerframework/com/google/common/collect/Range;)Lorg/checkerframework/com/google/common/collect/Range;

    move-result-object v0

    .line 874
    .local v0, "enclosing":Lorg/checkerframework/com/google/common/collect/Range;, "Lorg/checkerframework/com/google/common/collect/Range<TC;>;"
    if-eqz v0, :cond_0

    iget-object v2, p0, Lorg/checkerframework/com/google/common/collect/TreeRangeSet$SubRangeSet;->restriction:Lorg/checkerframework/com/google/common/collect/Range;

    invoke-virtual {v0, v2}, Lorg/checkerframework/com/google/common/collect/Range;->intersection(Lorg/checkerframework/com/google/common/collect/Range;)Lorg/checkerframework/com/google/common/collect/Range;

    move-result-object v2

    invoke-virtual {v2}, Lorg/checkerframework/com/google/common/collect/Range;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1

    .line 876
    .end local v0    # "enclosing":Lorg/checkerframework/com/google/common/collect/Range;, "Lorg/checkerframework/com/google/common/collect/Range<TC;>;"
    :cond_1
    return v1
.end method

.method public rangeContaining(Ljava/lang/Comparable;)Lorg/checkerframework/com/google/common/collect/Range;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TC;)",
            "Lorg/checkerframework/com/google/common/collect/Range<",
            "TC;>;"
        }
    .end annotation

    .line 881
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/TreeRangeSet$SubRangeSet;, "Lorg/checkerframework/com/google/common/collect/TreeRangeSet<TC;>.SubRangeSet;"
    .local p1, "value":Ljava/lang/Comparable;, "TC;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/TreeRangeSet$SubRangeSet;->restriction:Lorg/checkerframework/com/google/common/collect/Range;

    invoke-virtual {v0, p1}, Lorg/checkerframework/com/google/common/collect/Range;->contains(Ljava/lang/Comparable;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 882
    return-object v1

    .line 884
    :cond_0
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/TreeRangeSet$SubRangeSet;->this$0:Lorg/checkerframework/com/google/common/collect/TreeRangeSet;

    invoke-virtual {v0, p1}, Lorg/checkerframework/com/google/common/collect/TreeRangeSet;->rangeContaining(Ljava/lang/Comparable;)Lorg/checkerframework/com/google/common/collect/Range;

    move-result-object v0

    .line 885
    .local v0, "result":Lorg/checkerframework/com/google/common/collect/Range;, "Lorg/checkerframework/com/google/common/collect/Range<TC;>;"
    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lorg/checkerframework/com/google/common/collect/TreeRangeSet$SubRangeSet;->restriction:Lorg/checkerframework/com/google/common/collect/Range;

    invoke-virtual {v0, v1}, Lorg/checkerframework/com/google/common/collect/Range;->intersection(Lorg/checkerframework/com/google/common/collect/Range;)Lorg/checkerframework/com/google/common/collect/Range;

    move-result-object v1

    :goto_0
    return-object v1
.end method

.method public remove(Lorg/checkerframework/com/google/common/collect/Range;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/google/common/collect/Range<",
            "TC;>;)V"
        }
    .end annotation

    .line 900
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/TreeRangeSet$SubRangeSet;, "Lorg/checkerframework/com/google/common/collect/TreeRangeSet<TC;>.SubRangeSet;"
    .local p1, "rangeToRemove":Lorg/checkerframework/com/google/common/collect/Range;, "Lorg/checkerframework/com/google/common/collect/Range<TC;>;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/TreeRangeSet$SubRangeSet;->restriction:Lorg/checkerframework/com/google/common/collect/Range;

    invoke-virtual {p1, v0}, Lorg/checkerframework/com/google/common/collect/Range;->isConnected(Lorg/checkerframework/com/google/common/collect/Range;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 901
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/TreeRangeSet$SubRangeSet;->this$0:Lorg/checkerframework/com/google/common/collect/TreeRangeSet;

    iget-object v1, p0, Lorg/checkerframework/com/google/common/collect/TreeRangeSet$SubRangeSet;->restriction:Lorg/checkerframework/com/google/common/collect/Range;

    invoke-virtual {p1, v1}, Lorg/checkerframework/com/google/common/collect/Range;->intersection(Lorg/checkerframework/com/google/common/collect/Range;)Lorg/checkerframework/com/google/common/collect/Range;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/checkerframework/com/google/common/collect/TreeRangeSet;->remove(Lorg/checkerframework/com/google/common/collect/Range;)V

    .line 903
    :cond_0
    return-void
.end method

.method public subRangeSet(Lorg/checkerframework/com/google/common/collect/Range;)Lorg/checkerframework/com/google/common/collect/RangeSet;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/google/common/collect/Range<",
            "TC;>;)",
            "Lorg/checkerframework/com/google/common/collect/RangeSet<",
            "TC;>;"
        }
    .end annotation

    .line 917
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/TreeRangeSet$SubRangeSet;, "Lorg/checkerframework/com/google/common/collect/TreeRangeSet<TC;>.SubRangeSet;"
    .local p1, "view":Lorg/checkerframework/com/google/common/collect/Range;, "Lorg/checkerframework/com/google/common/collect/Range<TC;>;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/TreeRangeSet$SubRangeSet;->restriction:Lorg/checkerframework/com/google/common/collect/Range;

    invoke-virtual {p1, v0}, Lorg/checkerframework/com/google/common/collect/Range;->encloses(Lorg/checkerframework/com/google/common/collect/Range;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 918
    return-object p0

    .line 919
    :cond_0
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/TreeRangeSet$SubRangeSet;->restriction:Lorg/checkerframework/com/google/common/collect/Range;

    invoke-virtual {p1, v0}, Lorg/checkerframework/com/google/common/collect/Range;->isConnected(Lorg/checkerframework/com/google/common/collect/Range;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 920
    new-instance v0, Lorg/checkerframework/com/google/common/collect/TreeRangeSet$SubRangeSet;

    iget-object v1, p0, Lorg/checkerframework/com/google/common/collect/TreeRangeSet$SubRangeSet;->restriction:Lorg/checkerframework/com/google/common/collect/Range;

    invoke-virtual {v1, p1}, Lorg/checkerframework/com/google/common/collect/Range;->intersection(Lorg/checkerframework/com/google/common/collect/Range;)Lorg/checkerframework/com/google/common/collect/Range;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lorg/checkerframework/com/google/common/collect/TreeRangeSet$SubRangeSet;-><init>(Lorg/checkerframework/com/google/common/collect/TreeRangeSet;Lorg/checkerframework/com/google/common/collect/Range;)V

    return-object v0

    .line 922
    :cond_1
    invoke-static {}, Lorg/checkerframework/com/google/common/collect/ImmutableRangeSet;->of()Lorg/checkerframework/com/google/common/collect/ImmutableRangeSet;

    move-result-object v0

    return-object v0
.end method
