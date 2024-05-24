.class public Lorg/checkerframework/org/objectweb/asmx/ByteVector;
.super Ljava/lang/Object;
.source "ByteVector.java"


# instance fields
.field data:[B

.field length:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    const/16 v0, 0x40

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/ByteVector;->data:[B

    .line 56
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "initialSize"    # I

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    new-array v0, p1, [B

    iput-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/ByteVector;->data:[B

    .line 66
    return-void
.end method

.method private enlarge(I)V
    .locals 6
    .param p1, "size"    # I

    .line 287
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/ByteVector;->data:[B

    array-length v1, v0

    mul-int/lit8 v1, v1, 0x2

    .line 288
    .local v1, "length1":I
    iget v2, p0, Lorg/checkerframework/org/objectweb/asmx/ByteVector;->length:I

    add-int v3, v2, p1

    .line 289
    .local v3, "length2":I
    if-le v1, v3, :cond_0

    move v4, v1

    goto :goto_0

    :cond_0
    move v4, v3

    :goto_0
    new-array v4, v4, [B

    .line 290
    .local v4, "newData":[B
    const/4 v5, 0x0

    invoke-static {v0, v5, v4, v5, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 291
    iput-object v4, p0, Lorg/checkerframework/org/objectweb/asmx/ByteVector;->data:[B

    .line 292
    return-void
.end method


# virtual methods
.method put11(II)Lorg/checkerframework/org/objectweb/asmx/ByteVector;
    .locals 4
    .param p1, "b1"    # I
    .param p2, "b2"    # I

    .line 94
    iget v0, p0, Lorg/checkerframework/org/objectweb/asmx/ByteVector;->length:I

    .line 95
    .local v0, "length":I
    add-int/lit8 v1, v0, 0x2

    iget-object v2, p0, Lorg/checkerframework/org/objectweb/asmx/ByteVector;->data:[B

    array-length v2, v2

    if-le v1, v2, :cond_0

    .line 96
    const/4 v1, 0x2

    invoke-direct {p0, v1}, Lorg/checkerframework/org/objectweb/asmx/ByteVector;->enlarge(I)V

    .line 98
    :cond_0
    iget-object v1, p0, Lorg/checkerframework/org/objectweb/asmx/ByteVector;->data:[B

    .line 99
    .local v1, "data":[B
    add-int/lit8 v2, v0, 0x1

    .end local v0    # "length":I
    .local v2, "length":I
    int-to-byte v3, p1

    aput-byte v3, v1, v0

    .line 100
    add-int/lit8 v0, v2, 0x1

    .end local v2    # "length":I
    .restart local v0    # "length":I
    int-to-byte v3, p2

    aput-byte v3, v1, v2

    .line 101
    iput v0, p0, Lorg/checkerframework/org/objectweb/asmx/ByteVector;->length:I

    .line 102
    return-object p0
.end method

.method put12(II)Lorg/checkerframework/org/objectweb/asmx/ByteVector;
    .locals 4
    .param p1, "b"    # I
    .param p2, "s"    # I

    .line 133
    iget v0, p0, Lorg/checkerframework/org/objectweb/asmx/ByteVector;->length:I

    .line 134
    .local v0, "length":I
    add-int/lit8 v1, v0, 0x3

    iget-object v2, p0, Lorg/checkerframework/org/objectweb/asmx/ByteVector;->data:[B

    array-length v2, v2

    if-le v1, v2, :cond_0

    .line 135
    const/4 v1, 0x3

    invoke-direct {p0, v1}, Lorg/checkerframework/org/objectweb/asmx/ByteVector;->enlarge(I)V

    .line 137
    :cond_0
    iget-object v1, p0, Lorg/checkerframework/org/objectweb/asmx/ByteVector;->data:[B

    .line 138
    .local v1, "data":[B
    add-int/lit8 v2, v0, 0x1

    .end local v0    # "length":I
    .local v2, "length":I
    int-to-byte v3, p1

    aput-byte v3, v1, v0

    .line 139
    add-int/lit8 v0, v2, 0x1

    .end local v2    # "length":I
    .restart local v0    # "length":I
    ushr-int/lit8 v3, p2, 0x8

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    .line 140
    add-int/lit8 v2, v0, 0x1

    .end local v0    # "length":I
    .restart local v2    # "length":I
    int-to-byte v3, p2

    aput-byte v3, v1, v0

    .line 141
    iput v2, p0, Lorg/checkerframework/org/objectweb/asmx/ByteVector;->length:I

    .line 142
    return-object p0
.end method

.method public putByte(I)Lorg/checkerframework/org/objectweb/asmx/ByteVector;
    .locals 4
    .param p1, "b"    # I

    .line 76
    iget v0, p0, Lorg/checkerframework/org/objectweb/asmx/ByteVector;->length:I

    .line 77
    .local v0, "length":I
    add-int/lit8 v1, v0, 0x1

    iget-object v2, p0, Lorg/checkerframework/org/objectweb/asmx/ByteVector;->data:[B

    array-length v2, v2

    if-le v1, v2, :cond_0

    .line 78
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lorg/checkerframework/org/objectweb/asmx/ByteVector;->enlarge(I)V

    .line 80
    :cond_0
    iget-object v1, p0, Lorg/checkerframework/org/objectweb/asmx/ByteVector;->data:[B

    add-int/lit8 v2, v0, 0x1

    .end local v0    # "length":I
    .local v2, "length":I
    int-to-byte v3, p1

    aput-byte v3, v1, v0

    .line 81
    iput v2, p0, Lorg/checkerframework/org/objectweb/asmx/ByteVector;->length:I

    .line 82
    return-object p0
.end method

.method public putByteArray([BII)Lorg/checkerframework/org/objectweb/asmx/ByteVector;
    .locals 2
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I

    .line 270
    iget v0, p0, Lorg/checkerframework/org/objectweb/asmx/ByteVector;->length:I

    add-int/2addr v0, p3

    iget-object v1, p0, Lorg/checkerframework/org/objectweb/asmx/ByteVector;->data:[B

    array-length v1, v1

    if-le v0, v1, :cond_0

    .line 271
    invoke-direct {p0, p3}, Lorg/checkerframework/org/objectweb/asmx/ByteVector;->enlarge(I)V

    .line 273
    :cond_0
    if-eqz p1, :cond_1

    .line 274
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/ByteVector;->data:[B

    iget v1, p0, Lorg/checkerframework/org/objectweb/asmx/ByteVector;->length:I

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 276
    :cond_1
    iget v0, p0, Lorg/checkerframework/org/objectweb/asmx/ByteVector;->length:I

    add-int/2addr v0, p3

    iput v0, p0, Lorg/checkerframework/org/objectweb/asmx/ByteVector;->length:I

    .line 277
    return-object p0
.end method

.method public putInt(I)Lorg/checkerframework/org/objectweb/asmx/ByteVector;
    .locals 4
    .param p1, "i"    # I

    .line 153
    iget v0, p0, Lorg/checkerframework/org/objectweb/asmx/ByteVector;->length:I

    .line 154
    .local v0, "length":I
    add-int/lit8 v1, v0, 0x4

    iget-object v2, p0, Lorg/checkerframework/org/objectweb/asmx/ByteVector;->data:[B

    array-length v2, v2

    if-le v1, v2, :cond_0

    .line 155
    const/4 v1, 0x4

    invoke-direct {p0, v1}, Lorg/checkerframework/org/objectweb/asmx/ByteVector;->enlarge(I)V

    .line 157
    :cond_0
    iget-object v1, p0, Lorg/checkerframework/org/objectweb/asmx/ByteVector;->data:[B

    .line 158
    .local v1, "data":[B
    add-int/lit8 v2, v0, 0x1

    .end local v0    # "length":I
    .local v2, "length":I
    ushr-int/lit8 v3, p1, 0x18

    int-to-byte v3, v3

    aput-byte v3, v1, v0

    .line 159
    add-int/lit8 v0, v2, 0x1

    .end local v2    # "length":I
    .restart local v0    # "length":I
    ushr-int/lit8 v3, p1, 0x10

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    .line 160
    add-int/lit8 v2, v0, 0x1

    .end local v0    # "length":I
    .restart local v2    # "length":I
    ushr-int/lit8 v3, p1, 0x8

    int-to-byte v3, v3

    aput-byte v3, v1, v0

    .line 161
    add-int/lit8 v0, v2, 0x1

    .end local v2    # "length":I
    .restart local v0    # "length":I
    int-to-byte v3, p1

    aput-byte v3, v1, v2

    .line 162
    iput v0, p0, Lorg/checkerframework/org/objectweb/asmx/ByteVector;->length:I

    .line 163
    return-object p0
.end method

.method public putLong(J)Lorg/checkerframework/org/objectweb/asmx/ByteVector;
    .locals 5
    .param p1, "l"    # J

    .line 174
    iget v0, p0, Lorg/checkerframework/org/objectweb/asmx/ByteVector;->length:I

    .line 175
    .local v0, "length":I
    add-int/lit8 v1, v0, 0x8

    iget-object v2, p0, Lorg/checkerframework/org/objectweb/asmx/ByteVector;->data:[B

    array-length v2, v2

    if-le v1, v2, :cond_0

    .line 176
    const/16 v1, 0x8

    invoke-direct {p0, v1}, Lorg/checkerframework/org/objectweb/asmx/ByteVector;->enlarge(I)V

    .line 178
    :cond_0
    iget-object v1, p0, Lorg/checkerframework/org/objectweb/asmx/ByteVector;->data:[B

    .line 179
    .local v1, "data":[B
    const/16 v2, 0x20

    ushr-long v2, p1, v2

    long-to-int v2, v2

    .line 180
    .local v2, "i":I
    add-int/lit8 v3, v0, 0x1

    .end local v0    # "length":I
    .local v3, "length":I
    ushr-int/lit8 v4, v2, 0x18

    int-to-byte v4, v4

    aput-byte v4, v1, v0

    .line 181
    add-int/lit8 v0, v3, 0x1

    .end local v3    # "length":I
    .restart local v0    # "length":I
    ushr-int/lit8 v4, v2, 0x10

    int-to-byte v4, v4

    aput-byte v4, v1, v3

    .line 182
    add-int/lit8 v3, v0, 0x1

    .end local v0    # "length":I
    .restart local v3    # "length":I
    ushr-int/lit8 v4, v2, 0x8

    int-to-byte v4, v4

    aput-byte v4, v1, v0

    .line 183
    add-int/lit8 v0, v3, 0x1

    .end local v3    # "length":I
    .restart local v0    # "length":I
    int-to-byte v4, v2

    aput-byte v4, v1, v3

    .line 184
    long-to-int v2, p1

    .line 185
    add-int/lit8 v3, v0, 0x1

    .end local v0    # "length":I
    .restart local v3    # "length":I
    ushr-int/lit8 v4, v2, 0x18

    int-to-byte v4, v4

    aput-byte v4, v1, v0

    .line 186
    add-int/lit8 v0, v3, 0x1

    .end local v3    # "length":I
    .restart local v0    # "length":I
    ushr-int/lit8 v4, v2, 0x10

    int-to-byte v4, v4

    aput-byte v4, v1, v3

    .line 187
    add-int/lit8 v3, v0, 0x1

    .end local v0    # "length":I
    .restart local v3    # "length":I
    ushr-int/lit8 v4, v2, 0x8

    int-to-byte v4, v4

    aput-byte v4, v1, v0

    .line 188
    add-int/lit8 v0, v3, 0x1

    .end local v3    # "length":I
    .restart local v0    # "length":I
    int-to-byte v4, v2

    aput-byte v4, v1, v3

    .line 189
    iput v0, p0, Lorg/checkerframework/org/objectweb/asmx/ByteVector;->length:I

    .line 190
    return-object p0
.end method

.method public putShort(I)Lorg/checkerframework/org/objectweb/asmx/ByteVector;
    .locals 4
    .param p1, "s"    # I

    .line 113
    iget v0, p0, Lorg/checkerframework/org/objectweb/asmx/ByteVector;->length:I

    .line 114
    .local v0, "length":I
    add-int/lit8 v1, v0, 0x2

    iget-object v2, p0, Lorg/checkerframework/org/objectweb/asmx/ByteVector;->data:[B

    array-length v2, v2

    if-le v1, v2, :cond_0

    .line 115
    const/4 v1, 0x2

    invoke-direct {p0, v1}, Lorg/checkerframework/org/objectweb/asmx/ByteVector;->enlarge(I)V

    .line 117
    :cond_0
    iget-object v1, p0, Lorg/checkerframework/org/objectweb/asmx/ByteVector;->data:[B

    .line 118
    .local v1, "data":[B
    add-int/lit8 v2, v0, 0x1

    .end local v0    # "length":I
    .local v2, "length":I
    ushr-int/lit8 v3, p1, 0x8

    int-to-byte v3, v3

    aput-byte v3, v1, v0

    .line 119
    add-int/lit8 v0, v2, 0x1

    .end local v2    # "length":I
    .restart local v0    # "length":I
    int-to-byte v3, p1

    aput-byte v3, v1, v2

    .line 120
    iput v0, p0, Lorg/checkerframework/org/objectweb/asmx/ByteVector;->length:I

    .line 121
    return-object p0
.end method

.method public putUTF8(Ljava/lang/String;)Lorg/checkerframework/org/objectweb/asmx/ByteVector;
    .locals 12
    .param p1, "s"    # Ljava/lang/String;

    .line 201
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 202
    .local v0, "charLength":I
    iget v1, p0, Lorg/checkerframework/org/objectweb/asmx/ByteVector;->length:I

    add-int/lit8 v1, v1, 0x2

    add-int/2addr v1, v0

    iget-object v2, p0, Lorg/checkerframework/org/objectweb/asmx/ByteVector;->data:[B

    array-length v2, v2

    if-le v1, v2, :cond_0

    .line 203
    add-int/lit8 v1, v0, 0x2

    invoke-direct {p0, v1}, Lorg/checkerframework/org/objectweb/asmx/ByteVector;->enlarge(I)V

    .line 205
    :cond_0
    iget v1, p0, Lorg/checkerframework/org/objectweb/asmx/ByteVector;->length:I

    .line 206
    .local v1, "len":I
    iget-object v2, p0, Lorg/checkerframework/org/objectweb/asmx/ByteVector;->data:[B

    .line 213
    .local v2, "data":[B
    add-int/lit8 v3, v1, 0x1

    .end local v1    # "len":I
    .local v3, "len":I
    ushr-int/lit8 v4, v0, 0x8

    int-to-byte v4, v4

    aput-byte v4, v2, v1

    .line 214
    add-int/lit8 v1, v3, 0x1

    .end local v3    # "len":I
    .restart local v1    # "len":I
    int-to-byte v4, v0

    aput-byte v4, v2, v3

    .line 215
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_9

    .line 216
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 217
    .local v4, "c":C
    const/16 v5, 0x7f

    const/4 v6, 0x1

    if-lt v4, v6, :cond_1

    if-gt v4, v5, :cond_1

    .line 218
    add-int/lit8 v5, v1, 0x1

    .end local v1    # "len":I
    .local v5, "len":I
    int-to-byte v6, v4

    aput-byte v6, v2, v1

    .line 215
    .end local v4    # "c":C
    add-int/lit8 v3, v3, 0x1

    move v1, v5

    goto :goto_0

    .line 220
    .end local v5    # "len":I
    .restart local v1    # "len":I
    .restart local v4    # "c":C
    :cond_1
    move v7, v3

    .line 221
    .local v7, "byteLength":I
    move v8, v3

    .local v8, "j":I
    :goto_1
    const/16 v9, 0x7ff

    if-ge v8, v0, :cond_4

    .line 222
    invoke-virtual {p1, v8}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 223
    if-lt v4, v6, :cond_2

    if-gt v4, v5, :cond_2

    .line 224
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 225
    :cond_2
    if-le v4, v9, :cond_3

    .line 226
    add-int/lit8 v7, v7, 0x3

    goto :goto_2

    .line 228
    :cond_3
    add-int/lit8 v7, v7, 0x2

    .line 221
    :goto_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 231
    .end local v8    # "j":I
    :cond_4
    iget v8, p0, Lorg/checkerframework/org/objectweb/asmx/ByteVector;->length:I

    ushr-int/lit8 v10, v7, 0x8

    int-to-byte v10, v10

    aput-byte v10, v2, v8

    .line 232
    add-int/lit8 v10, v8, 0x1

    int-to-byte v11, v7

    aput-byte v11, v2, v10

    .line 233
    add-int/lit8 v8, v8, 0x2

    add-int/2addr v8, v7

    array-length v10, v2

    if-le v8, v10, :cond_5

    .line 234
    iput v1, p0, Lorg/checkerframework/org/objectweb/asmx/ByteVector;->length:I

    .line 235
    add-int/lit8 v8, v7, 0x2

    invoke-direct {p0, v8}, Lorg/checkerframework/org/objectweb/asmx/ByteVector;->enlarge(I)V

    .line 236
    iget-object v2, p0, Lorg/checkerframework/org/objectweb/asmx/ByteVector;->data:[B

    .line 238
    :cond_5
    move v8, v3

    .restart local v8    # "j":I
    :goto_3
    if-ge v8, v0, :cond_8

    .line 239
    invoke-virtual {p1, v8}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 240
    if-lt v4, v6, :cond_6

    if-gt v4, v5, :cond_6

    .line 241
    add-int/lit8 v10, v1, 0x1

    .end local v1    # "len":I
    .local v10, "len":I
    int-to-byte v11, v4

    aput-byte v11, v2, v1

    move v1, v10

    goto :goto_4

    .line 242
    .end local v10    # "len":I
    .restart local v1    # "len":I
    :cond_6
    if-le v4, v9, :cond_7

    .line 243
    add-int/lit8 v10, v1, 0x1

    .end local v1    # "len":I
    .restart local v10    # "len":I
    shr-int/lit8 v11, v4, 0xc

    and-int/lit8 v11, v11, 0xf

    or-int/lit16 v11, v11, 0xe0

    int-to-byte v11, v11

    aput-byte v11, v2, v1

    .line 244
    add-int/lit8 v1, v10, 0x1

    .end local v10    # "len":I
    .restart local v1    # "len":I
    shr-int/lit8 v11, v4, 0x6

    and-int/lit8 v11, v11, 0x3f

    or-int/lit16 v11, v11, 0x80

    int-to-byte v11, v11

    aput-byte v11, v2, v10

    .line 245
    add-int/lit8 v10, v1, 0x1

    .end local v1    # "len":I
    .restart local v10    # "len":I
    and-int/lit8 v11, v4, 0x3f

    or-int/lit16 v11, v11, 0x80

    int-to-byte v11, v11

    aput-byte v11, v2, v1

    move v1, v10

    goto :goto_4

    .line 247
    .end local v10    # "len":I
    .restart local v1    # "len":I
    :cond_7
    add-int/lit8 v10, v1, 0x1

    .end local v1    # "len":I
    .restart local v10    # "len":I
    shr-int/lit8 v11, v4, 0x6

    and-int/lit8 v11, v11, 0x1f

    or-int/lit16 v11, v11, 0xc0

    int-to-byte v11, v11

    aput-byte v11, v2, v1

    .line 248
    add-int/lit8 v1, v10, 0x1

    .end local v10    # "len":I
    .restart local v1    # "len":I
    and-int/lit8 v11, v4, 0x3f

    or-int/lit16 v11, v11, 0x80

    int-to-byte v11, v11

    aput-byte v11, v2, v10

    .line 238
    :goto_4
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 251
    .end local v8    # "j":I
    :cond_8
    nop

    .line 254
    .end local v3    # "i":I
    .end local v4    # "c":C
    .end local v7    # "byteLength":I
    :cond_9
    iput v1, p0, Lorg/checkerframework/org/objectweb/asmx/ByteVector;->length:I

    .line 255
    return-object p0
.end method
