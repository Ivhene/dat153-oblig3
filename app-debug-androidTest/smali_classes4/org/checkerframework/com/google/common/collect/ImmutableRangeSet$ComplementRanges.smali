.class final Lorg/checkerframework/com/google/common/collect/ImmutableRangeSet$ComplementRanges;
.super Lorg/checkerframework/com/google/common/collect/ImmutableList;
.source "ImmutableRangeSet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/com/google/common/collect/ImmutableRangeSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ComplementRanges"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/checkerframework/com/google/common/collect/ImmutableList<",
        "Lorg/checkerframework/com/google/common/collect/Range<",
        "TC;>;>;"
    }
.end annotation


# instance fields
.field private final positiveBoundedAbove:Z

.field private final positiveBoundedBelow:Z

.field private final size:I

.field final synthetic this$0:Lorg/checkerframework/com/google/common/collect/ImmutableRangeSet;


# direct methods
.method constructor <init>(Lorg/checkerframework/com/google/common/collect/ImmutableRangeSet;)V
    .locals 2

    .line 313
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ImmutableRangeSet$ComplementRanges;, "Lorg/checkerframework/com/google/common/collect/ImmutableRangeSet<TC;>.ComplementRanges;"
    iput-object p1, p0, Lorg/checkerframework/com/google/common/collect/ImmutableRangeSet$ComplementRanges;->this$0:Lorg/checkerframework/com/google/common/collect/ImmutableRangeSet;

    invoke-direct {p0}, Lorg/checkerframework/com/google/common/collect/ImmutableList;-><init>()V

    .line 314
    invoke-static {p1}, Lorg/checkerframework/com/google/common/collect/ImmutableRangeSet;->access$000(Lorg/checkerframework/com/google/common/collect/ImmutableRangeSet;)Lorg/checkerframework/com/google/common/collect/ImmutableList;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/checkerframework/com/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/google/common/collect/Range;

    invoke-virtual {v0}, Lorg/checkerframework/com/google/common/collect/Range;->hasLowerBound()Z

    move-result v0

    iput-boolean v0, p0, Lorg/checkerframework/com/google/common/collect/ImmutableRangeSet$ComplementRanges;->positiveBoundedBelow:Z

    .line 315
    invoke-static {p1}, Lorg/checkerframework/com/google/common/collect/ImmutableRangeSet;->access$000(Lorg/checkerframework/com/google/common/collect/ImmutableRangeSet;)Lorg/checkerframework/com/google/common/collect/ImmutableList;

    move-result-object v1

    invoke-static {v1}, Lorg/checkerframework/com/google/common/collect/Iterables;->getLast(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/checkerframework/com/google/common/collect/Range;

    invoke-virtual {v1}, Lorg/checkerframework/com/google/common/collect/Range;->hasUpperBound()Z

    move-result v1

    iput-boolean v1, p0, Lorg/checkerframework/com/google/common/collect/ImmutableRangeSet$ComplementRanges;->positiveBoundedAbove:Z

    .line 317
    invoke-static {p1}, Lorg/checkerframework/com/google/common/collect/ImmutableRangeSet;->access$000(Lorg/checkerframework/com/google/common/collect/ImmutableRangeSet;)Lorg/checkerframework/com/google/common/collect/ImmutableList;

    move-result-object p1

    invoke-virtual {p1}, Lorg/checkerframework/com/google/common/collect/ImmutableList;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    .line 318
    .local p1, "size":I
    if-eqz v0, :cond_0

    .line 319
    add-int/lit8 p1, p1, 0x1

    .line 321
    :cond_0
    if-eqz v1, :cond_1

    .line 322
    add-int/lit8 p1, p1, 0x1

    .line 324
    :cond_1
    iput p1, p0, Lorg/checkerframework/com/google/common/collect/ImmutableRangeSet$ComplementRanges;->size:I

    .line 325
    return-void
.end method


# virtual methods
.method public bridge synthetic get(I)Ljava/lang/Object;
    .locals 0

    .line 304
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ImmutableRangeSet$ComplementRanges;, "Lorg/checkerframework/com/google/common/collect/ImmutableRangeSet<TC;>.ComplementRanges;"
    invoke-virtual {p0, p1}, Lorg/checkerframework/com/google/common/collect/ImmutableRangeSet$ComplementRanges;->get(I)Lorg/checkerframework/com/google/common/collect/Range;

    move-result-object p1

    return-object p1
.end method

.method public get(I)Lorg/checkerframework/com/google/common/collect/Range;
    .locals 3
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lorg/checkerframework/com/google/common/collect/Range<",
            "TC;>;"
        }
    .end annotation

    .line 334
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ImmutableRangeSet$ComplementRanges;, "Lorg/checkerframework/com/google/common/collect/ImmutableRangeSet<TC;>.ComplementRanges;"
    iget v0, p0, Lorg/checkerframework/com/google/common/collect/ImmutableRangeSet$ComplementRanges;->size:I

    invoke-static {p1, v0}, Lorg/checkerframework/com/google/common/base/Preconditions;->checkElementIndex(II)I

    .line 337
    iget-boolean v0, p0, Lorg/checkerframework/com/google/common/collect/ImmutableRangeSet$ComplementRanges;->positiveBoundedBelow:Z

    if-eqz v0, :cond_1

    .line 338
    if-nez p1, :cond_0

    invoke-static {}, Lorg/checkerframework/com/google/common/collect/Cut;->belowAll()Lorg/checkerframework/com/google/common/collect/Cut;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/ImmutableRangeSet$ComplementRanges;->this$0:Lorg/checkerframework/com/google/common/collect/ImmutableRangeSet;

    invoke-static {v0}, Lorg/checkerframework/com/google/common/collect/ImmutableRangeSet;->access$000(Lorg/checkerframework/com/google/common/collect/ImmutableRangeSet;)Lorg/checkerframework/com/google/common/collect/ImmutableList;

    move-result-object v0

    add-int/lit8 v1, p1, -0x1

    invoke-virtual {v0, v1}, Lorg/checkerframework/com/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/google/common/collect/Range;

    iget-object v0, v0, Lorg/checkerframework/com/google/common/collect/Range;->upperBound:Lorg/checkerframework/com/google/common/collect/Cut;

    .local v0, "lowerBound":Lorg/checkerframework/com/google/common/collect/Cut;, "Lorg/checkerframework/com/google/common/collect/Cut<TC;>;"
    :goto_0
    goto :goto_1

    .line 340
    .end local v0    # "lowerBound":Lorg/checkerframework/com/google/common/collect/Cut;, "Lorg/checkerframework/com/google/common/collect/Cut<TC;>;"
    :cond_1
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/ImmutableRangeSet$ComplementRanges;->this$0:Lorg/checkerframework/com/google/common/collect/ImmutableRangeSet;

    invoke-static {v0}, Lorg/checkerframework/com/google/common/collect/ImmutableRangeSet;->access$000(Lorg/checkerframework/com/google/common/collect/ImmutableRangeSet;)Lorg/checkerframework/com/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/checkerframework/com/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/google/common/collect/Range;

    iget-object v0, v0, Lorg/checkerframework/com/google/common/collect/Range;->upperBound:Lorg/checkerframework/com/google/common/collect/Cut;

    .line 344
    .restart local v0    # "lowerBound":Lorg/checkerframework/com/google/common/collect/Cut;, "Lorg/checkerframework/com/google/common/collect/Cut<TC;>;"
    :goto_1
    iget-boolean v1, p0, Lorg/checkerframework/com/google/common/collect/ImmutableRangeSet$ComplementRanges;->positiveBoundedAbove:Z

    if-eqz v1, :cond_2

    iget v1, p0, Lorg/checkerframework/com/google/common/collect/ImmutableRangeSet$ComplementRanges;->size:I

    add-int/lit8 v1, v1, -0x1

    if-ne p1, v1, :cond_2

    .line 345
    invoke-static {}, Lorg/checkerframework/com/google/common/collect/Cut;->aboveAll()Lorg/checkerframework/com/google/common/collect/Cut;

    move-result-object v1

    .local v1, "upperBound":Lorg/checkerframework/com/google/common/collect/Cut;, "Lorg/checkerframework/com/google/common/collect/Cut<TC;>;"
    goto :goto_2

    .line 347
    .end local v1    # "upperBound":Lorg/checkerframework/com/google/common/collect/Cut;, "Lorg/checkerframework/com/google/common/collect/Cut<TC;>;"
    :cond_2
    iget-object v1, p0, Lorg/checkerframework/com/google/common/collect/ImmutableRangeSet$ComplementRanges;->this$0:Lorg/checkerframework/com/google/common/collect/ImmutableRangeSet;

    invoke-static {v1}, Lorg/checkerframework/com/google/common/collect/ImmutableRangeSet;->access$000(Lorg/checkerframework/com/google/common/collect/ImmutableRangeSet;)Lorg/checkerframework/com/google/common/collect/ImmutableList;

    move-result-object v1

    iget-boolean v2, p0, Lorg/checkerframework/com/google/common/collect/ImmutableRangeSet$ComplementRanges;->positiveBoundedBelow:Z

    xor-int/lit8 v2, v2, 0x1

    add-int/2addr v2, p1

    invoke-virtual {v1, v2}, Lorg/checkerframework/com/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/checkerframework/com/google/common/collect/Range;

    iget-object v1, v1, Lorg/checkerframework/com/google/common/collect/Range;->lowerBound:Lorg/checkerframework/com/google/common/collect/Cut;

    .line 350
    .restart local v1    # "upperBound":Lorg/checkerframework/com/google/common/collect/Cut;, "Lorg/checkerframework/com/google/common/collect/Cut<TC;>;"
    :goto_2
    invoke-static {v0, v1}, Lorg/checkerframework/com/google/common/collect/Range;->create(Lorg/checkerframework/com/google/common/collect/Cut;Lorg/checkerframework/com/google/common/collect/Cut;)Lorg/checkerframework/com/google/common/collect/Range;

    move-result-object v2

    return-object v2
.end method

.method isPartialView()Z
    .locals 1

    .line 355
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ImmutableRangeSet$ComplementRanges;, "Lorg/checkerframework/com/google/common/collect/ImmutableRangeSet<TC;>.ComplementRanges;"
    const/4 v0, 0x1

    return v0
.end method

.method public size()I
    .locals 1

    .line 329
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ImmutableRangeSet$ComplementRanges;, "Lorg/checkerframework/com/google/common/collect/ImmutableRangeSet<TC;>.ComplementRanges;"
    iget v0, p0, Lorg/checkerframework/com/google/common/collect/ImmutableRangeSet$ComplementRanges;->size:I

    return v0
.end method
