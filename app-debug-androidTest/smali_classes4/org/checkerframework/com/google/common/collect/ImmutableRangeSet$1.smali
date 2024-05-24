.class Lorg/checkerframework/com/google/common/collect/ImmutableRangeSet$1;
.super Lorg/checkerframework/com/google/common/collect/ImmutableList;
.source "ImmutableRangeSet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/checkerframework/com/google/common/collect/ImmutableRangeSet;->intersectRanges(Lorg/checkerframework/com/google/common/collect/Range;)Lorg/checkerframework/com/google/common/collect/ImmutableList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/checkerframework/com/google/common/collect/ImmutableList<",
        "Lorg/checkerframework/com/google/common/collect/Range<",
        "TC;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/checkerframework/com/google/common/collect/ImmutableRangeSet;

.field final synthetic val$fromIndex:I

.field final synthetic val$length:I

.field final synthetic val$range:Lorg/checkerframework/com/google/common/collect/Range;


# direct methods
.method constructor <init>(Lorg/checkerframework/com/google/common/collect/ImmutableRangeSet;IILorg/checkerframework/com/google/common/collect/Range;)V
    .locals 0
    .param p1, "this$0"    # Lorg/checkerframework/com/google/common/collect/ImmutableRangeSet;

    .line 456
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ImmutableRangeSet$1;, "Lorg/checkerframework/com/google/common/collect/ImmutableRangeSet$1;"
    iput-object p1, p0, Lorg/checkerframework/com/google/common/collect/ImmutableRangeSet$1;->this$0:Lorg/checkerframework/com/google/common/collect/ImmutableRangeSet;

    iput p2, p0, Lorg/checkerframework/com/google/common/collect/ImmutableRangeSet$1;->val$length:I

    iput p3, p0, Lorg/checkerframework/com/google/common/collect/ImmutableRangeSet$1;->val$fromIndex:I

    iput-object p4, p0, Lorg/checkerframework/com/google/common/collect/ImmutableRangeSet$1;->val$range:Lorg/checkerframework/com/google/common/collect/Range;

    invoke-direct {p0}, Lorg/checkerframework/com/google/common/collect/ImmutableList;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic get(I)Ljava/lang/Object;
    .locals 0

    .line 456
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ImmutableRangeSet$1;, "Lorg/checkerframework/com/google/common/collect/ImmutableRangeSet$1;"
    invoke-virtual {p0, p1}, Lorg/checkerframework/com/google/common/collect/ImmutableRangeSet$1;->get(I)Lorg/checkerframework/com/google/common/collect/Range;

    move-result-object p1

    return-object p1
.end method

.method public get(I)Lorg/checkerframework/com/google/common/collect/Range;
    .locals 2
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lorg/checkerframework/com/google/common/collect/Range<",
            "TC;>;"
        }
    .end annotation

    .line 464
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ImmutableRangeSet$1;, "Lorg/checkerframework/com/google/common/collect/ImmutableRangeSet$1;"
    iget v0, p0, Lorg/checkerframework/com/google/common/collect/ImmutableRangeSet$1;->val$length:I

    invoke-static {p1, v0}, Lorg/checkerframework/com/google/common/base/Preconditions;->checkElementIndex(II)I

    .line 465
    if-eqz p1, :cond_1

    iget v0, p0, Lorg/checkerframework/com/google/common/collect/ImmutableRangeSet$1;->val$length:I

    add-int/lit8 v0, v0, -0x1

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 468
    :cond_0
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/ImmutableRangeSet$1;->this$0:Lorg/checkerframework/com/google/common/collect/ImmutableRangeSet;

    invoke-static {v0}, Lorg/checkerframework/com/google/common/collect/ImmutableRangeSet;->access$000(Lorg/checkerframework/com/google/common/collect/ImmutableRangeSet;)Lorg/checkerframework/com/google/common/collect/ImmutableList;

    move-result-object v0

    iget v1, p0, Lorg/checkerframework/com/google/common/collect/ImmutableRangeSet$1;->val$fromIndex:I

    add-int/2addr v1, p1

    invoke-virtual {v0, v1}, Lorg/checkerframework/com/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/google/common/collect/Range;

    return-object v0

    .line 466
    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/ImmutableRangeSet$1;->this$0:Lorg/checkerframework/com/google/common/collect/ImmutableRangeSet;

    invoke-static {v0}, Lorg/checkerframework/com/google/common/collect/ImmutableRangeSet;->access$000(Lorg/checkerframework/com/google/common/collect/ImmutableRangeSet;)Lorg/checkerframework/com/google/common/collect/ImmutableList;

    move-result-object v0

    iget v1, p0, Lorg/checkerframework/com/google/common/collect/ImmutableRangeSet$1;->val$fromIndex:I

    add-int/2addr v1, p1

    invoke-virtual {v0, v1}, Lorg/checkerframework/com/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/google/common/collect/Range;

    iget-object v1, p0, Lorg/checkerframework/com/google/common/collect/ImmutableRangeSet$1;->val$range:Lorg/checkerframework/com/google/common/collect/Range;

    invoke-virtual {v0, v1}, Lorg/checkerframework/com/google/common/collect/Range;->intersection(Lorg/checkerframework/com/google/common/collect/Range;)Lorg/checkerframework/com/google/common/collect/Range;

    move-result-object v0

    return-object v0
.end method

.method isPartialView()Z
    .locals 1

    .line 474
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ImmutableRangeSet$1;, "Lorg/checkerframework/com/google/common/collect/ImmutableRangeSet$1;"
    const/4 v0, 0x1

    return v0
.end method

.method public size()I
    .locals 1

    .line 459
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ImmutableRangeSet$1;, "Lorg/checkerframework/com/google/common/collect/ImmutableRangeSet$1;"
    iget v0, p0, Lorg/checkerframework/com/google/common/collect/ImmutableRangeSet$1;->val$length:I

    return v0
.end method
