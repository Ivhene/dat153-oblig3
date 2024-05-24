.class public final Lcom/android/dx/util/Bits;
.super Ljava/lang/Object;
.source "Bits.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    return-void
.end method

.method public static anyInRange([III)Z
    .locals 2
    .param p0, "bits"    # [I
    .param p1, "start"    # I
    .param p2, "end"    # I

    .line 153
    invoke-static {p0, p1}, Lcom/android/dx/util/Bits;->findFirst([II)I

    move-result v0

    .line 154
    .local v0, "idx":I
    if-ltz v0, :cond_0

    if-ge v0, p2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public static bitCount([I)I
    .locals 4
    .param p0, "bits"    # [I

    .line 132
    array-length v0, p0

    .line 133
    .local v0, "len":I
    const/4 v1, 0x0

    .line 135
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 136
    aget v3, p0, v2

    invoke-static {v3}, Ljava/lang/Integer;->bitCount(I)I

    move-result v3

    add-int/2addr v1, v3

    .line 135
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 139
    .end local v2    # "i":I
    :cond_0
    return v1
.end method

.method public static clear([II)V
    .locals 4
    .param p0, "bits"    # [I
    .param p1, "idx"    # I

    .line 101
    shr-int/lit8 v0, p1, 0x5

    .line 102
    .local v0, "arrayIdx":I
    and-int/lit8 v1, p1, 0x1f

    const/4 v2, 0x1

    shl-int v1, v2, v1

    .line 103
    .local v1, "bit":I
    aget v2, p0, v0

    not-int v3, v1

    and-int/2addr v2, v3

    aput v2, p0, v0

    .line 104
    return-void
.end method

.method public static findFirst(II)I
    .locals 2
    .param p0, "value"    # I
    .param p1, "idx"    # I

    .line 194
    const/4 v0, 0x1

    shl-int v1, v0, p1

    sub-int/2addr v1, v0

    not-int v0, v1

    and-int/2addr p0, v0

    .line 195
    invoke-static {p0}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I

    move-result v0

    .line 196
    .local v0, "result":I
    const/16 v1, 0x20

    if-ne v0, v1, :cond_0

    const/4 v1, -0x1

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    return v1
.end method

.method public static findFirst([II)I
    .locals 6
    .param p0, "bits"    # [I
    .param p1, "idx"    # I

    .line 167
    array-length v0, p0

    .line 168
    .local v0, "len":I
    and-int/lit8 v1, p1, 0x1f

    .line 170
    .local v1, "minBit":I
    shr-int/lit8 v2, p1, 0x5

    .local v2, "arrayIdx":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 171
    aget v3, p0, v2

    .line 172
    .local v3, "word":I
    if-eqz v3, :cond_0

    .line 173
    invoke-static {v3, v1}, Lcom/android/dx/util/Bits;->findFirst(II)I

    move-result v4

    .line 174
    .local v4, "bitIdx":I
    if-ltz v4, :cond_0

    .line 175
    shl-int/lit8 v5, v2, 0x5

    add-int/2addr v5, v4

    return v5

    .line 178
    .end local v4    # "bitIdx":I
    :cond_0
    const/4 v1, 0x0

    .line 170
    .end local v3    # "word":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 181
    .end local v2    # "arrayIdx":I
    :cond_1
    const/4 v2, -0x1

    return v2
.end method

.method public static get([II)Z
    .locals 4
    .param p0, "bits"    # [I
    .param p1, "idx"    # I

    .line 59
    shr-int/lit8 v0, p1, 0x5

    .line 60
    .local v0, "arrayIdx":I
    and-int/lit8 v1, p1, 0x1f

    const/4 v2, 0x1

    shl-int v1, v2, v1

    .line 61
    .local v1, "bit":I
    aget v3, p0, v0

    and-int/2addr v3, v1

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2
.end method

.method public static getMax([I)I
    .locals 1
    .param p0, "bits"    # [I

    .line 48
    array-length v0, p0

    mul-int/lit8 v0, v0, 0x20

    return v0
.end method

.method public static isEmpty([I)Z
    .locals 3
    .param p0, "bits"    # [I

    .line 114
    array-length v0, p0

    .line 116
    .local v0, "len":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 117
    aget v2, p0, v1

    if-eqz v2, :cond_0

    .line 118
    const/4 v2, 0x0

    return v2

    .line 116
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 122
    .end local v1    # "i":I
    :cond_1
    const/4 v1, 0x1

    return v1
.end method

.method public static makeBitSet(I)[I
    .locals 2
    .param p0, "max"    # I

    .line 37
    add-int/lit8 v0, p0, 0x1f

    shr-int/lit8 v0, v0, 0x5

    .line 38
    .local v0, "size":I
    new-array v1, v0, [I

    return-object v1
.end method

.method public static or([I[I)V
    .locals 3
    .param p0, "a"    # [I
    .param p1, "b"    # [I

    .line 210
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 211
    aget v1, p0, v0

    aget v2, p1, v0

    or-int/2addr v1, v2

    aput v1, p0, v0

    .line 210
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 213
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method public static set([II)V
    .locals 3
    .param p0, "bits"    # [I
    .param p1, "idx"    # I

    .line 89
    shr-int/lit8 v0, p1, 0x5

    .line 90
    .local v0, "arrayIdx":I
    and-int/lit8 v1, p1, 0x1f

    const/4 v2, 0x1

    shl-int v1, v2, v1

    .line 91
    .local v1, "bit":I
    aget v2, p0, v0

    or-int/2addr v2, v1

    aput v2, p0, v0

    .line 92
    return-void
.end method

.method public static set([IIZ)V
    .locals 4
    .param p0, "bits"    # [I
    .param p1, "idx"    # I
    .param p2, "value"    # Z

    .line 72
    shr-int/lit8 v0, p1, 0x5

    .line 73
    .local v0, "arrayIdx":I
    and-int/lit8 v1, p1, 0x1f

    const/4 v2, 0x1

    shl-int v1, v2, v1

    .line 75
    .local v1, "bit":I
    if-eqz p2, :cond_0

    .line 76
    aget v2, p0, v0

    or-int/2addr v2, v1

    aput v2, p0, v0

    goto :goto_0

    .line 78
    :cond_0
    aget v2, p0, v0

    not-int v3, v1

    and-int/2addr v2, v3

    aput v2, p0, v0

    .line 80
    :goto_0
    return-void
.end method

.method public static toHuman([I)Ljava/lang/String;
    .locals 5
    .param p0, "bits"    # [I

    .line 216
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 218
    .local v0, "sb":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .line 220
    .local v1, "needsComma":Z
    const/16 v2, 0x7b

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 222
    array-length v2, p0

    mul-int/lit8 v2, v2, 0x20

    .line 223
    .local v2, "bitsLength":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_2

    .line 224
    invoke-static {p0, v3}, Lcom/android/dx/util/Bits;->get([II)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 225
    if-eqz v1, :cond_0

    .line 226
    const/16 v4, 0x2c

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 228
    :cond_0
    const/4 v1, 0x1

    .line 229
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 223
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 232
    .end local v3    # "i":I
    :cond_2
    const/16 v3, 0x7d

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 234
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method
