.class public Lnet/bytebuddy/jar/asm/ByteVector;
.super Ljava/lang/Object;
.source "ByteVector.java"


# instance fields
.field data:[B

.field length:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    const/16 v0, 0x40

    new-array v0, v0, [B

    iput-object v0, p0, Lnet/bytebuddy/jar/asm/ByteVector;->data:[B

    .line 47
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "initialCapacity"    # I

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    new-array v0, p1, [B

    iput-object v0, p0, Lnet/bytebuddy/jar/asm/ByteVector;->data:[B

    .line 56
    return-void
.end method

.method constructor <init>([B)V
    .locals 1
    .param p1, "data"    # [B

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    iput-object p1, p0, Lnet/bytebuddy/jar/asm/ByteVector;->data:[B

    .line 65
    array-length v0, p1

    iput v0, p0, Lnet/bytebuddy/jar/asm/ByteVector;->length:I

    .line 66
    return-void
.end method

.method private enlarge(I)V
    .locals 6
    .param p1, "size"    # I

    .line 355
    iget-object v0, p0, Lnet/bytebuddy/jar/asm/ByteVector;->data:[B

    array-length v1, v0

    mul-int/lit8 v1, v1, 0x2

    .line 356
    .local v1, "doubleCapacity":I
    iget v2, p0, Lnet/bytebuddy/jar/asm/ByteVector;->length:I

    add-int v3, v2, p1

    .line 357
    .local v3, "minimalCapacity":I
    if-le v1, v3, :cond_0

    move v4, v1

    goto :goto_0

    :cond_0
    move v4, v3

    :goto_0
    new-array v4, v4, [B

    .line 358
    .local v4, "newData":[B
    const/4 v5, 0x0

    invoke-static {v0, v5, v4, v5, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 359
    iput-object v4, p0, Lnet/bytebuddy/jar/asm/ByteVector;->data:[B

    .line 360
    return-void
.end method


# virtual methods
.method final encodeUtf8(Ljava/lang/String;II)Lnet/bytebuddy/jar/asm/ByteVector;
    .locals 12
    .param p1, "stringValue"    # Ljava/lang/String;
    .param p2, "offset"    # I
    .param p3, "maxByteLength"    # I

    .line 285
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 286
    .local v0, "charLength":I
    move v1, p2

    .line 287
    .local v1, "byteLength":I
    move v2, p2

    .local v2, "i":I
    :goto_0
    const/16 v3, 0x7f

    const/16 v4, 0x7ff

    const/4 v5, 0x1

    if-ge v2, v0, :cond_2

    .line 288
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v6

    .line 289
    .local v6, "charValue":C
    if-lt v6, v5, :cond_0

    if-gt v6, v3, :cond_0

    .line 290
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 291
    :cond_0
    if-gt v6, v4, :cond_1

    .line 292
    add-int/lit8 v1, v1, 0x2

    goto :goto_1

    .line 294
    :cond_1
    add-int/lit8 v1, v1, 0x3

    .line 287
    .end local v6    # "charValue":C
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 297
    .end local v2    # "i":I
    :cond_2
    if-gt v1, p3, :cond_8

    .line 301
    iget v2, p0, Lnet/bytebuddy/jar/asm/ByteVector;->length:I

    sub-int v6, v2, p2

    add-int/lit8 v6, v6, -0x2

    .line 302
    .local v6, "byteLengthOffset":I
    if-ltz v6, :cond_3

    .line 303
    iget-object v7, p0, Lnet/bytebuddy/jar/asm/ByteVector;->data:[B

    ushr-int/lit8 v8, v1, 0x8

    int-to-byte v8, v8

    aput-byte v8, v7, v6

    .line 304
    add-int/lit8 v8, v6, 0x1

    int-to-byte v9, v1

    aput-byte v9, v7, v8

    .line 306
    :cond_3
    add-int/2addr v2, v1

    sub-int/2addr v2, p2

    iget-object v7, p0, Lnet/bytebuddy/jar/asm/ByteVector;->data:[B

    array-length v7, v7

    if-le v2, v7, :cond_4

    .line 307
    sub-int v2, v1, p2

    invoke-direct {p0, v2}, Lnet/bytebuddy/jar/asm/ByteVector;->enlarge(I)V

    .line 309
    :cond_4
    iget v2, p0, Lnet/bytebuddy/jar/asm/ByteVector;->length:I

    .line 310
    .local v2, "currentLength":I
    move v7, p2

    .local v7, "i":I
    :goto_2
    if-ge v7, v0, :cond_7

    .line 311
    invoke-virtual {p1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v8

    .line 312
    .local v8, "charValue":C
    if-lt v8, v5, :cond_5

    if-gt v8, v3, :cond_5

    .line 313
    iget-object v9, p0, Lnet/bytebuddy/jar/asm/ByteVector;->data:[B

    add-int/lit8 v10, v2, 0x1

    .end local v2    # "currentLength":I
    .local v10, "currentLength":I
    int-to-byte v11, v8

    aput-byte v11, v9, v2

    move v2, v10

    goto :goto_3

    .line 314
    .end local v10    # "currentLength":I
    .restart local v2    # "currentLength":I
    :cond_5
    if-gt v8, v4, :cond_6

    .line 315
    iget-object v9, p0, Lnet/bytebuddy/jar/asm/ByteVector;->data:[B

    add-int/lit8 v10, v2, 0x1

    .end local v2    # "currentLength":I
    .restart local v10    # "currentLength":I
    shr-int/lit8 v11, v8, 0x6

    and-int/lit8 v11, v11, 0x1f

    or-int/lit16 v11, v11, 0xc0

    int-to-byte v11, v11

    aput-byte v11, v9, v2

    .line 316
    add-int/lit8 v2, v10, 0x1

    .end local v10    # "currentLength":I
    .restart local v2    # "currentLength":I
    and-int/lit8 v11, v8, 0x3f

    or-int/lit16 v11, v11, 0x80

    int-to-byte v11, v11

    aput-byte v11, v9, v10

    goto :goto_3

    .line 318
    :cond_6
    iget-object v9, p0, Lnet/bytebuddy/jar/asm/ByteVector;->data:[B

    add-int/lit8 v10, v2, 0x1

    .end local v2    # "currentLength":I
    .restart local v10    # "currentLength":I
    shr-int/lit8 v11, v8, 0xc

    and-int/lit8 v11, v11, 0xf

    or-int/lit16 v11, v11, 0xe0

    int-to-byte v11, v11

    aput-byte v11, v9, v2

    .line 319
    add-int/lit8 v2, v10, 0x1

    .end local v10    # "currentLength":I
    .restart local v2    # "currentLength":I
    shr-int/lit8 v11, v8, 0x6

    and-int/lit8 v11, v11, 0x3f

    or-int/lit16 v11, v11, 0x80

    int-to-byte v11, v11

    aput-byte v11, v9, v10

    .line 320
    add-int/lit8 v10, v2, 0x1

    .end local v2    # "currentLength":I
    .restart local v10    # "currentLength":I
    and-int/lit8 v11, v8, 0x3f

    or-int/lit16 v11, v11, 0x80

    int-to-byte v11, v11

    aput-byte v11, v9, v2

    move v2, v10

    .line 310
    .end local v8    # "charValue":C
    .end local v10    # "currentLength":I
    .restart local v2    # "currentLength":I
    :goto_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 323
    .end local v7    # "i":I
    :cond_7
    iput v2, p0, Lnet/bytebuddy/jar/asm/ByteVector;->length:I

    .line 324
    return-object p0

    .line 298
    .end local v2    # "currentLength":I
    .end local v6    # "byteLengthOffset":I
    :cond_8
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "UTF8 string too large"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method final put11(II)Lnet/bytebuddy/jar/asm/ByteVector;
    .locals 4
    .param p1, "byteValue1"    # I
    .param p2, "byteValue2"    # I

    .line 92
    iget v0, p0, Lnet/bytebuddy/jar/asm/ByteVector;->length:I

    .line 93
    .local v0, "currentLength":I
    add-int/lit8 v1, v0, 0x2

    iget-object v2, p0, Lnet/bytebuddy/jar/asm/ByteVector;->data:[B

    array-length v2, v2

    if-le v1, v2, :cond_0

    .line 94
    const/4 v1, 0x2

    invoke-direct {p0, v1}, Lnet/bytebuddy/jar/asm/ByteVector;->enlarge(I)V

    .line 96
    :cond_0
    iget-object v1, p0, Lnet/bytebuddy/jar/asm/ByteVector;->data:[B

    .line 97
    .local v1, "currentData":[B
    add-int/lit8 v2, v0, 0x1

    .end local v0    # "currentLength":I
    .local v2, "currentLength":I
    int-to-byte v3, p1

    aput-byte v3, v1, v0

    .line 98
    add-int/lit8 v0, v2, 0x1

    .end local v2    # "currentLength":I
    .restart local v0    # "currentLength":I
    int-to-byte v3, p2

    aput-byte v3, v1, v2

    .line 99
    iput v0, p0, Lnet/bytebuddy/jar/asm/ByteVector;->length:I

    .line 100
    return-object p0
.end method

.method final put112(III)Lnet/bytebuddy/jar/asm/ByteVector;
    .locals 4
    .param p1, "byteValue1"    # I
    .param p2, "byteValue2"    # I
    .param p3, "shortValue"    # I

    .line 152
    iget v0, p0, Lnet/bytebuddy/jar/asm/ByteVector;->length:I

    .line 153
    .local v0, "currentLength":I
    add-int/lit8 v1, v0, 0x4

    iget-object v2, p0, Lnet/bytebuddy/jar/asm/ByteVector;->data:[B

    array-length v2, v2

    if-le v1, v2, :cond_0

    .line 154
    const/4 v1, 0x4

    invoke-direct {p0, v1}, Lnet/bytebuddy/jar/asm/ByteVector;->enlarge(I)V

    .line 156
    :cond_0
    iget-object v1, p0, Lnet/bytebuddy/jar/asm/ByteVector;->data:[B

    .line 157
    .local v1, "currentData":[B
    add-int/lit8 v2, v0, 0x1

    .end local v0    # "currentLength":I
    .local v2, "currentLength":I
    int-to-byte v3, p1

    aput-byte v3, v1, v0

    .line 158
    add-int/lit8 v0, v2, 0x1

    .end local v2    # "currentLength":I
    .restart local v0    # "currentLength":I
    int-to-byte v3, p2

    aput-byte v3, v1, v2

    .line 159
    add-int/lit8 v2, v0, 0x1

    .end local v0    # "currentLength":I
    .restart local v2    # "currentLength":I
    ushr-int/lit8 v3, p3, 0x8

    int-to-byte v3, v3

    aput-byte v3, v1, v0

    .line 160
    add-int/lit8 v0, v2, 0x1

    .end local v2    # "currentLength":I
    .restart local v0    # "currentLength":I
    int-to-byte v3, p3

    aput-byte v3, v1, v2

    .line 161
    iput v0, p0, Lnet/bytebuddy/jar/asm/ByteVector;->length:I

    .line 162
    return-object p0
.end method

.method final put12(II)Lnet/bytebuddy/jar/asm/ByteVector;
    .locals 4
    .param p1, "byteValue"    # I
    .param p2, "shortValue"    # I

    .line 130
    iget v0, p0, Lnet/bytebuddy/jar/asm/ByteVector;->length:I

    .line 131
    .local v0, "currentLength":I
    add-int/lit8 v1, v0, 0x3

    iget-object v2, p0, Lnet/bytebuddy/jar/asm/ByteVector;->data:[B

    array-length v2, v2

    if-le v1, v2, :cond_0

    .line 132
    const/4 v1, 0x3

    invoke-direct {p0, v1}, Lnet/bytebuddy/jar/asm/ByteVector;->enlarge(I)V

    .line 134
    :cond_0
    iget-object v1, p0, Lnet/bytebuddy/jar/asm/ByteVector;->data:[B

    .line 135
    .local v1, "currentData":[B
    add-int/lit8 v2, v0, 0x1

    .end local v0    # "currentLength":I
    .local v2, "currentLength":I
    int-to-byte v3, p1

    aput-byte v3, v1, v0

    .line 136
    add-int/lit8 v0, v2, 0x1

    .end local v2    # "currentLength":I
    .restart local v0    # "currentLength":I
    ushr-int/lit8 v3, p2, 0x8

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    .line 137
    add-int/lit8 v2, v0, 0x1

    .end local v0    # "currentLength":I
    .restart local v2    # "currentLength":I
    int-to-byte v3, p2

    aput-byte v3, v1, v0

    .line 138
    iput v2, p0, Lnet/bytebuddy/jar/asm/ByteVector;->length:I

    .line 139
    return-object p0
.end method

.method final put122(III)Lnet/bytebuddy/jar/asm/ByteVector;
    .locals 4
    .param p1, "byteValue"    # I
    .param p2, "shortValue1"    # I
    .param p3, "shortValue2"    # I

    .line 195
    iget v0, p0, Lnet/bytebuddy/jar/asm/ByteVector;->length:I

    .line 196
    .local v0, "currentLength":I
    add-int/lit8 v1, v0, 0x5

    iget-object v2, p0, Lnet/bytebuddy/jar/asm/ByteVector;->data:[B

    array-length v2, v2

    if-le v1, v2, :cond_0

    .line 197
    const/4 v1, 0x5

    invoke-direct {p0, v1}, Lnet/bytebuddy/jar/asm/ByteVector;->enlarge(I)V

    .line 199
    :cond_0
    iget-object v1, p0, Lnet/bytebuddy/jar/asm/ByteVector;->data:[B

    .line 200
    .local v1, "currentData":[B
    add-int/lit8 v2, v0, 0x1

    .end local v0    # "currentLength":I
    .local v2, "currentLength":I
    int-to-byte v3, p1

    aput-byte v3, v1, v0

    .line 201
    add-int/lit8 v0, v2, 0x1

    .end local v2    # "currentLength":I
    .restart local v0    # "currentLength":I
    ushr-int/lit8 v3, p2, 0x8

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    .line 202
    add-int/lit8 v2, v0, 0x1

    .end local v0    # "currentLength":I
    .restart local v2    # "currentLength":I
    int-to-byte v3, p2

    aput-byte v3, v1, v0

    .line 203
    add-int/lit8 v0, v2, 0x1

    .end local v2    # "currentLength":I
    .restart local v0    # "currentLength":I
    ushr-int/lit8 v3, p3, 0x8

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    .line 204
    add-int/lit8 v2, v0, 0x1

    .end local v0    # "currentLength":I
    .restart local v2    # "currentLength":I
    int-to-byte v3, p3

    aput-byte v3, v1, v0

    .line 205
    iput v2, p0, Lnet/bytebuddy/jar/asm/ByteVector;->length:I

    .line 206
    return-object p0
.end method

.method public putByte(I)Lnet/bytebuddy/jar/asm/ByteVector;
    .locals 4
    .param p1, "byteValue"    # I

    .line 75
    iget v0, p0, Lnet/bytebuddy/jar/asm/ByteVector;->length:I

    .line 76
    .local v0, "currentLength":I
    add-int/lit8 v1, v0, 0x1

    iget-object v2, p0, Lnet/bytebuddy/jar/asm/ByteVector;->data:[B

    array-length v2, v2

    if-le v1, v2, :cond_0

    .line 77
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lnet/bytebuddy/jar/asm/ByteVector;->enlarge(I)V

    .line 79
    :cond_0
    iget-object v1, p0, Lnet/bytebuddy/jar/asm/ByteVector;->data:[B

    add-int/lit8 v2, v0, 0x1

    .end local v0    # "currentLength":I
    .local v2, "currentLength":I
    int-to-byte v3, p1

    aput-byte v3, v1, v0

    .line 80
    iput v2, p0, Lnet/bytebuddy/jar/asm/ByteVector;->length:I

    .line 81
    return-object p0
.end method

.method public putByteArray([BII)Lnet/bytebuddy/jar/asm/ByteVector;
    .locals 2
    .param p1, "byteArrayValue"    # [B
    .param p2, "byteOffset"    # I
    .param p3, "byteLength"    # I

    .line 339
    iget v0, p0, Lnet/bytebuddy/jar/asm/ByteVector;->length:I

    add-int/2addr v0, p3

    iget-object v1, p0, Lnet/bytebuddy/jar/asm/ByteVector;->data:[B

    array-length v1, v1

    if-le v0, v1, :cond_0

    .line 340
    invoke-direct {p0, p3}, Lnet/bytebuddy/jar/asm/ByteVector;->enlarge(I)V

    .line 342
    :cond_0
    if-eqz p1, :cond_1

    .line 343
    iget-object v0, p0, Lnet/bytebuddy/jar/asm/ByteVector;->data:[B

    iget v1, p0, Lnet/bytebuddy/jar/asm/ByteVector;->length:I

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 345
    :cond_1
    iget v0, p0, Lnet/bytebuddy/jar/asm/ByteVector;->length:I

    add-int/2addr v0, p3

    iput v0, p0, Lnet/bytebuddy/jar/asm/ByteVector;->length:I

    .line 346
    return-object p0
.end method

.method public putInt(I)Lnet/bytebuddy/jar/asm/ByteVector;
    .locals 4
    .param p1, "intValue"    # I

    .line 172
    iget v0, p0, Lnet/bytebuddy/jar/asm/ByteVector;->length:I

    .line 173
    .local v0, "currentLength":I
    add-int/lit8 v1, v0, 0x4

    iget-object v2, p0, Lnet/bytebuddy/jar/asm/ByteVector;->data:[B

    array-length v2, v2

    if-le v1, v2, :cond_0

    .line 174
    const/4 v1, 0x4

    invoke-direct {p0, v1}, Lnet/bytebuddy/jar/asm/ByteVector;->enlarge(I)V

    .line 176
    :cond_0
    iget-object v1, p0, Lnet/bytebuddy/jar/asm/ByteVector;->data:[B

    .line 177
    .local v1, "currentData":[B
    add-int/lit8 v2, v0, 0x1

    .end local v0    # "currentLength":I
    .local v2, "currentLength":I
    ushr-int/lit8 v3, p1, 0x18

    int-to-byte v3, v3

    aput-byte v3, v1, v0

    .line 178
    add-int/lit8 v0, v2, 0x1

    .end local v2    # "currentLength":I
    .restart local v0    # "currentLength":I
    ushr-int/lit8 v3, p1, 0x10

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    .line 179
    add-int/lit8 v2, v0, 0x1

    .end local v0    # "currentLength":I
    .restart local v2    # "currentLength":I
    ushr-int/lit8 v3, p1, 0x8

    int-to-byte v3, v3

    aput-byte v3, v1, v0

    .line 180
    add-int/lit8 v0, v2, 0x1

    .end local v2    # "currentLength":I
    .restart local v0    # "currentLength":I
    int-to-byte v3, p1

    aput-byte v3, v1, v2

    .line 181
    iput v0, p0, Lnet/bytebuddy/jar/asm/ByteVector;->length:I

    .line 182
    return-object p0
.end method

.method public putLong(J)Lnet/bytebuddy/jar/asm/ByteVector;
    .locals 5
    .param p1, "longValue"    # J

    .line 216
    iget v0, p0, Lnet/bytebuddy/jar/asm/ByteVector;->length:I

    .line 217
    .local v0, "currentLength":I
    add-int/lit8 v1, v0, 0x8

    iget-object v2, p0, Lnet/bytebuddy/jar/asm/ByteVector;->data:[B

    array-length v2, v2

    if-le v1, v2, :cond_0

    .line 218
    const/16 v1, 0x8

    invoke-direct {p0, v1}, Lnet/bytebuddy/jar/asm/ByteVector;->enlarge(I)V

    .line 220
    :cond_0
    iget-object v1, p0, Lnet/bytebuddy/jar/asm/ByteVector;->data:[B

    .line 221
    .local v1, "currentData":[B
    const/16 v2, 0x20

    ushr-long v2, p1, v2

    long-to-int v2, v2

    .line 222
    .local v2, "intValue":I
    add-int/lit8 v3, v0, 0x1

    .end local v0    # "currentLength":I
    .local v3, "currentLength":I
    ushr-int/lit8 v4, v2, 0x18

    int-to-byte v4, v4

    aput-byte v4, v1, v0

    .line 223
    add-int/lit8 v0, v3, 0x1

    .end local v3    # "currentLength":I
    .restart local v0    # "currentLength":I
    ushr-int/lit8 v4, v2, 0x10

    int-to-byte v4, v4

    aput-byte v4, v1, v3

    .line 224
    add-int/lit8 v3, v0, 0x1

    .end local v0    # "currentLength":I
    .restart local v3    # "currentLength":I
    ushr-int/lit8 v4, v2, 0x8

    int-to-byte v4, v4

    aput-byte v4, v1, v0

    .line 225
    add-int/lit8 v0, v3, 0x1

    .end local v3    # "currentLength":I
    .restart local v0    # "currentLength":I
    int-to-byte v4, v2

    aput-byte v4, v1, v3

    .line 226
    long-to-int v2, p1

    .line 227
    add-int/lit8 v3, v0, 0x1

    .end local v0    # "currentLength":I
    .restart local v3    # "currentLength":I
    ushr-int/lit8 v4, v2, 0x18

    int-to-byte v4, v4

    aput-byte v4, v1, v0

    .line 228
    add-int/lit8 v0, v3, 0x1

    .end local v3    # "currentLength":I
    .restart local v0    # "currentLength":I
    ushr-int/lit8 v4, v2, 0x10

    int-to-byte v4, v4

    aput-byte v4, v1, v3

    .line 229
    add-int/lit8 v3, v0, 0x1

    .end local v0    # "currentLength":I
    .restart local v3    # "currentLength":I
    ushr-int/lit8 v4, v2, 0x8

    int-to-byte v4, v4

    aput-byte v4, v1, v0

    .line 230
    add-int/lit8 v0, v3, 0x1

    .end local v3    # "currentLength":I
    .restart local v0    # "currentLength":I
    int-to-byte v4, v2

    aput-byte v4, v1, v3

    .line 231
    iput v0, p0, Lnet/bytebuddy/jar/asm/ByteVector;->length:I

    .line 232
    return-object p0
.end method

.method public putShort(I)Lnet/bytebuddy/jar/asm/ByteVector;
    .locals 4
    .param p1, "shortValue"    # I

    .line 110
    iget v0, p0, Lnet/bytebuddy/jar/asm/ByteVector;->length:I

    .line 111
    .local v0, "currentLength":I
    add-int/lit8 v1, v0, 0x2

    iget-object v2, p0, Lnet/bytebuddy/jar/asm/ByteVector;->data:[B

    array-length v2, v2

    if-le v1, v2, :cond_0

    .line 112
    const/4 v1, 0x2

    invoke-direct {p0, v1}, Lnet/bytebuddy/jar/asm/ByteVector;->enlarge(I)V

    .line 114
    :cond_0
    iget-object v1, p0, Lnet/bytebuddy/jar/asm/ByteVector;->data:[B

    .line 115
    .local v1, "currentData":[B
    add-int/lit8 v2, v0, 0x1

    .end local v0    # "currentLength":I
    .local v2, "currentLength":I
    ushr-int/lit8 v3, p1, 0x8

    int-to-byte v3, v3

    aput-byte v3, v1, v0

    .line 116
    add-int/lit8 v0, v2, 0x1

    .end local v2    # "currentLength":I
    .restart local v0    # "currentLength":I
    int-to-byte v3, p1

    aput-byte v3, v1, v2

    .line 117
    iput v0, p0, Lnet/bytebuddy/jar/asm/ByteVector;->length:I

    .line 118
    return-object p0
.end method

.method public putUTF8(Ljava/lang/String;)Lnet/bytebuddy/jar/asm/ByteVector;
    .locals 8
    .param p1, "stringValue"    # Ljava/lang/String;

    .line 244
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 245
    .local v0, "charLength":I
    const v1, 0xffff

    if-gt v0, v1, :cond_3

    .line 248
    iget v2, p0, Lnet/bytebuddy/jar/asm/ByteVector;->length:I

    .line 249
    .local v2, "currentLength":I
    add-int/lit8 v3, v2, 0x2

    add-int/2addr v3, v0

    iget-object v4, p0, Lnet/bytebuddy/jar/asm/ByteVector;->data:[B

    array-length v4, v4

    if-le v3, v4, :cond_0

    .line 250
    add-int/lit8 v3, v0, 0x2

    invoke-direct {p0, v3}, Lnet/bytebuddy/jar/asm/ByteVector;->enlarge(I)V

    .line 252
    :cond_0
    iget-object v3, p0, Lnet/bytebuddy/jar/asm/ByteVector;->data:[B

    .line 257
    .local v3, "currentData":[B
    add-int/lit8 v4, v2, 0x1

    .end local v2    # "currentLength":I
    .local v4, "currentLength":I
    ushr-int/lit8 v5, v0, 0x8

    int-to-byte v5, v5

    aput-byte v5, v3, v2

    .line 258
    add-int/lit8 v2, v4, 0x1

    .end local v4    # "currentLength":I
    .restart local v2    # "currentLength":I
    int-to-byte v5, v0

    aput-byte v5, v3, v4

    .line 259
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v0, :cond_2

    .line 260
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 261
    .local v5, "charValue":C
    const/4 v6, 0x1

    if-lt v5, v6, :cond_1

    const/16 v6, 0x7f

    if-gt v5, v6, :cond_1

    .line 262
    add-int/lit8 v6, v2, 0x1

    .end local v2    # "currentLength":I
    .local v6, "currentLength":I
    int-to-byte v7, v5

    aput-byte v7, v3, v2

    .line 259
    .end local v5    # "charValue":C
    add-int/lit8 v4, v4, 0x1

    move v2, v6

    goto :goto_0

    .line 264
    .end local v6    # "currentLength":I
    .restart local v2    # "currentLength":I
    .restart local v5    # "charValue":C
    :cond_1
    iput v2, p0, Lnet/bytebuddy/jar/asm/ByteVector;->length:I

    .line 265
    invoke-virtual {p0, p1, v4, v1}, Lnet/bytebuddy/jar/asm/ByteVector;->encodeUtf8(Ljava/lang/String;II)Lnet/bytebuddy/jar/asm/ByteVector;

    move-result-object v1

    return-object v1

    .line 268
    .end local v4    # "i":I
    .end local v5    # "charValue":C
    :cond_2
    iput v2, p0, Lnet/bytebuddy/jar/asm/ByteVector;->length:I

    .line 269
    return-object p0

    .line 246
    .end local v2    # "currentLength":I
    .end local v3    # "currentData":[B
    :cond_3
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "UTF8 string too large"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
