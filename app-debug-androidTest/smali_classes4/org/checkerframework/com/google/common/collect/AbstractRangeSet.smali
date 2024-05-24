.class abstract Lorg/checkerframework/com/google/common/collect/AbstractRangeSet;
.super Ljava/lang/Object;
.source "AbstractRangeSet.java"

# interfaces
.implements Lorg/checkerframework/com/google/common/collect/RangeSet;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<C::",
        "Ljava/lang/Comparable;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/checkerframework/com/google/common/collect/RangeSet<",
        "TC;>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 27
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/AbstractRangeSet;, "Lorg/checkerframework/com/google/common/collect/AbstractRangeSet<TC;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

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

    .line 44
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/AbstractRangeSet;, "Lorg/checkerframework/com/google/common/collect/AbstractRangeSet<TC;>;"
    .local p1, "range":Lorg/checkerframework/com/google/common/collect/Range;, "Lorg/checkerframework/com/google/common/collect/Range<TC;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public addAll(Lorg/checkerframework/com/google/common/collect/RangeSet;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/google/common/collect/RangeSet<",
            "TC;>;)V"
        }
    .end annotation

    .line 64
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/AbstractRangeSet;, "Lorg/checkerframework/com/google/common/collect/AbstractRangeSet<TC;>;"
    .local p1, "other":Lorg/checkerframework/com/google/common/collect/RangeSet;, "Lorg/checkerframework/com/google/common/collect/RangeSet<TC;>;"
    invoke-interface {p1}, Lorg/checkerframework/com/google/common/collect/RangeSet;->asRanges()Ljava/util/Set;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/checkerframework/com/google/common/collect/AbstractRangeSet;->addAll(Ljava/lang/Iterable;)V

    .line 65
    return-void
.end method

.method public clear()V
    .locals 1

    .line 54
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/AbstractRangeSet;, "Lorg/checkerframework/com/google/common/collect/AbstractRangeSet<TC;>;"
    invoke-static {}, Lorg/checkerframework/com/google/common/collect/Range;->all()Lorg/checkerframework/com/google/common/collect/Range;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/checkerframework/com/google/common/collect/AbstractRangeSet;->remove(Lorg/checkerframework/com/google/common/collect/Range;)V

    .line 55
    return-void
.end method

.method public contains(Ljava/lang/Comparable;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TC;)Z"
        }
    .end annotation

    .line 31
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/AbstractRangeSet;, "Lorg/checkerframework/com/google/common/collect/AbstractRangeSet<TC;>;"
    .local p1, "value":Ljava/lang/Comparable;, "TC;"
    invoke-virtual {p0, p1}, Lorg/checkerframework/com/google/common/collect/AbstractRangeSet;->rangeContaining(Ljava/lang/Comparable;)Lorg/checkerframework/com/google/common/collect/Range;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public abstract encloses(Lorg/checkerframework/com/google/common/collect/Range;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/google/common/collect/Range<",
            "TC;>;)Z"
        }
    .end annotation
.end method

.method public enclosesAll(Lorg/checkerframework/com/google/common/collect/RangeSet;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/google/common/collect/RangeSet<",
            "TC;>;)Z"
        }
    .end annotation

    .line 59
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/AbstractRangeSet;, "Lorg/checkerframework/com/google/common/collect/AbstractRangeSet<TC;>;"
    .local p1, "other":Lorg/checkerframework/com/google/common/collect/RangeSet;, "Lorg/checkerframework/com/google/common/collect/RangeSet<TC;>;"
    invoke-interface {p1}, Lorg/checkerframework/com/google/common/collect/RangeSet;->asRanges()Ljava/util/Set;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/checkerframework/com/google/common/collect/AbstractRangeSet;->enclosesAll(Ljava/lang/Iterable;)Z

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "obj"    # Ljava/lang/Object;

    .line 82
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/AbstractRangeSet;, "Lorg/checkerframework/com/google/common/collect/AbstractRangeSet<TC;>;"
    if-ne p1, p0, :cond_0

    .line 83
    const/4 v0, 0x1

    return v0

    .line 84
    :cond_0
    instance-of v0, p1, Lorg/checkerframework/com/google/common/collect/RangeSet;

    if-eqz v0, :cond_1

    .line 85
    move-object v0, p1

    check-cast v0, Lorg/checkerframework/com/google/common/collect/RangeSet;

    .line 86
    .local v0, "other":Lorg/checkerframework/com/google/common/collect/RangeSet;, "Lorg/checkerframework/com/google/common/collect/RangeSet<*>;"
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/AbstractRangeSet;->asRanges()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v0}, Lorg/checkerframework/com/google/common/collect/RangeSet;->asRanges()Ljava/util/Set;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1

    .line 88
    .end local v0    # "other":Lorg/checkerframework/com/google/common/collect/RangeSet;, "Lorg/checkerframework/com/google/common/collect/RangeSet<*>;"
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public final hashCode()I
    .locals 1

    .line 93
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/AbstractRangeSet;, "Lorg/checkerframework/com/google/common/collect/AbstractRangeSet<TC;>;"
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/AbstractRangeSet;->asRanges()Ljava/util/Set;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public intersects(Lorg/checkerframework/com/google/common/collect/Range;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/google/common/collect/Range<",
            "TC;>;)Z"
        }
    .end annotation

    .line 74
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/AbstractRangeSet;, "Lorg/checkerframework/com/google/common/collect/AbstractRangeSet<TC;>;"
    .local p1, "otherRange":Lorg/checkerframework/com/google/common/collect/Range;, "Lorg/checkerframework/com/google/common/collect/Range<TC;>;"
    invoke-virtual {p0, p1}, Lorg/checkerframework/com/google/common/collect/AbstractRangeSet;->subRangeSet(Lorg/checkerframework/com/google/common/collect/Range;)Lorg/checkerframework/com/google/common/collect/RangeSet;

    move-result-object v0

    invoke-interface {v0}, Lorg/checkerframework/com/google/common/collect/RangeSet;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .line 39
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/AbstractRangeSet;, "Lorg/checkerframework/com/google/common/collect/AbstractRangeSet<TC;>;"
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/AbstractRangeSet;->asRanges()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public abstract rangeContaining(Ljava/lang/Comparable;)Lorg/checkerframework/com/google/common/collect/Range;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TC;)",
            "Lorg/checkerframework/com/google/common/collect/Range<",
            "TC;>;"
        }
    .end annotation
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

    .line 49
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/AbstractRangeSet;, "Lorg/checkerframework/com/google/common/collect/AbstractRangeSet<TC;>;"
    .local p1, "range":Lorg/checkerframework/com/google/common/collect/Range;, "Lorg/checkerframework/com/google/common/collect/Range<TC;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public removeAll(Lorg/checkerframework/com/google/common/collect/RangeSet;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/google/common/collect/RangeSet<",
            "TC;>;)V"
        }
    .end annotation

    .line 69
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/AbstractRangeSet;, "Lorg/checkerframework/com/google/common/collect/AbstractRangeSet<TC;>;"
    .local p1, "other":Lorg/checkerframework/com/google/common/collect/RangeSet;, "Lorg/checkerframework/com/google/common/collect/RangeSet<TC;>;"
    invoke-interface {p1}, Lorg/checkerframework/com/google/common/collect/RangeSet;->asRanges()Ljava/util/Set;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/checkerframework/com/google/common/collect/AbstractRangeSet;->removeAll(Ljava/lang/Iterable;)V

    .line 70
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .line 98
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/AbstractRangeSet;, "Lorg/checkerframework/com/google/common/collect/AbstractRangeSet<TC;>;"
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/AbstractRangeSet;->asRanges()Ljava/util/Set;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
