.class public Lorg/checkerframework/org/apache/commons/text/similarity/LevenshteinDetailedDistance;
.super Ljava/lang/Object;
.source "LevenshteinDetailedDistance.java"

# interfaces
.implements Lorg/checkerframework/org/apache/commons/text/similarity/EditDistance;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/checkerframework/org/apache/commons/text/similarity/EditDistance<",
        "Lorg/checkerframework/org/apache/commons/text/similarity/LevenshteinResults;",
        ">;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lorg/checkerframework/org/apache/commons/text/similarity/LevenshteinDetailedDistance;


# instance fields
.field private final threshold:Ljava/lang/Integer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 37
    new-instance v0, Lorg/checkerframework/org/apache/commons/text/similarity/LevenshteinDetailedDistance;

    invoke-direct {v0}, Lorg/checkerframework/org/apache/commons/text/similarity/LevenshteinDetailedDistance;-><init>()V

    sput-object v0, Lorg/checkerframework/org/apache/commons/text/similarity/LevenshteinDetailedDistance;->DEFAULT_INSTANCE:Lorg/checkerframework/org/apache/commons/text/similarity/LevenshteinDetailedDistance;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 52
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/checkerframework/org/apache/commons/text/similarity/LevenshteinDetailedDistance;-><init>(Ljava/lang/Integer;)V

    .line 53
    return-void
.end method

.method public constructor <init>(Ljava/lang/Integer;)V
    .locals 2
    .param p1, "threshold"    # Ljava/lang/Integer;

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ltz v0, :cond_0

    goto :goto_0

    .line 64
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Threshold must not be negative"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 66
    :cond_1
    :goto_0
    iput-object p1, p0, Lorg/checkerframework/org/apache/commons/text/similarity/LevenshteinDetailedDistance;->threshold:Ljava/lang/Integer;

    .line 67
    return-void
.end method

.method private static findDetailedResults(Ljava/lang/CharSequence;Ljava/lang/CharSequence;[[IZ)Lorg/checkerframework/org/apache/commons/text/similarity/LevenshteinResults;
    .locals 18
    .param p0, "left"    # Ljava/lang/CharSequence;
    .param p1, "right"    # Ljava/lang/CharSequence;
    .param p2, "matrix"    # [[I
    .param p3, "swapped"    # Z

    .line 441
    const/4 v0, 0x0

    .line 442
    .local v0, "delCount":I
    const/4 v1, 0x0

    .line 443
    .local v1, "addCount":I
    const/4 v2, 0x0

    .line 445
    .local v2, "subCount":I
    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    .line 446
    .local v3, "rowIndex":I
    invoke-interface/range {p0 .. p0}, Ljava/lang/CharSequence;->length()I

    move-result v4

    .line 448
    .local v4, "columnIndex":I
    const/4 v5, 0x0

    .line 449
    .local v5, "dataAtLeft":I
    const/4 v6, 0x0

    .line 450
    .local v6, "dataAtTop":I
    const/4 v7, 0x0

    .line 451
    .local v7, "dataAtDiagonal":I
    const/4 v8, 0x0

    .line 452
    .local v8, "data":I
    const/4 v9, 0x0

    .line 453
    .local v9, "deleted":Z
    const/4 v10, 0x0

    .line 455
    .local v10, "added":Z
    :cond_0
    :goto_0
    if-ltz v3, :cond_f

    if-ltz v4, :cond_f

    .line 457
    if-nez v4, :cond_1

    .line 458
    const/4 v5, -0x1

    goto :goto_1

    .line 460
    :cond_1
    aget-object v11, p2, v3

    add-int/lit8 v12, v4, -0x1

    aget v5, v11, v12

    .line 462
    :goto_1
    if-nez v3, :cond_2

    .line 463
    const/4 v6, -0x1

    goto :goto_2

    .line 465
    :cond_2
    add-int/lit8 v11, v3, -0x1

    aget-object v11, p2, v11

    aget v6, v11, v4

    .line 467
    :goto_2
    if-lez v3, :cond_3

    if-lez v4, :cond_3

    .line 468
    add-int/lit8 v11, v3, -0x1

    aget-object v11, p2, v11

    add-int/lit8 v12, v4, -0x1

    aget v7, v11, v12

    goto :goto_3

    .line 470
    :cond_3
    const/4 v7, -0x1

    .line 472
    :goto_3
    const/4 v11, -0x1

    if-ne v5, v11, :cond_4

    if-ne v6, v11, :cond_4

    if-ne v7, v11, :cond_4

    .line 473
    move-object/from16 v13, p0

    move-object/from16 v15, p1

    goto/16 :goto_5

    .line 475
    :cond_4
    aget-object v12, p2, v3

    aget v8, v12, v4

    .line 479
    if-lez v4, :cond_5

    if-lez v3, :cond_5

    add-int/lit8 v12, v4, -0x1

    move-object/from16 v13, p0

    invoke-interface {v13, v12}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v12

    add-int/lit8 v14, v3, -0x1

    move-object/from16 v15, p1

    invoke-interface {v15, v14}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v14

    if-ne v12, v14, :cond_6

    .line 480
    add-int/lit8 v4, v4, -0x1

    .line 481
    add-int/lit8 v3, v3, -0x1

    .line 482
    goto :goto_0

    .line 479
    :cond_5
    move-object/from16 v13, p0

    move-object/from16 v15, p1

    .line 486
    :cond_6
    const/4 v9, 0x0

    .line 487
    const/4 v10, 0x0

    .line 488
    add-int/lit8 v12, v8, -0x1

    if-ne v12, v5, :cond_7

    if-gt v8, v7, :cond_7

    if-le v8, v6, :cond_8

    :cond_7
    if-ne v7, v11, :cond_a

    if-ne v6, v11, :cond_a

    .line 490
    :cond_8
    add-int/lit8 v4, v4, -0x1

    .line 491
    if-eqz p3, :cond_9

    .line 492
    add-int/lit8 v1, v1, 0x1

    .line 493
    const/4 v10, 0x1

    goto :goto_4

    .line 495
    :cond_9
    add-int/lit8 v0, v0, 0x1

    .line 496
    const/4 v9, 0x1

    goto :goto_4

    .line 498
    :cond_a
    add-int/lit8 v12, v8, -0x1

    if-ne v12, v6, :cond_b

    if-gt v8, v7, :cond_b

    if-le v8, v5, :cond_c

    :cond_b
    if-ne v7, v11, :cond_e

    if-ne v5, v11, :cond_e

    .line 500
    :cond_c
    add-int/lit8 v3, v3, -0x1

    .line 501
    if-eqz p3, :cond_d

    .line 502
    add-int/lit8 v0, v0, 0x1

    .line 503
    const/4 v9, 0x1

    goto :goto_4

    .line 505
    :cond_d
    add-int/lit8 v1, v1, 0x1

    .line 506
    const/4 v10, 0x1

    .line 511
    :cond_e
    :goto_4
    if-nez v10, :cond_0

    if-nez v9, :cond_0

    .line 512
    add-int/lit8 v2, v2, 0x1

    .line 513
    add-int/lit8 v4, v4, -0x1

    .line 514
    add-int/lit8 v3, v3, -0x1

    goto/16 :goto_0

    .line 455
    :cond_f
    move-object/from16 v13, p0

    move-object/from16 v15, p1

    .line 517
    :goto_5
    new-instance v11, Lorg/checkerframework/org/apache/commons/text/similarity/LevenshteinResults;

    add-int v12, v1, v0

    add-int/2addr v12, v2

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    move/from16 v16, v1

    .end local v1    # "addCount":I
    .local v16, "addCount":I
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    move/from16 v17, v0

    .end local v0    # "delCount":I
    .local v17, "delCount":I
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {v11, v12, v14, v1, v0}, Lorg/checkerframework/org/apache/commons/text/similarity/LevenshteinResults;-><init>(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    return-object v11
.end method

.method public static getDefaultInstance()Lorg/checkerframework/org/apache/commons/text/similarity/LevenshteinDetailedDistance;
    .locals 1

    .line 115
    sget-object v0, Lorg/checkerframework/org/apache/commons/text/similarity/LevenshteinDetailedDistance;->DEFAULT_INSTANCE:Lorg/checkerframework/org/apache/commons/text/similarity/LevenshteinDetailedDistance;

    return-object v0
.end method

.method private static limitedCompare(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)Lorg/checkerframework/org/apache/commons/text/similarity/LevenshteinResults;
    .locals 20
    .param p0, "left"    # Ljava/lang/CharSequence;
    .param p1, "right"    # Ljava/lang/CharSequence;
    .param p2, "threshold"    # I

    .line 161
    move/from16 v0, p2

    if-eqz p0, :cond_10

    if-eqz p1, :cond_10

    .line 164
    if-ltz v0, :cond_f

    .line 218
    invoke-interface/range {p0 .. p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    .line 219
    .local v1, "n":I
    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    .line 222
    .local v2, "m":I
    const/4 v3, -0x1

    const/4 v4, 0x0

    if-nez v1, :cond_1

    .line 223
    if-gt v2, v0, :cond_0

    new-instance v3, Lorg/checkerframework/org/apache/commons/text/similarity/LevenshteinResults;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v3, v5, v6, v7, v4}, Lorg/checkerframework/org/apache/commons/text/similarity/LevenshteinResults;-><init>(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    goto :goto_0

    :cond_0
    new-instance v5, Lorg/checkerframework/org/apache/commons/text/similarity/LevenshteinResults;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v5, v3, v6, v7, v4}, Lorg/checkerframework/org/apache/commons/text/similarity/LevenshteinResults;-><init>(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    move-object v3, v5

    :goto_0
    return-object v3

    .line 224
    :cond_1
    if-nez v2, :cond_3

    .line 225
    if-gt v1, v0, :cond_2

    new-instance v3, Lorg/checkerframework/org/apache/commons/text/similarity/LevenshteinResults;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v3, v5, v6, v7, v4}, Lorg/checkerframework/org/apache/commons/text/similarity/LevenshteinResults;-><init>(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    goto :goto_1

    :cond_2
    new-instance v5, Lorg/checkerframework/org/apache/commons/text/similarity/LevenshteinResults;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v5, v3, v6, v7, v4}, Lorg/checkerframework/org/apache/commons/text/similarity/LevenshteinResults;-><init>(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    move-object v3, v5

    :goto_1
    return-object v3

    .line 228
    :cond_3
    const/4 v5, 0x0

    .line 229
    .local v5, "swapped":Z
    if-le v1, v2, :cond_4

    .line 231
    move-object/from16 v6, p0

    .line 232
    .local v6, "tmp":Ljava/lang/CharSequence;
    move-object/from16 v7, p1

    .line 233
    .end local p0    # "left":Ljava/lang/CharSequence;
    .local v7, "left":Ljava/lang/CharSequence;
    move-object v8, v6

    .line 234
    .end local p1    # "right":Ljava/lang/CharSequence;
    .local v8, "right":Ljava/lang/CharSequence;
    move v1, v2

    .line 235
    invoke-interface {v8}, Ljava/lang/CharSequence;->length()I

    move-result v2

    .line 236
    const/4 v5, 0x1

    goto :goto_2

    .line 229
    .end local v6    # "tmp":Ljava/lang/CharSequence;
    .end local v7    # "left":Ljava/lang/CharSequence;
    .end local v8    # "right":Ljava/lang/CharSequence;
    .restart local p0    # "left":Ljava/lang/CharSequence;
    .restart local p1    # "right":Ljava/lang/CharSequence;
    :cond_4
    move-object/from16 v7, p0

    move-object/from16 v8, p1

    .line 239
    .end local p0    # "left":Ljava/lang/CharSequence;
    .end local p1    # "right":Ljava/lang/CharSequence;
    .restart local v7    # "left":Ljava/lang/CharSequence;
    .restart local v8    # "right":Ljava/lang/CharSequence;
    :goto_2
    add-int/lit8 v6, v1, 0x1

    new-array v6, v6, [I

    .line 240
    .local v6, "p":[I
    add-int/lit8 v9, v1, 0x1

    new-array v9, v9, [I

    .line 242
    .local v9, "d":[I
    add-int/lit8 v10, v2, 0x1

    add-int/lit8 v11, v1, 0x1

    filled-new-array {v10, v11}, [I

    move-result-object v10

    sget-object v11, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v11, v10}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [[I

    .line 245
    .local v10, "matrix":[[I
    const/4 v11, 0x0

    .local v11, "index":I
    :goto_3
    if-gt v11, v1, :cond_5

    .line 246
    aget-object v12, v10, v4

    aput v11, v12, v11

    .line 245
    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    .line 248
    .end local v11    # "index":I
    :cond_5
    const/4 v11, 0x0

    .restart local v11    # "index":I
    :goto_4
    if-gt v11, v2, :cond_6

    .line 249
    aget-object v12, v10, v11

    aput v11, v12, v4

    .line 248
    add-int/lit8 v11, v11, 0x1

    goto :goto_4

    .line 253
    .end local v11    # "index":I
    :cond_6
    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v11

    const/4 v12, 0x1

    add-int/2addr v11, v12

    .line 254
    .local v11, "boundary":I
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_5
    if-ge v13, v11, :cond_7

    .line 255
    aput v13, v6, v13

    .line 254
    add-int/lit8 v13, v13, 0x1

    goto :goto_5

    .line 259
    .end local v13    # "i":I
    :cond_7
    array-length v13, v6

    const v14, 0x7fffffff

    invoke-static {v6, v11, v13, v14}, Ljava/util/Arrays;->fill([IIII)V

    .line 260
    invoke-static {v9, v14}, Ljava/util/Arrays;->fill([II)V

    .line 263
    const/4 v13, 0x1

    .local v13, "j":I
    :goto_6
    if-gt v13, v2, :cond_d

    .line 264
    add-int/lit8 v15, v13, -0x1

    invoke-interface {v8, v15}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v15

    .line 265
    .local v15, "rightJ":C
    aput v13, v9, v4

    .line 268
    sub-int v4, v13, v0

    invoke-static {v12, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 269
    .local v4, "min":I
    sub-int v12, v14, v0

    if-le v13, v12, :cond_8

    move v12, v1

    goto :goto_7

    :cond_8
    add-int v12, v13, v0

    invoke-static {v1, v12}, Ljava/lang/Math;->min(II)I

    move-result v12

    .line 273
    .local v12, "max":I
    :goto_7
    if-le v4, v12, :cond_9

    .line 274
    new-instance v14, Lorg/checkerframework/org/apache/commons/text/similarity/LevenshteinResults;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move/from16 p1, v2

    const/16 v16, 0x0

    .end local v2    # "m":I
    .local p1, "m":I
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move/from16 v17, v11

    .end local v11    # "boundary":I
    .local v17, "boundary":I
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    move/from16 v18, v5

    .end local v5    # "swapped":Z
    .local v18, "swapped":Z
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct {v14, v3, v2, v11, v5}, Lorg/checkerframework/org/apache/commons/text/similarity/LevenshteinResults;-><init>(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    return-object v14

    .line 278
    .end local v17    # "boundary":I
    .end local v18    # "swapped":Z
    .end local p1    # "m":I
    .restart local v2    # "m":I
    .restart local v5    # "swapped":Z
    .restart local v11    # "boundary":I
    :cond_9
    move/from16 p1, v2

    move/from16 v18, v5

    move/from16 v17, v11

    .end local v2    # "m":I
    .end local v5    # "swapped":Z
    .end local v11    # "boundary":I
    .restart local v17    # "boundary":I
    .restart local v18    # "swapped":Z
    .restart local p1    # "m":I
    const/4 v2, 0x1

    if-le v4, v2, :cond_a

    .line 279
    add-int/lit8 v2, v4, -0x1

    aput v14, v9, v2

    .line 283
    :cond_a
    move v2, v4

    .local v2, "i":I
    :goto_8
    if-gt v2, v12, :cond_c

    .line 284
    add-int/lit8 v5, v2, -0x1

    invoke-interface {v7, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    if-ne v5, v15, :cond_b

    .line 286
    add-int/lit8 v5, v2, -0x1

    aget v5, v6, v5

    aput v5, v9, v2

    const/4 v11, 0x1

    goto :goto_9

    .line 289
    :cond_b
    add-int/lit8 v5, v2, -0x1

    aget v5, v9, v5

    aget v11, v6, v2

    invoke-static {v5, v11}, Ljava/lang/Math;->min(II)I

    move-result v5

    add-int/lit8 v11, v2, -0x1

    aget v11, v6, v11

    invoke-static {v5, v11}, Ljava/lang/Math;->min(II)I

    move-result v5

    const/4 v11, 0x1

    add-int/2addr v5, v11

    aput v5, v9, v2

    .line 291
    :goto_9
    aget-object v5, v10, v13

    aget v19, v9, v2

    aput v19, v5, v2

    .line 283
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_c
    const/4 v11, 0x1

    .line 295
    .end local v2    # "i":I
    move-object v2, v6

    .line 296
    .local v2, "tempD":[I
    move-object v6, v9

    .line 297
    move-object v9, v2

    .line 263
    .end local v4    # "min":I
    .end local v12    # "max":I
    .end local v15    # "rightJ":C
    add-int/lit8 v13, v13, 0x1

    move/from16 v2, p1

    move v12, v11

    move/from16 v11, v17

    move/from16 v5, v18

    const/4 v4, 0x0

    goto/16 :goto_6

    .end local v17    # "boundary":I
    .end local v18    # "swapped":Z
    .end local p1    # "m":I
    .local v2, "m":I
    .restart local v5    # "swapped":Z
    .restart local v11    # "boundary":I
    :cond_d
    move/from16 p1, v2

    move/from16 v18, v5

    move/from16 v17, v11

    .line 301
    .end local v2    # "m":I
    .end local v5    # "swapped":Z
    .end local v11    # "boundary":I
    .end local v13    # "j":I
    .restart local v17    # "boundary":I
    .restart local v18    # "swapped":Z
    .restart local p1    # "m":I
    aget v2, v6, v1

    if-gt v2, v0, :cond_e

    .line 302
    move/from16 v5, v18

    .end local v18    # "swapped":Z
    .restart local v5    # "swapped":Z
    invoke-static {v7, v8, v10, v5}, Lorg/checkerframework/org/apache/commons/text/similarity/LevenshteinDetailedDistance;->findDetailedResults(Ljava/lang/CharSequence;Ljava/lang/CharSequence;[[IZ)Lorg/checkerframework/org/apache/commons/text/similarity/LevenshteinResults;

    move-result-object v2

    return-object v2

    .line 304
    .end local v5    # "swapped":Z
    .restart local v18    # "swapped":Z
    :cond_e
    new-instance v2, Lorg/checkerframework/org/apache/commons/text/similarity/LevenshteinResults;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v2, v3, v11, v12, v4}, Lorg/checkerframework/org/apache/commons/text/similarity/LevenshteinResults;-><init>(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    return-object v2

    .line 165
    .end local v1    # "n":I
    .end local v6    # "p":[I
    .end local v7    # "left":Ljava/lang/CharSequence;
    .end local v8    # "right":Ljava/lang/CharSequence;
    .end local v9    # "d":[I
    .end local v10    # "matrix":[[I
    .end local v17    # "boundary":I
    .end local v18    # "swapped":Z
    .restart local p0    # "left":Ljava/lang/CharSequence;
    .local p1, "right":Ljava/lang/CharSequence;
    :cond_f
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Threshold must not be negative"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 162
    :cond_10
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "CharSequences must not be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static unlimitedCompare(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Lorg/checkerframework/org/apache/commons/text/similarity/LevenshteinResults;
    .locals 14
    .param p0, "left"    # Ljava/lang/CharSequence;
    .param p1, "right"    # Ljava/lang/CharSequence;

    .line 340
    if-eqz p0, :cond_9

    if-eqz p1, :cond_9

    .line 361
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 362
    .local v0, "n":I
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    .line 364
    .local v1, "m":I
    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 365
    new-instance v3, Lorg/checkerframework/org/apache/commons/text/similarity/LevenshteinResults;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v3, v4, v5, v6, v2}, Lorg/checkerframework/org/apache/commons/text/similarity/LevenshteinResults;-><init>(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    return-object v3

    .line 366
    :cond_0
    if-nez v1, :cond_1

    .line 367
    new-instance v3, Lorg/checkerframework/org/apache/commons/text/similarity/LevenshteinResults;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v3, v4, v5, v6, v2}, Lorg/checkerframework/org/apache/commons/text/similarity/LevenshteinResults;-><init>(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    return-object v3

    .line 369
    :cond_1
    const/4 v3, 0x0

    .line 370
    .local v3, "swapped":Z
    if-le v0, v1, :cond_2

    .line 372
    move-object v4, p0

    .line 373
    .local v4, "tmp":Ljava/lang/CharSequence;
    move-object p0, p1

    .line 374
    move-object p1, v4

    .line 375
    move v0, v1

    .line 376
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    .line 377
    const/4 v3, 0x1

    .line 380
    .end local v4    # "tmp":Ljava/lang/CharSequence;
    :cond_2
    add-int/lit8 v4, v0, 0x1

    new-array v4, v4, [I

    .line 381
    .local v4, "p":[I
    add-int/lit8 v5, v0, 0x1

    new-array v5, v5, [I

    .line 383
    .local v5, "d":[I
    add-int/lit8 v6, v1, 0x1

    add-int/lit8 v7, v0, 0x1

    filled-new-array {v6, v7}, [I

    move-result-object v6

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v7, v6}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [[I

    .line 386
    .local v6, "matrix":[[I
    const/4 v7, 0x0

    .local v7, "index":I
    :goto_0
    if-gt v7, v0, :cond_3

    .line 387
    aget-object v8, v6, v2

    aput v7, v8, v7

    .line 386
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 389
    .end local v7    # "index":I
    :cond_3
    const/4 v7, 0x0

    .restart local v7    # "index":I
    :goto_1
    if-gt v7, v1, :cond_4

    .line 390
    aget-object v8, v6, v7

    aput v7, v8, v2

    .line 389
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 400
    .end local v7    # "index":I
    :cond_4
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_2
    if-gt v7, v0, :cond_5

    .line 401
    aput v7, v4, v7

    .line 400
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 404
    :cond_5
    const/4 v8, 0x1

    .local v8, "j":I
    :goto_3
    if-gt v8, v1, :cond_8

    .line 405
    add-int/lit8 v9, v8, -0x1

    invoke-interface {p1, v9}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v9

    .line 406
    .local v9, "rightJ":C
    aput v8, v5, v2

    .line 408
    const/4 v7, 0x1

    :goto_4
    if-gt v7, v0, :cond_7

    .line 409
    add-int/lit8 v10, v7, -0x1

    invoke-interface {p0, v10}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v10

    const/4 v11, 0x1

    if-ne v10, v9, :cond_6

    move v10, v2

    goto :goto_5

    :cond_6
    move v10, v11

    .line 411
    .local v10, "cost":I
    :goto_5
    add-int/lit8 v12, v7, -0x1

    aget v12, v5, v12

    add-int/2addr v12, v11

    aget v13, v4, v7

    add-int/2addr v13, v11

    invoke-static {v12, v13}, Ljava/lang/Math;->min(II)I

    move-result v11

    add-int/lit8 v12, v7, -0x1

    aget v12, v4, v12

    add-int/2addr v12, v10

    invoke-static {v11, v12}, Ljava/lang/Math;->min(II)I

    move-result v11

    aput v11, v5, v7

    .line 413
    aget-object v11, v6, v8

    aget v12, v5, v7

    aput v12, v11, v7

    .line 408
    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    .line 417
    .end local v10    # "cost":I
    :cond_7
    move-object v10, v4

    .line 418
    .local v10, "tempD":[I
    move-object v4, v5

    .line 419
    move-object v5, v10

    .line 404
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 421
    .end local v9    # "rightJ":C
    .end local v10    # "tempD":[I
    :cond_8
    invoke-static {p0, p1, v6, v3}, Lorg/checkerframework/org/apache/commons/text/similarity/LevenshteinDetailedDistance;->findDetailedResults(Ljava/lang/CharSequence;Ljava/lang/CharSequence;[[IZ)Lorg/checkerframework/org/apache/commons/text/similarity/LevenshteinResults;

    move-result-object v2

    return-object v2

    .line 341
    .end local v0    # "n":I
    .end local v1    # "m":I
    .end local v3    # "swapped":Z
    .end local v4    # "p":[I
    .end local v5    # "d":[I
    .end local v6    # "matrix":[[I
    .end local v7    # "i":I
    .end local v8    # "j":I
    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "CharSequences must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public bridge synthetic apply(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/Object;
    .locals 0

    .line 32
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/org/apache/commons/text/similarity/LevenshteinDetailedDistance;->apply(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Lorg/checkerframework/org/apache/commons/text/similarity/LevenshteinResults;

    move-result-object p1

    return-object p1
.end method

.method public apply(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Lorg/checkerframework/org/apache/commons/text/similarity/LevenshteinResults;
    .locals 1
    .param p1, "left"    # Ljava/lang/CharSequence;
    .param p2, "right"    # Ljava/lang/CharSequence;

    .line 103
    iget-object v0, p0, Lorg/checkerframework/org/apache/commons/text/similarity/LevenshteinDetailedDistance;->threshold:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 104
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {p1, p2, v0}, Lorg/checkerframework/org/apache/commons/text/similarity/LevenshteinDetailedDistance;->limitedCompare(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)Lorg/checkerframework/org/apache/commons/text/similarity/LevenshteinResults;

    move-result-object v0

    return-object v0

    .line 106
    :cond_0
    invoke-static {p1, p2}, Lorg/checkerframework/org/apache/commons/text/similarity/LevenshteinDetailedDistance;->unlimitedCompare(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Lorg/checkerframework/org/apache/commons/text/similarity/LevenshteinResults;

    move-result-object v0

    return-object v0
.end method

.method public getThreshold()Ljava/lang/Integer;
    .locals 1

    .line 124
    iget-object v0, p0, Lorg/checkerframework/org/apache/commons/text/similarity/LevenshteinDetailedDistance;->threshold:Ljava/lang/Integer;

    return-object v0
.end method
