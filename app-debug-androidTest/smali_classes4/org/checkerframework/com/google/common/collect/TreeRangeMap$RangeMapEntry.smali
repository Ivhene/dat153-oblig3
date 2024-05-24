.class final Lorg/checkerframework/com/google/common/collect/TreeRangeMap$RangeMapEntry;
.super Lorg/checkerframework/com/google/common/collect/AbstractMapEntry;
.source "TreeRangeMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/com/google/common/collect/TreeRangeMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "RangeMapEntry"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K::",
        "Ljava/lang/Comparable;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/checkerframework/com/google/common/collect/AbstractMapEntry<",
        "Lorg/checkerframework/com/google/common/collect/Range<",
        "TK;>;TV;>;"
    }
.end annotation


# instance fields
.field private final range:Lorg/checkerframework/com/google/common/collect/Range;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/checkerframework/com/google/common/collect/Range<",
            "TK;>;"
        }
    .end annotation
.end field

.field private final value:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lorg/checkerframework/com/google/common/collect/Cut;Lorg/checkerframework/com/google/common/collect/Cut;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/google/common/collect/Cut<",
            "TK;>;",
            "Lorg/checkerframework/com/google/common/collect/Cut<",
            "TK;>;TV;)V"
        }
    .end annotation

    .line 72
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/TreeRangeMap$RangeMapEntry;, "Lorg/checkerframework/com/google/common/collect/TreeRangeMap$RangeMapEntry<TK;TV;>;"
    .local p1, "lowerBound":Lorg/checkerframework/com/google/common/collect/Cut;, "Lorg/checkerframework/com/google/common/collect/Cut<TK;>;"
    .local p2, "upperBound":Lorg/checkerframework/com/google/common/collect/Cut;, "Lorg/checkerframework/com/google/common/collect/Cut<TK;>;"
    .local p3, "value":Ljava/lang/Object;, "TV;"
    invoke-static {p1, p2}, Lorg/checkerframework/com/google/common/collect/Range;->create(Lorg/checkerframework/com/google/common/collect/Cut;Lorg/checkerframework/com/google/common/collect/Cut;)Lorg/checkerframework/com/google/common/collect/Range;

    move-result-object v0

    invoke-direct {p0, v0, p3}, Lorg/checkerframework/com/google/common/collect/TreeRangeMap$RangeMapEntry;-><init>(Lorg/checkerframework/com/google/common/collect/Range;Ljava/lang/Object;)V

    .line 73
    return-void
.end method

.method constructor <init>(Lorg/checkerframework/com/google/common/collect/Range;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/google/common/collect/Range<",
            "TK;>;TV;)V"
        }
    .end annotation

    .line 75
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/TreeRangeMap$RangeMapEntry;, "Lorg/checkerframework/com/google/common/collect/TreeRangeMap$RangeMapEntry<TK;TV;>;"
    .local p1, "range":Lorg/checkerframework/com/google/common/collect/Range;, "Lorg/checkerframework/com/google/common/collect/Range<TK;>;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    invoke-direct {p0}, Lorg/checkerframework/com/google/common/collect/AbstractMapEntry;-><init>()V

    .line 76
    iput-object p1, p0, Lorg/checkerframework/com/google/common/collect/TreeRangeMap$RangeMapEntry;->range:Lorg/checkerframework/com/google/common/collect/Range;

    .line 77
    iput-object p2, p0, Lorg/checkerframework/com/google/common/collect/TreeRangeMap$RangeMapEntry;->value:Ljava/lang/Object;

    .line 78
    return-void
.end method


# virtual methods
.method public contains(Ljava/lang/Comparable;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)Z"
        }
    .end annotation

    .line 91
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/TreeRangeMap$RangeMapEntry;, "Lorg/checkerframework/com/google/common/collect/TreeRangeMap$RangeMapEntry<TK;TV;>;"
    .local p1, "value":Ljava/lang/Comparable;, "TK;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/TreeRangeMap$RangeMapEntry;->range:Lorg/checkerframework/com/google/common/collect/Range;

    invoke-virtual {v0, p1}, Lorg/checkerframework/com/google/common/collect/Range;->contains(Ljava/lang/Comparable;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic getKey()Ljava/lang/Object;
    .locals 1

    .line 66
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/TreeRangeMap$RangeMapEntry;, "Lorg/checkerframework/com/google/common/collect/TreeRangeMap$RangeMapEntry<TK;TV;>;"
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/TreeRangeMap$RangeMapEntry;->getKey()Lorg/checkerframework/com/google/common/collect/Range;

    move-result-object v0

    return-object v0
.end method

.method public getKey()Lorg/checkerframework/com/google/common/collect/Range;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/checkerframework/com/google/common/collect/Range<",
            "TK;>;"
        }
    .end annotation

    .line 82
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/TreeRangeMap$RangeMapEntry;, "Lorg/checkerframework/com/google/common/collect/TreeRangeMap$RangeMapEntry<TK;TV;>;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/TreeRangeMap$RangeMapEntry;->range:Lorg/checkerframework/com/google/common/collect/Range;

    return-object v0
.end method

.method getLowerBound()Lorg/checkerframework/com/google/common/collect/Cut;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/checkerframework/com/google/common/collect/Cut<",
            "TK;>;"
        }
    .end annotation

    .line 95
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/TreeRangeMap$RangeMapEntry;, "Lorg/checkerframework/com/google/common/collect/TreeRangeMap$RangeMapEntry<TK;TV;>;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/TreeRangeMap$RangeMapEntry;->range:Lorg/checkerframework/com/google/common/collect/Range;

    iget-object v0, v0, Lorg/checkerframework/com/google/common/collect/Range;->lowerBound:Lorg/checkerframework/com/google/common/collect/Cut;

    return-object v0
.end method

.method getUpperBound()Lorg/checkerframework/com/google/common/collect/Cut;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/checkerframework/com/google/common/collect/Cut<",
            "TK;>;"
        }
    .end annotation

    .line 99
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/TreeRangeMap$RangeMapEntry;, "Lorg/checkerframework/com/google/common/collect/TreeRangeMap$RangeMapEntry<TK;TV;>;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/TreeRangeMap$RangeMapEntry;->range:Lorg/checkerframework/com/google/common/collect/Range;

    iget-object v0, v0, Lorg/checkerframework/com/google/common/collect/Range;->upperBound:Lorg/checkerframework/com/google/common/collect/Cut;

    return-object v0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .line 87
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/TreeRangeMap$RangeMapEntry;, "Lorg/checkerframework/com/google/common/collect/TreeRangeMap$RangeMapEntry<TK;TV;>;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/TreeRangeMap$RangeMapEntry;->value:Ljava/lang/Object;

    return-object v0
.end method
