.class public final Lcom/android/dex/EncodedValueCodec;
.super Ljava/lang/Object;
.source "EncodedValueCodec.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    return-void
.end method

.method public static readSignedInt(Lcom/android/dex/util/ByteInput;I)I
    .locals 4
    .param p0, "in"    # Lcom/android/dex/util/ByteInput;
    .param p1, "zwidth"    # I

    .line 124
    const/4 v0, 0x0

    .line 125
    .local v0, "result":I
    move v1, p1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_0

    .line 126
    ushr-int/lit8 v2, v0, 0x8

    invoke-interface {p0}, Lcom/android/dex/util/ByteInput;->readByte()B

    move-result v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x18

    or-int v0, v2, v3

    .line 125
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 128
    .end local v1    # "i":I
    :cond_0
    rsub-int/lit8 v1, p1, 0x3

    mul-int/lit8 v1, v1, 0x8

    shr-int/2addr v0, v1

    .line 129
    return v0
.end method

.method public static readSignedLong(Lcom/android/dex/util/ByteInput;I)J
    .locals 9
    .param p0, "in"    # Lcom/android/dex/util/ByteInput;
    .param p1, "zwidth"    # I

    .line 159
    const-wide/16 v0, 0x0

    .line 160
    .local v0, "result":J
    move v2, p1

    .local v2, "i":I
    :goto_0
    const/16 v3, 0x8

    if-ltz v2, :cond_0

    .line 161
    ushr-long v3, v0, v3

    invoke-interface {p0}, Lcom/android/dex/util/ByteInput;->readByte()B

    move-result v5

    int-to-long v5, v5

    const-wide/16 v7, 0xff

    and-long/2addr v5, v7

    const/16 v7, 0x38

    shl-long/2addr v5, v7

    or-long v0, v3, v5

    .line 160
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 163
    .end local v2    # "i":I
    :cond_0
    rsub-int/lit8 v2, p1, 0x7

    mul-int/2addr v2, v3

    shr-long/2addr v0, v2

    .line 164
    return-wide v0
.end method

.method public static readUnsignedInt(Lcom/android/dex/util/ByteInput;IZ)I
    .locals 4
    .param p0, "in"    # Lcom/android/dex/util/ByteInput;
    .param p1, "zwidth"    # I
    .param p2, "fillOnRight"    # Z

    .line 139
    const/4 v0, 0x0

    .line 140
    .local v0, "result":I
    if-nez p2, :cond_1

    .line 141
    move v1, p1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_0

    .line 142
    ushr-int/lit8 v2, v0, 0x8

    invoke-interface {p0}, Lcom/android/dex/util/ByteInput;->readByte()B

    move-result v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x18

    or-int v0, v2, v3

    .line 141
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 144
    .end local v1    # "i":I
    :cond_0
    rsub-int/lit8 v1, p1, 0x3

    mul-int/lit8 v1, v1, 0x8

    ushr-int/2addr v0, v1

    goto :goto_2

    .line 146
    :cond_1
    move v1, p1

    .restart local v1    # "i":I
    :goto_1
    if-ltz v1, :cond_2

    .line 147
    ushr-int/lit8 v2, v0, 0x8

    invoke-interface {p0}, Lcom/android/dex/util/ByteInput;->readByte()B

    move-result v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x18

    or-int v0, v2, v3

    .line 146
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 150
    .end local v1    # "i":I
    :cond_2
    :goto_2
    return v0
.end method

.method public static readUnsignedLong(Lcom/android/dex/util/ByteInput;IZ)J
    .locals 11
    .param p0, "in"    # Lcom/android/dex/util/ByteInput;
    .param p1, "zwidth"    # I
    .param p2, "fillOnRight"    # Z

    .line 174
    const-wide/16 v0, 0x0

    .line 175
    .local v0, "result":J
    const/16 v2, 0x38

    const-wide/16 v3, 0xff

    const/16 v5, 0x8

    if-nez p2, :cond_1

    .line 176
    move v6, p1

    .local v6, "i":I
    :goto_0
    if-ltz v6, :cond_0

    .line 177
    ushr-long v7, v0, v5

    invoke-interface {p0}, Lcom/android/dex/util/ByteInput;->readByte()B

    move-result v9

    int-to-long v9, v9

    and-long/2addr v9, v3

    shl-long/2addr v9, v2

    or-long v0, v7, v9

    .line 176
    add-int/lit8 v6, v6, -0x1

    goto :goto_0

    .line 179
    .end local v6    # "i":I
    :cond_0
    rsub-int/lit8 v2, p1, 0x7

    mul-int/2addr v2, v5

    ushr-long/2addr v0, v2

    goto :goto_2

    .line 181
    :cond_1
    move v6, p1

    .restart local v6    # "i":I
    :goto_1
    if-ltz v6, :cond_2

    .line 182
    ushr-long v7, v0, v5

    invoke-interface {p0}, Lcom/android/dex/util/ByteInput;->readByte()B

    move-result v9

    int-to-long v9, v9

    and-long/2addr v9, v3

    shl-long/2addr v9, v2

    or-long v0, v7, v9

    .line 181
    add-int/lit8 v6, v6, -0x1

    goto :goto_1

    .line 185
    .end local v6    # "i":I
    :cond_2
    :goto_2
    return-wide v0
.end method

.method public static writeRightZeroExtendedValue(Lcom/android/dex/util/ByteOutput;IJ)V
    .locals 3
    .param p0, "out"    # Lcom/android/dex/util/ByteOutput;
    .param p1, "type"    # I
    .param p2, "value"    # J

    .line 93
    invoke-static {p2, p3}, Ljava/lang/Long;->numberOfTrailingZeros(J)I

    move-result v0

    rsub-int/lit8 v0, v0, 0x40

    .line 94
    .local v0, "requiredBits":I
    if-nez v0, :cond_0

    .line 95
    const/4 v0, 0x1

    .line 99
    :cond_0
    add-int/lit8 v1, v0, 0x7

    shr-int/lit8 v1, v1, 0x3

    .line 102
    .local v1, "requiredBytes":I
    mul-int/lit8 v2, v1, 0x8

    rsub-int/lit8 v2, v2, 0x40

    shr-long/2addr p2, v2

    .line 108
    add-int/lit8 v2, v1, -0x1

    shl-int/lit8 v2, v2, 0x5

    or-int/2addr v2, p1

    invoke-interface {p0, v2}, Lcom/android/dex/util/ByteOutput;->writeByte(I)V

    .line 111
    :goto_0
    if-lez v1, :cond_1

    .line 112
    long-to-int v2, p2

    int-to-byte v2, v2

    invoke-interface {p0, v2}, Lcom/android/dex/util/ByteOutput;->writeByte(I)V

    .line 113
    const/16 v2, 0x8

    shr-long/2addr p2, v2

    .line 114
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 116
    :cond_1
    return-void
.end method

.method public static writeSignedIntegralValue(Lcom/android/dex/util/ByteOutput;IJ)V
    .locals 3
    .param p0, "out"    # Lcom/android/dex/util/ByteOutput;
    .param p1, "type"    # I
    .param p2, "value"    # J

    .line 42
    const/16 v0, 0x3f

    shr-long v0, p2, v0

    xor-long/2addr v0, p2

    invoke-static {v0, v1}, Ljava/lang/Long;->numberOfLeadingZeros(J)I

    move-result v0

    rsub-int/lit8 v0, v0, 0x41

    .line 45
    .local v0, "requiredBits":I
    add-int/lit8 v1, v0, 0x7

    shr-int/lit8 v1, v1, 0x3

    .line 51
    .local v1, "requiredBytes":I
    add-int/lit8 v2, v1, -0x1

    shl-int/lit8 v2, v2, 0x5

    or-int/2addr v2, p1

    invoke-interface {p0, v2}, Lcom/android/dex/util/ByteOutput;->writeByte(I)V

    .line 54
    :goto_0
    if-lez v1, :cond_0

    .line 55
    long-to-int v2, p2

    int-to-byte v2, v2

    invoke-interface {p0, v2}, Lcom/android/dex/util/ByteOutput;->writeByte(I)V

    .line 56
    const/16 v2, 0x8

    shr-long/2addr p2, v2

    .line 57
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 59
    :cond_0
    return-void
.end method

.method public static writeUnsignedIntegralValue(Lcom/android/dex/util/ByteOutput;IJ)V
    .locals 3
    .param p0, "out"    # Lcom/android/dex/util/ByteOutput;
    .param p1, "type"    # I
    .param p2, "value"    # J

    .line 66
    invoke-static {p2, p3}, Ljava/lang/Long;->numberOfLeadingZeros(J)I

    move-result v0

    rsub-int/lit8 v0, v0, 0x40

    .line 67
    .local v0, "requiredBits":I
    if-nez v0, :cond_0

    .line 68
    const/4 v0, 0x1

    .line 72
    :cond_0
    add-int/lit8 v1, v0, 0x7

    shr-int/lit8 v1, v1, 0x3

    .line 78
    .local v1, "requiredBytes":I
    add-int/lit8 v2, v1, -0x1

    shl-int/lit8 v2, v2, 0x5

    or-int/2addr v2, p1

    invoke-interface {p0, v2}, Lcom/android/dex/util/ByteOutput;->writeByte(I)V

    .line 81
    :goto_0
    if-lez v1, :cond_1

    .line 82
    long-to-int v2, p2

    int-to-byte v2, v2

    invoke-interface {p0, v2}, Lcom/android/dex/util/ByteOutput;->writeByte(I)V

    .line 83
    const/16 v2, 0x8

    shr-long/2addr p2, v2

    .line 84
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 86
    :cond_1
    return-void
.end method
