.class public Lorg/checkerframework/org/apache/commons/text/similarity/LevenshteinDistance;
.super Ljava/lang/Object;
.source "LevenshteinDistance.java"

# interfaces
.implements Lorg/checkerframework/org/apache/commons/text/similarity/EditDistance;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/checkerframework/org/apache/commons/text/similarity/EditDistance<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lorg/checkerframework/org/apache/commons/text/similarity/LevenshteinDistance;


# instance fields
.field private final threshold:Ljava/lang/Integer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 41
    new-instance v0, Lorg/checkerframework/org/apache/commons/text/similarity/LevenshteinDistance;

    invoke-direct {v0}, Lorg/checkerframework/org/apache/commons/text/similarity/LevenshteinDistance;-><init>()V

    sput-object v0, Lorg/checkerframework/org/apache/commons/text/similarity/LevenshteinDistance;->DEFAULT_INSTANCE:Lorg/checkerframework/org/apache/commons/text/similarity/LevenshteinDistance;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 57
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/checkerframework/org/apache/commons/text/similarity/LevenshteinDistance;-><init>(Ljava/lang/Integer;)V

    .line 58
    return-void
.end method

.method public constructor <init>(Ljava/lang/Integer;)V
    .locals 2
    .param p1, "threshold"    # Ljava/lang/Integer;

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ltz v0, :cond_0

    goto :goto_0

    .line 72
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Threshold must not be negative"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 74
    :cond_1
    :goto_0
    iput-object p1, p0, Lorg/checkerframework/org/apache/commons/text/similarity/LevenshteinDistance;->threshold:Ljava/lang/Integer;

    .line 75
    return-void
.end method

.method public static getDefaultInstance()Lorg/checkerframework/org/apache/commons/text/similarity/LevenshteinDistance;
    .locals 1

    .line 123
    sget-object v0, Lorg/checkerframework/org/apache/commons/text/similarity/LevenshteinDistance;->DEFAULT_INSTANCE:Lorg/checkerframework/org/apache/commons/text/similarity/LevenshteinDistance;

    return-object v0
.end method

.method private static limitedCompare(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)I
    .locals 16
    .param p0, "left"    # Ljava/lang/CharSequence;
    .param p1, "right"    # Ljava/lang/CharSequence;
    .param p2, "threshold"    # I

    .line 167
    move/from16 v0, p2

    if-eqz p0, :cond_e

    if-eqz p1, :cond_e

    .line 170
    if-ltz v0, :cond_d

    .line 224
    invoke-interface/range {p0 .. p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    .line 225
    .local v1, "n":I
    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    .line 229
    .local v2, "m":I
    const/4 v3, -0x1

    if-nez v1, :cond_1

    .line 230
    if-gt v2, v0, :cond_0

    move v3, v2

    :cond_0
    return v3

    .line 231
    :cond_1
    if-nez v2, :cond_3

    .line 232
    if-gt v1, v0, :cond_2

    move v3, v1

    :cond_2
    return v3

    .line 235
    :cond_3
    if-le v1, v2, :cond_4

    .line 237
    move-object/from16 v4, p0

    .line 238
    .local v4, "tmp":Ljava/lang/CharSequence;
    move-object/from16 v5, p1

    .line 239
    .end local p0    # "left":Ljava/lang/CharSequence;
    .local v5, "left":Ljava/lang/CharSequence;
    move-object v6, v4

    .line 240
    .end local p1    # "right":Ljava/lang/CharSequence;
    .local v6, "right":Ljava/lang/CharSequence;
    move v1, v2

    .line 241
    invoke-interface {v6}, Ljava/lang/CharSequence;->length()I

    move-result v2

    goto :goto_0

    .line 235
    .end local v4    # "tmp":Ljava/lang/CharSequence;
    .end local v5    # "left":Ljava/lang/CharSequence;
    .end local v6    # "right":Ljava/lang/CharSequence;
    .restart local p0    # "left":Ljava/lang/CharSequence;
    .restart local p1    # "right":Ljava/lang/CharSequence;
    :cond_4
    move-object/from16 v5, p0

    move-object/from16 v6, p1

    .line 245
    .end local p0    # "left":Ljava/lang/CharSequence;
    .end local p1    # "right":Ljava/lang/CharSequence;
    .restart local v5    # "left":Ljava/lang/CharSequence;
    .restart local v6    # "right":Ljava/lang/CharSequence;
    :goto_0
    sub-int v4, v2, v1

    if-le v4, v0, :cond_5

    .line 246
    return v3

    .line 249
    :cond_5
    add-int/lit8 v4, v1, 0x1

    new-array v4, v4, [I

    .line 250
    .local v4, "p":[I
    add-int/lit8 v7, v1, 0x1

    new-array v7, v7, [I

    .line 254
    .local v7, "d":[I
    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v8

    const/4 v9, 0x1

    add-int/2addr v8, v9

    .line 255
    .local v8, "boundary":I
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_1
    if-ge v10, v8, :cond_6

    .line 256
    aput v10, v4, v10

    .line 255
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 260
    .end local v10    # "i":I
    :cond_6
    array-length v10, v4

    const v11, 0x7fffffff

    invoke-static {v4, v8, v10, v11}, Ljava/util/Arrays;->fill([IIII)V

    .line 261
    invoke-static {v7, v11}, Ljava/util/Arrays;->fill([II)V

    .line 264
    const/4 v10, 0x1

    .local v10, "j":I
    :goto_2
    if-gt v10, v2, :cond_b

    .line 265
    add-int/lit8 v12, v10, -0x1

    invoke-interface {v6, v12}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v12

    .line 266
    .local v12, "rightJ":C
    const/4 v13, 0x0

    aput v10, v7, v13

    .line 269
    sub-int v13, v10, v0

    invoke-static {v9, v13}, Ljava/lang/Math;->max(II)I

    move-result v13

    .line 270
    .local v13, "min":I
    sub-int v14, v11, v0

    if-le v10, v14, :cond_7

    move v14, v1

    goto :goto_3

    :cond_7
    add-int v14, v10, v0

    invoke-static {v1, v14}, Ljava/lang/Math;->min(II)I

    move-result v14

    .line 274
    .local v14, "max":I
    :goto_3
    if-le v13, v9, :cond_8

    .line 275
    add-int/lit8 v15, v13, -0x1

    aput v11, v7, v15

    .line 279
    :cond_8
    move v15, v13

    .local v15, "i":I
    :goto_4
    if-gt v15, v14, :cond_a

    .line 280
    add-int/lit8 v11, v15, -0x1

    invoke-interface {v5, v11}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v11

    if-ne v11, v12, :cond_9

    .line 282
    add-int/lit8 v11, v15, -0x1

    aget v11, v4, v11

    aput v11, v7, v15

    goto :goto_5

    .line 286
    :cond_9
    add-int/lit8 v11, v15, -0x1

    aget v11, v7, v11

    aget v3, v4, v15

    invoke-static {v11, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    add-int/lit8 v11, v15, -0x1

    aget v11, v4, v11

    invoke-static {v3, v11}, Ljava/lang/Math;->min(II)I

    move-result v3

    add-int/2addr v3, v9

    aput v3, v7, v15

    .line 279
    :goto_5
    add-int/lit8 v15, v15, 0x1

    const/4 v3, -0x1

    const v11, 0x7fffffff

    goto :goto_4

    .line 291
    .end local v15    # "i":I
    :cond_a
    move-object v3, v4

    .line 292
    .local v3, "tempD":[I
    move-object v4, v7

    .line 293
    move-object v7, v3

    .line 264
    .end local v12    # "rightJ":C
    .end local v13    # "min":I
    .end local v14    # "max":I
    add-int/lit8 v10, v10, 0x1

    const/4 v3, -0x1

    const v11, 0x7fffffff

    goto :goto_2

    .line 299
    .end local v3    # "tempD":[I
    .end local v10    # "j":I
    :cond_b
    aget v3, v4, v1

    if-gt v3, v0, :cond_c

    .line 300
    aget v3, v4, v1

    return v3

    .line 302
    :cond_c
    const/4 v3, -0x1

    return v3

    .line 171
    .end local v1    # "n":I
    .end local v2    # "m":I
    .end local v4    # "p":[I
    .end local v5    # "left":Ljava/lang/CharSequence;
    .end local v6    # "right":Ljava/lang/CharSequence;
    .end local v7    # "d":[I
    .end local v8    # "boundary":I
    .restart local p0    # "left":Ljava/lang/CharSequence;
    .restart local p1    # "right":Ljava/lang/CharSequence;
    :cond_d
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Threshold must not be negative"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 168
    :cond_e
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "CharSequences must not be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static unlimitedCompare(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I
    .locals 13
    .param p0, "left"    # Ljava/lang/CharSequence;
    .param p1, "right"    # Ljava/lang/CharSequence;

    .line 336
    if-eqz p0, :cond_7

    if-eqz p1, :cond_7

    .line 345
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 346
    .local v0, "n":I
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    .line 348
    .local v1, "m":I
    if-nez v0, :cond_0

    .line 349
    return v1

    .line 350
    :cond_0
    if-nez v1, :cond_1

    .line 351
    return v0

    .line 354
    :cond_1
    if-le v0, v1, :cond_2

    .line 356
    move-object v2, p0

    .line 357
    .local v2, "tmp":Ljava/lang/CharSequence;
    move-object p0, p1

    .line 358
    move-object p1, v2

    .line 359
    move v0, v1

    .line 360
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    .line 363
    .end local v2    # "tmp":Ljava/lang/CharSequence;
    :cond_2
    add-int/lit8 v2, v0, 0x1

    new-array v2, v2, [I

    .line 374
    .local v2, "p":[I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-gt v3, v0, :cond_3

    .line 375
    aput v3, v2, v3

    .line 374
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 378
    :cond_3
    const/4 v4, 0x1

    .local v4, "j":I
    :goto_1
    if-gt v4, v1, :cond_6

    .line 379
    const/4 v5, 0x0

    aget v6, v2, v5

    .line 380
    .local v6, "upperLeft":I
    add-int/lit8 v7, v4, -0x1

    invoke-interface {p1, v7}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v7

    .line 381
    .local v7, "rightJ":C
    aput v4, v2, v5

    .line 383
    const/4 v3, 0x1

    :goto_2
    if-gt v3, v0, :cond_5

    .line 384
    aget v8, v2, v3

    .line 385
    .local v8, "upper":I
    add-int/lit8 v9, v3, -0x1

    invoke-interface {p0, v9}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v7, :cond_4

    move v9, v5

    goto :goto_3

    :cond_4
    move v9, v10

    .line 387
    .local v9, "cost":I
    :goto_3
    add-int/lit8 v11, v3, -0x1

    aget v11, v2, v11

    add-int/2addr v11, v10

    aget v12, v2, v3

    add-int/2addr v12, v10

    invoke-static {v11, v12}, Ljava/lang/Math;->min(II)I

    move-result v10

    add-int v11, v6, v9

    invoke-static {v10, v11}, Ljava/lang/Math;->min(II)I

    move-result v10

    aput v10, v2, v3

    .line 388
    move v6, v8

    .line 383
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 378
    .end local v8    # "upper":I
    .end local v9    # "cost":I
    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 392
    .end local v6    # "upperLeft":I
    .end local v7    # "rightJ":C
    :cond_6
    aget v5, v2, v0

    return v5

    .line 337
    .end local v0    # "n":I
    .end local v1    # "m":I
    .end local v2    # "p":[I
    .end local v3    # "i":I
    .end local v4    # "j":I
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "CharSequences must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public apply(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/Integer;
    .locals 1
    .param p1, "left"    # Ljava/lang/CharSequence;
    .param p2, "right"    # Ljava/lang/CharSequence;

    .line 111
    iget-object v0, p0, Lorg/checkerframework/org/apache/commons/text/similarity/LevenshteinDistance;->threshold:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 112
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {p1, p2, v0}, Lorg/checkerframework/org/apache/commons/text/similarity/LevenshteinDistance;->limitedCompare(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 114
    :cond_0
    invoke-static {p1, p2}, Lorg/checkerframework/org/apache/commons/text/similarity/LevenshteinDistance;->unlimitedCompare(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic apply(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/Object;
    .locals 0

    .line 36
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/org/apache/commons/text/similarity/LevenshteinDistance;->apply(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public getThreshold()Ljava/lang/Integer;
    .locals 1

    .line 132
    iget-object v0, p0, Lorg/checkerframework/org/apache/commons/text/similarity/LevenshteinDistance;->threshold:Ljava/lang/Integer;

    return-object v0
.end method
