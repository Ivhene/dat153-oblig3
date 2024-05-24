.class public final Lnet/bytebuddy/jar/asm/TypePath;
.super Ljava/lang/Object;
.source "TypePath.java"


# static fields
.field public static final ARRAY_ELEMENT:I = 0x0

.field public static final INNER_TYPE:I = 0x1

.field public static final TYPE_ARGUMENT:I = 0x3

.field public static final WILDCARD_BOUND:I = 0x2


# instance fields
.field private final typePathContainer:[B

.field private final typePathOffset:I


# direct methods
.method constructor <init>([BI)V
    .locals 0
    .param p1, "typePathContainer"    # [B
    .param p2, "typePathOffset"    # I

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    iput-object p1, p0, Lnet/bytebuddy/jar/asm/TypePath;->typePathContainer:[B

    .line 74
    iput p2, p0, Lnet/bytebuddy/jar/asm/TypePath;->typePathOffset:I

    .line 75
    return-void
.end method

.method public static fromString(Ljava/lang/String;)Lnet/bytebuddy/jar/asm/TypePath;
    .locals 9
    .param p0, "typePath"    # Ljava/lang/String;

    .line 120
    if-eqz p0, :cond_9

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_5

    .line 123
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 124
    .local v0, "typePathLength":I
    new-instance v1, Lnet/bytebuddy/jar/asm/ByteVector;

    invoke-direct {v1, v0}, Lnet/bytebuddy/jar/asm/ByteVector;-><init>(I)V

    .line 125
    .local v1, "output":Lnet/bytebuddy/jar/asm/ByteVector;
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lnet/bytebuddy/jar/asm/ByteVector;->putByte(I)Lnet/bytebuddy/jar/asm/ByteVector;

    .line 126
    const/4 v3, 0x0

    .line 127
    .local v3, "typePathIndex":I
    :goto_0
    const/4 v4, 0x2

    if-ge v3, v0, :cond_8

    .line 128
    add-int/lit8 v5, v3, 0x1

    .end local v3    # "typePathIndex":I
    .local v5, "typePathIndex":I
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 129
    .local v3, "c":C
    const/16 v6, 0x5b

    if-ne v3, v6, :cond_1

    .line 130
    invoke-virtual {v1, v2, v2}, Lnet/bytebuddy/jar/asm/ByteVector;->put11(II)Lnet/bytebuddy/jar/asm/ByteVector;

    goto :goto_1

    .line 131
    :cond_1
    const/16 v6, 0x2e

    if-ne v3, v6, :cond_2

    .line 132
    const/4 v4, 0x1

    invoke-virtual {v1, v4, v2}, Lnet/bytebuddy/jar/asm/ByteVector;->put11(II)Lnet/bytebuddy/jar/asm/ByteVector;

    goto :goto_1

    .line 133
    :cond_2
    const/16 v6, 0x2a

    if-ne v3, v6, :cond_3

    .line 134
    invoke-virtual {v1, v4, v2}, Lnet/bytebuddy/jar/asm/ByteVector;->put11(II)Lnet/bytebuddy/jar/asm/ByteVector;

    .line 151
    .end local v3    # "c":C
    :goto_1
    move v3, v5

    goto :goto_4

    .line 135
    .restart local v3    # "c":C
    :cond_3
    const/16 v4, 0x30

    if-lt v3, v4, :cond_7

    const/16 v6, 0x39

    if-gt v3, v6, :cond_7

    .line 136
    add-int/lit8 v7, v3, -0x30

    .line 137
    .local v7, "typeArg":I
    :goto_2
    if-ge v5, v0, :cond_6

    .line 138
    add-int/lit8 v8, v5, 0x1

    .end local v5    # "typePathIndex":I
    .local v8, "typePathIndex":I
    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 139
    if-lt v3, v4, :cond_4

    if-gt v3, v6, :cond_4

    .line 140
    mul-int/lit8 v5, v7, 0xa

    add-int/2addr v5, v3

    add-int/lit8 v7, v5, -0x30

    move v5, v8

    goto :goto_2

    .line 141
    :cond_4
    const/16 v4, 0x3b

    if-ne v3, v4, :cond_5

    .line 142
    move v5, v8

    goto :goto_3

    .line 144
    :cond_5
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v2

    .line 147
    .end local v8    # "typePathIndex":I
    .restart local v5    # "typePathIndex":I
    :cond_6
    :goto_3
    const/4 v4, 0x3

    invoke-virtual {v1, v4, v7}, Lnet/bytebuddy/jar/asm/ByteVector;->put11(II)Lnet/bytebuddy/jar/asm/ByteVector;

    .line 148
    .end local v7    # "typeArg":I
    move v3, v5

    .line 151
    .end local v5    # "typePathIndex":I
    .local v3, "typePathIndex":I
    :goto_4
    goto :goto_0

    .line 149
    .local v3, "c":C
    .restart local v5    # "typePathIndex":I
    :cond_7
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v2

    .line 152
    .end local v5    # "typePathIndex":I
    .local v3, "typePathIndex":I
    :cond_8
    iget-object v5, v1, Lnet/bytebuddy/jar/asm/ByteVector;->data:[B

    iget v6, v1, Lnet/bytebuddy/jar/asm/ByteVector;->length:I

    div-int/2addr v6, v4

    int-to-byte v4, v6

    aput-byte v4, v5, v2

    .line 153
    new-instance v4, Lnet/bytebuddy/jar/asm/TypePath;

    iget-object v5, v1, Lnet/bytebuddy/jar/asm/ByteVector;->data:[B

    invoke-direct {v4, v5, v2}, Lnet/bytebuddy/jar/asm/TypePath;-><init>([BI)V

    return-object v4

    .line 121
    .end local v0    # "typePathLength":I
    .end local v1    # "output":Lnet/bytebuddy/jar/asm/ByteVector;
    .end local v3    # "typePathIndex":I
    :cond_9
    :goto_5
    const/4 v0, 0x0

    return-object v0
.end method

.method static put(Lnet/bytebuddy/jar/asm/TypePath;Lnet/bytebuddy/jar/asm/ByteVector;)V
    .locals 3
    .param p0, "typePath"    # Lnet/bytebuddy/jar/asm/TypePath;
    .param p1, "output"    # Lnet/bytebuddy/jar/asm/ByteVector;

    .line 194
    if-nez p0, :cond_0

    .line 195
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lnet/bytebuddy/jar/asm/ByteVector;->putByte(I)Lnet/bytebuddy/jar/asm/ByteVector;

    goto :goto_0

    .line 197
    :cond_0
    iget-object v0, p0, Lnet/bytebuddy/jar/asm/TypePath;->typePathContainer:[B

    iget v1, p0, Lnet/bytebuddy/jar/asm/TypePath;->typePathOffset:I

    aget-byte v2, v0, v1

    mul-int/lit8 v2, v2, 0x2

    add-int/lit8 v2, v2, 0x1

    .line 198
    .local v2, "length":I
    invoke-virtual {p1, v0, v1, v2}, Lnet/bytebuddy/jar/asm/ByteVector;->putByteArray([BII)Lnet/bytebuddy/jar/asm/ByteVector;

    .line 200
    .end local v2    # "length":I
    :goto_0
    return-void
.end method


# virtual methods
.method public getLength()I
    .locals 2

    .line 84
    iget-object v0, p0, Lnet/bytebuddy/jar/asm/TypePath;->typePathContainer:[B

    iget v1, p0, Lnet/bytebuddy/jar/asm/TypePath;->typePathOffset:I

    aget-byte v0, v0, v1

    return v0
.end method

.method public getStep(I)I
    .locals 3
    .param p1, "index"    # I

    .line 96
    iget-object v0, p0, Lnet/bytebuddy/jar/asm/TypePath;->typePathContainer:[B

    iget v1, p0, Lnet/bytebuddy/jar/asm/TypePath;->typePathOffset:I

    mul-int/lit8 v2, p1, 0x2

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x1

    aget-byte v0, v0, v1

    return v0
.end method

.method public getStepArgument(I)I
    .locals 3
    .param p1, "index"    # I

    .line 108
    iget-object v0, p0, Lnet/bytebuddy/jar/asm/TypePath;->typePathContainer:[B

    iget v1, p0, Lnet/bytebuddy/jar/asm/TypePath;->typePathOffset:I

    mul-int/lit8 v2, p1, 0x2

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x2

    aget-byte v0, v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 163
    invoke-virtual {p0}, Lnet/bytebuddy/jar/asm/TypePath;->getLength()I

    move-result v0

    .line 164
    .local v0, "length":I
    new-instance v1, Ljava/lang/StringBuilder;

    mul-int/lit8 v2, v0, 0x2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 165
    .local v1, "result":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 166
    invoke-virtual {p0, v2}, Lnet/bytebuddy/jar/asm/TypePath;->getStep(I)I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 180
    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 177
    :pswitch_0
    invoke-virtual {p0, v2}, Lnet/bytebuddy/jar/asm/TypePath;->getStepArgument(I)I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x3b

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 178
    goto :goto_1

    .line 174
    :pswitch_1
    const/16 v3, 0x2a

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 175
    goto :goto_1

    .line 171
    :pswitch_2
    const/16 v3, 0x2e

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 172
    goto :goto_1

    .line 168
    :pswitch_3
    const/16 v3, 0x5b

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 169
    nop

    .line 165
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 183
    .end local v2    # "i":I
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
