.class public final Lcom/android/dex/Leb128;
.super Ljava/lang/Object;
.source "Leb128.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    return-void
.end method

.method public static readSignedLeb128(Lcom/android/dex/util/ByteInput;)I
    .locals 6
    .param p0, "in"    # Lcom/android/dex/util/ByteInput;

    .line 55
    const/4 v0, 0x0

    .line 57
    .local v0, "result":I
    const/4 v1, 0x0

    .line 58
    .local v1, "count":I
    const/4 v2, -0x1

    .line 61
    .local v2, "signBits":I
    :cond_0
    invoke-interface {p0}, Lcom/android/dex/util/ByteInput;->readByte()B

    move-result v3

    and-int/lit16 v3, v3, 0xff

    .line 62
    .local v3, "cur":I
    and-int/lit8 v4, v3, 0x7f

    mul-int/lit8 v5, v1, 0x7

    shl-int/2addr v4, v5

    or-int/2addr v0, v4

    .line 63
    shl-int/lit8 v2, v2, 0x7

    .line 64
    add-int/lit8 v1, v1, 0x1

    .line 65
    and-int/lit16 v4, v3, 0x80

    const/16 v5, 0x80

    if-ne v4, v5, :cond_1

    const/4 v4, 0x5

    if-lt v1, v4, :cond_0

    .line 67
    :cond_1
    and-int/lit16 v4, v3, 0x80

    if-eq v4, v5, :cond_3

    .line 72
    shr-int/lit8 v4, v2, 0x1

    and-int/2addr v4, v0

    if-eqz v4, :cond_2

    .line 73
    or-int/2addr v0, v2

    .line 76
    :cond_2
    return v0

    .line 68
    :cond_3
    new-instance v4, Lcom/android/dex/DexException;

    const-string v5, "invalid LEB128 sequence"

    invoke-direct {v4, v5}, Lcom/android/dex/DexException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public static readUnsignedLeb128(Lcom/android/dex/util/ByteInput;)I
    .locals 5
    .param p0, "in"    # Lcom/android/dex/util/ByteInput;

    .line 83
    const/4 v0, 0x0

    .line 85
    .local v0, "result":I
    const/4 v1, 0x0

    .line 88
    .local v1, "count":I
    :cond_0
    invoke-interface {p0}, Lcom/android/dex/util/ByteInput;->readByte()B

    move-result v2

    and-int/lit16 v2, v2, 0xff

    .line 89
    .local v2, "cur":I
    and-int/lit8 v3, v2, 0x7f

    mul-int/lit8 v4, v1, 0x7

    shl-int/2addr v3, v4

    or-int/2addr v0, v3

    .line 90
    add-int/lit8 v1, v1, 0x1

    .line 91
    and-int/lit16 v3, v2, 0x80

    const/16 v4, 0x80

    if-ne v3, v4, :cond_1

    const/4 v3, 0x5

    if-lt v1, v3, :cond_0

    .line 93
    :cond_1
    and-int/lit16 v3, v2, 0x80

    if-eq v3, v4, :cond_2

    .line 97
    return v0

    .line 94
    :cond_2
    new-instance v3, Lcom/android/dex/DexException;

    const-string v4, "invalid LEB128 sequence"

    invoke-direct {v3, v4}, Lcom/android/dex/DexException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public static unsignedLeb128Size(I)I
    .locals 3
    .param p0, "value"    # I

    .line 40
    shr-int/lit8 v0, p0, 0x7

    .line 41
    .local v0, "remaining":I
    const/4 v1, 0x0

    .line 43
    .local v1, "count":I
    :goto_0
    if-eqz v0, :cond_0

    .line 44
    shr-int/lit8 v0, v0, 0x7

    .line 45
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 48
    :cond_0
    add-int/lit8 v2, v1, 0x1

    return v2
.end method

.method public static writeSignedLeb128(Lcom/android/dex/util/ByteOutput;I)V
    .locals 7
    .param p0, "out"    # Lcom/android/dex/util/ByteOutput;
    .param p1, "value"    # I

    .line 121
    shr-int/lit8 v0, p1, 0x7

    .line 122
    .local v0, "remaining":I
    const/4 v1, 0x1

    .line 123
    .local v1, "hasMore":Z
    const/high16 v2, -0x80000000

    and-int/2addr v2, p1

    const/4 v3, 0x0

    if-nez v2, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    const/4 v2, -0x1

    .line 125
    .local v2, "end":I
    :goto_0
    if-eqz v1, :cond_4

    .line 126
    const/4 v4, 0x1

    if-ne v0, v2, :cond_2

    and-int/lit8 v5, v0, 0x1

    shr-int/lit8 v6, p1, 0x6

    and-int/2addr v6, v4

    if-eq v5, v6, :cond_1

    goto :goto_1

    :cond_1
    move v4, v3

    :cond_2
    :goto_1
    move v1, v4

    .line 129
    and-int/lit8 v4, p1, 0x7f

    if-eqz v1, :cond_3

    const/16 v5, 0x80

    goto :goto_2

    :cond_3
    move v5, v3

    :goto_2
    or-int/2addr v4, v5

    int-to-byte v4, v4

    invoke-interface {p0, v4}, Lcom/android/dex/util/ByteOutput;->writeByte(I)V

    .line 130
    move p1, v0

    .line 131
    shr-int/lit8 v0, v0, 0x7

    goto :goto_0

    .line 133
    :cond_4
    return-void
.end method

.method public static writeUnsignedLeb128(Lcom/android/dex/util/ByteOutput;I)V
    .locals 2
    .param p0, "out"    # Lcom/android/dex/util/ByteOutput;
    .param p1, "value"    # I

    .line 105
    ushr-int/lit8 v0, p1, 0x7

    .line 107
    .local v0, "remaining":I
    :goto_0
    if-eqz v0, :cond_0

    .line 108
    and-int/lit8 v1, p1, 0x7f

    or-int/lit16 v1, v1, 0x80

    int-to-byte v1, v1

    invoke-interface {p0, v1}, Lcom/android/dex/util/ByteOutput;->writeByte(I)V

    .line 109
    move p1, v0

    .line 110
    ushr-int/lit8 v0, v0, 0x7

    goto :goto_0

    .line 113
    :cond_0
    and-int/lit8 v1, p1, 0x7f

    int-to-byte v1, v1

    invoke-interface {p0, v1}, Lcom/android/dex/util/ByteOutput;->writeByte(I)V

    .line 114
    return-void
.end method
