.class final Lorg/checkerframework/org/plumelib/util/MathPlume$MissingNumbersIteratorLong;
.super Ljava/lang/Object;
.source "MathPlume.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/org/plumelib/util/MathPlume;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "MissingNumbersIteratorLong"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# instance fields
.field addEnds:Z

.field currentIndex:I

.field currentMissing:J

.field currentNonmissing:J

.field nums:[J

.field numsItor:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/Iterator;Z)V
    .locals 4
    .param p2, "addEnds"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator<",
            "Ljava/lang/Long;",
            ">;Z)V"
        }
    .end annotation

    .line 1687
    .local p1, "numsItor":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Long;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1688
    iput-boolean p2, p0, Lorg/checkerframework/org/plumelib/util/MathPlume$MissingNumbersIteratorLong;->addEnds:Z

    .line 1689
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1692
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/checkerframework/org/plumelib/util/MathPlume$MissingNumbersIteratorLong;->currentNonmissing:J

    .line 1693
    if-eqz p2, :cond_0

    .line 1694
    const-wide/16 v2, 0x1

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lorg/checkerframework/org/plumelib/util/MathPlume$MissingNumbersIteratorLong;->currentMissing:J

    goto :goto_0

    .line 1696
    :cond_0
    iput-wide v0, p0, Lorg/checkerframework/org/plumelib/util/MathPlume$MissingNumbersIteratorLong;->currentMissing:J

    .line 1698
    :goto_0
    iput-object p1, p0, Lorg/checkerframework/org/plumelib/util/MathPlume$MissingNumbersIteratorLong;->numsItor:Ljava/util/Iterator;

    .line 1701
    const/high16 v0, -0x80000000

    .line 1702
    .local v0, "unused":I
    iput v0, p0, Lorg/checkerframework/org/plumelib/util/MathPlume$MissingNumbersIteratorLong;->currentIndex:I

    .line 1703
    return-void

    .line 1690
    .end local v0    # "unused":I
    :cond_1
    new-instance v0, Ljava/lang/Error;

    const-string v1, "No elements in numsItor"

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method constructor <init>([JZ)V
    .locals 4
    .param p1, "nums"    # [J
    .param p2, "addEnds"    # Z

    .line 1663
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1664
    iput-boolean p2, p0, Lorg/checkerframework/org/plumelib/util/MathPlume$MissingNumbersIteratorLong;->addEnds:Z

    .line 1666
    array-length v0, p1

    new-array v0, v0, [J

    .line 1667
    .local v0, "numsCopy":[J
    array-length v1, p1

    const/4 v2, 0x0

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1668
    move-object p1, v0

    .line 1670
    .end local v0    # "numsCopy":[J
    invoke-static {p1}, Ljava/util/Arrays;->sort([J)V

    .line 1671
    iput-object p1, p0, Lorg/checkerframework/org/plumelib/util/MathPlume$MissingNumbersIteratorLong;->nums:[J

    .line 1672
    iput v2, p0, Lorg/checkerframework/org/plumelib/util/MathPlume$MissingNumbersIteratorLong;->currentIndex:I

    .line 1673
    aget-wide v0, p1, v2

    iput-wide v0, p0, Lorg/checkerframework/org/plumelib/util/MathPlume$MissingNumbersIteratorLong;->currentNonmissing:J

    .line 1674
    if-eqz p2, :cond_0

    .line 1675
    const-wide/16 v2, 0x1

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lorg/checkerframework/org/plumelib/util/MathPlume$MissingNumbersIteratorLong;->currentMissing:J

    goto :goto_0

    .line 1677
    :cond_0
    iput-wide v0, p0, Lorg/checkerframework/org/plumelib/util/MathPlume$MissingNumbersIteratorLong;->currentMissing:J

    .line 1679
    :goto_0
    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 9

    .line 1707
    iget-wide v0, p0, Lorg/checkerframework/org/plumelib/util/MathPlume$MissingNumbersIteratorLong;->currentMissing:J

    iget-wide v2, p0, Lorg/checkerframework/org/plumelib/util/MathPlume$MissingNumbersIteratorLong;->currentNonmissing:J

    cmp-long v4, v0, v2

    const/4 v5, 0x1

    if-gez v4, :cond_0

    .line 1708
    return v5

    .line 1711
    :cond_0
    cmp-long v4, v0, v2

    const/4 v6, 0x0

    const-wide/16 v7, 0x1

    if-nez v4, :cond_8

    .line 1712
    iget-object v2, p0, Lorg/checkerframework/org/plumelib/util/MathPlume$MissingNumbersIteratorLong;->nums:[J

    if-eqz v2, :cond_3

    .line 1716
    iget v3, p0, Lorg/checkerframework/org/plumelib/util/MathPlume$MissingNumbersIteratorLong;->currentIndex:I

    add-int/2addr v3, v5

    .line 1717
    .local v3, "currentIndex_temp":I
    iput v3, p0, Lorg/checkerframework/org/plumelib/util/MathPlume$MissingNumbersIteratorLong;->currentIndex:I

    .line 1718
    array-length v4, v2

    if-lt v3, v4, :cond_2

    .line 1719
    iget-boolean v2, p0, Lorg/checkerframework/org/plumelib/util/MathPlume$MissingNumbersIteratorLong;->addEnds:Z

    if-eqz v2, :cond_1

    .line 1720
    add-long/2addr v0, v7

    iput-wide v0, p0, Lorg/checkerframework/org/plumelib/util/MathPlume$MissingNumbersIteratorLong;->currentMissing:J

    .line 1721
    return v5

    .line 1723
    :cond_1
    return v6

    .line 1726
    :cond_2
    aget-wide v0, v2, v3

    iput-wide v0, p0, Lorg/checkerframework/org/plumelib/util/MathPlume$MissingNumbersIteratorLong;->currentNonmissing:J

    .line 1727
    .end local v3    # "currentIndex_temp":I
    goto :goto_0

    :cond_3
    iget-object v0, p0, Lorg/checkerframework/org/plumelib/util/MathPlume$MissingNumbersIteratorLong;->numsItor:Ljava/util/Iterator;

    if-eqz v0, :cond_7

    .line 1728
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_5

    .line 1729
    iget-boolean v0, p0, Lorg/checkerframework/org/plumelib/util/MathPlume$MissingNumbersIteratorLong;->addEnds:Z

    if-eqz v0, :cond_4

    .line 1730
    iget-wide v0, p0, Lorg/checkerframework/org/plumelib/util/MathPlume$MissingNumbersIteratorLong;->currentMissing:J

    add-long/2addr v0, v7

    iput-wide v0, p0, Lorg/checkerframework/org/plumelib/util/MathPlume$MissingNumbersIteratorLong;->currentMissing:J

    .line 1731
    return v5

    .line 1733
    :cond_4
    return v6

    .line 1737
    :cond_5
    iget-wide v0, p0, Lorg/checkerframework/org/plumelib/util/MathPlume$MissingNumbersIteratorLong;->currentNonmissing:J

    .line 1738
    .local v0, "prevNonmissing":J
    iget-object v2, p0, Lorg/checkerframework/org/plumelib/util/MathPlume$MissingNumbersIteratorLong;->numsItor:Ljava/util/Iterator;

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iput-wide v2, p0, Lorg/checkerframework/org/plumelib/util/MathPlume$MissingNumbersIteratorLong;->currentNonmissing:J

    .line 1739
    cmp-long v2, v0, v2

    if-gez v2, :cond_6

    .line 1746
    .end local v0    # "prevNonmissing":J
    nop

    .line 1749
    :goto_0
    iget-wide v0, p0, Lorg/checkerframework/org/plumelib/util/MathPlume$MissingNumbersIteratorLong;->currentMissing:J

    add-long/2addr v0, v7

    iput-wide v0, p0, Lorg/checkerframework/org/plumelib/util/MathPlume$MissingNumbersIteratorLong;->currentMissing:J

    .line 1750
    invoke-virtual {p0}, Lorg/checkerframework/org/plumelib/util/MathPlume$MissingNumbersIteratorLong;->hasNext()Z

    move-result v0

    return v0

    .line 1740
    .restart local v0    # "prevNonmissing":J
    :cond_6
    new-instance v2, Ljava/lang/Error;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Non-sorted Iterator supplied to MissingNumbersIteratorLong: prevNonmissing = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", currentNonmissing = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lorg/checkerframework/org/plumelib/util/MathPlume$MissingNumbersIteratorLong;->currentNonmissing:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1747
    .end local v0    # "prevNonmissing":J
    :cond_7
    new-instance v0, Ljava/lang/Error;

    const-string v1, "Can\'t happen"

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1752
    :cond_8
    iget-boolean v4, p0, Lorg/checkerframework/org/plumelib/util/MathPlume$MissingNumbersIteratorLong;->addEnds:Z

    if-eqz v4, :cond_a

    .line 1753
    add-long/2addr v2, v7

    cmp-long v0, v0, v2

    if-nez v0, :cond_9

    goto :goto_1

    :cond_9
    move v5, v6

    :goto_1
    return v5

    .line 1755
    :cond_a
    new-instance v0, Ljava/lang/Error;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t happen: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lorg/checkerframework/org/plumelib/util/MathPlume$MissingNumbersIteratorLong;->currentMissing:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lorg/checkerframework/org/plumelib/util/MathPlume$MissingNumbersIteratorLong;->currentNonmissing:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public next()Ljava/lang/Long;
    .locals 5

    .line 1761
    invoke-virtual {p0}, Lorg/checkerframework/org/plumelib/util/MathPlume$MissingNumbersIteratorLong;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1764
    iget-wide v0, p0, Lorg/checkerframework/org/plumelib/util/MathPlume$MissingNumbersIteratorLong;->currentMissing:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 1765
    .local v0, "result":Ljava/lang/Long;
    iget-wide v1, p0, Lorg/checkerframework/org/plumelib/util/MathPlume$MissingNumbersIteratorLong;->currentMissing:J

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    iput-wide v1, p0, Lorg/checkerframework/org/plumelib/util/MathPlume$MissingNumbersIteratorLong;->currentMissing:J

    .line 1766
    return-object v0

    .line 1762
    .end local v0    # "result":Ljava/lang/Long;
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .line 1638
    invoke-virtual {p0}, Lorg/checkerframework/org/plumelib/util/MathPlume$MissingNumbersIteratorLong;->next()Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 1

    .line 1771
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
