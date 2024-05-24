.class public final Lcom/android/dx/cf/cst/ConstantPoolParser;
.super Ljava/lang/Object;
.source "ConstantPoolParser.java"


# instance fields
.field private final bytes:Lcom/android/dx/util/ByteArray;

.field private endOffset:I

.field private observer:Lcom/android/dx/cf/iface/ParseObserver;

.field private final offsets:[I

.field private final pool:Lcom/android/dx/rop/cst/StdConstantPool;


# direct methods
.method public constructor <init>(Lcom/android/dx/util/ByteArray;)V
    .locals 2
    .param p1, "bytes"    # Lcom/android/dx/util/ByteArray;

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lcom/android/dx/util/ByteArray;->getUnsignedShort(I)I

    move-result v0

    .line 86
    .local v0, "size":I
    iput-object p1, p0, Lcom/android/dx/cf/cst/ConstantPoolParser;->bytes:Lcom/android/dx/util/ByteArray;

    .line 87
    new-instance v1, Lcom/android/dx/rop/cst/StdConstantPool;

    invoke-direct {v1, v0}, Lcom/android/dx/rop/cst/StdConstantPool;-><init>(I)V

    iput-object v1, p0, Lcom/android/dx/cf/cst/ConstantPoolParser;->pool:Lcom/android/dx/rop/cst/StdConstantPool;

    .line 88
    new-array v1, v0, [I

    iput-object v1, p0, Lcom/android/dx/cf/cst/ConstantPoolParser;->offsets:[I

    .line 89
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/dx/cf/cst/ConstantPoolParser;->endOffset:I

    .line 90
    return-void
.end method

.method private determineOffsets()V
    .locals 6

    .line 187
    const/16 v0, 0xa

    .line 190
    .local v0, "at":I
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/dx/cf/cst/ConstantPoolParser;->offsets:[I

    array-length v3, v2

    if-ge v1, v3, :cond_0

    .line 191
    aput v0, v2, v1

    .line 192
    iget-object v2, p0, Lcom/android/dx/cf/cst/ConstantPoolParser;->bytes:Lcom/android/dx/util/ByteArray;

    invoke-virtual {v2, v0}, Lcom/android/dx/util/ByteArray;->getUnsignedByte(I)I

    move-result v2

    .line 194
    .local v2, "tag":I
    packed-switch v2, :pswitch_data_0

    .line 238
    :pswitch_0
    :try_start_0
    new-instance v3, Lcom/android/dx/cf/iface/ParseException;

    goto :goto_2

    .line 233
    :pswitch_1
    const/4 v3, 0x1

    .line 234
    .local v3, "lastCategory":I
    add-int/lit8 v0, v0, 0x5

    .line 235
    goto :goto_1

    .line 228
    .end local v3    # "lastCategory":I
    :pswitch_2
    const/4 v3, 0x1

    .line 229
    .restart local v3    # "lastCategory":I
    add-int/lit8 v0, v0, 0x3

    .line 230
    goto :goto_1

    .line 223
    .end local v3    # "lastCategory":I
    :pswitch_3
    const/4 v3, 0x1

    .line 224
    .restart local v3    # "lastCategory":I
    add-int/lit8 v0, v0, 0x4

    .line 225
    goto :goto_1

    .line 213
    .end local v3    # "lastCategory":I
    :pswitch_4
    const/4 v3, 0x1

    .line 214
    .restart local v3    # "lastCategory":I
    add-int/lit8 v0, v0, 0x3

    .line 215
    goto :goto_1

    .line 207
    .end local v3    # "lastCategory":I
    :pswitch_5
    const/4 v3, 0x2

    .line 208
    .restart local v3    # "lastCategory":I
    add-int/lit8 v0, v0, 0x9

    .line 209
    goto :goto_1

    .line 201
    .end local v3    # "lastCategory":I
    :pswitch_6
    const/4 v3, 0x1

    .line 202
    .restart local v3    # "lastCategory":I
    add-int/lit8 v0, v0, 0x5

    .line 203
    goto :goto_1

    .line 218
    .end local v3    # "lastCategory":I
    :pswitch_7
    const/4 v3, 0x1

    .line 219
    .restart local v3    # "lastCategory":I
    iget-object v4, p0, Lcom/android/dx/cf/cst/ConstantPoolParser;->bytes:Lcom/android/dx/util/ByteArray;

    add-int/lit8 v5, v0, 0x1

    invoke-virtual {v4, v5}, Lcom/android/dx/util/ByteArray;->getUnsignedShort(I)I

    move-result v4

    add-int/lit8 v4, v4, 0x3

    add-int/2addr v0, v4

    .line 220
    nop

    .line 244
    :goto_1
    nop

    .line 190
    .end local v2    # "tag":I
    add-int/2addr v1, v3

    goto :goto_0

    .line 241
    .end local v3    # "lastCategory":I
    .restart local v2    # "tag":I
    :catch_0
    move-exception v3

    goto :goto_3

    .line 238
    :goto_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "unknown tag byte: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v2}, Lcom/android/dx/util/Hex;->u1(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/android/dx/cf/iface/ParseException;-><init>(Ljava/lang/String;)V

    .end local v0    # "at":I
    .end local v1    # "i":I
    .end local v2    # "tag":I
    throw v3
    :try_end_0
    .catch Lcom/android/dx/cf/iface/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 242
    .restart local v0    # "at":I
    .restart local v1    # "i":I
    .restart local v2    # "tag":I
    .local v3, "ex":Lcom/android/dx/cf/iface/ParseException;
    :goto_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "...while preparsing cst "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v1}, Lcom/android/dx/util/Hex;->u2(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " at offset "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v0}, Lcom/android/dx/util/Hex;->u4(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/dx/cf/iface/ParseException;->addContext(Ljava/lang/String;)V

    .line 243
    throw v3

    .line 247
    .end local v1    # "i":I
    .end local v2    # "tag":I
    .end local v3    # "ex":Lcom/android/dx/cf/iface/ParseException;
    :cond_0
    iput v0, p0, Lcom/android/dx/cf/cst/ConstantPoolParser;->endOffset:I

    .line 248
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_0
        :pswitch_6
        :pswitch_6
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private static getMethodHandleTypeForKind(I)I
    .locals 3
    .param p0, "kind"    # I

    .line 428
    packed-switch p0, :pswitch_data_0

    .line 448
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid kind: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 446
    :pswitch_0
    const/16 v0, 0x8

    return v0

    .line 444
    :pswitch_1
    const/4 v0, 0x6

    return v0

    .line 442
    :pswitch_2
    const/4 v0, 0x7

    return v0

    .line 440
    :pswitch_3
    const/4 v0, 0x4

    return v0

    .line 438
    :pswitch_4
    const/4 v0, 0x5

    return v0

    .line 436
    :pswitch_5
    const/4 v0, 0x0

    return v0

    .line 434
    :pswitch_6
    const/4 v0, 0x2

    return v0

    .line 432
    :pswitch_7
    const/4 v0, 0x1

    return v0

    .line 430
    :pswitch_8
    const/4 v0, 0x3

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private parse()V
    .locals 10

    .line 135
    invoke-direct {p0}, Lcom/android/dx/cf/cst/ConstantPoolParser;->determineOffsets()V

    .line 137
    iget-object v0, p0, Lcom/android/dx/cf/cst/ConstantPoolParser;->observer:Lcom/android/dx/cf/iface/ParseObserver;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 138
    iget-object v2, p0, Lcom/android/dx/cf/cst/ConstantPoolParser;->bytes:Lcom/android/dx/util/ByteArray;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "constant_pool_count: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/dx/cf/cst/ConstantPoolParser;->offsets:[I

    array-length v4, v4

    .line 139
    invoke-static {v4}, Lcom/android/dx/util/Hex;->u2(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 138
    const/16 v4, 0x8

    const/4 v5, 0x2

    invoke-interface {v0, v2, v4, v5, v3}, Lcom/android/dx/cf/iface/ParseObserver;->parsed(Lcom/android/dx/util/ByteArray;IILjava/lang/String;)V

    .line 140
    iget-object v0, p0, Lcom/android/dx/cf/cst/ConstantPoolParser;->observer:Lcom/android/dx/cf/iface/ParseObserver;

    iget-object v2, p0, Lcom/android/dx/cf/cst/ConstantPoolParser;->bytes:Lcom/android/dx/util/ByteArray;

    const/16 v3, 0xa

    const-string v4, "\nconstant_pool:"

    invoke-interface {v0, v2, v3, v1, v4}, Lcom/android/dx/cf/iface/ParseObserver;->parsed(Lcom/android/dx/util/ByteArray;IILjava/lang/String;)V

    .line 141
    iget-object v0, p0, Lcom/android/dx/cf/cst/ConstantPoolParser;->observer:Lcom/android/dx/cf/iface/ParseObserver;

    const/4 v2, 0x1

    invoke-interface {v0, v2}, Lcom/android/dx/cf/iface/ParseObserver;->changeIndent(I)V

    .line 148
    :cond_0
    new-instance v0, Ljava/util/BitSet;

    iget-object v2, p0, Lcom/android/dx/cf/cst/ConstantPoolParser;->offsets:[I

    array-length v2, v2

    invoke-direct {v0, v2}, Ljava/util/BitSet;-><init>(I)V

    .line 150
    .local v0, "wasUtf8":Ljava/util/BitSet;
    const/4 v2, 0x1

    .local v2, "i":I
    :goto_0
    iget-object v3, p0, Lcom/android/dx/cf/cst/ConstantPoolParser;->offsets:[I

    array-length v4, v3

    if-ge v2, v4, :cond_2

    .line 151
    aget v3, v3, v2

    .line 152
    .local v3, "offset":I
    if-eqz v3, :cond_1

    iget-object v4, p0, Lcom/android/dx/cf/cst/ConstantPoolParser;->pool:Lcom/android/dx/rop/cst/StdConstantPool;

    invoke-virtual {v4, v2}, Lcom/android/dx/rop/cst/StdConstantPool;->getOrNull(I)Lcom/android/dx/rop/cst/Constant;

    move-result-object v4

    if-nez v4, :cond_1

    .line 153
    invoke-direct {p0, v2, v0}, Lcom/android/dx/cf/cst/ConstantPoolParser;->parse0(ILjava/util/BitSet;)Lcom/android/dx/rop/cst/Constant;

    .line 150
    .end local v3    # "offset":I
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 157
    .end local v2    # "i":I
    :cond_2
    iget-object v2, p0, Lcom/android/dx/cf/cst/ConstantPoolParser;->observer:Lcom/android/dx/cf/iface/ParseObserver;

    if-eqz v2, :cond_8

    .line 158
    const/4 v2, 0x1

    .restart local v2    # "i":I
    :goto_1
    iget-object v3, p0, Lcom/android/dx/cf/cst/ConstantPoolParser;->offsets:[I

    array-length v3, v3

    if-ge v2, v3, :cond_7

    .line 159
    iget-object v3, p0, Lcom/android/dx/cf/cst/ConstantPoolParser;->pool:Lcom/android/dx/rop/cst/StdConstantPool;

    invoke-virtual {v3, v2}, Lcom/android/dx/rop/cst/StdConstantPool;->getOrNull(I)Lcom/android/dx/rop/cst/Constant;

    move-result-object v3

    .line 160
    .local v3, "cst":Lcom/android/dx/rop/cst/Constant;
    if-nez v3, :cond_3

    .line 161
    goto :goto_5

    .line 163
    :cond_3
    iget-object v4, p0, Lcom/android/dx/cf/cst/ConstantPoolParser;->offsets:[I

    aget v4, v4, v2

    .line 164
    .local v4, "offset":I
    iget v5, p0, Lcom/android/dx/cf/cst/ConstantPoolParser;->endOffset:I

    .line 165
    .local v5, "nextOffset":I
    add-int/lit8 v6, v2, 0x1

    .local v6, "j":I
    :goto_2
    iget-object v7, p0, Lcom/android/dx/cf/cst/ConstantPoolParser;->offsets:[I

    array-length v8, v7

    if-ge v6, v8, :cond_5

    .line 166
    aget v7, v7, v6

    .line 167
    .local v7, "off":I
    if-eqz v7, :cond_4

    .line 168
    move v5, v7

    .line 169
    goto :goto_3

    .line 165
    .end local v7    # "off":I
    :cond_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 172
    .end local v6    # "j":I
    :cond_5
    :goto_3
    invoke-virtual {v0, v2}, Ljava/util/BitSet;->get(I)Z

    move-result v6

    if-eqz v6, :cond_6

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 173
    invoke-static {v2}, Lcom/android/dx/util/Hex;->u2(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ": utf8{\""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Lcom/android/dx/rop/cst/Constant;->toHuman()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\"}"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_4

    :cond_6
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 174
    invoke-static {v2}, Lcom/android/dx/util/Hex;->u2(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ": "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    :goto_4
    nop

    .line 175
    .local v6, "human":Ljava/lang/String;
    iget-object v7, p0, Lcom/android/dx/cf/cst/ConstantPoolParser;->observer:Lcom/android/dx/cf/iface/ParseObserver;

    iget-object v8, p0, Lcom/android/dx/cf/cst/ConstantPoolParser;->bytes:Lcom/android/dx/util/ByteArray;

    sub-int v9, v5, v4

    invoke-interface {v7, v8, v4, v9, v6}, Lcom/android/dx/cf/iface/ParseObserver;->parsed(Lcom/android/dx/util/ByteArray;IILjava/lang/String;)V

    .line 158
    .end local v3    # "cst":Lcom/android/dx/rop/cst/Constant;
    .end local v4    # "offset":I
    .end local v5    # "nextOffset":I
    .end local v6    # "human":Ljava/lang/String;
    :goto_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 178
    .end local v2    # "i":I
    :cond_7
    iget-object v2, p0, Lcom/android/dx/cf/cst/ConstantPoolParser;->observer:Lcom/android/dx/cf/iface/ParseObserver;

    const/4 v3, -0x1

    invoke-interface {v2, v3}, Lcom/android/dx/cf/iface/ParseObserver;->changeIndent(I)V

    .line 179
    iget-object v2, p0, Lcom/android/dx/cf/cst/ConstantPoolParser;->observer:Lcom/android/dx/cf/iface/ParseObserver;

    iget-object v3, p0, Lcom/android/dx/cf/cst/ConstantPoolParser;->bytes:Lcom/android/dx/util/ByteArray;

    iget v4, p0, Lcom/android/dx/cf/cst/ConstantPoolParser;->endOffset:I

    const-string v5, "end constant_pool"

    invoke-interface {v2, v3, v4, v1, v5}, Lcom/android/dx/cf/iface/ParseObserver;->parsed(Lcom/android/dx/util/ByteArray;IILjava/lang/String;)V

    .line 181
    :cond_8
    return-void
.end method

.method private parse0(ILjava/util/BitSet;)Lcom/android/dx/rop/cst/Constant;
    .locals 11
    .param p1, "idx"    # I
    .param p2, "wasUtf8"    # Ljava/util/BitSet;

    .line 260
    const-string v0, " at offset "

    const-string v1, "...while parsing cst "

    iget-object v2, p0, Lcom/android/dx/cf/cst/ConstantPoolParser;->pool:Lcom/android/dx/rop/cst/StdConstantPool;

    invoke-virtual {v2, p1}, Lcom/android/dx/rop/cst/StdConstantPool;->getOrNull(I)Lcom/android/dx/rop/cst/Constant;

    move-result-object v2

    .line 261
    .local v2, "cst":Lcom/android/dx/rop/cst/Constant;
    if-eqz v2, :cond_0

    .line 262
    return-object v2

    .line 265
    :cond_0
    iget-object v3, p0, Lcom/android/dx/cf/cst/ConstantPoolParser;->offsets:[I

    aget v3, v3, p1

    .line 268
    .local v3, "at":I
    :try_start_0
    iget-object v4, p0, Lcom/android/dx/cf/cst/ConstantPoolParser;->bytes:Lcom/android/dx/util/ByteArray;

    invoke-virtual {v4, v3}, Lcom/android/dx/util/ByteArray;->getUnsignedByte(I)I

    move-result v4

    .line 269
    .local v4, "tag":I
    packed-switch v4, :pswitch_data_0

    .line 388
    :pswitch_0
    new-instance v5, Lcom/android/dx/cf/iface/ParseException;

    goto/16 :goto_3

    .line 381
    :pswitch_1
    iget-object v5, p0, Lcom/android/dx/cf/cst/ConstantPoolParser;->bytes:Lcom/android/dx/util/ByteArray;

    add-int/lit8 v6, v3, 0x1

    invoke-virtual {v5, v6}, Lcom/android/dx/util/ByteArray;->getUnsignedShort(I)I

    move-result v5

    .line 382
    .local v5, "bootstrapMethodIndex":I
    iget-object v6, p0, Lcom/android/dx/cf/cst/ConstantPoolParser;->bytes:Lcom/android/dx/util/ByteArray;

    add-int/lit8 v7, v3, 0x3

    invoke-virtual {v6, v7}, Lcom/android/dx/util/ByteArray;->getUnsignedShort(I)I

    move-result v6

    .line 383
    .local v6, "natIndex":I
    invoke-direct {p0, v6, p2}, Lcom/android/dx/cf/cst/ConstantPoolParser;->parse0(ILjava/util/BitSet;)Lcom/android/dx/rop/cst/Constant;

    move-result-object v7

    check-cast v7, Lcom/android/dx/rop/cst/CstNat;

    .line 384
    .local v7, "nat":Lcom/android/dx/rop/cst/CstNat;
    invoke-static {v5, v7}, Lcom/android/dx/rop/cst/CstInvokeDynamic;->make(ILcom/android/dx/rop/cst/CstNat;)Lcom/android/dx/rop/cst/CstInvokeDynamic;

    move-result-object v0

    .line 385
    .end local v2    # "cst":Lcom/android/dx/rop/cst/Constant;
    .local v0, "cst":Lcom/android/dx/rop/cst/Constant;
    goto/16 :goto_2

    .line 375
    .end local v0    # "cst":Lcom/android/dx/rop/cst/Constant;
    .end local v5    # "bootstrapMethodIndex":I
    .end local v6    # "natIndex":I
    .end local v7    # "nat":Lcom/android/dx/rop/cst/CstNat;
    .restart local v2    # "cst":Lcom/android/dx/rop/cst/Constant;
    :pswitch_2
    iget-object v5, p0, Lcom/android/dx/cf/cst/ConstantPoolParser;->bytes:Lcom/android/dx/util/ByteArray;

    add-int/lit8 v6, v3, 0x1

    invoke-virtual {v5, v6}, Lcom/android/dx/util/ByteArray;->getUnsignedShort(I)I

    move-result v5

    .line 376
    .local v5, "descriptorIndex":I
    invoke-direct {p0, v5, p2}, Lcom/android/dx/cf/cst/ConstantPoolParser;->parse0(ILjava/util/BitSet;)Lcom/android/dx/rop/cst/Constant;

    move-result-object v6

    check-cast v6, Lcom/android/dx/rop/cst/CstString;

    .line 377
    .local v6, "descriptor":Lcom/android/dx/rop/cst/CstString;
    invoke-static {v6}, Lcom/android/dx/rop/cst/CstProtoRef;->make(Lcom/android/dx/rop/cst/CstString;)Lcom/android/dx/rop/cst/CstProtoRef;

    move-result-object v0

    .line 378
    .end local v2    # "cst":Lcom/android/dx/rop/cst/Constant;
    .restart local v0    # "cst":Lcom/android/dx/rop/cst/Constant;
    goto/16 :goto_2

    .line 339
    .end local v0    # "cst":Lcom/android/dx/rop/cst/Constant;
    .end local v5    # "descriptorIndex":I
    .end local v6    # "descriptor":Lcom/android/dx/rop/cst/CstString;
    .restart local v2    # "cst":Lcom/android/dx/rop/cst/Constant;
    :pswitch_3
    iget-object v5, p0, Lcom/android/dx/cf/cst/ConstantPoolParser;->bytes:Lcom/android/dx/util/ByteArray;

    add-int/lit8 v6, v3, 0x1

    invoke-virtual {v5, v6}, Lcom/android/dx/util/ByteArray;->getUnsignedByte(I)I

    move-result v5

    .line 340
    .local v5, "kind":I
    iget-object v6, p0, Lcom/android/dx/cf/cst/ConstantPoolParser;->bytes:Lcom/android/dx/util/ByteArray;

    add-int/lit8 v7, v3, 0x2

    invoke-virtual {v6, v7}, Lcom/android/dx/util/ByteArray;->getUnsignedShort(I)I

    move-result v6

    .line 342
    .local v6, "constantIndex":I
    packed-switch v5, :pswitch_data_1

    .line 367
    new-instance v7, Lcom/android/dx/cf/iface/ParseException;

    goto :goto_1

    .line 364
    :pswitch_4
    invoke-direct {p0, v6, p2}, Lcom/android/dx/cf/cst/ConstantPoolParser;->parse0(ILjava/util/BitSet;)Lcom/android/dx/rop/cst/Constant;

    move-result-object v7

    check-cast v7, Lcom/android/dx/rop/cst/CstInterfaceMethodRef;

    .line 365
    .local v7, "ref":Lcom/android/dx/rop/cst/Constant;
    goto :goto_0

    .line 355
    .end local v7    # "ref":Lcom/android/dx/rop/cst/Constant;
    :pswitch_5
    invoke-direct {p0, v6, p2}, Lcom/android/dx/cf/cst/ConstantPoolParser;->parse0(ILjava/util/BitSet;)Lcom/android/dx/rop/cst/Constant;

    move-result-object v7

    .line 356
    .restart local v7    # "ref":Lcom/android/dx/rop/cst/Constant;
    instance-of v8, v7, Lcom/android/dx/rop/cst/CstMethodRef;

    if-nez v8, :cond_2

    instance-of v8, v7, Lcom/android/dx/rop/cst/CstInterfaceMethodRef;

    if-eqz v8, :cond_1

    goto :goto_0

    .line 358
    :cond_1
    new-instance v8, Lcom/android/dx/cf/iface/ParseException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Unsupported ref constant type for MethodHandle "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 360
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Lcom/android/dx/cf/iface/ParseException;-><init>(Ljava/lang/String;)V

    .end local v2    # "cst":Lcom/android/dx/rop/cst/Constant;
    .end local v3    # "at":I
    .end local p1    # "idx":I
    .end local p2    # "wasUtf8":Ljava/util/BitSet;
    throw v8

    .line 351
    .end local v7    # "ref":Lcom/android/dx/rop/cst/Constant;
    .restart local v2    # "cst":Lcom/android/dx/rop/cst/Constant;
    .restart local v3    # "at":I
    .restart local p1    # "idx":I
    .restart local p2    # "wasUtf8":Ljava/util/BitSet;
    :pswitch_6
    invoke-direct {p0, v6, p2}, Lcom/android/dx/cf/cst/ConstantPoolParser;->parse0(ILjava/util/BitSet;)Lcom/android/dx/rop/cst/Constant;

    move-result-object v7

    check-cast v7, Lcom/android/dx/rop/cst/CstMethodRef;

    .line 352
    .restart local v7    # "ref":Lcom/android/dx/rop/cst/Constant;
    goto :goto_0

    .line 347
    .end local v7    # "ref":Lcom/android/dx/rop/cst/Constant;
    :pswitch_7
    invoke-direct {p0, v6, p2}, Lcom/android/dx/cf/cst/ConstantPoolParser;->parse0(ILjava/util/BitSet;)Lcom/android/dx/rop/cst/Constant;

    move-result-object v7

    check-cast v7, Lcom/android/dx/rop/cst/CstFieldRef;

    .line 348
    .restart local v7    # "ref":Lcom/android/dx/rop/cst/Constant;
    nop

    .line 370
    :cond_2
    :goto_0
    invoke-static {v5}, Lcom/android/dx/cf/cst/ConstantPoolParser;->getMethodHandleTypeForKind(I)I

    move-result v8

    .line 371
    .local v8, "methodHandleType":I
    invoke-static {v8, v7}, Lcom/android/dx/rop/cst/CstMethodHandle;->make(ILcom/android/dx/rop/cst/Constant;)Lcom/android/dx/rop/cst/CstMethodHandle;

    move-result-object v0

    .line 372
    .end local v2    # "cst":Lcom/android/dx/rop/cst/Constant;
    .restart local v0    # "cst":Lcom/android/dx/rop/cst/Constant;
    goto/16 :goto_2

    .line 367
    .end local v0    # "cst":Lcom/android/dx/rop/cst/Constant;
    .end local v7    # "ref":Lcom/android/dx/rop/cst/Constant;
    .end local v8    # "methodHandleType":I
    .restart local v2    # "cst":Lcom/android/dx/rop/cst/Constant;
    :goto_1
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unsupported MethodHandle kind: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/android/dx/cf/iface/ParseException;-><init>(Ljava/lang/String;)V

    .end local v2    # "cst":Lcom/android/dx/rop/cst/Constant;
    .end local v3    # "at":I
    .end local p1    # "idx":I
    .end local p2    # "wasUtf8":Ljava/util/BitSet;
    throw v7

    .line 331
    .end local v5    # "kind":I
    .end local v6    # "constantIndex":I
    .restart local v2    # "cst":Lcom/android/dx/rop/cst/Constant;
    .restart local v3    # "at":I
    .restart local p1    # "idx":I
    .restart local p2    # "wasUtf8":Ljava/util/BitSet;
    :pswitch_8
    iget-object v5, p0, Lcom/android/dx/cf/cst/ConstantPoolParser;->bytes:Lcom/android/dx/util/ByteArray;

    add-int/lit8 v6, v3, 0x1

    invoke-virtual {v5, v6}, Lcom/android/dx/util/ByteArray;->getUnsignedShort(I)I

    move-result v5

    .line 332
    .local v5, "nameIndex":I
    invoke-direct {p0, v5, p2}, Lcom/android/dx/cf/cst/ConstantPoolParser;->parse0(ILjava/util/BitSet;)Lcom/android/dx/rop/cst/Constant;

    move-result-object v6

    check-cast v6, Lcom/android/dx/rop/cst/CstString;

    .line 333
    .local v6, "name":Lcom/android/dx/rop/cst/CstString;
    iget-object v7, p0, Lcom/android/dx/cf/cst/ConstantPoolParser;->bytes:Lcom/android/dx/util/ByteArray;

    add-int/lit8 v8, v3, 0x3

    invoke-virtual {v7, v8}, Lcom/android/dx/util/ByteArray;->getUnsignedShort(I)I

    move-result v7

    .line 334
    .local v7, "descriptorIndex":I
    invoke-direct {p0, v7, p2}, Lcom/android/dx/cf/cst/ConstantPoolParser;->parse0(ILjava/util/BitSet;)Lcom/android/dx/rop/cst/Constant;

    move-result-object v8

    check-cast v8, Lcom/android/dx/rop/cst/CstString;

    .line 335
    .local v8, "descriptor":Lcom/android/dx/rop/cst/CstString;
    new-instance v9, Lcom/android/dx/rop/cst/CstNat;

    invoke-direct {v9, v6, v8}, Lcom/android/dx/rop/cst/CstNat;-><init>(Lcom/android/dx/rop/cst/CstString;Lcom/android/dx/rop/cst/CstString;)V

    move-object v0, v9

    .line 336
    .end local v2    # "cst":Lcom/android/dx/rop/cst/Constant;
    .restart local v0    # "cst":Lcom/android/dx/rop/cst/Constant;
    goto/16 :goto_2

    .line 323
    .end local v0    # "cst":Lcom/android/dx/rop/cst/Constant;
    .end local v5    # "nameIndex":I
    .end local v6    # "name":Lcom/android/dx/rop/cst/CstString;
    .end local v7    # "descriptorIndex":I
    .end local v8    # "descriptor":Lcom/android/dx/rop/cst/CstString;
    .restart local v2    # "cst":Lcom/android/dx/rop/cst/Constant;
    :pswitch_9
    iget-object v5, p0, Lcom/android/dx/cf/cst/ConstantPoolParser;->bytes:Lcom/android/dx/util/ByteArray;

    add-int/lit8 v6, v3, 0x1

    invoke-virtual {v5, v6}, Lcom/android/dx/util/ByteArray;->getUnsignedShort(I)I

    move-result v5

    .line 324
    .local v5, "classIndex":I
    invoke-direct {p0, v5, p2}, Lcom/android/dx/cf/cst/ConstantPoolParser;->parse0(ILjava/util/BitSet;)Lcom/android/dx/rop/cst/Constant;

    move-result-object v6

    check-cast v6, Lcom/android/dx/rop/cst/CstType;

    .line 325
    .local v6, "type":Lcom/android/dx/rop/cst/CstType;
    iget-object v7, p0, Lcom/android/dx/cf/cst/ConstantPoolParser;->bytes:Lcom/android/dx/util/ByteArray;

    add-int/lit8 v8, v3, 0x3

    invoke-virtual {v7, v8}, Lcom/android/dx/util/ByteArray;->getUnsignedShort(I)I

    move-result v7

    .line 326
    .local v7, "natIndex":I
    invoke-direct {p0, v7, p2}, Lcom/android/dx/cf/cst/ConstantPoolParser;->parse0(ILjava/util/BitSet;)Lcom/android/dx/rop/cst/Constant;

    move-result-object v8

    check-cast v8, Lcom/android/dx/rop/cst/CstNat;

    .line 327
    .local v8, "nat":Lcom/android/dx/rop/cst/CstNat;
    new-instance v9, Lcom/android/dx/rop/cst/CstInterfaceMethodRef;

    invoke-direct {v9, v6, v8}, Lcom/android/dx/rop/cst/CstInterfaceMethodRef;-><init>(Lcom/android/dx/rop/cst/CstType;Lcom/android/dx/rop/cst/CstNat;)V

    move-object v0, v9

    .line 328
    .end local v2    # "cst":Lcom/android/dx/rop/cst/Constant;
    .restart local v0    # "cst":Lcom/android/dx/rop/cst/Constant;
    goto/16 :goto_2

    .line 315
    .end local v0    # "cst":Lcom/android/dx/rop/cst/Constant;
    .end local v5    # "classIndex":I
    .end local v6    # "type":Lcom/android/dx/rop/cst/CstType;
    .end local v7    # "natIndex":I
    .end local v8    # "nat":Lcom/android/dx/rop/cst/CstNat;
    .restart local v2    # "cst":Lcom/android/dx/rop/cst/Constant;
    :pswitch_a
    iget-object v5, p0, Lcom/android/dx/cf/cst/ConstantPoolParser;->bytes:Lcom/android/dx/util/ByteArray;

    add-int/lit8 v6, v3, 0x1

    invoke-virtual {v5, v6}, Lcom/android/dx/util/ByteArray;->getUnsignedShort(I)I

    move-result v5

    .line 316
    .restart local v5    # "classIndex":I
    invoke-direct {p0, v5, p2}, Lcom/android/dx/cf/cst/ConstantPoolParser;->parse0(ILjava/util/BitSet;)Lcom/android/dx/rop/cst/Constant;

    move-result-object v6

    check-cast v6, Lcom/android/dx/rop/cst/CstType;

    .line 317
    .restart local v6    # "type":Lcom/android/dx/rop/cst/CstType;
    iget-object v7, p0, Lcom/android/dx/cf/cst/ConstantPoolParser;->bytes:Lcom/android/dx/util/ByteArray;

    add-int/lit8 v8, v3, 0x3

    invoke-virtual {v7, v8}, Lcom/android/dx/util/ByteArray;->getUnsignedShort(I)I

    move-result v7

    .line 318
    .restart local v7    # "natIndex":I
    invoke-direct {p0, v7, p2}, Lcom/android/dx/cf/cst/ConstantPoolParser;->parse0(ILjava/util/BitSet;)Lcom/android/dx/rop/cst/Constant;

    move-result-object v8

    check-cast v8, Lcom/android/dx/rop/cst/CstNat;

    .line 319
    .restart local v8    # "nat":Lcom/android/dx/rop/cst/CstNat;
    new-instance v9, Lcom/android/dx/rop/cst/CstMethodRef;

    invoke-direct {v9, v6, v8}, Lcom/android/dx/rop/cst/CstMethodRef;-><init>(Lcom/android/dx/rop/cst/CstType;Lcom/android/dx/rop/cst/CstNat;)V

    move-object v0, v9

    .line 320
    .end local v2    # "cst":Lcom/android/dx/rop/cst/Constant;
    .restart local v0    # "cst":Lcom/android/dx/rop/cst/Constant;
    goto/16 :goto_2

    .line 307
    .end local v0    # "cst":Lcom/android/dx/rop/cst/Constant;
    .end local v5    # "classIndex":I
    .end local v6    # "type":Lcom/android/dx/rop/cst/CstType;
    .end local v7    # "natIndex":I
    .end local v8    # "nat":Lcom/android/dx/rop/cst/CstNat;
    .restart local v2    # "cst":Lcom/android/dx/rop/cst/Constant;
    :pswitch_b
    iget-object v5, p0, Lcom/android/dx/cf/cst/ConstantPoolParser;->bytes:Lcom/android/dx/util/ByteArray;

    add-int/lit8 v6, v3, 0x1

    invoke-virtual {v5, v6}, Lcom/android/dx/util/ByteArray;->getUnsignedShort(I)I

    move-result v5

    .line 308
    .restart local v5    # "classIndex":I
    invoke-direct {p0, v5, p2}, Lcom/android/dx/cf/cst/ConstantPoolParser;->parse0(ILjava/util/BitSet;)Lcom/android/dx/rop/cst/Constant;

    move-result-object v6

    check-cast v6, Lcom/android/dx/rop/cst/CstType;

    .line 309
    .restart local v6    # "type":Lcom/android/dx/rop/cst/CstType;
    iget-object v7, p0, Lcom/android/dx/cf/cst/ConstantPoolParser;->bytes:Lcom/android/dx/util/ByteArray;

    add-int/lit8 v8, v3, 0x3

    invoke-virtual {v7, v8}, Lcom/android/dx/util/ByteArray;->getUnsignedShort(I)I

    move-result v7

    .line 310
    .restart local v7    # "natIndex":I
    invoke-direct {p0, v7, p2}, Lcom/android/dx/cf/cst/ConstantPoolParser;->parse0(ILjava/util/BitSet;)Lcom/android/dx/rop/cst/Constant;

    move-result-object v8

    check-cast v8, Lcom/android/dx/rop/cst/CstNat;

    .line 311
    .restart local v8    # "nat":Lcom/android/dx/rop/cst/CstNat;
    new-instance v9, Lcom/android/dx/rop/cst/CstFieldRef;

    invoke-direct {v9, v6, v8}, Lcom/android/dx/rop/cst/CstFieldRef;-><init>(Lcom/android/dx/rop/cst/CstType;Lcom/android/dx/rop/cst/CstNat;)V

    move-object v0, v9

    .line 312
    .end local v2    # "cst":Lcom/android/dx/rop/cst/Constant;
    .restart local v0    # "cst":Lcom/android/dx/rop/cst/Constant;
    goto :goto_2

    .line 302
    .end local v0    # "cst":Lcom/android/dx/rop/cst/Constant;
    .end local v5    # "classIndex":I
    .end local v6    # "type":Lcom/android/dx/rop/cst/CstType;
    .end local v7    # "natIndex":I
    .end local v8    # "nat":Lcom/android/dx/rop/cst/CstNat;
    .restart local v2    # "cst":Lcom/android/dx/rop/cst/Constant;
    :pswitch_c
    iget-object v5, p0, Lcom/android/dx/cf/cst/ConstantPoolParser;->bytes:Lcom/android/dx/util/ByteArray;

    add-int/lit8 v6, v3, 0x1

    invoke-virtual {v5, v6}, Lcom/android/dx/util/ByteArray;->getUnsignedShort(I)I

    move-result v5

    .line 303
    .local v5, "stringIndex":I
    invoke-direct {p0, v5, p2}, Lcom/android/dx/cf/cst/ConstantPoolParser;->parse0(ILjava/util/BitSet;)Lcom/android/dx/rop/cst/Constant;

    move-result-object v0

    .line 304
    .end local v2    # "cst":Lcom/android/dx/rop/cst/Constant;
    .restart local v0    # "cst":Lcom/android/dx/rop/cst/Constant;
    goto :goto_2

    .line 296
    .end local v0    # "cst":Lcom/android/dx/rop/cst/Constant;
    .end local v5    # "stringIndex":I
    .restart local v2    # "cst":Lcom/android/dx/rop/cst/Constant;
    :pswitch_d
    iget-object v5, p0, Lcom/android/dx/cf/cst/ConstantPoolParser;->bytes:Lcom/android/dx/util/ByteArray;

    add-int/lit8 v6, v3, 0x1

    invoke-virtual {v5, v6}, Lcom/android/dx/util/ByteArray;->getUnsignedShort(I)I

    move-result v5

    .line 297
    .local v5, "nameIndex":I
    invoke-direct {p0, v5, p2}, Lcom/android/dx/cf/cst/ConstantPoolParser;->parse0(ILjava/util/BitSet;)Lcom/android/dx/rop/cst/Constant;

    move-result-object v6

    check-cast v6, Lcom/android/dx/rop/cst/CstString;

    .line 298
    .local v6, "name":Lcom/android/dx/rop/cst/CstString;
    new-instance v7, Lcom/android/dx/rop/cst/CstType;

    invoke-virtual {v6}, Lcom/android/dx/rop/cst/CstString;->getString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/android/dx/rop/type/Type;->internClassName(Ljava/lang/String;)Lcom/android/dx/rop/type/Type;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/android/dx/rop/cst/CstType;-><init>(Lcom/android/dx/rop/type/Type;)V

    move-object v0, v7

    .line 299
    .end local v2    # "cst":Lcom/android/dx/rop/cst/Constant;
    .restart local v0    # "cst":Lcom/android/dx/rop/cst/Constant;
    goto :goto_2

    .line 291
    .end local v0    # "cst":Lcom/android/dx/rop/cst/Constant;
    .end local v5    # "nameIndex":I
    .end local v6    # "name":Lcom/android/dx/rop/cst/CstString;
    .restart local v2    # "cst":Lcom/android/dx/rop/cst/Constant;
    :pswitch_e
    iget-object v5, p0, Lcom/android/dx/cf/cst/ConstantPoolParser;->bytes:Lcom/android/dx/util/ByteArray;

    add-int/lit8 v6, v3, 0x1

    invoke-virtual {v5, v6}, Lcom/android/dx/util/ByteArray;->getLong(I)J

    move-result-wide v5

    .line 292
    .local v5, "bits":J
    invoke-static {v5, v6}, Lcom/android/dx/rop/cst/CstDouble;->make(J)Lcom/android/dx/rop/cst/CstDouble;

    move-result-object v0

    .line 293
    .end local v2    # "cst":Lcom/android/dx/rop/cst/Constant;
    .restart local v0    # "cst":Lcom/android/dx/rop/cst/Constant;
    goto :goto_2

    .line 286
    .end local v0    # "cst":Lcom/android/dx/rop/cst/Constant;
    .end local v5    # "bits":J
    .restart local v2    # "cst":Lcom/android/dx/rop/cst/Constant;
    :pswitch_f
    iget-object v5, p0, Lcom/android/dx/cf/cst/ConstantPoolParser;->bytes:Lcom/android/dx/util/ByteArray;

    add-int/lit8 v6, v3, 0x1

    invoke-virtual {v5, v6}, Lcom/android/dx/util/ByteArray;->getLong(I)J

    move-result-wide v5

    .line 287
    .local v5, "value":J
    invoke-static {v5, v6}, Lcom/android/dx/rop/cst/CstLong;->make(J)Lcom/android/dx/rop/cst/CstLong;

    move-result-object v0

    .line 288
    .end local v2    # "cst":Lcom/android/dx/rop/cst/Constant;
    .restart local v0    # "cst":Lcom/android/dx/rop/cst/Constant;
    goto :goto_2

    .line 281
    .end local v0    # "cst":Lcom/android/dx/rop/cst/Constant;
    .end local v5    # "value":J
    .restart local v2    # "cst":Lcom/android/dx/rop/cst/Constant;
    :pswitch_10
    iget-object v5, p0, Lcom/android/dx/cf/cst/ConstantPoolParser;->bytes:Lcom/android/dx/util/ByteArray;

    add-int/lit8 v6, v3, 0x1

    invoke-virtual {v5, v6}, Lcom/android/dx/util/ByteArray;->getInt(I)I

    move-result v5

    .line 282
    .local v5, "bits":I
    invoke-static {v5}, Lcom/android/dx/rop/cst/CstFloat;->make(I)Lcom/android/dx/rop/cst/CstFloat;

    move-result-object v0

    .line 283
    .end local v2    # "cst":Lcom/android/dx/rop/cst/Constant;
    .restart local v0    # "cst":Lcom/android/dx/rop/cst/Constant;
    goto :goto_2

    .line 276
    .end local v0    # "cst":Lcom/android/dx/rop/cst/Constant;
    .end local v5    # "bits":I
    .restart local v2    # "cst":Lcom/android/dx/rop/cst/Constant;
    :pswitch_11
    iget-object v5, p0, Lcom/android/dx/cf/cst/ConstantPoolParser;->bytes:Lcom/android/dx/util/ByteArray;

    add-int/lit8 v6, v3, 0x1

    invoke-virtual {v5, v6}, Lcom/android/dx/util/ByteArray;->getInt(I)I

    move-result v5

    .line 277
    .local v5, "value":I
    invoke-static {v5}, Lcom/android/dx/rop/cst/CstInteger;->make(I)Lcom/android/dx/rop/cst/CstInteger;

    move-result-object v0

    .line 278
    .end local v2    # "cst":Lcom/android/dx/rop/cst/Constant;
    .restart local v0    # "cst":Lcom/android/dx/rop/cst/Constant;
    goto :goto_2

    .line 271
    .end local v0    # "cst":Lcom/android/dx/rop/cst/Constant;
    .end local v5    # "value":I
    .restart local v2    # "cst":Lcom/android/dx/rop/cst/Constant;
    :pswitch_12
    invoke-direct {p0, v3}, Lcom/android/dx/cf/cst/ConstantPoolParser;->parseUtf8(I)Lcom/android/dx/rop/cst/CstString;

    move-result-object v5

    move-object v2, v5

    .line 272
    invoke-virtual {p2, p1}, Ljava/util/BitSet;->set(I)V
    :try_end_0
    .catch Lcom/android/dx/cf/iface/ParseException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 273
    move-object v0, v2

    .line 400
    .end local v2    # "cst":Lcom/android/dx/rop/cst/Constant;
    .end local v4    # "tag":I
    .restart local v0    # "cst":Lcom/android/dx/rop/cst/Constant;
    :goto_2
    nop

    .line 402
    iget-object v1, p0, Lcom/android/dx/cf/cst/ConstantPoolParser;->pool:Lcom/android/dx/rop/cst/StdConstantPool;

    invoke-virtual {v1, p1, v0}, Lcom/android/dx/rop/cst/StdConstantPool;->set(ILcom/android/dx/rop/cst/Constant;)V

    .line 403
    return-object v0

    .line 388
    .end local v0    # "cst":Lcom/android/dx/rop/cst/Constant;
    .restart local v2    # "cst":Lcom/android/dx/rop/cst/Constant;
    .restart local v4    # "tag":I
    :goto_3
    :try_start_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "unknown tag byte: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v4}, Lcom/android/dx/util/Hex;->u1(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/android/dx/cf/iface/ParseException;-><init>(Ljava/lang/String;)V

    .end local v2    # "cst":Lcom/android/dx/rop/cst/Constant;
    .end local v3    # "at":I
    .end local p1    # "idx":I
    .end local p2    # "wasUtf8":Ljava/util/BitSet;
    throw v5
    :try_end_1
    .catch Lcom/android/dx/cf/iface/ParseException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    .line 395
    .end local v4    # "tag":I
    .restart local v2    # "cst":Lcom/android/dx/rop/cst/Constant;
    .restart local v3    # "at":I
    .restart local p1    # "idx":I
    .restart local p2    # "wasUtf8":Ljava/util/BitSet;
    :catch_0
    move-exception v4

    .line 396
    .local v4, "ex":Ljava/lang/RuntimeException;
    new-instance v5, Lcom/android/dx/cf/iface/ParseException;

    invoke-direct {v5, v4}, Lcom/android/dx/cf/iface/ParseException;-><init>(Ljava/lang/Throwable;)V

    .line 397
    .local v5, "pe":Lcom/android/dx/cf/iface/ParseException;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Lcom/android/dx/util/Hex;->u2(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 398
    invoke-static {v3}, Lcom/android/dx/util/Hex;->u4(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 397
    invoke-virtual {v5, v0}, Lcom/android/dx/cf/iface/ParseException;->addContext(Ljava/lang/String;)V

    .line 399
    throw v5

    .line 391
    .end local v4    # "ex":Ljava/lang/RuntimeException;
    .end local v5    # "pe":Lcom/android/dx/cf/iface/ParseException;
    :catch_1
    move-exception v4

    .line 392
    .local v4, "ex":Lcom/android/dx/cf/iface/ParseException;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Lcom/android/dx/util/Hex;->u2(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 393
    invoke-static {v3}, Lcom/android/dx/util/Hex;->u4(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 392
    invoke-virtual {v4, v0}, Lcom/android/dx/cf/iface/ParseException;->addContext(Ljava/lang/String;)V

    .line 394
    throw v4

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_12
        :pswitch_0
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_5
        :pswitch_6
        :pswitch_4
    .end packed-switch
.end method

.method private parseIfNecessary()V
    .locals 1

    .line 126
    iget v0, p0, Lcom/android/dx/cf/cst/ConstantPoolParser;->endOffset:I

    if-gez v0, :cond_0

    .line 127
    invoke-direct {p0}, Lcom/android/dx/cf/cst/ConstantPoolParser;->parse()V

    .line 129
    :cond_0
    return-void
.end method

.method private parseUtf8(I)Lcom/android/dx/rop/cst/CstString;
    .locals 4
    .param p1, "at"    # I

    .line 413
    iget-object v0, p0, Lcom/android/dx/cf/cst/ConstantPoolParser;->bytes:Lcom/android/dx/util/ByteArray;

    add-int/lit8 v1, p1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/dx/util/ByteArray;->getUnsignedShort(I)I

    move-result v0

    .line 415
    .local v0, "length":I
    add-int/lit8 p1, p1, 0x3

    .line 417
    iget-object v1, p0, Lcom/android/dx/cf/cst/ConstantPoolParser;->bytes:Lcom/android/dx/util/ByteArray;

    add-int v2, p1, v0

    invoke-virtual {v1, p1, v2}, Lcom/android/dx/util/ByteArray;->slice(II)Lcom/android/dx/util/ByteArray;

    move-result-object v1

    .line 420
    .local v1, "ubytes":Lcom/android/dx/util/ByteArray;
    :try_start_0
    new-instance v2, Lcom/android/dx/rop/cst/CstString;

    invoke-direct {v2, v1}, Lcom/android/dx/rop/cst/CstString;-><init>(Lcom/android/dx/util/ByteArray;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 421
    :catch_0
    move-exception v2

    .line 423
    .local v2, "ex":Ljava/lang/IllegalArgumentException;
    new-instance v3, Lcom/android/dx/cf/iface/ParseException;

    invoke-direct {v3, v2}, Lcom/android/dx/cf/iface/ParseException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method


# virtual methods
.method public getEndOffset()I
    .locals 1

    .line 108
    invoke-direct {p0}, Lcom/android/dx/cf/cst/ConstantPoolParser;->parseIfNecessary()V

    .line 109
    iget v0, p0, Lcom/android/dx/cf/cst/ConstantPoolParser;->endOffset:I

    return v0
.end method

.method public getPool()Lcom/android/dx/rop/cst/StdConstantPool;
    .locals 1

    .line 118
    invoke-direct {p0}, Lcom/android/dx/cf/cst/ConstantPoolParser;->parseIfNecessary()V

    .line 119
    iget-object v0, p0, Lcom/android/dx/cf/cst/ConstantPoolParser;->pool:Lcom/android/dx/rop/cst/StdConstantPool;

    return-object v0
.end method

.method public setObserver(Lcom/android/dx/cf/iface/ParseObserver;)V
    .locals 0
    .param p1, "observer"    # Lcom/android/dx/cf/iface/ParseObserver;

    .line 98
    iput-object p1, p0, Lcom/android/dx/cf/cst/ConstantPoolParser;->observer:Lcom/android/dx/cf/iface/ParseObserver;

    .line 99
    return-void
.end method
