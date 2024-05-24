.class public Lorg/checkerframework/org/apache/commons/text/similarity/JaroWinklerSimilarity;
.super Ljava/lang/Object;
.source "JaroWinklerSimilarity.java"

# interfaces
.implements Lorg/checkerframework/org/apache/commons/text/similarity/SimilarityScore;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/checkerframework/org/apache/commons/text/similarity/SimilarityScore<",
        "Ljava/lang/Double;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected static matches(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)[I
    .locals 14
    .param p0, "first"    # Ljava/lang/CharSequence;
    .param p1, "second"    # Ljava/lang/CharSequence;

    .line 109
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-le v0, v1, :cond_0

    .line 110
    move-object v0, p0

    .line 111
    .local v0, "max":Ljava/lang/CharSequence;
    move-object v1, p1

    .local v1, "min":Ljava/lang/CharSequence;
    goto :goto_0

    .line 113
    .end local v0    # "max":Ljava/lang/CharSequence;
    .end local v1    # "min":Ljava/lang/CharSequence;
    :cond_0
    move-object v0, p1

    .line 114
    .restart local v0    # "max":Ljava/lang/CharSequence;
    move-object v1, p0

    .line 116
    .restart local v1    # "min":Ljava/lang/CharSequence;
    :goto_0
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    const/4 v4, 0x0

    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 117
    .local v2, "range":I
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v5

    new-array v5, v5, [I

    .line 118
    .local v5, "matchIndexes":[I
    const/4 v6, -0x1

    invoke-static {v5, v6}, Ljava/util/Arrays;->fill([II)V

    .line 119
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v7

    new-array v7, v7, [Z

    .line 120
    .local v7, "matchFlags":[Z
    const/4 v8, 0x0

    .line 121
    .local v8, "matches":I
    const/4 v9, 0x0

    .local v9, "mi":I
    :goto_1
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v10

    if-ge v9, v10, :cond_3

    .line 122
    invoke-interface {v1, v9}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v10

    .line 123
    .local v10, "c1":C
    sub-int v11, v9, v2

    invoke-static {v11, v4}, Ljava/lang/Math;->max(II)I

    move-result v11

    .local v11, "xi":I
    add-int v12, v9, v2

    add-int/2addr v12, v3

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v13

    invoke-static {v12, v13}, Ljava/lang/Math;->min(II)I

    move-result v12

    .local v12, "xn":I
    :goto_2
    if-ge v11, v12, :cond_2

    .line 124
    aget-boolean v13, v7, v11

    if-nez v13, :cond_1

    invoke-interface {v0, v11}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v13

    if-ne v10, v13, :cond_1

    .line 125
    aput v11, v5, v9

    .line 126
    aput-boolean v3, v7, v11

    .line 127
    add-int/lit8 v8, v8, 0x1

    .line 128
    goto :goto_3

    .line 123
    :cond_1
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    .line 121
    .end local v10    # "c1":C
    .end local v11    # "xi":I
    .end local v12    # "xn":I
    :cond_2
    :goto_3
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 132
    .end local v9    # "mi":I
    :cond_3
    new-array v3, v8, [C

    .line 133
    .local v3, "ms1":[C
    new-array v4, v8, [C

    .line 134
    .local v4, "ms2":[C
    const/4 v9, 0x0

    .local v9, "i":I
    const/4 v10, 0x0

    .local v10, "si":I
    :goto_4
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v11

    if-ge v9, v11, :cond_5

    .line 135
    aget v11, v5, v9

    if-eq v11, v6, :cond_4

    .line 136
    invoke-interface {v1, v9}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v11

    aput-char v11, v3, v10

    .line 137
    add-int/lit8 v10, v10, 0x1

    .line 134
    :cond_4
    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    .line 140
    .end local v9    # "i":I
    .end local v10    # "si":I
    :cond_5
    const/4 v6, 0x0

    .local v6, "i":I
    const/4 v9, 0x0

    .local v9, "si":I
    :goto_5
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v10

    if-ge v6, v10, :cond_7

    .line 141
    aget-boolean v10, v7, v6

    if-eqz v10, :cond_6

    .line 142
    invoke-interface {v0, v6}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v10

    aput-char v10, v4, v9

    .line 143
    add-int/lit8 v9, v9, 0x1

    .line 140
    :cond_6
    add-int/lit8 v6, v6, 0x1

    goto :goto_5

    .line 146
    .end local v6    # "i":I
    .end local v9    # "si":I
    :cond_7
    const/4 v6, 0x0

    .line 147
    .local v6, "halfTranspositions":I
    const/4 v9, 0x0

    .local v9, "mi":I
    :goto_6
    array-length v10, v3

    if-ge v9, v10, :cond_9

    .line 148
    aget-char v10, v3, v9

    aget-char v11, v4, v9

    if-eq v10, v11, :cond_8

    .line 149
    add-int/lit8 v6, v6, 0x1

    .line 147
    :cond_8
    add-int/lit8 v9, v9, 0x1

    goto :goto_6

    .line 152
    .end local v9    # "mi":I
    :cond_9
    const/4 v9, 0x0

    .line 153
    .local v9, "prefix":I
    const/4 v10, 0x0

    .local v10, "mi":I
    :goto_7
    const/4 v11, 0x4

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v12

    invoke-static {v11, v12}, Ljava/lang/Math;->min(II)I

    move-result v11

    if-ge v10, v11, :cond_a

    .line 154
    invoke-interface {p0, v10}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v11

    invoke-interface {p1, v10}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v12

    if-ne v11, v12, :cond_a

    .line 155
    add-int/lit8 v9, v9, 0x1

    .line 153
    add-int/lit8 v10, v10, 0x1

    goto :goto_7

    .line 160
    .end local v10    # "mi":I
    :cond_a
    filled-new-array {v8, v6, v9}, [I

    move-result-object v10

    return-object v10
.end method


# virtual methods
.method public apply(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/Double;
    .locals 13
    .param p1, "left"    # Ljava/lang/CharSequence;
    .param p2, "right"    # Ljava/lang/CharSequence;

    .line 80
    const-wide v0, 0x3fb999999999999aL    # 0.1

    .line 82
    .local v0, "defaultScalingFactor":D
    if-eqz p1, :cond_3

    if-eqz p2, :cond_3

    .line 86
    invoke-static {p1, p2}, Lorg/checkerframework/org/apache/commons/lang3/StringUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    if-eqz v2, :cond_0

    .line 87
    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    return-object v2

    .line 90
    :cond_0
    invoke-static {p1, p2}, Lorg/checkerframework/org/apache/commons/text/similarity/JaroWinklerSimilarity;->matches(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)[I

    move-result-object v2

    .line 91
    .local v2, "mtp":[I
    const/4 v5, 0x0

    aget v5, v2, v5

    int-to-double v5, v5

    .line 92
    .local v5, "m":D
    const-wide/16 v7, 0x0

    cmpl-double v9, v5, v7

    if-nez v9, :cond_1

    .line 93
    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    return-object v3

    .line 95
    :cond_1
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v7

    int-to-double v7, v7

    div-double v7, v5, v7

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v9

    int-to-double v9, v9

    div-double v9, v5, v9

    add-double/2addr v7, v9

    const/4 v9, 0x1

    aget v9, v2, v9

    int-to-double v9, v9

    const-wide/high16 v11, 0x4000000000000000L    # 2.0

    div-double/2addr v9, v11

    sub-double v9, v5, v9

    div-double/2addr v9, v5

    add-double/2addr v7, v9

    const-wide/high16 v9, 0x4008000000000000L    # 3.0

    div-double/2addr v7, v9

    .line 96
    .local v7, "j":D
    const-wide v9, 0x3fe6666666666666L    # 0.7

    cmpg-double v9, v7, v9

    if-gez v9, :cond_2

    move-wide v9, v7

    goto :goto_0

    :cond_2
    const/4 v9, 0x2

    aget v9, v2, v9

    int-to-double v9, v9

    const-wide v11, 0x3fb999999999999aL    # 0.1

    mul-double/2addr v9, v11

    sub-double/2addr v3, v7

    mul-double/2addr v9, v3

    add-double/2addr v9, v7

    :goto_0
    move-wide v3, v9

    .line 97
    .local v3, "jw":D
    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v9

    return-object v9

    .line 83
    .end local v2    # "mtp":[I
    .end local v3    # "jw":D
    .end local v5    # "m":D
    .end local v7    # "j":D
    :cond_3
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "CharSequences must not be null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public bridge synthetic apply(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/Object;
    .locals 0

    .line 44
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/org/apache/commons/text/similarity/JaroWinklerSimilarity;->apply(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/Double;

    move-result-object p1

    return-object p1
.end method
