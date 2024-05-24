.class public final Lorg/checkerframework/org/plumelib/util/MathPlume;
.super Ljava/lang/Object;
.source "MathPlume.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/checkerframework/org/plumelib/util/MathPlume$MissingNumbersIteratorLong;,
        Lorg/checkerframework/org/plumelib/util/MathPlume$MissingNumbersIteratorInt;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Ljava/lang/Error;

    const-string v1, "do not instantiate"

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static bitwiseAnd(II)I
    .locals 1
    .param p0, "x"    # I
    .param p1, "y"    # I
    .annotation runtime Lorg/checkerframework/common/value/qual/StaticallyExecutable;
    .end annotation

    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    .line 284
    and-int v0, p0, p1

    return v0
.end method

.method public static bitwiseAnd(JJ)J
    .locals 2
    .param p0, "x"    # J
    .param p2, "y"    # J
    .annotation runtime Lorg/checkerframework/common/value/qual/StaticallyExecutable;
    .end annotation

    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    .line 297
    and-long v0, p0, p2

    return-wide v0
.end method

.method public static bitwiseComplement(I)I
    .locals 1
    .param p0, "a"    # I
    .annotation runtime Lorg/checkerframework/common/value/qual/StaticallyExecutable;
    .end annotation

    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    .line 77
    not-int v0, p0

    return v0
.end method

.method public static bitwiseComplement(J)J
    .locals 2
    .param p0, "a"    # J
    .annotation runtime Lorg/checkerframework/common/value/qual/StaticallyExecutable;
    .end annotation

    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    .line 89
    not-long v0, p0

    return-wide v0
.end method

.method public static bitwiseOr(II)I
    .locals 1
    .param p0, "x"    # I
    .param p1, "y"    # I
    .annotation runtime Lorg/checkerframework/common/value/qual/StaticallyExecutable;
    .end annotation

    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    .line 388
    or-int v0, p0, p1

    return v0
.end method

.method public static bitwiseOr(JJ)J
    .locals 2
    .param p0, "x"    # J
    .param p2, "y"    # J
    .annotation runtime Lorg/checkerframework/common/value/qual/StaticallyExecutable;
    .end annotation

    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    .line 401
    or-long v0, p0, p2

    return-wide v0
.end method

.method public static bitwiseXor(II)I
    .locals 1
    .param p0, "x"    # I
    .param p1, "y"    # I
    .annotation runtime Lorg/checkerframework/common/value/qual/StaticallyExecutable;
    .end annotation

    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    .line 336
    xor-int v0, p0, p1

    return v0
.end method

.method public static bitwiseXor(JJ)J
    .locals 2
    .param p0, "x"    # J
    .param p2, "y"    # J
    .annotation runtime Lorg/checkerframework/common/value/qual/StaticallyExecutable;
    .end annotation

    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    .line 349
    xor-long v0, p0, p2

    return-wide v0
.end method

.method private static checkFirstAndLastNonmodulus([ILorg/checkerframework/org/plumelib/util/CollectionsPlume$RemoveFirstAndLastIterator;)Z
    .locals 7
    .param p0, "rm"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I",
            "Lorg/checkerframework/org/plumelib/util/CollectionsPlume$RemoveFirstAndLastIterator<",
            "Ljava/lang/Integer;",
            ">;)Z"
        }
    .end annotation

    .line 1505
    .local p1, "rfali":Lorg/checkerframework/org/plumelib/util/CollectionsPlume$RemoveFirstAndLastIterator;, "Lorg/checkerframework/org/plumelib/util/CollectionsPlume$RemoveFirstAndLastIterator<Ljava/lang/Integer;>;"
    const/4 v0, 0x0

    aget v1, p0, v0

    .line 1506
    .local v1, "r":I
    const/4 v2, 0x1

    aget v3, p0, v2

    .line 1507
    .local v3, "m":I
    invoke-virtual {p1}, Lorg/checkerframework/org/plumelib/util/CollectionsPlume$RemoveFirstAndLastIterator;->getFirst()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 1508
    .local v4, "first":I
    invoke-virtual {p1}, Lorg/checkerframework/org/plumelib/util/CollectionsPlume$RemoveFirstAndLastIterator;->getLast()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 1509
    .local v5, "last":I
    invoke-static {v4, v3}, Lorg/checkerframework/org/plumelib/util/MathPlume;->modPositive(II)I

    move-result v6

    if-eq v1, v6, :cond_0

    invoke-static {v5, v3}, Lorg/checkerframework/org/plumelib/util/MathPlume;->modPositive(II)I

    move-result v6

    if-eq v1, v6, :cond_0

    move v0, v2

    :cond_0
    return v0
.end method

.method private static checkFirstAndLastNonmodulus([JLorg/checkerframework/org/plumelib/util/CollectionsPlume$RemoveFirstAndLastIterator;)Z
    .locals 12
    .param p0, "rm"    # [J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([J",
            "Lorg/checkerframework/org/plumelib/util/CollectionsPlume$RemoveFirstAndLastIterator<",
            "Ljava/lang/Long;",
            ">;)Z"
        }
    .end annotation

    .line 1826
    .local p1, "rfali":Lorg/checkerframework/org/plumelib/util/CollectionsPlume$RemoveFirstAndLastIterator;, "Lorg/checkerframework/org/plumelib/util/CollectionsPlume$RemoveFirstAndLastIterator<Ljava/lang/Long;>;"
    const/4 v0, 0x0

    aget-wide v1, p0, v0

    .line 1827
    .local v1, "r":J
    const/4 v3, 0x1

    aget-wide v4, p0, v3

    .line 1828
    .local v4, "m":J
    invoke-virtual {p1}, Lorg/checkerframework/org/plumelib/util/CollectionsPlume$RemoveFirstAndLastIterator;->getFirst()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    .line 1829
    .local v6, "first":J
    invoke-virtual {p1}, Lorg/checkerframework/org/plumelib/util/CollectionsPlume$RemoveFirstAndLastIterator;->getLast()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Long;

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    .line 1830
    .local v8, "last":J
    invoke-static {v6, v7, v4, v5}, Lorg/checkerframework/org/plumelib/util/MathPlume;->modPositive(JJ)J

    move-result-wide v10

    cmp-long v10, v1, v10

    if-eqz v10, :cond_0

    invoke-static {v8, v9, v4, v5}, Lorg/checkerframework/org/plumelib/util/MathPlume;->modPositive(JJ)J

    move-result-wide v10

    cmp-long v10, v1, v10

    if-eqz v10, :cond_0

    move v0, v3

    :cond_0
    return v0
.end method

.method public static div(DD)D
    .locals 2
    .param p0, "x"    # D
    .param p2, "y"    # D
    .annotation runtime Lorg/checkerframework/common/value/qual/StaticallyExecutable;
    .end annotation

    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    .line 167
    div-double v0, p0, p2

    return-wide v0
.end method

.method public static div(II)I
    .locals 1
    .param p0, "x"    # I
    .param p1, "y"    # I
    .annotation runtime Lorg/checkerframework/common/value/qual/StaticallyExecutable;
    .end annotation

    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    .line 141
    div-int v0, p0, p1

    return v0
.end method

.method public static div(JJ)J
    .locals 2
    .param p0, "x"    # J
    .param p2, "y"    # J
    .annotation runtime Lorg/checkerframework/common/value/qual/StaticallyExecutable;
    .end annotation

    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    .line 154
    div-long v0, p0, p2

    return-wide v0
.end method

.method public static gcd(DD)D
    .locals 5
    .param p0, "a"    # D
    .param p2, "b"    # D
    .annotation runtime Lorg/checkerframework/common/value/qual/StaticallyExecutable;
    .end annotation

    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    .line 725
    const-wide/high16 v0, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    cmpl-double v2, p0, v0

    if-eqz v2, :cond_3

    const-wide/high16 v2, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    cmpl-double v4, p0, v2

    if-eqz v4, :cond_3

    .line 727
    invoke-static {p0, p1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v4

    if-nez v4, :cond_3

    cmpl-double v0, p2, v0

    if-eqz v0, :cond_3

    cmpl-double v0, p2, v2

    if-eqz v0, :cond_3

    .line 730
    invoke-static {p2, p3}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 735
    :cond_0
    const-wide/16 v0, 0x0

    cmpl-double v2, p2, v0

    if-nez v2, :cond_1

    .line 736
    invoke-static {p0, p1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    return-wide v0

    .line 738
    :cond_1
    invoke-static {p0, p1}, Ljava/lang/Math;->abs(D)D

    move-result-wide p0

    .line 739
    invoke-static {p2, p3}, Ljava/lang/Math;->abs(D)D

    move-result-wide p2

    .line 740
    :goto_0
    cmpl-double v2, p2, v0

    if-eqz v2, :cond_2

    .line 741
    move-wide v2, p2

    .line 742
    .local v2, "tmp":D
    rem-double p2, p0, p2

    .line 743
    move-wide p0, v2

    .line 744
    .end local v2    # "tmp":D
    goto :goto_0

    .line 745
    :cond_2
    return-wide p0

    .line 731
    :cond_3
    :goto_1
    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    return-wide v0
.end method

.method public static gcd([D)D
    .locals 7
    .param p0, "a"    # [D
    .annotation runtime Lorg/checkerframework/common/value/qual/StaticallyExecutable;
    .end annotation

    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    .line 758
    array-length v0, p0

    const-wide/16 v1, 0x0

    if-nez v0, :cond_0

    .line 759
    return-wide v1

    .line 761
    :cond_0
    const/4 v0, 0x0

    aget-wide v3, p0, v0

    .line 762
    .local v3, "result":D
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    array-length v5, p0

    if-ge v0, v5, :cond_3

    .line 763
    aget-wide v5, p0, v0

    invoke-static {v5, v6, v3, v4}, Lorg/checkerframework/org/plumelib/util/MathPlume;->gcd(DD)D

    move-result-wide v3

    .line 764
    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    cmpl-double v5, v3, v5

    if-eqz v5, :cond_2

    cmpl-double v5, v3, v1

    if-nez v5, :cond_1

    goto :goto_1

    .line 762
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 765
    :cond_2
    :goto_1
    return-wide v3

    .line 768
    .end local v0    # "i":I
    :cond_3
    return-wide v3
.end method

.method public static gcd(II)I
    .locals 1
    .param p0, "a"    # I
    .param p1, "b"    # I
    .annotation runtime Lorg/checkerframework/common/value/qual/StaticallyExecutable;
    .end annotation

    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    .line 580
    if-nez p1, :cond_0

    .line 581
    invoke-static {p0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    return v0

    .line 583
    :cond_0
    invoke-static {p0}, Ljava/lang/Math;->abs(I)I

    move-result p0

    .line 584
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    .line 585
    :goto_0
    if-eqz p1, :cond_1

    .line 586
    move v0, p1

    .line 587
    .local v0, "tmp":I
    rem-int p1, p0, p1

    .line 588
    move p0, v0

    .line 589
    .end local v0    # "tmp":I
    goto :goto_0

    .line 590
    :cond_1
    return p0
.end method

.method public static gcd([I)I
    .locals 3
    .param p0, "a"    # [I
    .annotation runtime Lorg/checkerframework/common/value/qual/StaticallyExecutable;
    .end annotation

    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    .line 603
    array-length v0, p0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 604
    return v1

    .line 606
    :cond_0
    aget v0, p0, v1

    .line 607
    .local v0, "result":I
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_3

    .line 608
    aget v2, p0, v1

    invoke-static {v2, v0}, Lorg/checkerframework/org/plumelib/util/MathPlume;->gcd(II)I

    move-result v0

    .line 609
    const/4 v2, 0x1

    if-eq v0, v2, :cond_2

    if-nez v0, :cond_1

    goto :goto_1

    .line 607
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 610
    :cond_2
    :goto_1
    return v0

    .line 613
    .end local v1    # "i":I
    :cond_3
    return v0
.end method

.method public static gcd(JJ)J
    .locals 4
    .param p0, "a"    # J
    .param p2, "b"    # J
    .annotation runtime Lorg/checkerframework/common/value/qual/StaticallyExecutable;
    .end annotation

    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    .line 654
    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-nez v2, :cond_0

    .line 655
    invoke-static {p0, p1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    return-wide v0

    .line 657
    :cond_0
    invoke-static {p0, p1}, Ljava/lang/Math;->abs(J)J

    move-result-wide p0

    .line 658
    invoke-static {p2, p3}, Ljava/lang/Math;->abs(J)J

    move-result-wide p2

    .line 659
    :goto_0
    cmp-long v2, p2, v0

    if-eqz v2, :cond_1

    .line 660
    move-wide v2, p2

    .line 661
    .local v2, "tmp":J
    rem-long p2, p0, p2

    .line 662
    move-wide p0, v2

    .line 663
    .end local v2    # "tmp":J
    goto :goto_0

    .line 664
    :cond_1
    return-wide p0
.end method

.method public static gcd([J)J
    .locals 7
    .param p0, "a"    # [J
    .annotation runtime Lorg/checkerframework/common/value/qual/StaticallyExecutable;
    .end annotation

    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    .line 677
    array-length v0, p0

    const-wide/16 v1, 0x0

    if-nez v0, :cond_0

    .line 678
    return-wide v1

    .line 680
    :cond_0
    const/4 v0, 0x0

    aget-wide v3, p0, v0

    .line 681
    .local v3, "result":J
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    array-length v5, p0

    if-ge v0, v5, :cond_3

    .line 682
    aget-wide v5, p0, v0

    invoke-static {v5, v6, v3, v4}, Lorg/checkerframework/org/plumelib/util/MathPlume;->gcd(JJ)J

    move-result-wide v3

    .line 683
    const-wide/16 v5, 0x1

    cmp-long v5, v3, v5

    if-eqz v5, :cond_2

    cmp-long v5, v3, v1

    if-nez v5, :cond_1

    goto :goto_1

    .line 681
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 684
    :cond_2
    :goto_1
    return-wide v3

    .line 687
    .end local v0    # "i":I
    :cond_3
    return-wide v3
.end method

.method public static gcdDifferences([D)D
    .locals 9
    .param p0, "a"    # [D
    .annotation runtime Lorg/checkerframework/common/value/qual/StaticallyExecutable;
    .end annotation

    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    .line 782
    array-length v0, p0

    const/4 v1, 0x2

    const-wide/16 v2, 0x0

    if-ge v0, v1, :cond_0

    .line 783
    return-wide v2

    .line 785
    :cond_0
    const/4 v0, 0x1

    aget-wide v0, p0, v0

    const/4 v4, 0x0

    aget-wide v4, p0, v4

    sub-double/2addr v0, v4

    .line 786
    .local v0, "result":D
    const/4 v4, 0x2

    .local v4, "i":I
    :goto_0
    array-length v5, p0

    if-ge v4, v5, :cond_3

    .line 787
    aget-wide v5, p0, v4

    add-int/lit8 v7, v4, -0x1

    aget-wide v7, p0, v7

    sub-double/2addr v5, v7

    invoke-static {v5, v6, v0, v1}, Lorg/checkerframework/org/plumelib/util/MathPlume;->gcd(DD)D

    move-result-wide v0

    .line 788
    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    cmpl-double v5, v0, v5

    if-eqz v5, :cond_2

    cmpl-double v5, v0, v2

    if-nez v5, :cond_1

    goto :goto_1

    .line 786
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 789
    :cond_2
    :goto_1
    return-wide v0

    .line 792
    .end local v4    # "i":I
    :cond_3
    return-wide v0
.end method

.method public static gcdDifferences([I)I
    .locals 5
    .param p0, "a"    # [I
    .annotation runtime Lorg/checkerframework/common/value/qual/StaticallyExecutable;
    .end annotation

    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    .line 627
    array-length v0, p0

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-ge v0, v1, :cond_0

    .line 628
    return v2

    .line 630
    :cond_0
    const/4 v0, 0x1

    aget v1, p0, v0

    aget v2, p0, v2

    sub-int/2addr v1, v2

    .line 631
    .local v1, "result":I
    const/4 v2, 0x2

    .local v2, "i":I
    :goto_0
    array-length v3, p0

    if-ge v2, v3, :cond_3

    .line 632
    aget v3, p0, v2

    add-int/lit8 v4, v2, -0x1

    aget v4, p0, v4

    sub-int/2addr v3, v4

    invoke-static {v3, v1}, Lorg/checkerframework/org/plumelib/util/MathPlume;->gcd(II)I

    move-result v1

    .line 633
    if-eq v1, v0, :cond_2

    if-nez v1, :cond_1

    goto :goto_1

    .line 631
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 634
    :cond_2
    :goto_1
    return v1

    .line 637
    .end local v2    # "i":I
    :cond_3
    return v1
.end method

.method public static gcdDifferences([J)J
    .locals 9
    .param p0, "a"    # [J
    .annotation runtime Lorg/checkerframework/common/value/qual/StaticallyExecutable;
    .end annotation

    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    .line 701
    array-length v0, p0

    const/4 v1, 0x2

    const-wide/16 v2, 0x0

    if-ge v0, v1, :cond_0

    .line 702
    return-wide v2

    .line 704
    :cond_0
    const/4 v0, 0x1

    aget-wide v0, p0, v0

    const/4 v4, 0x0

    aget-wide v4, p0, v4

    sub-long/2addr v0, v4

    .line 705
    .local v0, "result":J
    const/4 v4, 0x2

    .local v4, "i":I
    :goto_0
    array-length v5, p0

    if-ge v4, v5, :cond_3

    .line 706
    aget-wide v5, p0, v4

    add-int/lit8 v7, v4, -0x1

    aget-wide v7, p0, v7

    sub-long/2addr v5, v7

    invoke-static {v5, v6, v0, v1}, Lorg/checkerframework/org/plumelib/util/MathPlume;->gcd(JJ)J

    move-result-wide v0

    .line 707
    const-wide/16 v5, 0x1

    cmp-long v5, v0, v5

    if-eqz v5, :cond_2

    cmp-long v5, v0, v2

    if-nez v5, :cond_1

    goto :goto_1

    .line 705
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 708
    :cond_2
    :goto_1
    return-wide v0

    .line 711
    .end local v4    # "i":I
    :cond_3
    return-wide v0
.end method

.method public static logicalAnd(II)I
    .locals 1
    .param p0, "x"    # I
    .param p1, "y"    # I
    .annotation runtime Lorg/checkerframework/common/value/qual/StaticallyExecutable;
    .end annotation

    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    .line 310
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static logicalAnd(JJ)J
    .locals 3
    .param p0, "x"    # J
    .param p2, "y"    # J
    .annotation runtime Lorg/checkerframework/common/value/qual/StaticallyExecutable;
    .end annotation

    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    .line 323
    const-wide/16 v0, 0x0

    cmp-long v2, p0, v0

    if-eqz v2, :cond_0

    cmp-long v2, p2, v0

    if-eqz v2, :cond_0

    const-wide/16 v0, 0x1

    :cond_0
    return-wide v0
.end method

.method public static logicalOr(II)I
    .locals 1
    .param p0, "x"    # I
    .param p1, "y"    # I
    .annotation runtime Lorg/checkerframework/common/value/qual/StaticallyExecutable;
    .end annotation

    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    .line 414
    if-nez p0, :cond_1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public static logicalOr(JJ)J
    .locals 3
    .param p0, "x"    # J
    .param p2, "y"    # J
    .annotation runtime Lorg/checkerframework/common/value/qual/StaticallyExecutable;
    .end annotation

    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    .line 427
    const-wide/16 v0, 0x0

    cmp-long v2, p0, v0

    if-nez v2, :cond_0

    cmp-long v2, p2, v0

    if-eqz v2, :cond_1

    :cond_0
    const-wide/16 v0, 0x1

    :cond_1
    return-wide v0
.end method

.method public static logicalXor(II)I
    .locals 3
    .param p0, "x"    # I
    .param p1, "y"    # I
    .annotation runtime Lorg/checkerframework/common/value/qual/StaticallyExecutable;
    .end annotation

    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    .line 362
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p0, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_1
    xor-int/2addr v0, v2

    return v0
.end method

.method public static logicalXor(JJ)J
    .locals 6
    .param p0, "x"    # J
    .param p2, "y"    # J
    .annotation runtime Lorg/checkerframework/common/value/qual/StaticallyExecutable;
    .end annotation

    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    .line 375
    const-wide/16 v0, 0x0

    cmp-long v2, p0, v0

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    move v2, v4

    :goto_0
    cmp-long v5, p2, v0

    if-eqz v5, :cond_1

    goto :goto_1

    :cond_1
    move v3, v4

    :goto_1
    xor-int/2addr v2, v3

    if-eqz v2, :cond_2

    const-wide/16 v0, 0x1

    :cond_2
    return-wide v0
.end method

.method public static lshift(II)I
    .locals 1
    .param p0, "x"    # I
    .param p1, "y"    # I
    .annotation runtime Lorg/checkerframework/common/value/qual/StaticallyExecutable;
    .end annotation

    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    .line 206
    shl-int v0, p0, p1

    return v0
.end method

.method public static lshift(JJ)J
    .locals 2
    .param p0, "x"    # J
    .param p2, "y"    # J
    .annotation runtime Lorg/checkerframework/common/value/qual/StaticallyExecutable;
    .end annotation

    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    .line 219
    long-to-int v0, p2

    shl-long v0, p0, v0

    return-wide v0
.end method

.method public static missingNumbers([I)[I
    .locals 8
    .param p0, "nums"    # [I
    .annotation runtime Lorg/checkerframework/common/value/qual/StaticallyExecutable;
    .end annotation

    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    .line 1288
    invoke-virtual {p0}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    move-object p0, v0

    check-cast p0, [I

    .line 1289
    invoke-static {p0}, Ljava/util/Arrays;->sort([I)V

    .line 1290
    const/4 v0, 0x0

    aget v0, p0, v0

    .line 1291
    .local v0, "min":I
    array-length v1, p0

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    aget v1, p0, v1

    .line 1292
    .local v1, "max":I
    sub-int v3, v1, v0

    add-int/2addr v3, v2

    array-length v4, p0

    sub-int/2addr v3, v4

    .line 1293
    .local v3, "sizeEstimate":I
    new-instance v4, Ljava/util/ArrayList;

    if-ge v3, v2, :cond_0

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    invoke-direct {v4, v2}, Ljava/util/ArrayList;-><init>(I)V

    move-object v2, v4

    .line 1294
    .local v2, "resultList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    move v4, v0

    .line 1295
    .local v4, "val":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    array-length v6, p0

    if-ge v5, v6, :cond_3

    .line 1296
    :goto_2
    aget v6, p0, v5

    if-ge v4, v6, :cond_1

    .line 1297
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1298
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 1300
    :cond_1
    aget v6, p0, v5

    if-ne v4, v6, :cond_2

    .line 1301
    add-int/lit8 v4, v4, 0x1

    .line 1295
    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 1304
    .end local v5    # "i":I
    :cond_3
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    new-array v5, v5, [I

    .line 1305
    .local v5, "resultArray":[I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_3
    array-length v7, v5

    if-ge v6, v7, :cond_4

    .line 1306
    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    aput v7, v5, v6

    .line 1305
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 1308
    .end local v6    # "i":I
    :cond_4
    return-object v5
.end method

.method public static missingNumbers([J)[J
    .locals 13
    .param p0, "nums"    # [J
    .annotation runtime Lorg/checkerframework/common/value/qual/StaticallyExecutable;
    .end annotation

    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    .line 1608
    invoke-virtual {p0}, [J->clone()Ljava/lang/Object;

    move-result-object v0

    move-object p0, v0

    check-cast p0, [J

    .line 1609
    invoke-static {p0}, Ljava/util/Arrays;->sort([J)V

    .line 1610
    const/4 v0, 0x0

    aget-wide v0, p0, v0

    .line 1611
    .local v0, "min":J
    array-length v2, p0

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    aget-wide v4, p0, v2

    .line 1612
    .local v4, "max":J
    sub-long v6, v4, v0

    const-wide/16 v8, 0x1

    add-long/2addr v6, v8

    array-length v2, p0

    int-to-long v10, v2

    sub-long/2addr v6, v10

    long-to-int v2, v6

    .line 1613
    .local v2, "sizeEstimate":I
    new-instance v6, Ljava/util/ArrayList;

    if-ge v2, v3, :cond_0

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    invoke-direct {v6, v3}, Ljava/util/ArrayList;-><init>(I)V

    move-object v3, v6

    .line 1614
    .local v3, "resultList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    move-wide v6, v0

    .line 1615
    .local v6, "val":J
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_1
    array-length v11, p0

    if-ge v10, v11, :cond_3

    .line 1616
    :goto_2
    aget-wide v11, p0, v10

    cmp-long v11, v6, v11

    if-gez v11, :cond_1

    .line 1617
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-interface {v3, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1618
    add-long/2addr v6, v8

    goto :goto_2

    .line 1620
    :cond_1
    aget-wide v11, p0, v10

    cmp-long v11, v6, v11

    if-nez v11, :cond_2

    .line 1621
    add-long/2addr v6, v8

    .line 1615
    :cond_2
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 1624
    .end local v10    # "i":I
    :cond_3
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v8

    new-array v8, v8, [J

    .line 1625
    .local v8, "resultArray":[J
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_3
    array-length v10, v8

    if-ge v9, v10, :cond_4

    .line 1626
    invoke-interface {v3, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Long;

    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    aput-wide v10, v8, v9

    .line 1625
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    .line 1628
    .end local v9    # "i":I
    :cond_4
    return-object v8
.end method

.method public static mod(II)I
    .locals 1
    .param p0, "x"    # I
    .param p1, "y"    # I
    .annotation runtime Lorg/checkerframework/common/value/qual/StaticallyExecutable;
    .end annotation

    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    .line 180
    rem-int v0, p0, p1

    return v0
.end method

.method public static mod(JJ)J
    .locals 2
    .param p0, "x"    # J
    .param p2, "y"    # J
    .annotation runtime Lorg/checkerframework/common/value/qual/StaticallyExecutable;
    .end annotation

    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    .line 193
    rem-long v0, p0, p2

    return-wide v0
.end method

.method public static modNonnegative(II)I
    .locals 2
    .param p0, "x"    # I
    .param p1, "y"    # I
    .annotation runtime Lorg/checkerframework/common/value/qual/StaticallyExecutable;
    .end annotation

    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    .line 833
    rem-int v0, p0, p1

    .line 834
    .local v0, "result":I
    if-gez v0, :cond_0

    .line 835
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    add-int/2addr v0, v1

    .line 837
    :cond_0
    return v0
.end method

.method public static modNonnegative(JJ)J
    .locals 4
    .param p0, "x"    # J
    .param p2, "y"    # J
    .annotation runtime Lorg/checkerframework/common/value/qual/StaticallyExecutable;
    .end annotation

    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    .line 1070
    rem-long v0, p0, p2

    .line 1071
    .local v0, "result":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gez v2, :cond_0

    .line 1072
    invoke-static {p2, p3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    add-long/2addr v0, v2

    .line 1074
    :cond_0
    return-wide v0
.end method

.method public static modPositive(II)I
    .locals 1
    .param p0, "x"    # I
    .param p1, "y"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .annotation runtime Lorg/checkerframework/common/value/qual/StaticallyExecutable;
    .end annotation

    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    .line 813
    invoke-static {p0, p1}, Lorg/checkerframework/org/plumelib/util/MathPlume;->modNonnegative(II)I

    move-result v0

    return v0
.end method

.method public static modPositive(JJ)J
    .locals 2
    .param p0, "x"    # J
    .param p2, "y"    # J
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .annotation runtime Lorg/checkerframework/common/value/qual/StaticallyExecutable;
    .end annotation

    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    .line 1050
    invoke-static {p0, p1, p2, p3}, Lorg/checkerframework/org/plumelib/util/MathPlume;->modNonnegative(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public static modulus([I)[I
    .locals 3
    .param p0, "nums"    # [I
    .annotation runtime Lorg/checkerframework/common/value/qual/StaticallyExecutable;
    .end annotation

    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    .line 853
    array-length v0, p0

    const/4 v1, 0x3

    const/4 v2, 0x0

    if-ge v0, v1, :cond_0

    .line 854
    return-object v2

    .line 857
    :cond_0
    invoke-static {p0}, Lorg/checkerframework/org/plumelib/util/MathPlume;->gcdDifferences([I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 858
    .local v0, "modulus":I
    if-eqz v0, :cond_3

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    goto :goto_0

    .line 862
    :cond_1
    const/4 v1, 0x0

    aget v1, p0, v1

    rem-int/2addr v1, v0

    .line 863
    .local v1, "remainder":I
    if-gez v1, :cond_2

    .line 864
    add-int/2addr v1, v0

    .line 867
    :cond_2
    filled-new-array {v1, v0}, [I

    move-result-object v2

    return-object v2

    .line 859
    .end local v1    # "remainder":I
    :cond_3
    :goto_0
    return-object v2
.end method

.method public static modulus([J)[J
    .locals 7
    .param p0, "nums"    # [J
    .annotation runtime Lorg/checkerframework/common/value/qual/StaticallyExecutable;
    .end annotation

    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    .line 1090
    array-length v0, p0

    const/4 v1, 0x3

    const/4 v2, 0x0

    if-ge v0, v1, :cond_0

    .line 1091
    return-object v2

    .line 1094
    :cond_0
    invoke-static {p0}, Lorg/checkerframework/org/plumelib/util/MathPlume;->gcdDifferences([J)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    .line 1095
    .local v0, "modulus":J
    const-wide/16 v3, 0x0

    cmp-long v5, v0, v3

    if-eqz v5, :cond_3

    const-wide/16 v5, 0x1

    cmp-long v5, v0, v5

    if-nez v5, :cond_1

    goto :goto_0

    .line 1099
    :cond_1
    const/4 v2, 0x0

    aget-wide v5, p0, v2

    rem-long/2addr v5, v0

    .line 1100
    .local v5, "remainder":J
    cmp-long v3, v5, v3

    if-gez v3, :cond_2

    .line 1101
    add-long/2addr v5, v0

    .line 1104
    :cond_2
    const/4 v3, 0x2

    new-array v3, v3, [J

    aput-wide v5, v3, v2

    const/4 v2, 0x1

    aput-wide v0, v3, v2

    return-object v3

    .line 1096
    .end local v5    # "remainder":J
    :cond_3
    :goto_0
    return-object v2
.end method

.method public static modulusInt(Ljava/util/Iterator;)[I
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator<",
            "Ljava/lang/Integer;",
            ">;)[I"
        }
    .end annotation

    .line 881
    .local p0, "itor":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 882
    return-object v1

    .line 884
    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 885
    .local v0, "avalue":I
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    .line 886
    return-object v1

    .line 888
    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    sub-int v2, v0, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    .line 889
    .local v2, "modulus":I
    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    .line 890
    return-object v1

    .line 892
    :cond_2
    const/4 v4, 0x2

    .line 893
    .local v4, "count":I
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 894
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 895
    .local v5, "i":I
    if-ne v5, v0, :cond_3

    .line 896
    goto :goto_0

    .line 898
    :cond_3
    sub-int v6, v0, v5

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v6

    invoke-static {v2, v6}, Lorg/checkerframework/org/plumelib/util/MathPlume;->gcd(II)I

    move-result v2

    .line 899
    add-int/lit8 v4, v4, 0x1

    .line 900
    if-ne v2, v3, :cond_4

    .line 901
    return-object v1

    .line 903
    .end local v5    # "i":I
    :cond_4
    goto :goto_0

    .line 904
    :cond_5
    const/4 v3, 0x3

    if-ge v4, v3, :cond_6

    .line 905
    return-object v1

    .line 907
    :cond_6
    invoke-static {v0, v2}, Lorg/checkerframework/org/plumelib/util/MathPlume;->modPositive(II)I

    move-result v1

    filled-new-array {v1, v2}, [I

    move-result-object v1

    return-object v1
.end method

.method public static modulusLong(Ljava/util/Iterator;)[J
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator<",
            "Ljava/lang/Long;",
            ">;)[J"
        }
    .end annotation

    .line 1118
    .local p0, "itor":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Long;>;"
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1119
    return-object v1

    .line 1121
    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 1122
    .local v2, "avalue":J
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1123
    return-object v1

    .line 1125
    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    sub-long v4, v2, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(J)J

    move-result-wide v4

    .line 1126
    .local v4, "modulus":J
    const-wide/16 v6, 0x1

    cmp-long v0, v4, v6

    if-nez v0, :cond_2

    .line 1127
    return-object v1

    .line 1129
    :cond_2
    const/4 v0, 0x2

    .line 1130
    .local v0, "count":I
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_5

    .line 1131
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Long;

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    .line 1132
    .local v8, "i":J
    cmp-long v10, v8, v2

    if-nez v10, :cond_3

    .line 1133
    goto :goto_0

    .line 1135
    :cond_3
    sub-long v10, v2, v8

    invoke-static {v10, v11}, Ljava/lang/Math;->abs(J)J

    move-result-wide v10

    invoke-static {v4, v5, v10, v11}, Lorg/checkerframework/org/plumelib/util/MathPlume;->gcd(JJ)J

    move-result-wide v4

    .line 1136
    add-int/lit8 v0, v0, 0x1

    .line 1137
    cmp-long v10, v4, v6

    if-nez v10, :cond_4

    .line 1138
    return-object v1

    .line 1140
    .end local v8    # "i":J
    :cond_4
    goto :goto_0

    .line 1141
    :cond_5
    const/4 v6, 0x3

    if-ge v0, v6, :cond_6

    .line 1142
    return-object v1

    .line 1144
    :cond_6
    const/4 v1, 0x2

    new-array v1, v1, [J

    const/4 v6, 0x0

    invoke-static {v2, v3, v4, v5}, Lorg/checkerframework/org/plumelib/util/MathPlume;->modPositive(JJ)J

    move-result-wide v7

    aput-wide v7, v1, v6

    const/4 v6, 0x1

    aput-wide v4, v1, v6

    return-object v1
.end method

.method public static modulusStrict([IZ)[I
    .locals 9
    .param p0, "nums"    # [I
    .param p1, "nonstrictEnds"    # Z
    .annotation runtime Lorg/checkerframework/common/value/qual/StaticallyExecutable;
    .end annotation

    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    .line 932
    array-length v0, p0

    const/4 v1, 0x3

    const/4 v2, 0x0

    if-ge v0, v1, :cond_0

    .line 933
    return-object v2

    .line 936
    :cond_0
    const/4 v0, 0x0

    .line 937
    .local v0, "firstIndex":I
    array-length v1, p0

    const/4 v3, 0x1

    sub-int/2addr v1, v3

    .line 938
    .local v1, "lastIndex":I
    const/4 v4, 0x0

    .line 939
    .local v4, "firstNonstrict":I
    const/4 v5, 0x0

    .line 940
    .local v5, "lastNonstrict":I
    if-eqz p1, :cond_1

    .line 941
    aget v4, p0, v0

    .line 942
    add-int/lit8 v0, v0, 0x1

    .line 943
    aget v5, p0, v1

    .line 944
    add-int/lit8 v1, v1, -0x1

    .line 946
    :cond_1
    sub-int v6, v1, v0

    const/4 v7, 0x2

    if-ge v6, v7, :cond_2

    .line 947
    return-object v2

    .line 950
    :cond_2
    add-int/lit8 v6, v0, 0x1

    aget v6, p0, v6

    aget v7, p0, v0

    sub-int/2addr v6, v7

    .line 951
    .local v6, "modulus":I
    if-ne v6, v3, :cond_3

    .line 952
    return-object v2

    .line 954
    :cond_3
    add-int/lit8 v3, v0, 0x2

    .local v3, "i":I
    :goto_0
    if-gt v3, v1, :cond_5

    .line 955
    aget v7, p0, v3

    add-int/lit8 v8, v3, -0x1

    aget v8, p0, v8

    sub-int/2addr v7, v8

    if-eq v7, v6, :cond_4

    .line 956
    return-object v2

    .line 954
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 960
    .end local v3    # "i":I
    :cond_5
    aget v3, p0, v0

    invoke-static {v3, v6}, Lorg/checkerframework/org/plumelib/util/MathPlume;->modPositive(II)I

    move-result v3

    .line 961
    .local v3, "r":I
    if-eqz p1, :cond_7

    .line 962
    invoke-static {v4, v6}, Lorg/checkerframework/org/plumelib/util/MathPlume;->modPositive(II)I

    move-result v7

    if-ne v3, v7, :cond_6

    .line 963
    invoke-static {v5, v6}, Lorg/checkerframework/org/plumelib/util/MathPlume;->modPositive(II)I

    move-result v7

    if-eq v3, v7, :cond_7

    .line 964
    :cond_6
    return-object v2

    .line 968
    :cond_7
    filled-new-array {v3, v6}, [I

    move-result-object v2

    return-object v2
.end method

.method public static modulusStrict([JZ)[J
    .locals 17
    .param p0, "nums"    # [J
    .param p1, "nonstrictEnds"    # Z
    .annotation runtime Lorg/checkerframework/common/value/qual/StaticallyExecutable;
    .end annotation

    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    .line 1169
    move-object/from16 v0, p0

    array-length v1, v0

    const/4 v2, 0x3

    const/4 v3, 0x0

    if-ge v1, v2, :cond_0

    .line 1170
    return-object v3

    .line 1173
    :cond_0
    const/4 v1, 0x0

    .line 1174
    .local v1, "firstIndex":I
    array-length v2, v0

    const/4 v4, 0x1

    sub-int/2addr v2, v4

    .line 1175
    .local v2, "lastIndex":I
    const-wide/16 v5, 0x0

    .line 1176
    .local v5, "firstNonstrict":J
    const-wide/16 v7, 0x0

    .line 1177
    .local v7, "lastNonstrict":J
    if-eqz p1, :cond_1

    .line 1178
    aget-wide v5, v0, v1

    .line 1179
    add-int/lit8 v1, v1, 0x1

    .line 1180
    aget-wide v7, v0, v2

    .line 1181
    add-int/lit8 v2, v2, -0x1

    .line 1183
    :cond_1
    sub-int v9, v2, v1

    const/4 v10, 0x2

    if-ge v9, v10, :cond_2

    .line 1184
    return-object v3

    .line 1187
    :cond_2
    add-int/lit8 v9, v1, 0x1

    aget-wide v11, v0, v9

    aget-wide v13, v0, v1

    sub-long/2addr v11, v13

    .line 1188
    .local v11, "modulus":J
    const-wide/16 v13, 0x1

    cmp-long v9, v11, v13

    if-nez v9, :cond_3

    .line 1189
    return-object v3

    .line 1191
    :cond_3
    add-int/lit8 v9, v1, 0x2

    .local v9, "i":I
    :goto_0
    if-gt v9, v2, :cond_5

    .line 1192
    aget-wide v13, v0, v9

    add-int/lit8 v15, v9, -0x1

    aget-wide v15, v0, v15

    sub-long/2addr v13, v15

    cmp-long v13, v13, v11

    if-eqz v13, :cond_4

    .line 1193
    return-object v3

    .line 1191
    :cond_4
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 1197
    .end local v9    # "i":I
    :cond_5
    aget-wide v13, v0, v1

    invoke-static {v13, v14, v11, v12}, Lorg/checkerframework/org/plumelib/util/MathPlume;->modPositive(JJ)J

    move-result-wide v13

    .line 1198
    .local v13, "r":J
    if-eqz p1, :cond_7

    .line 1199
    invoke-static {v5, v6, v11, v12}, Lorg/checkerframework/org/plumelib/util/MathPlume;->modPositive(JJ)J

    move-result-wide v15

    cmp-long v9, v13, v15

    if-nez v9, :cond_6

    .line 1200
    invoke-static {v7, v8, v11, v12}, Lorg/checkerframework/org/plumelib/util/MathPlume;->modPositive(JJ)J

    move-result-wide v15

    cmp-long v9, v13, v15

    if-eqz v9, :cond_7

    .line 1201
    :cond_6
    return-object v3

    .line 1205
    :cond_7
    new-array v3, v10, [J

    const/4 v9, 0x0

    aput-wide v13, v3, v9

    aput-wide v11, v3, v4

    return-object v3
.end method

.method public static modulusStrictInt(Ljava/util/Iterator;Z)[I
    .locals 9
    .param p1, "nonstrictEnds"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator<",
            "Ljava/lang/Integer;",
            ">;Z)[I"
        }
    .end annotation

    .line 986
    .local p0, "itor":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 987
    return-object v1

    .line 990
    :cond_0
    const/4 v0, 0x0

    .line 991
    .local v0, "firstNonstrict":I
    const/4 v2, 0x0

    .line 992
    .local v2, "lastNonstrict":I
    if-eqz p1, :cond_1

    .line 993
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 996
    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 997
    .local v3, "prev":I
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_2

    .line 998
    return-object v1

    .line 1000
    :cond_2
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 1001
    .local v4, "next":I
    sub-int v5, v4, v3

    .line 1002
    .local v5, "modulus":I
    const/4 v6, 0x1

    if-ne v5, v6, :cond_3

    .line 1003
    return-object v1

    .line 1005
    :cond_3
    const/4 v6, 0x2

    .line 1006
    .local v6, "count":I
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_6

    .line 1007
    move v3, v4

    .line 1008
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 1009
    if-eqz p1, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-nez v7, :cond_4

    .line 1010
    move v2, v4

    .line 1011
    goto :goto_1

    .line 1014
    :cond_4
    sub-int v7, v4, v3

    if-eq v7, v5, :cond_5

    .line 1015
    return-object v1

    .line 1017
    :cond_5
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 1019
    :cond_6
    :goto_1
    const/4 v7, 0x3

    if-ge v6, v7, :cond_7

    .line 1020
    return-object v1

    .line 1023
    :cond_7
    invoke-static {v4, v5}, Lorg/checkerframework/org/plumelib/util/MathPlume;->modPositive(II)I

    move-result v7

    .line 1024
    .local v7, "r":I
    if-eqz p1, :cond_9

    .line 1025
    invoke-static {v0, v5}, Lorg/checkerframework/org/plumelib/util/MathPlume;->modPositive(II)I

    move-result v8

    if-ne v7, v8, :cond_8

    .line 1026
    invoke-static {v2, v5}, Lorg/checkerframework/org/plumelib/util/MathPlume;->modPositive(II)I

    move-result v8

    if-eq v7, v8, :cond_9

    .line 1027
    :cond_8
    return-object v1

    .line 1031
    :cond_9
    filled-new-array {v7, v5}, [I

    move-result-object v1

    return-object v1
.end method

.method public static modulusStrictLong(Ljava/util/Iterator;Z)[J
    .locals 16
    .param p1, "nonstrictEnds"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator<",
            "Ljava/lang/Long;",
            ">;Z)[J"
        }
    .end annotation

    .line 1223
    .local p0, "itor":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Long;>;"
    invoke-interface/range {p0 .. p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1224
    return-object v1

    .line 1227
    :cond_0
    const-wide/16 v2, 0x0

    .line 1228
    .local v2, "firstNonstrict":J
    const-wide/16 v4, 0x0

    .line 1229
    .local v4, "lastNonstrict":J
    if-eqz p1, :cond_1

    .line 1230
    invoke-interface/range {p0 .. p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 1233
    :cond_1
    invoke-interface/range {p0 .. p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    .line 1234
    .local v6, "prev":J
    invoke-interface/range {p0 .. p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1235
    return-object v1

    .line 1237
    :cond_2
    invoke-interface/range {p0 .. p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    .line 1238
    .local v8, "next":J
    sub-long v10, v8, v6

    .line 1239
    .local v10, "modulus":J
    const-wide/16 v12, 0x1

    cmp-long v0, v10, v12

    if-nez v0, :cond_3

    .line 1240
    return-object v1

    .line 1242
    :cond_3
    const/4 v0, 0x2

    .line 1243
    .local v0, "count":I
    :goto_0
    invoke-interface/range {p0 .. p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_6

    .line 1244
    move-wide v6, v8

    .line 1245
    invoke-interface/range {p0 .. p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Long;

    invoke-virtual {v12}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    .line 1246
    if-eqz p1, :cond_4

    invoke-interface/range {p0 .. p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-nez v12, :cond_4

    .line 1247
    move-wide v4, v8

    .line 1248
    goto :goto_1

    .line 1251
    :cond_4
    sub-long v12, v8, v6

    cmp-long v12, v12, v10

    if-eqz v12, :cond_5

    .line 1252
    return-object v1

    .line 1254
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1256
    :cond_6
    :goto_1
    const/4 v12, 0x3

    if-ge v0, v12, :cond_7

    .line 1257
    return-object v1

    .line 1260
    :cond_7
    invoke-static {v8, v9, v10, v11}, Lorg/checkerframework/org/plumelib/util/MathPlume;->modPositive(JJ)J

    move-result-wide v12

    .line 1261
    .local v12, "r":J
    if-eqz p1, :cond_9

    .line 1262
    invoke-static {v2, v3, v10, v11}, Lorg/checkerframework/org/plumelib/util/MathPlume;->modPositive(JJ)J

    move-result-wide v14

    cmp-long v14, v12, v14

    if-nez v14, :cond_8

    .line 1263
    invoke-static {v4, v5, v10, v11}, Lorg/checkerframework/org/plumelib/util/MathPlume;->modPositive(JJ)J

    move-result-wide v14

    cmp-long v14, v12, v14

    if-eqz v14, :cond_9

    .line 1264
    :cond_8
    return-object v1

    .line 1268
    :cond_9
    const/4 v1, 0x2

    new-array v1, v1, [J

    const/4 v14, 0x0

    aput-wide v12, v1, v14

    const/4 v14, 0x1

    aput-wide v10, v1, v14

    return-object v1
.end method

.method public static mul(DD)D
    .locals 2
    .param p0, "x"    # D
    .param p2, "y"    # D
    .annotation runtime Lorg/checkerframework/common/value/qual/StaticallyExecutable;
    .end annotation

    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    .line 128
    mul-double v0, p0, p2

    return-wide v0
.end method

.method public static mul(II)I
    .locals 1
    .param p0, "x"    # I
    .param p1, "y"    # I
    .annotation runtime Lorg/checkerframework/common/value/qual/StaticallyExecutable;
    .end annotation

    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    .line 102
    mul-int v0, p0, p1

    return v0
.end method

.method public static mul(JJ)J
    .locals 2
    .param p0, "x"    # J
    .param p2, "y"    # J
    .annotation runtime Lorg/checkerframework/common/value/qual/StaticallyExecutable;
    .end annotation

    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    .line 115
    mul-long v0, p0, p2

    return-wide v0
.end method

.method public static negate(D)D
    .locals 2
    .param p0, "a"    # D
    .annotation runtime Lorg/checkerframework/common/value/qual/StaticallyExecutable;
    .end annotation

    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    .line 65
    neg-double v0, p0

    return-wide v0
.end method

.method public static negate(I)I
    .locals 1
    .param p0, "a"    # I
    .annotation runtime Lorg/checkerframework/common/value/qual/StaticallyExecutable;
    .end annotation

    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    .line 41
    neg-int v0, p0

    return v0
.end method

.method public static negate(J)J
    .locals 2
    .param p0, "a"    # J
    .annotation runtime Lorg/checkerframework/common/value/qual/StaticallyExecutable;
    .end annotation

    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    .line 53
    neg-long v0, p0

    return-wide v0
.end method

.method public static nonmodulusNonstrict([I)[I
    .locals 9
    .param p0, "nums"    # [I
    .annotation runtime Lorg/checkerframework/common/value/qual/StaticallyExecutable;
    .end annotation

    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    .line 1557
    array-length v0, p0

    const/4 v1, 0x4

    const/4 v2, 0x0

    if-ge v0, v1, :cond_0

    .line 1558
    return-object v2

    .line 1560
    :cond_0
    array-length v0, p0

    div-int/lit8 v0, v0, 0x2

    invoke-static {p0}, Lorg/checkerframework/org/plumelib/util/ArraysPlume;->elementRange([I)I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 1567
    .local v0, "maxModulus":I
    const/4 v1, 0x2

    .local v1, "m":I
    :goto_0
    if-gt v1, v0, :cond_4

    .line 1569
    new-array v3, v1, [Z

    .line 1570
    .local v3, "hasModulus":[Z
    move v4, v1

    .line 1571
    .local v4, "numNonmodulus":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    array-length v6, p0

    const/4 v7, 0x1

    if-ge v5, v6, :cond_2

    .line 1572
    aget v6, p0, v5

    invoke-static {v6, v1}, Lorg/checkerframework/org/plumelib/util/MathPlume;->modPositive(II)I

    move-result v6

    .line 1573
    .local v6, "rem":I
    aget-boolean v8, v3, v6

    if-nez v8, :cond_1

    .line 1574
    aput-boolean v7, v3, v6

    .line 1575
    add-int/lit8 v4, v4, -0x1

    .line 1578
    if-nez v4, :cond_1

    .line 1581
    goto :goto_2

    .line 1571
    .end local v6    # "rem":I
    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 1586
    .end local v5    # "i":I
    :cond_2
    :goto_2
    if-ne v4, v7, :cond_3

    .line 1587
    const/4 v2, 0x0

    invoke-static {v3, v2}, Lorg/checkerframework/org/plumelib/util/ArraysPlume;->indexOf([ZZ)I

    move-result v2

    filled-new-array {v2, v1}, [I

    move-result-object v2

    return-object v2

    .line 1567
    .end local v3    # "hasModulus":[Z
    .end local v4    # "numNonmodulus":I
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1590
    .end local v1    # "m":I
    :cond_4
    return-object v2
.end method

.method public static nonmodulusNonstrict([J)[J
    .locals 13
    .param p0, "nums"    # [J
    .annotation runtime Lorg/checkerframework/common/value/qual/StaticallyExecutable;
    .end annotation

    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    .line 1878
    array-length v0, p0

    const/4 v1, 0x4

    const/4 v2, 0x0

    if-ge v0, v1, :cond_0

    .line 1879
    return-object v2

    .line 1881
    :cond_0
    array-length v0, p0

    const/4 v1, 0x2

    div-int/2addr v0, v1

    int-to-long v3, v0

    invoke-static {p0}, Lorg/checkerframework/org/plumelib/util/ArraysPlume;->elementRange([J)J

    move-result-wide v5

    const-wide/16 v7, 0x2

    div-long/2addr v5, v7

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v3

    long-to-int v0, v3

    .line 1888
    .local v0, "maxModulus":I
    const/4 v3, 0x2

    .local v3, "m":I
    :goto_0
    if-gt v3, v0, :cond_4

    .line 1890
    new-array v4, v3, [Z

    .line 1891
    .local v4, "hasModulus":[Z
    move v5, v3

    .line 1892
    .local v5, "numNonmodulus":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_1
    array-length v7, p0

    const/4 v8, 0x1

    if-ge v6, v7, :cond_2

    .line 1893
    aget-wide v9, p0, v6

    int-to-long v11, v3

    invoke-static {v9, v10, v11, v12}, Lorg/checkerframework/org/plumelib/util/MathPlume;->modPositive(JJ)J

    move-result-wide v9

    long-to-int v7, v9

    .line 1894
    .local v7, "rem":I
    aget-boolean v9, v4, v7

    if-nez v9, :cond_1

    .line 1895
    aput-boolean v8, v4, v7

    .line 1896
    add-int/lit8 v5, v5, -0x1

    .line 1899
    if-nez v5, :cond_1

    .line 1902
    goto :goto_2

    .line 1892
    .end local v7    # "rem":I
    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 1907
    .end local v6    # "i":I
    :cond_2
    :goto_2
    if-ne v5, v8, :cond_3

    .line 1908
    new-array v1, v1, [J

    const/4 v2, 0x0

    invoke-static {v4, v2}, Lorg/checkerframework/org/plumelib/util/ArraysPlume;->indexOf([ZZ)I

    move-result v6

    int-to-long v6, v6

    aput-wide v6, v1, v2

    int-to-long v6, v3

    aput-wide v6, v1, v8

    return-object v1

    .line 1888
    .end local v4    # "hasModulus":[Z
    .end local v5    # "numNonmodulus":I
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1911
    .end local v3    # "m":I
    :cond_4
    return-object v2
.end method

.method public static nonmodulusStrict([I)[I
    .locals 3
    .param p0, "nums"    # [I
    .annotation runtime Lorg/checkerframework/common/value/qual/StaticallyExecutable;
    .end annotation

    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    .line 1468
    array-length v0, p0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1469
    return-object v1

    .line 1471
    :cond_0
    invoke-static {p0}, Lorg/checkerframework/org/plumelib/util/ArraysPlume;->elementRange([I)I

    move-result v0

    .line 1472
    .local v0, "range":I
    const/high16 v2, 0x10000

    if-le v0, v2, :cond_1

    .line 1473
    return-object v1

    .line 1475
    :cond_1
    new-instance v1, Lorg/checkerframework/org/plumelib/util/MathPlume$MissingNumbersIteratorInt;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lorg/checkerframework/org/plumelib/util/MathPlume$MissingNumbersIteratorInt;-><init>([IZ)V

    invoke-static {v1}, Lorg/checkerframework/org/plumelib/util/MathPlume;->nonmodulusStrictIntInternal(Ljava/util/Iterator;)[I

    move-result-object v1

    return-object v1
.end method

.method public static nonmodulusStrict([J)[J
    .locals 6
    .param p0, "nums"    # [J
    .annotation runtime Lorg/checkerframework/common/value/qual/StaticallyExecutable;
    .end annotation

    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    .line 1789
    array-length v0, p0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1790
    return-object v1

    .line 1792
    :cond_0
    invoke-static {p0}, Lorg/checkerframework/org/plumelib/util/ArraysPlume;->elementRange([J)J

    move-result-wide v2

    .line 1793
    .local v2, "range":J
    const-wide/32 v4, 0x10000

    cmp-long v0, v2, v4

    if-lez v0, :cond_1

    .line 1794
    return-object v1

    .line 1796
    :cond_1
    new-instance v0, Lorg/checkerframework/org/plumelib/util/MathPlume$MissingNumbersIteratorLong;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lorg/checkerframework/org/plumelib/util/MathPlume$MissingNumbersIteratorLong;-><init>([JZ)V

    invoke-static {v0}, Lorg/checkerframework/org/plumelib/util/MathPlume;->nonmodulusStrictLongInternal(Ljava/util/Iterator;)[J

    move-result-object v0

    return-object v0
.end method

.method public static nonmodulusStrictInt(Ljava/util/Iterator;)[I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator<",
            "Ljava/lang/Integer;",
            ">;)[I"
        }
    .end annotation

    .line 1520
    .local p0, "nums":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    new-instance v0, Lorg/checkerframework/org/plumelib/util/MathPlume$MissingNumbersIteratorInt;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lorg/checkerframework/org/plumelib/util/MathPlume$MissingNumbersIteratorInt;-><init>(Ljava/util/Iterator;Z)V

    invoke-static {v0}, Lorg/checkerframework/org/plumelib/util/MathPlume;->nonmodulusStrictIntInternal(Ljava/util/Iterator;)[I

    move-result-object v0

    return-object v0
.end method

.method private static nonmodulusStrictIntInternal(Ljava/util/Iterator;)[I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator<",
            "Ljava/lang/Integer;",
            ">;)[I"
        }
    .end annotation

    .line 1489
    .local p0, "missing":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    new-instance v0, Lorg/checkerframework/org/plumelib/util/CollectionsPlume$RemoveFirstAndLastIterator;

    invoke-direct {v0, p0}, Lorg/checkerframework/org/plumelib/util/CollectionsPlume$RemoveFirstAndLastIterator;-><init>(Ljava/util/Iterator;)V

    .line 1491
    .local v0, "missingNums":Lorg/checkerframework/org/plumelib/util/CollectionsPlume$RemoveFirstAndLastIterator;, "Lorg/checkerframework/org/plumelib/util/CollectionsPlume$RemoveFirstAndLastIterator<Ljava/lang/Integer;>;"
    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/checkerframework/org/plumelib/util/MathPlume;->modulusStrictInt(Ljava/util/Iterator;Z)[I

    move-result-object v1

    .line 1492
    .local v1, "result":[I
    if-nez v1, :cond_0

    .line 1493
    return-object v1

    .line 1495
    :cond_0
    invoke-static {v1, v0}, Lorg/checkerframework/org/plumelib/util/MathPlume;->checkFirstAndLastNonmodulus([ILorg/checkerframework/org/plumelib/util/CollectionsPlume$RemoveFirstAndLastIterator;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1496
    const/4 v2, 0x0

    return-object v2

    .line 1499
    :cond_1
    return-object v1
.end method

.method public static nonmodulusStrictLong(Ljava/util/Iterator;)[J
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator<",
            "Ljava/lang/Long;",
            ">;)[J"
        }
    .end annotation

    .line 1841
    .local p0, "nums":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Long;>;"
    new-instance v0, Lorg/checkerframework/org/plumelib/util/MathPlume$MissingNumbersIteratorLong;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lorg/checkerframework/org/plumelib/util/MathPlume$MissingNumbersIteratorLong;-><init>(Ljava/util/Iterator;Z)V

    invoke-static {v0}, Lorg/checkerframework/org/plumelib/util/MathPlume;->nonmodulusStrictLongInternal(Ljava/util/Iterator;)[J

    move-result-object v0

    return-object v0
.end method

.method private static nonmodulusStrictLongInternal(Ljava/util/Iterator;)[J
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator<",
            "Ljava/lang/Long;",
            ">;)[J"
        }
    .end annotation

    .line 1810
    .local p0, "missing":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Long;>;"
    new-instance v0, Lorg/checkerframework/org/plumelib/util/CollectionsPlume$RemoveFirstAndLastIterator;

    invoke-direct {v0, p0}, Lorg/checkerframework/org/plumelib/util/CollectionsPlume$RemoveFirstAndLastIterator;-><init>(Ljava/util/Iterator;)V

    .line 1812
    .local v0, "missingNums":Lorg/checkerframework/org/plumelib/util/CollectionsPlume$RemoveFirstAndLastIterator;, "Lorg/checkerframework/org/plumelib/util/CollectionsPlume$RemoveFirstAndLastIterator<Ljava/lang/Long;>;"
    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/checkerframework/org/plumelib/util/MathPlume;->modulusStrictLong(Ljava/util/Iterator;Z)[J

    move-result-object v1

    .line 1813
    .local v1, "result":[J
    if-nez v1, :cond_0

    .line 1814
    return-object v1

    .line 1816
    :cond_0
    invoke-static {v1, v0}, Lorg/checkerframework/org/plumelib/util/MathPlume;->checkFirstAndLastNonmodulus([JLorg/checkerframework/org/plumelib/util/CollectionsPlume$RemoveFirstAndLastIterator;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1817
    const/4 v2, 0x0

    return-object v2

    .line 1820
    :cond_1
    return-object v1
.end method

.method public static pow(II)I
    .locals 1
    .param p0, "base"    # I
    .param p1, "expt"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ArithmeticException;
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/common/value/qual/StaticallyExecutable;
    .end annotation

    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    .line 468
    invoke-static {p0, p1}, Lorg/checkerframework/org/plumelib/util/MathPlume;->powFast(II)I

    move-result v0

    return v0
.end method

.method public static pow(JJ)J
    .locals 2
    .param p0, "base"    # J
    .param p2, "expt"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ArithmeticException;
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/common/value/qual/StaticallyExecutable;
    .end annotation

    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    .line 482
    invoke-static {p0, p1, p2, p3}, Lorg/checkerframework/org/plumelib/util/MathPlume;->powFast(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method private static powFast(II)I
    .locals 3
    .param p0, "base"    # I
    .param p1, "expt"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ArithmeticException;
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/common/value/qual/StaticallyExecutable;
    .end annotation

    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    .line 497
    if-ltz p1, :cond_2

    .line 501
    move v0, p0

    .line 502
    .local v0, "thisSquarePow":I
    const/4 v1, 0x1

    .line 503
    .local v1, "result":I
    :goto_0
    if-lez p1, :cond_1

    .line 504
    and-int/lit8 v2, p1, 0x1

    if-eqz v2, :cond_0

    .line 505
    mul-int/2addr v1, v0

    .line 507
    :cond_0
    shr-int/lit8 p1, p1, 0x1

    .line 508
    mul-int/2addr v0, v0

    goto :goto_0

    .line 510
    :cond_1
    return v1

    .line 498
    .end local v0    # "thisSquarePow":I
    .end local v1    # "result":I
    :cond_2
    new-instance v0, Ljava/lang/ArithmeticException;

    const-string v1, "Negative exponent passed to pow"

    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static powFast(JJ)J
    .locals 8
    .param p0, "base"    # J
    .param p2, "expt"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ArithmeticException;
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/common/value/qual/StaticallyExecutable;
    .end annotation

    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    .line 525
    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-ltz v2, :cond_2

    .line 529
    move-wide v2, p0

    .line 530
    .local v2, "thisSquarePow":J
    const-wide/16 v4, 0x1

    .line 531
    .local v4, "result":J
    :goto_0
    cmp-long v6, p2, v0

    if-lez v6, :cond_1

    .line 532
    const-wide/16 v6, 0x1

    and-long/2addr v6, p2

    cmp-long v6, v6, v0

    if-eqz v6, :cond_0

    .line 533
    mul-long/2addr v4, v2

    .line 535
    :cond_0
    const/4 v6, 0x1

    shr-long/2addr p2, v6

    .line 536
    mul-long/2addr v2, v2

    goto :goto_0

    .line 538
    :cond_1
    return-wide v4

    .line 526
    .end local v2    # "thisSquarePow":J
    .end local v4    # "result":J
    :cond_2
    new-instance v0, Ljava/lang/ArithmeticException;

    const-string v1, "Negative exponent passed to pow"

    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static powSlow(II)I
    .locals 2
    .param p0, "base"    # I
    .param p1, "expt"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ArithmeticException;
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/common/value/qual/StaticallyExecutable;
    .end annotation

    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    .line 553
    if-ltz p1, :cond_1

    .line 557
    const/4 v0, 0x1

    .line 558
    .local v0, "result":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, p1, :cond_0

    .line 559
    mul-int/2addr v0, p0

    .line 558
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 561
    .end local v1    # "i":I
    :cond_0
    return v0

    .line 554
    .end local v0    # "result":I
    :cond_1
    new-instance v0, Ljava/lang/ArithmeticException;

    const-string v1, "Negative exponent passed to pow"

    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static rshiftSigned(II)I
    .locals 1
    .param p0, "x"    # I
    .param p1, "y"    # I
    .annotation runtime Lorg/checkerframework/common/value/qual/StaticallyExecutable;
    .end annotation

    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    .line 232
    shr-int v0, p0, p1

    return v0
.end method

.method public static rshiftSigned(JJ)J
    .locals 2
    .param p0, "x"    # J
    .param p2, "y"    # J
    .annotation runtime Lorg/checkerframework/common/value/qual/StaticallyExecutable;
    .end annotation

    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    .line 245
    long-to-int v0, p2

    shr-long v0, p0, v0

    return-wide v0
.end method

.method public static rshiftUnsigned(II)I
    .locals 1
    .param p0, "x"    # I
    .param p1, "y"    # I
    .annotation runtime Lorg/checkerframework/common/value/qual/StaticallyExecutable;
    .end annotation

    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    .line 258
    ushr-int v0, p0, p1

    return v0
.end method

.method public static rshiftUnsigned(JJ)J
    .locals 2
    .param p0, "x"    # J
    .param p2, "y"    # J
    .annotation runtime Lorg/checkerframework/common/value/qual/StaticallyExecutable;
    .end annotation

    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    .line 271
    long-to-int v0, p2

    ushr-long v0, p0, v0

    return-wide v0
.end method

.method public static sign(I)I
    .locals 1
    .param p0, "a"    # I
    .annotation runtime Lorg/checkerframework/common/value/qual/StaticallyExecutable;
    .end annotation

    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    .line 443
    if-nez p0, :cond_0

    .line 444
    const/4 v0, 0x0

    return v0

    .line 445
    :cond_0
    if-lez p0, :cond_1

    .line 446
    const/4 v0, 0x1

    return v0

    .line 448
    :cond_1
    const/4 v0, -0x1

    return v0
.end method
