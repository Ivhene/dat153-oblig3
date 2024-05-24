.class public Lorg/checkerframework/org/apache/commons/text/similarity/JaroWinklerDistance;
.super Ljava/lang/Object;
.source "JaroWinklerDistance.java"

# interfaces
.implements Lorg/checkerframework/org/apache/commons/text/similarity/EditDistance;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/checkerframework/org/apache/commons/text/similarity/EditDistance<",
        "Ljava/lang/Double;",
        ">;"
    }
.end annotation


# static fields
.field public static final INDEX_NOT_FOUND:I = -0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected static matches(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)[I
    .locals 14
    .param p0, "first"    # Ljava/lang/CharSequence;
    .param p1, "second"    # Ljava/lang/CharSequence;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 103
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-le v0, v1, :cond_0

    .line 104
    move-object v0, p0

    .line 105
    .local v0, "max":Ljava/lang/CharSequence;
    move-object v1, p1

    .local v1, "min":Ljava/lang/CharSequence;
    goto :goto_0

    .line 107
    .end local v0    # "max":Ljava/lang/CharSequence;
    .end local v1    # "min":Ljava/lang/CharSequence;
    :cond_0
    move-object v0, p1

    .line 108
    .restart local v0    # "max":Ljava/lang/CharSequence;
    move-object v1, p0

    .line 110
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

    .line 111
    .local v2, "range":I
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v5

    new-array v5, v5, [I

    .line 112
    .local v5, "matchIndexes":[I
    const/4 v6, -0x1

    invoke-static {v5, v6}, Ljava/util/Arrays;->fill([II)V

    .line 113
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v7

    new-array v7, v7, [Z

    .line 114
    .local v7, "matchFlags":[Z
    const/4 v8, 0x0

    .line 115
    .local v8, "matches":I
    const/4 v9, 0x0

    .local v9, "mi":I
    :goto_1
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v10

    if-ge v9, v10, :cond_3

    .line 116
    invoke-interface {v1, v9}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v10

    .line 117
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

    .line 118
    aget-boolean v13, v7, v11

    if-nez v13, :cond_1

    invoke-interface {v0, v11}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v13

    if-ne v10, v13, :cond_1

    .line 119
    aput v11, v5, v9

    .line 120
    aput-boolean v3, v7, v11

    .line 121
    add-int/lit8 v8, v8, 0x1

    .line 122
    goto :goto_3

    .line 117
    :cond_1
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    .line 115
    .end local v10    # "c1":C
    .end local v11    # "xi":I
    .end local v12    # "xn":I
    :cond_2
    :goto_3
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 126
    .end local v9    # "mi":I
    :cond_3
    new-array v3, v8, [C

    .line 127
    .local v3, "ms1":[C
    new-array v4, v8, [C

    .line 128
    .local v4, "ms2":[C
    const/4 v9, 0x0

    .local v9, "i":I
    const/4 v10, 0x0

    .local v10, "si":I
    :goto_4
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v11

    if-ge v9, v11, :cond_5

    .line 129
    aget v11, v5, v9

    if-eq v11, v6, :cond_4

    .line 130
    invoke-interface {v1, v9}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v11

    aput-char v11, v3, v10

    .line 131
    add-int/lit8 v10, v10, 0x1

    .line 128
    :cond_4
    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    .line 134
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

    .line 135
    aget-boolean v10, v7, v6

    if-eqz v10, :cond_6

    .line 136
    invoke-interface {v0, v6}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v10

    aput-char v10, v4, v9

    .line 137
    add-int/lit8 v9, v9, 0x1

    .line 134
    :cond_6
    add-int/lit8 v6, v6, 0x1

    goto :goto_5

    .line 140
    .end local v6    # "i":I
    .end local v9    # "si":I
    :cond_7
    const/4 v6, 0x0

    .line 141
    .local v6, "halfTranspositions":I
    const/4 v9, 0x0

    .local v9, "mi":I
    :goto_6
    array-length v10, v3

    if-ge v9, v10, :cond_9

    .line 142
    aget-char v10, v3, v9

    aget-char v11, v4, v9

    if-eq v10, v11, :cond_8

    .line 143
    add-int/lit8 v6, v6, 0x1

    .line 141
    :cond_8
    add-int/lit8 v9, v9, 0x1

    goto :goto_6

    .line 146
    .end local v9    # "mi":I
    :cond_9
    const/4 v9, 0x0

    .line 147
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

    .line 148
    invoke-interface {p0, v10}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v11

    invoke-interface {p1, v10}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v12

    if-ne v11, v12, :cond_a

    .line 149
    add-int/lit8 v9, v9, 0x1

    .line 147
    add-int/lit8 v10, v10, 0x1

    goto :goto_7

    .line 154
    .end local v10    # "mi":I
    :cond_a
    filled-new-array {v8, v6, v9}, [I

    move-result-object v10

    return-object v10
.end method


# virtual methods
.method public apply(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/Double;
    .locals 11
    .param p1, "left"    # Ljava/lang/CharSequence;
    .param p2, "right"    # Ljava/lang/CharSequence;

    .line 70
    if-eqz p1, :cond_2

    if-eqz p2, :cond_2

    .line 79
    const-wide v0, 0x3fb999999999999aL    # 0.1

    .line 80
    .local v0, "defaultScalingFactor":D
    invoke-static {p1, p2}, Lorg/checkerframework/org/apache/commons/text/similarity/JaroWinklerDistance;->matches(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)[I

    move-result-object v2

    .line 81
    .local v2, "mtp":[I
    const/4 v3, 0x0

    aget v3, v2, v3

    int-to-double v3, v3

    .line 82
    .local v3, "m":D
    const-wide/16 v5, 0x0

    cmpl-double v7, v3, v5

    if-nez v7, :cond_0

    .line 83
    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    return-object v5

    .line 85
    :cond_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v5

    int-to-double v5, v5

    div-double v5, v3, v5

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v7

    int-to-double v7, v7

    div-double v7, v3, v7

    add-double/2addr v5, v7

    const/4 v7, 0x1

    aget v7, v2, v7

    int-to-double v7, v7

    const-wide/high16 v9, 0x4000000000000000L    # 2.0

    div-double/2addr v7, v9

    sub-double v7, v3, v7

    div-double/2addr v7, v3

    add-double/2addr v5, v7

    const-wide/high16 v7, 0x4008000000000000L    # 3.0

    div-double/2addr v5, v7

    .line 86
    .local v5, "j":D
    const-wide v7, 0x3fe6666666666666L    # 0.7

    cmpg-double v7, v5, v7

    if-gez v7, :cond_1

    move-wide v7, v5

    goto :goto_0

    :cond_1
    const/4 v7, 0x2

    aget v7, v2, v7

    int-to-double v7, v7

    const-wide v9, 0x3fb999999999999aL    # 0.1

    mul-double/2addr v7, v9

    const-wide/high16 v9, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v9, v5

    mul-double/2addr v7, v9

    add-double/2addr v7, v5

    .line 87
    .local v7, "jw":D
    :goto_0
    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v9

    return-object v9

    .line 71
    .end local v0    # "defaultScalingFactor":D
    .end local v2    # "mtp":[I
    .end local v3    # "m":D
    .end local v5    # "j":D
    .end local v7    # "jw":D
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "CharSequences must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic apply(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/Object;
    .locals 0

    .line 27
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/org/apache/commons/text/similarity/JaroWinklerDistance;->apply(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/Double;

    move-result-object p1

    return-object p1
.end method
