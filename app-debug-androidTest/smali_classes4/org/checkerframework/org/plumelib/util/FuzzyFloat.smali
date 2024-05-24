.class public Lorg/checkerframework/org/plumelib/util/FuzzyFloat;
.super Ljava/lang/Object;
.source "FuzzyFloat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/checkerframework/org/plumelib/util/FuzzyFloat$DoubleArrayComparatorLexical;
    }
.end annotation


# instance fields
.field DEFAULT_RELATIVE_RATIO:D

.field exactComparisons:Z

.field maxRatio:D

.field minRatio:D


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    const-wide v0, 0x3f1a36e2eb1c432dL    # 1.0E-4

    iput-wide v0, p0, Lorg/checkerframework/org/plumelib/util/FuzzyFloat;->DEFAULT_RELATIVE_RATIO:D

    .line 38
    const/4 v2, 0x0

    iput-boolean v2, p0, Lorg/checkerframework/org/plumelib/util/FuzzyFloat;->exactComparisons:Z

    .line 42
    invoke-virtual {p0, v0, v1}, Lorg/checkerframework/org/plumelib/util/FuzzyFloat;->setRelativeRatio(D)V

    .line 43
    return-void
.end method

.method public constructor <init>(D)V
    .locals 2
    .param p1, "relativeRatio"    # D

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    const-wide v0, 0x3f1a36e2eb1c432dL    # 1.0E-4

    iput-wide v0, p0, Lorg/checkerframework/org/plumelib/util/FuzzyFloat;->DEFAULT_RELATIVE_RATIO:D

    .line 38
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/checkerframework/org/plumelib/util/FuzzyFloat;->exactComparisons:Z

    .line 53
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/org/plumelib/util/FuzzyFloat;->setRelativeRatio(D)V

    .line 54
    return-void
.end method


# virtual methods
.method public eq(DD)Z
    .locals 9
    .param p1, "d1"    # D
    .param p3, "d2"    # D
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    .line 87
    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-static {p3, p4}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 88
    return v1

    .line 93
    :cond_0
    iget-boolean v0, p0, Lorg/checkerframework/org/plumelib/util/FuzzyFloat;->exactComparisons:Z

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    .line 94
    cmpl-double v0, p1, p3

    if-nez v0, :cond_1

    move v1, v2

    :cond_1
    return v1

    .line 99
    :cond_2
    cmpl-double v0, p1, p3

    if-nez v0, :cond_3

    .line 100
    return v2

    .line 106
    :cond_3
    const-wide/16 v3, 0x0

    cmpl-double v0, p1, v3

    if-eqz v0, :cond_6

    cmpl-double v0, p3, v3

    if-nez v0, :cond_4

    goto :goto_0

    .line 120
    :cond_4
    div-double v3, p1, p3

    .line 121
    .local v3, "ratio":D
    iget-wide v5, p0, Lorg/checkerframework/org/plumelib/util/FuzzyFloat;->minRatio:D

    cmpl-double v0, v3, v5

    if-ltz v0, :cond_5

    iget-wide v5, p0, Lorg/checkerframework/org/plumelib/util/FuzzyFloat;->maxRatio:D

    cmpg-double v0, v3, v5

    if-gtz v0, :cond_5

    move v1, v2

    :cond_5
    return v1

    .line 108
    .end local v3    # "ratio":D
    :cond_6
    :goto_0
    iget-wide v5, p0, Lorg/checkerframework/org/plumelib/util/FuzzyFloat;->maxRatio:D

    const-wide/high16 v7, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v5, v7

    const-wide/high16 v7, 0x4000000000000000L    # 2.0

    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v5

    .line 110
    .local v5, "zeroTolerance":D
    cmpl-double v0, p1, v3

    if-nez v0, :cond_8

    .line 112
    invoke-static {p3, p4}, Ljava/lang/Math;->abs(D)D

    move-result-wide v3

    cmpg-double v0, v3, v5

    if-gez v0, :cond_7

    move v1, v2

    :cond_7
    return v1

    .line 116
    :cond_8
    invoke-static {p1, p2}, Ljava/lang/Math;->abs(D)D

    move-result-wide v3

    cmpg-double v0, v3, v5

    if-gez v0, :cond_9

    move v1, v2

    :cond_9
    return v1
.end method

.method public gt(DD)Z
    .locals 1
    .param p1, "d1"    # D
    .param p3, "d2"    # D
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    .line 176
    cmpl-double v0, p1, p3

    if-lez v0, :cond_0

    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/checkerframework/org/plumelib/util/FuzzyFloat;->ne(DD)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public gte(DD)Z
    .locals 1
    .param p1, "d1"    # D
    .param p3, "d2"    # D
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    .line 189
    cmpl-double v0, p1, p3

    if-gez v0, :cond_1

    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/checkerframework/org/plumelib/util/FuzzyFloat;->eq(DD)Z

    move-result v0

    if-eqz v0, :cond_0

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

.method public indexOf([DD)I
    .locals 3
    .param p1, "a"    # [D
    .param p2, "elt"    # D
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    .line 204
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    .line 205
    aget-wide v1, p1, v0

    invoke-virtual {p0, p2, p3, v1, v2}, Lorg/checkerframework/org/plumelib/util/FuzzyFloat;->eq(DD)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 206
    return v0

    .line 204
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 209
    .end local v0    # "i":I
    :cond_1
    const/4 v0, -0x1

    return v0
.end method

.method public indexOf([D[D)I
    .locals 7
    .param p1, "a"    # [D
    .param p2, "sub"    # [D
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    .line 226
    array-length v0, p1

    array-length v1, p2

    sub-int/2addr v0, v1

    .line 229
    .local v0, "aIndexMax":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-gt v1, v0, :cond_2

    .line 230
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_1
    array-length v3, p2

    if-ge v2, v3, :cond_1

    .line 231
    add-int v3, v1, v2

    aget-wide v3, p1, v3

    aget-wide v5, p2, v2

    invoke-virtual {p0, v3, v4, v5, v6}, Lorg/checkerframework/org/plumelib/util/FuzzyFloat;->ne(DD)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 232
    nop

    .line 229
    .end local v2    # "j":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 230
    .restart local v2    # "j":I
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 235
    .end local v2    # "j":I
    :cond_1
    return v1

    .line 237
    .end local v1    # "i":I
    :cond_2
    const/4 v1, -0x1

    return v1
.end method

.method public isElemMatch([D[D)Z
    .locals 8
    .param p1, "a1"    # [D
    .param p2, "a2"    # [D
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    .line 256
    invoke-virtual {p1}, [D->clone()Ljava/lang/Object;

    move-result-object v0

    move-object p1, v0

    check-cast p1, [D

    .line 257
    invoke-virtual {p2}, [D->clone()Ljava/lang/Object;

    move-result-object v0

    move-object p2, v0

    check-cast p2, [D

    .line 259
    invoke-static {p1}, Ljava/util/Arrays;->sort([D)V

    .line 260
    invoke-static {p2}, Ljava/util/Arrays;->sort([D)V

    .line 263
    const/4 v0, 0x0

    .line 265
    .local v0, "start":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p2

    const/4 v3, 0x0

    if-ge v1, v2, :cond_3

    .line 266
    aget-wide v4, p2, v1

    .line 267
    .local v4, "val":D
    move v2, v0

    .local v2, "j":I
    :goto_1
    array-length v6, p1

    if-ge v2, v6, :cond_2

    .line 268
    aget-wide v6, p1, v2

    invoke-virtual {p0, v4, v5, v6, v7}, Lorg/checkerframework/org/plumelib/util/FuzzyFloat;->eq(DD)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 269
    move v0, v2

    .line 270
    nop

    .line 265
    .end local v2    # "j":I
    .end local v4    # "val":D
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 272
    .restart local v2    # "j":I
    .restart local v4    # "val":D
    :cond_0
    aget-wide v6, p1, v2

    cmpg-double v6, v4, v6

    if-gez v6, :cond_1

    .line 274
    return v3

    .line 267
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 278
    .end local v2    # "j":I
    :cond_2
    return v3

    .line 282
    .end local v1    # "i":I
    .end local v4    # "val":D
    :cond_3
    const/4 v0, 0x0

    .line 284
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_2
    array-length v2, p1

    if-ge v1, v2, :cond_7

    .line 285
    aget-wide v4, p1, v1

    .line 286
    .restart local v4    # "val":D
    move v2, v0

    .restart local v2    # "j":I
    :goto_3
    array-length v6, p2

    if-ge v2, v6, :cond_6

    .line 287
    aget-wide v6, p2, v2

    invoke-virtual {p0, v4, v5, v6, v7}, Lorg/checkerframework/org/plumelib/util/FuzzyFloat;->eq(DD)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 288
    move v0, v2

    .line 289
    nop

    .line 284
    .end local v2    # "j":I
    .end local v4    # "val":D
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 291
    .restart local v2    # "j":I
    .restart local v4    # "val":D
    :cond_4
    aget-wide v6, p2, v2

    cmpg-double v6, v4, v6

    if-gez v6, :cond_5

    .line 293
    return v3

    .line 286
    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 297
    .end local v2    # "j":I
    :cond_6
    return v3

    .line 300
    .end local v1    # "i":I
    .end local v4    # "val":D
    :cond_7
    const/4 v1, 0x1

    return v1
.end method

.method public isSubset([D[D)Z
    .locals 9
    .param p1, "smaller"    # [D
    .param p2, "bigger"    # [D
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    .line 374
    invoke-virtual {p1}, [D->clone()Ljava/lang/Object;

    move-result-object v0

    move-object p1, v0

    check-cast p1, [D

    .line 375
    invoke-virtual {p2}, [D->clone()Ljava/lang/Object;

    move-result-object v0

    move-object p2, v0

    check-cast p2, [D

    .line 377
    invoke-static {p1}, Ljava/util/Arrays;->sort([D)V

    .line 378
    invoke-static {p2}, Ljava/util/Arrays;->sort([D)V

    .line 381
    const/4 v0, 0x0

    .line 383
    .local v0, "start":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_3

    .line 384
    aget-wide v2, p1, v1

    .line 385
    .local v2, "val":D
    move v4, v0

    .local v4, "j":I
    :goto_1
    array-length v5, p2

    const/4 v6, 0x0

    if-ge v4, v5, :cond_2

    .line 386
    aget-wide v7, p2, v4

    invoke-virtual {p0, v2, v3, v7, v8}, Lorg/checkerframework/org/plumelib/util/FuzzyFloat;->eq(DD)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 387
    move v0, v4

    .line 388
    nop

    .line 383
    .end local v2    # "val":D
    .end local v4    # "j":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 390
    .restart local v2    # "val":D
    .restart local v4    # "j":I
    :cond_0
    aget-wide v7, p2, v4

    cmpg-double v5, v2, v7

    if-gez v5, :cond_1

    .line 391
    return v6

    .line 385
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 394
    .end local v4    # "j":I
    :cond_2
    return v6

    .line 397
    .end local v1    # "i":I
    .end local v2    # "val":D
    :cond_3
    const/4 v1, 0x1

    return v1
.end method

.method public lt(DD)Z
    .locals 1
    .param p1, "d1"    # D
    .param p3, "d2"    # D
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    .line 148
    cmpg-double v0, p1, p3

    if-gez v0, :cond_0

    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/checkerframework/org/plumelib/util/FuzzyFloat;->ne(DD)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public lte(DD)Z
    .locals 1
    .param p1, "d1"    # D
    .param p3, "d2"    # D
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    .line 162
    cmpg-double v0, p1, p3

    if-lez v0, :cond_1

    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/checkerframework/org/plumelib/util/FuzzyFloat;->eq(DD)Z

    move-result v0

    if-eqz v0, :cond_0

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

.method public ne(DD)Z
    .locals 1
    .param p1, "d1"    # D
    .param p3, "d2"    # D
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    .line 134
    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/checkerframework/org/plumelib/util/FuzzyFloat;->eq(DD)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public setRelativeRatio(D)V
    .locals 4
    .param p1, "relativeRatio"    # D

    .line 64
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    sub-double v2, v0, p1

    iput-wide v2, p0, Lorg/checkerframework/org/plumelib/util/FuzzyFloat;->minRatio:D

    .line 65
    add-double/2addr v0, p1

    iput-wide v0, p0, Lorg/checkerframework/org/plumelib/util/FuzzyFloat;->maxRatio:D

    .line 66
    const-wide/16 v0, 0x0

    cmpl-double v0, p1, v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lorg/checkerframework/org/plumelib/util/FuzzyFloat;->exactComparisons:Z

    .line 70
    return-void
.end method
