.class Lorg/checkerframework/com/google/common/primitives/Doubles$DoubleArrayAsList;
.super Ljava/util/AbstractList;
.source "Doubles.java"

# interfaces
.implements Ljava/util/RandomAccess;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/com/google/common/primitives/Doubles;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DoubleArrayAsList"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractList<",
        "Ljava/lang/Double;",
        ">;",
        "Ljava/util/RandomAccess;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J


# instance fields
.field final array:[D

.field final end:I

.field final start:I


# direct methods
.method constructor <init>([D)V
    .locals 2
    .param p1, "array"    # [D

    .line 522
    const/4 v0, 0x0

    array-length v1, p1

    invoke-direct {p0, p1, v0, v1}, Lorg/checkerframework/com/google/common/primitives/Doubles$DoubleArrayAsList;-><init>([DII)V

    .line 523
    return-void
.end method

.method constructor <init>([DII)V
    .locals 0
    .param p1, "array"    # [D
    .param p2, "start"    # I
    .param p3, "end"    # I

    .line 525
    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    .line 526
    iput-object p1, p0, Lorg/checkerframework/com/google/common/primitives/Doubles$DoubleArrayAsList;->array:[D

    .line 527
    iput p2, p0, Lorg/checkerframework/com/google/common/primitives/Doubles$DoubleArrayAsList;->start:I

    .line 528
    iput p3, p0, Lorg/checkerframework/com/google/common/primitives/Doubles$DoubleArrayAsList;->end:I

    .line 529
    return-void
.end method


# virtual methods
.method public contains(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "target"    # Ljava/lang/Object;

    .line 555
    instance-of v0, p1, Ljava/lang/Double;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/checkerframework/com/google/common/primitives/Doubles$DoubleArrayAsList;->array:[D

    move-object v1, p1

    check-cast v1, Ljava/lang/Double;

    .line 556
    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    iget v3, p0, Lorg/checkerframework/com/google/common/primitives/Doubles$DoubleArrayAsList;->start:I

    iget v4, p0, Lorg/checkerframework/com/google/common/primitives/Doubles$DoubleArrayAsList;->end:I

    invoke-static {v0, v1, v2, v3, v4}, Lorg/checkerframework/com/google/common/primitives/Doubles;->access$000([DDII)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 555
    :goto_0
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 9
    .param p1, "object"    # Ljava/lang/Object;

    .line 604
    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    .line 605
    return v0

    .line 607
    :cond_0
    instance-of v1, p1, Lorg/checkerframework/com/google/common/primitives/Doubles$DoubleArrayAsList;

    if-eqz v1, :cond_4

    .line 608
    move-object v1, p1

    check-cast v1, Lorg/checkerframework/com/google/common/primitives/Doubles$DoubleArrayAsList;

    .line 609
    .local v1, "that":Lorg/checkerframework/com/google/common/primitives/Doubles$DoubleArrayAsList;
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/primitives/Doubles$DoubleArrayAsList;->size()I

    move-result v2

    .line 610
    .local v2, "size":I
    invoke-virtual {v1}, Lorg/checkerframework/com/google/common/primitives/Doubles$DoubleArrayAsList;->size()I

    move-result v3

    const/4 v4, 0x0

    if-eq v3, v2, :cond_1

    .line 611
    return v4

    .line 613
    :cond_1
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_3

    .line 614
    iget-object v5, p0, Lorg/checkerframework/com/google/common/primitives/Doubles$DoubleArrayAsList;->array:[D

    iget v6, p0, Lorg/checkerframework/com/google/common/primitives/Doubles$DoubleArrayAsList;->start:I

    add-int/2addr v6, v3

    aget-wide v5, v5, v6

    iget-object v7, v1, Lorg/checkerframework/com/google/common/primitives/Doubles$DoubleArrayAsList;->array:[D

    iget v8, v1, Lorg/checkerframework/com/google/common/primitives/Doubles$DoubleArrayAsList;->start:I

    add-int/2addr v8, v3

    aget-wide v7, v7, v8

    cmpl-double v5, v5, v7

    if-eqz v5, :cond_2

    .line 615
    return v4

    .line 613
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 618
    .end local v3    # "i":I
    :cond_3
    return v0

    .line 620
    .end local v1    # "that":Lorg/checkerframework/com/google/common/primitives/Doubles$DoubleArrayAsList;
    .end local v2    # "size":I
    :cond_4
    invoke-super {p0, p1}, Ljava/util/AbstractList;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public get(I)Ljava/lang/Double;
    .locals 2
    .param p1, "index"    # I

    .line 543
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/primitives/Doubles$DoubleArrayAsList;->size()I

    move-result v0

    invoke-static {p1, v0}, Lorg/checkerframework/com/google/common/base/Preconditions;->checkElementIndex(II)I

    .line 544
    iget-object v0, p0, Lorg/checkerframework/com/google/common/primitives/Doubles$DoubleArrayAsList;->array:[D

    iget v1, p0, Lorg/checkerframework/com/google/common/primitives/Doubles$DoubleArrayAsList;->start:I

    add-int/2addr v1, p1

    aget-wide v0, v0, v1

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get(I)Ljava/lang/Object;
    .locals 0

    .line 514
    invoke-virtual {p0, p1}, Lorg/checkerframework/com/google/common/primitives/Doubles$DoubleArrayAsList;->get(I)Ljava/lang/Double;

    move-result-object p1

    return-object p1
.end method

.method public hashCode()I
    .locals 5

    .line 625
    const/4 v0, 0x1

    .line 626
    .local v0, "result":I
    iget v1, p0, Lorg/checkerframework/com/google/common/primitives/Doubles$DoubleArrayAsList;->start:I

    .local v1, "i":I
    :goto_0
    iget v2, p0, Lorg/checkerframework/com/google/common/primitives/Doubles$DoubleArrayAsList;->end:I

    if-ge v1, v2, :cond_0

    .line 627
    mul-int/lit8 v2, v0, 0x1f

    iget-object v3, p0, Lorg/checkerframework/com/google/common/primitives/Doubles$DoubleArrayAsList;->array:[D

    aget-wide v3, v3, v1

    invoke-static {v3, v4}, Lorg/checkerframework/com/google/common/primitives/Doubles;->hashCode(D)I

    move-result v3

    add-int v0, v2, v3

    .line 626
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 629
    .end local v1    # "i":I
    :cond_0
    return v0
.end method

.method public indexOf(Ljava/lang/Object;)I
    .locals 5
    .param p1, "target"    # Ljava/lang/Object;

    .line 562
    instance-of v0, p1, Ljava/lang/Double;

    if-eqz v0, :cond_0

    .line 563
    iget-object v0, p0, Lorg/checkerframework/com/google/common/primitives/Doubles$DoubleArrayAsList;->array:[D

    move-object v1, p1

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    iget v3, p0, Lorg/checkerframework/com/google/common/primitives/Doubles$DoubleArrayAsList;->start:I

    iget v4, p0, Lorg/checkerframework/com/google/common/primitives/Doubles$DoubleArrayAsList;->end:I

    invoke-static {v0, v1, v2, v3, v4}, Lorg/checkerframework/com/google/common/primitives/Doubles;->access$000([DDII)I

    move-result v0

    .line 564
    .local v0, "i":I
    if-ltz v0, :cond_0

    .line 565
    iget v1, p0, Lorg/checkerframework/com/google/common/primitives/Doubles$DoubleArrayAsList;->start:I

    sub-int v1, v0, v1

    return v1

    .line 568
    .end local v0    # "i":I
    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .line 538
    const/4 v0, 0x0

    return v0
.end method

.method public lastIndexOf(Ljava/lang/Object;)I
    .locals 5
    .param p1, "target"    # Ljava/lang/Object;

    .line 574
    instance-of v0, p1, Ljava/lang/Double;

    if-eqz v0, :cond_0

    .line 575
    iget-object v0, p0, Lorg/checkerframework/com/google/common/primitives/Doubles$DoubleArrayAsList;->array:[D

    move-object v1, p1

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    iget v3, p0, Lorg/checkerframework/com/google/common/primitives/Doubles$DoubleArrayAsList;->start:I

    iget v4, p0, Lorg/checkerframework/com/google/common/primitives/Doubles$DoubleArrayAsList;->end:I

    invoke-static {v0, v1, v2, v3, v4}, Lorg/checkerframework/com/google/common/primitives/Doubles;->access$100([DDII)I

    move-result v0

    .line 576
    .local v0, "i":I
    if-ltz v0, :cond_0

    .line 577
    iget v1, p0, Lorg/checkerframework/com/google/common/primitives/Doubles$DoubleArrayAsList;->start:I

    sub-int v1, v0, v1

    return v1

    .line 580
    .end local v0    # "i":I
    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public set(ILjava/lang/Double;)Ljava/lang/Double;
    .locals 6
    .param p1, "index"    # I
    .param p2, "element"    # Ljava/lang/Double;

    .line 585
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/primitives/Doubles$DoubleArrayAsList;->size()I

    move-result v0

    invoke-static {p1, v0}, Lorg/checkerframework/com/google/common/base/Preconditions;->checkElementIndex(II)I

    .line 586
    iget-object v0, p0, Lorg/checkerframework/com/google/common/primitives/Doubles$DoubleArrayAsList;->array:[D

    iget v1, p0, Lorg/checkerframework/com/google/common/primitives/Doubles$DoubleArrayAsList;->start:I

    add-int v2, v1, p1

    aget-wide v2, v0, v2

    .line 588
    .local v2, "oldValue":D
    add-int/2addr v1, p1

    invoke-static {p2}, Lorg/checkerframework/com/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Double;

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    aput-wide v4, v0, v1

    .line 589
    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic set(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 514
    check-cast p2, Ljava/lang/Double;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/google/common/primitives/Doubles$DoubleArrayAsList;->set(ILjava/lang/Double;)Ljava/lang/Double;

    move-result-object p1

    return-object p1
.end method

.method public size()I
    .locals 2

    .line 533
    iget v0, p0, Lorg/checkerframework/com/google/common/primitives/Doubles$DoubleArrayAsList;->end:I

    iget v1, p0, Lorg/checkerframework/com/google/common/primitives/Doubles$DoubleArrayAsList;->start:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public spliterator()Ljava/util/Spliterator$OfDouble;
    .locals 4

    .line 549
    iget-object v0, p0, Lorg/checkerframework/com/google/common/primitives/Doubles$DoubleArrayAsList;->array:[D

    iget v1, p0, Lorg/checkerframework/com/google/common/primitives/Doubles$DoubleArrayAsList;->start:I

    iget v2, p0, Lorg/checkerframework/com/google/common/primitives/Doubles$DoubleArrayAsList;->end:I

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Ljava/util/Spliterators;->spliterator([DIII)Ljava/util/Spliterator$OfDouble;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic spliterator()Ljava/util/Spliterator;
    .locals 1

    .line 514
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/primitives/Doubles$DoubleArrayAsList;->spliterator()Ljava/util/Spliterator$OfDouble;

    move-result-object v0

    return-object v0
.end method

.method public subList(II)Ljava/util/List;
    .locals 5
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    .line 594
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/primitives/Doubles$DoubleArrayAsList;->size()I

    move-result v0

    .line 595
    .local v0, "size":I
    invoke-static {p1, p2, v0}, Lorg/checkerframework/com/google/common/base/Preconditions;->checkPositionIndexes(III)V

    .line 596
    if-ne p1, p2, :cond_0

    .line 597
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    return-object v1

    .line 599
    :cond_0
    new-instance v1, Lorg/checkerframework/com/google/common/primitives/Doubles$DoubleArrayAsList;

    iget-object v2, p0, Lorg/checkerframework/com/google/common/primitives/Doubles$DoubleArrayAsList;->array:[D

    iget v3, p0, Lorg/checkerframework/com/google/common/primitives/Doubles$DoubleArrayAsList;->start:I

    add-int v4, v3, p1

    add-int/2addr v3, p2

    invoke-direct {v1, v2, v4, v3}, Lorg/checkerframework/com/google/common/primitives/Doubles$DoubleArrayAsList;-><init>([DII)V

    return-object v1
.end method

.method toDoubleArray()[D
    .locals 3

    .line 643
    iget-object v0, p0, Lorg/checkerframework/com/google/common/primitives/Doubles$DoubleArrayAsList;->array:[D

    iget v1, p0, Lorg/checkerframework/com/google/common/primitives/Doubles$DoubleArrayAsList;->start:I

    iget v2, p0, Lorg/checkerframework/com/google/common/primitives/Doubles$DoubleArrayAsList;->end:I

    invoke-static {v0, v1, v2}, Ljava/util/Arrays;->copyOfRange([DII)[D

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 634
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/primitives/Doubles$DoubleArrayAsList;->size()I

    move-result v1

    mul-int/lit8 v1, v1, 0xc

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 635
    .local v0, "builder":Ljava/lang/StringBuilder;
    const/16 v1, 0x5b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/checkerframework/com/google/common/primitives/Doubles$DoubleArrayAsList;->array:[D

    iget v3, p0, Lorg/checkerframework/com/google/common/primitives/Doubles$DoubleArrayAsList;->start:I

    aget-wide v2, v2, v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 636
    iget v1, p0, Lorg/checkerframework/com/google/common/primitives/Doubles$DoubleArrayAsList;->start:I

    add-int/lit8 v1, v1, 0x1

    .local v1, "i":I
    :goto_0
    iget v2, p0, Lorg/checkerframework/com/google/common/primitives/Doubles$DoubleArrayAsList;->end:I

    if-ge v1, v2, :cond_0

    .line 637
    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/checkerframework/com/google/common/primitives/Doubles$DoubleArrayAsList;->array:[D

    aget-wide v3, v3, v1

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 636
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 639
    .end local v1    # "i":I
    :cond_0
    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
