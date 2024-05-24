.class Lorg/checkerframework/com/google/common/primitives/Longs$LongArrayAsList;
.super Ljava/util/AbstractList;
.source "Longs.java"

# interfaces
.implements Ljava/util/RandomAccess;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/com/google/common/primitives/Longs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LongArrayAsList"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractList<",
        "Ljava/lang/Long;",
        ">;",
        "Ljava/util/RandomAccess;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J


# instance fields
.field final array:[J

.field final end:I

.field final start:I


# direct methods
.method constructor <init>([J)V
    .locals 2
    .param p1, "array"    # [J

    .line 664
    const/4 v0, 0x0

    array-length v1, p1

    invoke-direct {p0, p1, v0, v1}, Lorg/checkerframework/com/google/common/primitives/Longs$LongArrayAsList;-><init>([JII)V

    .line 665
    return-void
.end method

.method constructor <init>([JII)V
    .locals 0
    .param p1, "array"    # [J
    .param p2, "start"    # I
    .param p3, "end"    # I

    .line 667
    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    .line 668
    iput-object p1, p0, Lorg/checkerframework/com/google/common/primitives/Longs$LongArrayAsList;->array:[J

    .line 669
    iput p2, p0, Lorg/checkerframework/com/google/common/primitives/Longs$LongArrayAsList;->start:I

    .line 670
    iput p3, p0, Lorg/checkerframework/com/google/common/primitives/Longs$LongArrayAsList;->end:I

    .line 671
    return-void
.end method


# virtual methods
.method public contains(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "target"    # Ljava/lang/Object;

    .line 697
    instance-of v0, p1, Ljava/lang/Long;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/checkerframework/com/google/common/primitives/Longs$LongArrayAsList;->array:[J

    move-object v1, p1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    iget v3, p0, Lorg/checkerframework/com/google/common/primitives/Longs$LongArrayAsList;->start:I

    iget v4, p0, Lorg/checkerframework/com/google/common/primitives/Longs$LongArrayAsList;->end:I

    invoke-static {v0, v1, v2, v3, v4}, Lorg/checkerframework/com/google/common/primitives/Longs;->access$000([JJII)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 9
    .param p1, "object"    # Ljava/lang/Object;

    .line 745
    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    .line 746
    return v0

    .line 748
    :cond_0
    instance-of v1, p1, Lorg/checkerframework/com/google/common/primitives/Longs$LongArrayAsList;

    if-eqz v1, :cond_4

    .line 749
    move-object v1, p1

    check-cast v1, Lorg/checkerframework/com/google/common/primitives/Longs$LongArrayAsList;

    .line 750
    .local v1, "that":Lorg/checkerframework/com/google/common/primitives/Longs$LongArrayAsList;
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/primitives/Longs$LongArrayAsList;->size()I

    move-result v2

    .line 751
    .local v2, "size":I
    invoke-virtual {v1}, Lorg/checkerframework/com/google/common/primitives/Longs$LongArrayAsList;->size()I

    move-result v3

    const/4 v4, 0x0

    if-eq v3, v2, :cond_1

    .line 752
    return v4

    .line 754
    :cond_1
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_3

    .line 755
    iget-object v5, p0, Lorg/checkerframework/com/google/common/primitives/Longs$LongArrayAsList;->array:[J

    iget v6, p0, Lorg/checkerframework/com/google/common/primitives/Longs$LongArrayAsList;->start:I

    add-int/2addr v6, v3

    aget-wide v5, v5, v6

    iget-object v7, v1, Lorg/checkerframework/com/google/common/primitives/Longs$LongArrayAsList;->array:[J

    iget v8, v1, Lorg/checkerframework/com/google/common/primitives/Longs$LongArrayAsList;->start:I

    add-int/2addr v8, v3

    aget-wide v7, v7, v8

    cmp-long v5, v5, v7

    if-eqz v5, :cond_2

    .line 756
    return v4

    .line 754
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 759
    .end local v3    # "i":I
    :cond_3
    return v0

    .line 761
    .end local v1    # "that":Lorg/checkerframework/com/google/common/primitives/Longs$LongArrayAsList;
    .end local v2    # "size":I
    :cond_4
    invoke-super {p0, p1}, Ljava/util/AbstractList;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public get(I)Ljava/lang/Long;
    .locals 2
    .param p1, "index"    # I

    .line 685
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/primitives/Longs$LongArrayAsList;->size()I

    move-result v0

    invoke-static {p1, v0}, Lorg/checkerframework/com/google/common/base/Preconditions;->checkElementIndex(II)I

    .line 686
    iget-object v0, p0, Lorg/checkerframework/com/google/common/primitives/Longs$LongArrayAsList;->array:[J

    iget v1, p0, Lorg/checkerframework/com/google/common/primitives/Longs$LongArrayAsList;->start:I

    add-int/2addr v1, p1

    aget-wide v0, v0, v1

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get(I)Ljava/lang/Object;
    .locals 0

    .line 656
    invoke-virtual {p0, p1}, Lorg/checkerframework/com/google/common/primitives/Longs$LongArrayAsList;->get(I)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method

.method public hashCode()I
    .locals 5

    .line 766
    const/4 v0, 0x1

    .line 767
    .local v0, "result":I
    iget v1, p0, Lorg/checkerframework/com/google/common/primitives/Longs$LongArrayAsList;->start:I

    .local v1, "i":I
    :goto_0
    iget v2, p0, Lorg/checkerframework/com/google/common/primitives/Longs$LongArrayAsList;->end:I

    if-ge v1, v2, :cond_0

    .line 768
    mul-int/lit8 v2, v0, 0x1f

    iget-object v3, p0, Lorg/checkerframework/com/google/common/primitives/Longs$LongArrayAsList;->array:[J

    aget-wide v3, v3, v1

    invoke-static {v3, v4}, Lorg/checkerframework/com/google/common/primitives/Longs;->hashCode(J)I

    move-result v3

    add-int v0, v2, v3

    .line 767
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 770
    .end local v1    # "i":I
    :cond_0
    return v0
.end method

.method public indexOf(Ljava/lang/Object;)I
    .locals 5
    .param p1, "target"    # Ljava/lang/Object;

    .line 703
    instance-of v0, p1, Ljava/lang/Long;

    if-eqz v0, :cond_0

    .line 704
    iget-object v0, p0, Lorg/checkerframework/com/google/common/primitives/Longs$LongArrayAsList;->array:[J

    move-object v1, p1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    iget v3, p0, Lorg/checkerframework/com/google/common/primitives/Longs$LongArrayAsList;->start:I

    iget v4, p0, Lorg/checkerframework/com/google/common/primitives/Longs$LongArrayAsList;->end:I

    invoke-static {v0, v1, v2, v3, v4}, Lorg/checkerframework/com/google/common/primitives/Longs;->access$000([JJII)I

    move-result v0

    .line 705
    .local v0, "i":I
    if-ltz v0, :cond_0

    .line 706
    iget v1, p0, Lorg/checkerframework/com/google/common/primitives/Longs$LongArrayAsList;->start:I

    sub-int v1, v0, v1

    return v1

    .line 709
    .end local v0    # "i":I
    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .line 680
    const/4 v0, 0x0

    return v0
.end method

.method public lastIndexOf(Ljava/lang/Object;)I
    .locals 5
    .param p1, "target"    # Ljava/lang/Object;

    .line 715
    instance-of v0, p1, Ljava/lang/Long;

    if-eqz v0, :cond_0

    .line 716
    iget-object v0, p0, Lorg/checkerframework/com/google/common/primitives/Longs$LongArrayAsList;->array:[J

    move-object v1, p1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    iget v3, p0, Lorg/checkerframework/com/google/common/primitives/Longs$LongArrayAsList;->start:I

    iget v4, p0, Lorg/checkerframework/com/google/common/primitives/Longs$LongArrayAsList;->end:I

    invoke-static {v0, v1, v2, v3, v4}, Lorg/checkerframework/com/google/common/primitives/Longs;->access$100([JJII)I

    move-result v0

    .line 717
    .local v0, "i":I
    if-ltz v0, :cond_0

    .line 718
    iget v1, p0, Lorg/checkerframework/com/google/common/primitives/Longs$LongArrayAsList;->start:I

    sub-int v1, v0, v1

    return v1

    .line 721
    .end local v0    # "i":I
    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public set(ILjava/lang/Long;)Ljava/lang/Long;
    .locals 6
    .param p1, "index"    # I
    .param p2, "element"    # Ljava/lang/Long;

    .line 726
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/primitives/Longs$LongArrayAsList;->size()I

    move-result v0

    invoke-static {p1, v0}, Lorg/checkerframework/com/google/common/base/Preconditions;->checkElementIndex(II)I

    .line 727
    iget-object v0, p0, Lorg/checkerframework/com/google/common/primitives/Longs$LongArrayAsList;->array:[J

    iget v1, p0, Lorg/checkerframework/com/google/common/primitives/Longs$LongArrayAsList;->start:I

    add-int v2, v1, p1

    aget-wide v2, v0, v2

    .line 729
    .local v2, "oldValue":J
    add-int/2addr v1, p1

    invoke-static {p2}, Lorg/checkerframework/com/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    aput-wide v4, v0, v1

    .line 730
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic set(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 656
    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/google/common/primitives/Longs$LongArrayAsList;->set(ILjava/lang/Long;)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method

.method public size()I
    .locals 2

    .line 675
    iget v0, p0, Lorg/checkerframework/com/google/common/primitives/Longs$LongArrayAsList;->end:I

    iget v1, p0, Lorg/checkerframework/com/google/common/primitives/Longs$LongArrayAsList;->start:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public spliterator()Ljava/util/Spliterator$OfLong;
    .locals 4

    .line 691
    iget-object v0, p0, Lorg/checkerframework/com/google/common/primitives/Longs$LongArrayAsList;->array:[J

    iget v1, p0, Lorg/checkerframework/com/google/common/primitives/Longs$LongArrayAsList;->start:I

    iget v2, p0, Lorg/checkerframework/com/google/common/primitives/Longs$LongArrayAsList;->end:I

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Ljava/util/Spliterators;->spliterator([JIII)Ljava/util/Spliterator$OfLong;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic spliterator()Ljava/util/Spliterator;
    .locals 1

    .line 656
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/primitives/Longs$LongArrayAsList;->spliterator()Ljava/util/Spliterator$OfLong;

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
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 735
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/primitives/Longs$LongArrayAsList;->size()I

    move-result v0

    .line 736
    .local v0, "size":I
    invoke-static {p1, p2, v0}, Lorg/checkerframework/com/google/common/base/Preconditions;->checkPositionIndexes(III)V

    .line 737
    if-ne p1, p2, :cond_0

    .line 738
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    return-object v1

    .line 740
    :cond_0
    new-instance v1, Lorg/checkerframework/com/google/common/primitives/Longs$LongArrayAsList;

    iget-object v2, p0, Lorg/checkerframework/com/google/common/primitives/Longs$LongArrayAsList;->array:[J

    iget v3, p0, Lorg/checkerframework/com/google/common/primitives/Longs$LongArrayAsList;->start:I

    add-int v4, v3, p1

    add-int/2addr v3, p2

    invoke-direct {v1, v2, v4, v3}, Lorg/checkerframework/com/google/common/primitives/Longs$LongArrayAsList;-><init>([JII)V

    return-object v1
.end method

.method toLongArray()[J
    .locals 3

    .line 784
    iget-object v0, p0, Lorg/checkerframework/com/google/common/primitives/Longs$LongArrayAsList;->array:[J

    iget v1, p0, Lorg/checkerframework/com/google/common/primitives/Longs$LongArrayAsList;->start:I

    iget v2, p0, Lorg/checkerframework/com/google/common/primitives/Longs$LongArrayAsList;->end:I

    invoke-static {v0, v1, v2}, Ljava/util/Arrays;->copyOfRange([JII)[J

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 775
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/primitives/Longs$LongArrayAsList;->size()I

    move-result v1

    mul-int/lit8 v1, v1, 0xa

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 776
    .local v0, "builder":Ljava/lang/StringBuilder;
    const/16 v1, 0x5b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/checkerframework/com/google/common/primitives/Longs$LongArrayAsList;->array:[J

    iget v3, p0, Lorg/checkerframework/com/google/common/primitives/Longs$LongArrayAsList;->start:I

    aget-wide v2, v2, v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 777
    iget v1, p0, Lorg/checkerframework/com/google/common/primitives/Longs$LongArrayAsList;->start:I

    add-int/lit8 v1, v1, 0x1

    .local v1, "i":I
    :goto_0
    iget v2, p0, Lorg/checkerframework/com/google/common/primitives/Longs$LongArrayAsList;->end:I

    if-ge v1, v2, :cond_0

    .line 778
    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/checkerframework/com/google/common/primitives/Longs$LongArrayAsList;->array:[J

    aget-wide v3, v3, v1

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 777
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 780
    .end local v1    # "i":I
    :cond_0
    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method