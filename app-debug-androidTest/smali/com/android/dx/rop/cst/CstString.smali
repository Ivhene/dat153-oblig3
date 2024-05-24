.class public final Lcom/android/dx/rop/cst/CstString;
.super Lcom/android/dx/rop/cst/TypedConstant;
.source "CstString.java"


# static fields
.field public static final EMPTY_STRING:Lcom/android/dx/rop/cst/CstString;


# instance fields
.field private final bytes:Lcom/android/dx/util/ByteArray;

.field private final string:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 31
    new-instance v0, Lcom/android/dx/rop/cst/CstString;

    const-string v1, ""

    invoke-direct {v0, v1}, Lcom/android/dx/rop/cst/CstString;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/dx/rop/cst/CstString;->EMPTY_STRING:Lcom/android/dx/rop/cst/CstString;

    return-void
.end method

.method public constructor <init>(Lcom/android/dx/util/ByteArray;)V
    .locals 2
    .param p1, "bytes"    # Lcom/android/dx/util/ByteArray;

    .line 194
    invoke-direct {p0}, Lcom/android/dx/rop/cst/TypedConstant;-><init>()V

    .line 195
    if-eqz p1, :cond_0

    .line 199
    iput-object p1, p0, Lcom/android/dx/rop/cst/CstString;->bytes:Lcom/android/dx/util/ByteArray;

    .line 200
    invoke-static {p1}, Lcom/android/dx/rop/cst/CstString;->utf8BytesToString(Lcom/android/dx/util/ByteArray;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/dx/rop/cst/CstString;->string:Ljava/lang/String;

    .line 201
    return-void

    .line 196
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "bytes == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "string"    # Ljava/lang/String;

    .line 180
    invoke-direct {p0}, Lcom/android/dx/rop/cst/TypedConstant;-><init>()V

    .line 181
    if-eqz p1, :cond_0

    .line 185
    invoke-virtual {p1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/dx/rop/cst/CstString;->string:Ljava/lang/String;

    .line 186
    new-instance v0, Lcom/android/dx/util/ByteArray;

    invoke-static {p1}, Lcom/android/dx/rop/cst/CstString;->stringToUtf8Bytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/dx/util/ByteArray;-><init>([B)V

    iput-object v0, p0, Lcom/android/dx/rop/cst/CstString;->bytes:Lcom/android/dx/util/ByteArray;

    .line 187
    return-void

    .line 182
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "string == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static stringToUtf8Bytes(Ljava/lang/String;)[B
    .locals 8
    .param p0, "string"    # Ljava/lang/String;

    .line 47
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 48
    .local v0, "len":I
    mul-int/lit8 v1, v0, 0x3

    new-array v1, v1, [B

    .line 49
    .local v1, "bytes":[B
    const/4 v2, 0x0

    .line 51
    .local v2, "outAt":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_2

    .line 52
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 53
    .local v4, "c":C
    const/16 v5, 0x80

    if-eqz v4, :cond_0

    if-ge v4, v5, :cond_0

    .line 54
    int-to-byte v5, v4

    aput-byte v5, v1, v2

    .line 55
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 56
    :cond_0
    const/16 v6, 0x800

    if-ge v4, v6, :cond_1

    .line 57
    shr-int/lit8 v6, v4, 0x6

    and-int/lit8 v6, v6, 0x1f

    or-int/lit16 v6, v6, 0xc0

    int-to-byte v6, v6

    aput-byte v6, v1, v2

    .line 58
    add-int/lit8 v6, v2, 0x1

    and-int/lit8 v7, v4, 0x3f

    or-int/2addr v5, v7

    int-to-byte v5, v5

    aput-byte v5, v1, v6

    .line 59
    add-int/lit8 v2, v2, 0x2

    goto :goto_1

    .line 61
    :cond_1
    shr-int/lit8 v6, v4, 0xc

    and-int/lit8 v6, v6, 0xf

    or-int/lit16 v6, v6, 0xe0

    int-to-byte v6, v6

    aput-byte v6, v1, v2

    .line 62
    add-int/lit8 v6, v2, 0x1

    shr-int/lit8 v7, v4, 0x6

    and-int/lit8 v7, v7, 0x3f

    or-int/2addr v7, v5

    int-to-byte v7, v7

    aput-byte v7, v1, v6

    .line 63
    add-int/lit8 v6, v2, 0x2

    and-int/lit8 v7, v4, 0x3f

    or-int/2addr v5, v7

    int-to-byte v5, v5

    aput-byte v5, v1, v6

    .line 64
    add-int/lit8 v2, v2, 0x3

    .line 51
    .end local v4    # "c":C
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 68
    .end local v3    # "i":I
    :cond_2
    new-array v3, v2, [B

    .line 69
    .local v3, "result":[B
    const/4 v4, 0x0

    invoke-static {v1, v4, v3, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 70
    return-object v3
.end method

.method private static throwBadUtf8(II)Ljava/lang/String;
    .locals 3
    .param p0, "value"    # I
    .param p1, "offset"    # I

    .line 171
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bad utf-8 byte "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p0}, Lcom/android/dx/util/Hex;->u1(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " at offset "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 172
    invoke-static {p1}, Lcom/android/dx/util/Hex;->u4(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static utf8BytesToString(Lcom/android/dx/util/ByteArray;)Ljava/lang/String;
    .locals 9
    .param p0, "bytes"    # Lcom/android/dx/util/ByteArray;

    .line 80
    invoke-virtual {p0}, Lcom/android/dx/util/ByteArray;->size()I

    move-result v0

    .line 81
    .local v0, "length":I
    new-array v1, v0, [C

    .line 82
    .local v1, "chars":[C
    const/4 v2, 0x0

    .line 84
    .local v2, "outAt":I
    const/4 v3, 0x0

    .local v3, "at":I
    :goto_0
    if-lez v0, :cond_8

    .line 85
    invoke-virtual {p0, v3}, Lcom/android/dx/util/ByteArray;->getUnsignedByte(I)I

    move-result v4

    .line 87
    .local v4, "v0":I
    shr-int/lit8 v5, v4, 0x4

    const/16 v6, 0x80

    packed-switch v5, :pswitch_data_0

    .line 151
    :pswitch_0
    invoke-static {v4, v3}, Lcom/android/dx/rop/cst/CstString;->throwBadUtf8(II)Ljava/lang/String;

    move-result-object v5

    return-object v5

    .line 124
    :pswitch_1
    add-int/lit8 v0, v0, -0x3

    .line 125
    if-gez v0, :cond_0

    .line 126
    invoke-static {v4, v3}, Lcom/android/dx/rop/cst/CstString;->throwBadUtf8(II)Ljava/lang/String;

    move-result-object v5

    return-object v5

    .line 128
    :cond_0
    add-int/lit8 v5, v3, 0x1

    invoke-virtual {p0, v5}, Lcom/android/dx/util/ByteArray;->getUnsignedByte(I)I

    move-result v5

    .line 129
    .local v5, "v1":I
    and-int/lit16 v7, v5, 0xc0

    if-eq v7, v6, :cond_1

    .line 130
    add-int/lit8 v6, v3, 0x1

    invoke-static {v5, v6}, Lcom/android/dx/rop/cst/CstString;->throwBadUtf8(II)Ljava/lang/String;

    move-result-object v6

    return-object v6

    .line 132
    :cond_1
    add-int/lit8 v7, v3, 0x2

    invoke-virtual {p0, v7}, Lcom/android/dx/util/ByteArray;->getUnsignedByte(I)I

    move-result v7

    .line 133
    .local v7, "v2":I
    and-int/lit16 v8, v5, 0xc0

    if-eq v8, v6, :cond_2

    .line 134
    add-int/lit8 v6, v3, 0x2

    invoke-static {v7, v6}, Lcom/android/dx/rop/cst/CstString;->throwBadUtf8(II)Ljava/lang/String;

    move-result-object v6

    return-object v6

    .line 136
    :cond_2
    and-int/lit8 v6, v4, 0xf

    shl-int/lit8 v6, v6, 0xc

    and-int/lit8 v8, v5, 0x3f

    shl-int/lit8 v8, v8, 0x6

    or-int/2addr v6, v8

    and-int/lit8 v8, v7, 0x3f

    or-int/2addr v6, v8

    .line 138
    .local v6, "value":I
    const/16 v8, 0x800

    if-ge v6, v8, :cond_3

    .line 143
    add-int/lit8 v8, v3, 0x2

    invoke-static {v7, v8}, Lcom/android/dx/rop/cst/CstString;->throwBadUtf8(II)Ljava/lang/String;

    move-result-object v8

    return-object v8

    .line 145
    :cond_3
    int-to-char v8, v6

    .line 146
    .local v8, "out":C
    add-int/lit8 v3, v3, 0x3

    .line 147
    goto :goto_1

    .line 102
    .end local v5    # "v1":I
    .end local v6    # "value":I
    .end local v7    # "v2":I
    .end local v8    # "out":C
    :pswitch_2
    add-int/lit8 v0, v0, -0x2

    .line 103
    if-gez v0, :cond_4

    .line 104
    invoke-static {v4, v3}, Lcom/android/dx/rop/cst/CstString;->throwBadUtf8(II)Ljava/lang/String;

    move-result-object v5

    return-object v5

    .line 106
    :cond_4
    add-int/lit8 v5, v3, 0x1

    invoke-virtual {p0, v5}, Lcom/android/dx/util/ByteArray;->getUnsignedByte(I)I

    move-result v5

    .line 107
    .restart local v5    # "v1":I
    and-int/lit16 v7, v5, 0xc0

    if-eq v7, v6, :cond_5

    .line 108
    add-int/lit8 v6, v3, 0x1

    invoke-static {v5, v6}, Lcom/android/dx/rop/cst/CstString;->throwBadUtf8(II)Ljava/lang/String;

    move-result-object v6

    return-object v6

    .line 110
    :cond_5
    and-int/lit8 v7, v4, 0x1f

    shl-int/lit8 v7, v7, 0x6

    and-int/lit8 v8, v5, 0x3f

    or-int/2addr v7, v8

    .line 111
    .local v7, "value":I
    if-eqz v7, :cond_6

    if-ge v7, v6, :cond_6

    .line 116
    add-int/lit8 v6, v3, 0x1

    invoke-static {v5, v6}, Lcom/android/dx/rop/cst/CstString;->throwBadUtf8(II)Ljava/lang/String;

    move-result-object v6

    return-object v6

    .line 118
    :cond_6
    int-to-char v8, v7

    .line 119
    .restart local v8    # "out":C
    add-int/lit8 v3, v3, 0x2

    .line 120
    goto :goto_1

    .line 91
    .end local v5    # "v1":I
    .end local v7    # "value":I
    .end local v8    # "out":C
    :pswitch_3
    add-int/lit8 v0, v0, -0x1

    .line 92
    if-nez v4, :cond_7

    .line 94
    invoke-static {v4, v3}, Lcom/android/dx/rop/cst/CstString;->throwBadUtf8(II)Ljava/lang/String;

    move-result-object v5

    return-object v5

    .line 96
    :cond_7
    int-to-char v8, v4

    .line 97
    .restart local v8    # "out":C
    add-int/lit8 v3, v3, 0x1

    .line 98
    nop

    .line 154
    :goto_1
    aput-char v8, v1, v2

    .line 155
    nop

    .end local v4    # "v0":I
    .end local v8    # "out":C
    add-int/lit8 v2, v2, 0x1

    .line 156
    goto/16 :goto_0

    .line 158
    .end local v3    # "at":I
    :cond_8
    new-instance v3, Ljava/lang/String;

    const/4 v4, 0x0

    invoke-direct {v3, v1, v4, v2}, Ljava/lang/String;-><init>([CII)V

    return-object v3

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method protected compareTo0(Lcom/android/dx/rop/cst/Constant;)I
    .locals 2
    .param p1, "other"    # Lcom/android/dx/rop/cst/Constant;

    .line 222
    iget-object v0, p0, Lcom/android/dx/rop/cst/CstString;->string:Ljava/lang/String;

    move-object v1, p1

    check-cast v1, Lcom/android/dx/rop/cst/CstString;

    iget-object v1, v1, Lcom/android/dx/rop/cst/CstString;->string:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "other"    # Ljava/lang/Object;

    .line 206
    instance-of v0, p1, Lcom/android/dx/rop/cst/CstString;

    if-nez v0, :cond_0

    .line 207
    const/4 v0, 0x0

    return v0

    .line 210
    :cond_0
    iget-object v0, p0, Lcom/android/dx/rop/cst/CstString;->string:Ljava/lang/String;

    move-object v1, p1

    check-cast v1, Lcom/android/dx/rop/cst/CstString;

    iget-object v1, v1, Lcom/android/dx/rop/cst/CstString;->string:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public getBytes()Lcom/android/dx/util/ByteArray;
    .locals 1

    .line 348
    iget-object v0, p0, Lcom/android/dx/rop/cst/CstString;->bytes:Lcom/android/dx/util/ByteArray;

    return-object v0
.end method

.method public getString()Ljava/lang/String;
    .locals 1

    .line 339
    iget-object v0, p0, Lcom/android/dx/rop/cst/CstString;->string:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Lcom/android/dx/rop/type/Type;
    .locals 1

    .line 375
    sget-object v0, Lcom/android/dx/rop/type/Type;->STRING:Lcom/android/dx/rop/type/Type;

    return-object v0
.end method

.method public getUtf16Size()I
    .locals 1

    .line 370
    iget-object v0, p0, Lcom/android/dx/rop/cst/CstString;->string:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    return v0
.end method

.method public getUtf8Size()I
    .locals 1

    .line 358
    iget-object v0, p0, Lcom/android/dx/rop/cst/CstString;->bytes:Lcom/android/dx/util/ByteArray;

    invoke-virtual {v0}, Lcom/android/dx/util/ByteArray;->size()I

    move-result v0

    return v0
.end method

.method public hashCode()I
    .locals 1

    .line 216
    iget-object v0, p0, Lcom/android/dx/rop/cst/CstString;->string:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public isCategory2()Z
    .locals 1

    .line 240
    const/4 v0, 0x0

    return v0
.end method

.method public toHuman()Ljava/lang/String;
    .locals 9

    .line 246
    iget-object v0, p0, Lcom/android/dx/rop/cst/CstString;->string:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    .line 247
    .local v0, "len":I
    new-instance v1, Ljava/lang/StringBuilder;

    mul-int/lit8 v2, v0, 0x3

    div-int/lit8 v2, v2, 0x2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 249
    .local v1, "sb":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_a

    .line 250
    iget-object v3, p0, Lcom/android/dx/rop/cst/CstString;->string:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 251
    .local v3, "c":C
    const/16 v4, 0x20

    const/16 v5, 0x7f

    const/16 v6, 0x5c

    if-lt v3, v4, :cond_2

    if-ge v3, v5, :cond_2

    .line 252
    const/16 v4, 0x27

    if-eq v3, v4, :cond_0

    const/16 v4, 0x22

    if-eq v3, v4, :cond_0

    if-ne v3, v6, :cond_1

    .line 253
    :cond_0
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 255
    :cond_1
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_3

    .line 256
    :cond_2
    if-gt v3, v5, :cond_8

    .line 257
    packed-switch v3, :pswitch_data_0

    .line 268
    :pswitch_0
    add-int/lit8 v4, v0, -0x1

    const/4 v5, 0x0

    if-ge v2, v4, :cond_3

    iget-object v4, p0, Lcom/android/dx/rop/cst/CstString;->string:Ljava/lang/String;

    add-int/lit8 v7, v2, 0x1

    .line 269
    invoke-virtual {v4, v7}, Ljava/lang/String;->charAt(I)C

    move-result v4

    goto :goto_1

    .line 259
    :pswitch_1
    const-string v4, "\\r"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 258
    :pswitch_2
    const-string v4, "\\n"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 260
    :pswitch_3
    const-string v4, "\\t"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 269
    :cond_3
    move v4, v5

    .line 270
    .local v4, "nextChar":C
    :goto_1
    const/16 v7, 0x30

    if-lt v4, v7, :cond_4

    const/16 v8, 0x37

    if-gt v4, v8, :cond_4

    const/4 v5, 0x1

    .line 272
    .local v5, "displayZero":Z
    :cond_4
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 273
    const/4 v6, 0x6

    .local v6, "shift":I
    :goto_2
    if-ltz v6, :cond_7

    .line 274
    shr-int v8, v3, v6

    and-int/lit8 v8, v8, 0x7

    add-int/2addr v8, v7

    int-to-char v8, v8

    .line 275
    .local v8, "outChar":C
    if-ne v8, v7, :cond_5

    if-eqz v5, :cond_6

    .line 276
    :cond_5
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 277
    const/4 v5, 0x1

    .line 273
    .end local v8    # "outChar":C
    :cond_6
    add-int/lit8 v6, v6, -0x3

    goto :goto_2

    .line 280
    .end local v6    # "shift":I
    :cond_7
    if-nez v5, :cond_9

    .line 282
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 288
    .end local v4    # "nextChar":C
    .end local v5    # "displayZero":Z
    :cond_8
    const-string v4, "\\u"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 289
    shr-int/lit8 v4, v3, 0xc

    const/16 v5, 0x10

    invoke-static {v4, v5}, Ljava/lang/Character;->forDigit(II)C

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 290
    shr-int/lit8 v4, v3, 0x8

    and-int/lit8 v4, v4, 0xf

    invoke-static {v4, v5}, Ljava/lang/Character;->forDigit(II)C

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 291
    shr-int/lit8 v4, v3, 0x4

    and-int/lit8 v4, v4, 0xf

    invoke-static {v4, v5}, Ljava/lang/Character;->forDigit(II)C

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 292
    and-int/lit8 v4, v3, 0xf

    invoke-static {v4, v5}, Ljava/lang/Character;->forDigit(II)C

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 249
    .end local v3    # "c":C
    :cond_9
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 296
    .end local v2    # "i":I
    :cond_a
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public toQuoted()Ljava/lang/String;
    .locals 3

    .line 306
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/dx/rop/cst/CstString;->toHuman()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toQuoted(I)Ljava/lang/String;
    .locals 5
    .param p1, "maxLength"    # I

    .line 318
    invoke-virtual {p0}, Lcom/android/dx/rop/cst/CstString;->toHuman()Ljava/lang/String;

    move-result-object v0

    .line 319
    .local v0, "string":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    .line 322
    .local v1, "length":I
    add-int/lit8 v2, p1, -0x2

    if-gt v1, v2, :cond_0

    .line 323
    const-string v2, ""

    .local v2, "ellipses":Ljava/lang/String;
    goto :goto_0

    .line 325
    .end local v2    # "ellipses":Ljava/lang/String;
    :cond_0
    add-int/lit8 v2, p1, -0x5

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 326
    const-string v2, "..."

    .line 329
    .restart local v2    # "ellipses":Ljava/lang/String;
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v4, 0x22

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 228
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "string{\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/dx/rop/cst/CstString;->toHuman()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\"}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public typeName()Ljava/lang/String;
    .locals 1

    .line 234
    const-string v0, "utf8"

    return-object v0
.end method
