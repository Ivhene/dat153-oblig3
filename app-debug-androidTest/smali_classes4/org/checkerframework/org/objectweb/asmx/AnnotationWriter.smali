.class final Lorg/checkerframework/org/objectweb/asmx/AnnotationWriter;
.super Ljava/lang/Object;
.source "AnnotationWriter.java"

# interfaces
.implements Lorg/checkerframework/org/objectweb/asmx/AnnotationVisitor;


# instance fields
.field private final bv:Lorg/checkerframework/org/objectweb/asmx/ByteVector;

.field private final cw:Lorg/checkerframework/org/objectweb/asmx/ClassWriter;

.field private final named:Z

.field next:Lorg/checkerframework/org/objectweb/asmx/AnnotationWriter;

.field private final offset:I

.field private final parent:Lorg/checkerframework/org/objectweb/asmx/ByteVector;

.field prev:Lorg/checkerframework/org/objectweb/asmx/AnnotationWriter;

.field private size:I


# direct methods
.method constructor <init>(Lorg/checkerframework/org/objectweb/asmx/ClassWriter;ZLorg/checkerframework/org/objectweb/asmx/ByteVector;Lorg/checkerframework/org/objectweb/asmx/ByteVector;I)V
    .locals 0
    .param p1, "cw"    # Lorg/checkerframework/org/objectweb/asmx/ClassWriter;
    .param p2, "named"    # Z
    .param p3, "bv"    # Lorg/checkerframework/org/objectweb/asmx/ByteVector;
    .param p4, "parent"    # Lorg/checkerframework/org/objectweb/asmx/ByteVector;
    .param p5, "offset"    # I

    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 107
    iput-object p1, p0, Lorg/checkerframework/org/objectweb/asmx/AnnotationWriter;->cw:Lorg/checkerframework/org/objectweb/asmx/ClassWriter;

    .line 108
    iput-boolean p2, p0, Lorg/checkerframework/org/objectweb/asmx/AnnotationWriter;->named:Z

    .line 109
    iput-object p3, p0, Lorg/checkerframework/org/objectweb/asmx/AnnotationWriter;->bv:Lorg/checkerframework/org/objectweb/asmx/ByteVector;

    .line 110
    iput-object p4, p0, Lorg/checkerframework/org/objectweb/asmx/AnnotationWriter;->parent:Lorg/checkerframework/org/objectweb/asmx/ByteVector;

    .line 111
    iput p5, p0, Lorg/checkerframework/org/objectweb/asmx/AnnotationWriter;->offset:I

    .line 112
    return-void
.end method

.method static put([Lorg/checkerframework/org/objectweb/asmx/AnnotationWriter;Lorg/checkerframework/org/objectweb/asmx/ByteVector;)V
    .locals 8
    .param p0, "panns"    # [Lorg/checkerframework/org/objectweb/asmx/AnnotationWriter;
    .param p1, "out"    # Lorg/checkerframework/org/objectweb/asmx/ByteVector;

    .line 287
    array-length v0, p0

    mul-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x1

    .line 288
    .local v0, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p0

    const/4 v3, 0x0

    if-ge v1, v2, :cond_1

    .line 289
    aget-object v2, p0, v1

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    aget-object v2, p0, v1

    invoke-virtual {v2}, Lorg/checkerframework/org/objectweb/asmx/AnnotationWriter;->getSize()I

    move-result v3

    :goto_1
    add-int/2addr v0, v3

    .line 288
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 291
    .end local v1    # "i":I
    :cond_1
    invoke-virtual {p1, v0}, Lorg/checkerframework/org/objectweb/asmx/ByteVector;->putInt(I)Lorg/checkerframework/org/objectweb/asmx/ByteVector;

    move-result-object v1

    array-length v2, p0

    invoke-virtual {v1, v2}, Lorg/checkerframework/org/objectweb/asmx/ByteVector;->putByte(I)Lorg/checkerframework/org/objectweb/asmx/ByteVector;

    .line 292
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_2
    array-length v2, p0

    if-ge v1, v2, :cond_4

    .line 293
    aget-object v2, p0, v1

    .line 294
    .local v2, "aw":Lorg/checkerframework/org/objectweb/asmx/AnnotationWriter;
    const/4 v4, 0x0

    .line 295
    .local v4, "last":Lorg/checkerframework/org/objectweb/asmx/AnnotationWriter;
    const/4 v5, 0x0

    .line 296
    .local v5, "n":I
    :goto_3
    if-eqz v2, :cond_2

    .line 297
    add-int/lit8 v5, v5, 0x1

    .line 298
    invoke-virtual {v2}, Lorg/checkerframework/org/objectweb/asmx/AnnotationWriter;->visitEnd()V

    .line 299
    iput-object v4, v2, Lorg/checkerframework/org/objectweb/asmx/AnnotationWriter;->prev:Lorg/checkerframework/org/objectweb/asmx/AnnotationWriter;

    .line 300
    move-object v4, v2

    .line 301
    iget-object v2, v2, Lorg/checkerframework/org/objectweb/asmx/AnnotationWriter;->next:Lorg/checkerframework/org/objectweb/asmx/AnnotationWriter;

    goto :goto_3

    .line 303
    :cond_2
    invoke-virtual {p1, v5}, Lorg/checkerframework/org/objectweb/asmx/ByteVector;->putShort(I)Lorg/checkerframework/org/objectweb/asmx/ByteVector;

    .line 304
    move-object v2, v4

    .line 305
    :goto_4
    if-eqz v2, :cond_3

    .line 306
    iget-object v6, v2, Lorg/checkerframework/org/objectweb/asmx/AnnotationWriter;->bv:Lorg/checkerframework/org/objectweb/asmx/ByteVector;

    iget-object v6, v6, Lorg/checkerframework/org/objectweb/asmx/ByteVector;->data:[B

    iget-object v7, v2, Lorg/checkerframework/org/objectweb/asmx/AnnotationWriter;->bv:Lorg/checkerframework/org/objectweb/asmx/ByteVector;

    iget v7, v7, Lorg/checkerframework/org/objectweb/asmx/ByteVector;->length:I

    invoke-virtual {p1, v6, v3, v7}, Lorg/checkerframework/org/objectweb/asmx/ByteVector;->putByteArray([BII)Lorg/checkerframework/org/objectweb/asmx/ByteVector;

    .line 307
    iget-object v2, v2, Lorg/checkerframework/org/objectweb/asmx/AnnotationWriter;->prev:Lorg/checkerframework/org/objectweb/asmx/AnnotationWriter;

    goto :goto_4

    .line 292
    .end local v2    # "aw":Lorg/checkerframework/org/objectweb/asmx/AnnotationWriter;
    .end local v4    # "last":Lorg/checkerframework/org/objectweb/asmx/AnnotationWriter;
    .end local v5    # "n":I
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 310
    .end local v1    # "i":I
    :cond_4
    return-void
.end method


# virtual methods
.method getSize()I
    .locals 3

    .line 243
    const/4 v0, 0x0

    .line 244
    .local v0, "size":I
    move-object v1, p0

    .line 245
    .local v1, "aw":Lorg/checkerframework/org/objectweb/asmx/AnnotationWriter;
    :goto_0
    if-eqz v1, :cond_0

    .line 246
    iget-object v2, v1, Lorg/checkerframework/org/objectweb/asmx/AnnotationWriter;->bv:Lorg/checkerframework/org/objectweb/asmx/ByteVector;

    iget v2, v2, Lorg/checkerframework/org/objectweb/asmx/ByteVector;->length:I

    add-int/2addr v0, v2

    .line 247
    iget-object v1, v1, Lorg/checkerframework/org/objectweb/asmx/AnnotationWriter;->next:Lorg/checkerframework/org/objectweb/asmx/AnnotationWriter;

    goto :goto_0

    .line 249
    :cond_0
    return v0
.end method

.method put(Lorg/checkerframework/org/objectweb/asmx/ByteVector;)V
    .locals 7
    .param p1, "out"    # Lorg/checkerframework/org/objectweb/asmx/ByteVector;

    .line 259
    const/4 v0, 0x0

    .line 260
    .local v0, "n":I
    const/4 v1, 0x2

    .line 261
    .local v1, "size":I
    move-object v2, p0

    .line 262
    .local v2, "aw":Lorg/checkerframework/org/objectweb/asmx/AnnotationWriter;
    const/4 v3, 0x0

    .line 263
    .local v3, "last":Lorg/checkerframework/org/objectweb/asmx/AnnotationWriter;
    :goto_0
    if-eqz v2, :cond_0

    .line 264
    add-int/lit8 v0, v0, 0x1

    .line 265
    iget-object v4, v2, Lorg/checkerframework/org/objectweb/asmx/AnnotationWriter;->bv:Lorg/checkerframework/org/objectweb/asmx/ByteVector;

    iget v4, v4, Lorg/checkerframework/org/objectweb/asmx/ByteVector;->length:I

    add-int/2addr v1, v4

    .line 266
    invoke-virtual {v2}, Lorg/checkerframework/org/objectweb/asmx/AnnotationWriter;->visitEnd()V

    .line 267
    iput-object v3, v2, Lorg/checkerframework/org/objectweb/asmx/AnnotationWriter;->prev:Lorg/checkerframework/org/objectweb/asmx/AnnotationWriter;

    .line 268
    move-object v3, v2

    .line 269
    iget-object v2, v2, Lorg/checkerframework/org/objectweb/asmx/AnnotationWriter;->next:Lorg/checkerframework/org/objectweb/asmx/AnnotationWriter;

    goto :goto_0

    .line 271
    :cond_0
    invoke-virtual {p1, v1}, Lorg/checkerframework/org/objectweb/asmx/ByteVector;->putInt(I)Lorg/checkerframework/org/objectweb/asmx/ByteVector;

    .line 272
    invoke-virtual {p1, v0}, Lorg/checkerframework/org/objectweb/asmx/ByteVector;->putShort(I)Lorg/checkerframework/org/objectweb/asmx/ByteVector;

    .line 273
    move-object v2, v3

    .line 274
    :goto_1
    if-eqz v2, :cond_1

    .line 275
    iget-object v4, v2, Lorg/checkerframework/org/objectweb/asmx/AnnotationWriter;->bv:Lorg/checkerframework/org/objectweb/asmx/ByteVector;

    iget-object v4, v4, Lorg/checkerframework/org/objectweb/asmx/ByteVector;->data:[B

    iget-object v5, v2, Lorg/checkerframework/org/objectweb/asmx/AnnotationWriter;->bv:Lorg/checkerframework/org/objectweb/asmx/ByteVector;

    iget v5, v5, Lorg/checkerframework/org/objectweb/asmx/ByteVector;->length:I

    const/4 v6, 0x0

    invoke-virtual {p1, v4, v6, v5}, Lorg/checkerframework/org/objectweb/asmx/ByteVector;->putByteArray([BII)Lorg/checkerframework/org/objectweb/asmx/ByteVector;

    .line 276
    iget-object v2, v2, Lorg/checkerframework/org/objectweb/asmx/AnnotationWriter;->prev:Lorg/checkerframework/org/objectweb/asmx/AnnotationWriter;

    goto :goto_1

    .line 278
    :cond_1
    return-void
.end method

.method public visit(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .line 119
    iget v0, p0, Lorg/checkerframework/org/objectweb/asmx/AnnotationWriter;->size:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/checkerframework/org/objectweb/asmx/AnnotationWriter;->size:I

    .line 120
    iget-boolean v0, p0, Lorg/checkerframework/org/objectweb/asmx/AnnotationWriter;->named:Z

    if-eqz v0, :cond_0

    .line 121
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/AnnotationWriter;->bv:Lorg/checkerframework/org/objectweb/asmx/ByteVector;

    iget-object v1, p0, Lorg/checkerframework/org/objectweb/asmx/AnnotationWriter;->cw:Lorg/checkerframework/org/objectweb/asmx/ClassWriter;

    invoke-virtual {v1, p1}, Lorg/checkerframework/org/objectweb/asmx/ClassWriter;->newUTF8(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/checkerframework/org/objectweb/asmx/ByteVector;->putShort(I)Lorg/checkerframework/org/objectweb/asmx/ByteVector;

    .line 123
    :cond_0
    instance-of v0, p2, Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 124
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/AnnotationWriter;->bv:Lorg/checkerframework/org/objectweb/asmx/ByteVector;

    iget-object v1, p0, Lorg/checkerframework/org/objectweb/asmx/AnnotationWriter;->cw:Lorg/checkerframework/org/objectweb/asmx/ClassWriter;

    move-object v2, p2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Lorg/checkerframework/org/objectweb/asmx/ClassWriter;->newUTF8(Ljava/lang/String;)I

    move-result v1

    const/16 v2, 0x73

    invoke-virtual {v0, v2, v1}, Lorg/checkerframework/org/objectweb/asmx/ByteVector;->put12(II)Lorg/checkerframework/org/objectweb/asmx/ByteVector;

    goto/16 :goto_8

    .line 125
    :cond_1
    instance-of v0, p2, Ljava/lang/Byte;

    const/16 v1, 0x42

    if-eqz v0, :cond_2

    .line 126
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/AnnotationWriter;->bv:Lorg/checkerframework/org/objectweb/asmx/ByteVector;

    iget-object v2, p0, Lorg/checkerframework/org/objectweb/asmx/AnnotationWriter;->cw:Lorg/checkerframework/org/objectweb/asmx/ClassWriter;

    move-object v3, p2

    check-cast v3, Ljava/lang/Byte;

    invoke-virtual {v3}, Ljava/lang/Byte;->byteValue()B

    move-result v3

    invoke-virtual {v2, v3}, Lorg/checkerframework/org/objectweb/asmx/ClassWriter;->newInteger(I)Lorg/checkerframework/org/objectweb/asmx/Item;

    move-result-object v2

    iget v2, v2, Lorg/checkerframework/org/objectweb/asmx/Item;->index:I

    invoke-virtual {v0, v1, v2}, Lorg/checkerframework/org/objectweb/asmx/ByteVector;->put12(II)Lorg/checkerframework/org/objectweb/asmx/ByteVector;

    goto/16 :goto_8

    .line 127
    :cond_2
    instance-of v0, p2, Ljava/lang/Boolean;

    const/16 v2, 0x5a

    if-eqz v0, :cond_3

    .line 128
    move-object v0, p2

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 129
    .local v0, "v":I
    iget-object v1, p0, Lorg/checkerframework/org/objectweb/asmx/AnnotationWriter;->bv:Lorg/checkerframework/org/objectweb/asmx/ByteVector;

    iget-object v3, p0, Lorg/checkerframework/org/objectweb/asmx/AnnotationWriter;->cw:Lorg/checkerframework/org/objectweb/asmx/ClassWriter;

    invoke-virtual {v3, v0}, Lorg/checkerframework/org/objectweb/asmx/ClassWriter;->newInteger(I)Lorg/checkerframework/org/objectweb/asmx/Item;

    move-result-object v3

    iget v3, v3, Lorg/checkerframework/org/objectweb/asmx/Item;->index:I

    invoke-virtual {v1, v2, v3}, Lorg/checkerframework/org/objectweb/asmx/ByteVector;->put12(II)Lorg/checkerframework/org/objectweb/asmx/ByteVector;

    .line 130
    .end local v0    # "v":I
    goto/16 :goto_8

    :cond_3
    instance-of v0, p2, Ljava/lang/Character;

    const/16 v3, 0x43

    if-eqz v0, :cond_4

    .line 131
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/AnnotationWriter;->bv:Lorg/checkerframework/org/objectweb/asmx/ByteVector;

    iget-object v1, p0, Lorg/checkerframework/org/objectweb/asmx/AnnotationWriter;->cw:Lorg/checkerframework/org/objectweb/asmx/ClassWriter;

    move-object v2, p2

    check-cast v2, Ljava/lang/Character;

    invoke-virtual {v2}, Ljava/lang/Character;->charValue()C

    move-result v2

    invoke-virtual {v1, v2}, Lorg/checkerframework/org/objectweb/asmx/ClassWriter;->newInteger(I)Lorg/checkerframework/org/objectweb/asmx/Item;

    move-result-object v1

    iget v1, v1, Lorg/checkerframework/org/objectweb/asmx/Item;->index:I

    invoke-virtual {v0, v3, v1}, Lorg/checkerframework/org/objectweb/asmx/ByteVector;->put12(II)Lorg/checkerframework/org/objectweb/asmx/ByteVector;

    goto/16 :goto_8

    .line 132
    :cond_4
    instance-of v0, p2, Ljava/lang/Short;

    const/16 v4, 0x53

    if-eqz v0, :cond_5

    .line 133
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/AnnotationWriter;->bv:Lorg/checkerframework/org/objectweb/asmx/ByteVector;

    iget-object v1, p0, Lorg/checkerframework/org/objectweb/asmx/AnnotationWriter;->cw:Lorg/checkerframework/org/objectweb/asmx/ClassWriter;

    move-object v2, p2

    check-cast v2, Ljava/lang/Short;

    invoke-virtual {v2}, Ljava/lang/Short;->shortValue()S

    move-result v2

    invoke-virtual {v1, v2}, Lorg/checkerframework/org/objectweb/asmx/ClassWriter;->newInteger(I)Lorg/checkerframework/org/objectweb/asmx/Item;

    move-result-object v1

    iget v1, v1, Lorg/checkerframework/org/objectweb/asmx/Item;->index:I

    invoke-virtual {v0, v4, v1}, Lorg/checkerframework/org/objectweb/asmx/ByteVector;->put12(II)Lorg/checkerframework/org/objectweb/asmx/ByteVector;

    goto/16 :goto_8

    .line 134
    :cond_5
    instance-of v0, p2, Lorg/checkerframework/org/objectweb/asmx/Type;

    if-eqz v0, :cond_6

    .line 135
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/AnnotationWriter;->bv:Lorg/checkerframework/org/objectweb/asmx/ByteVector;

    iget-object v1, p0, Lorg/checkerframework/org/objectweb/asmx/AnnotationWriter;->cw:Lorg/checkerframework/org/objectweb/asmx/ClassWriter;

    move-object v2, p2

    check-cast v2, Lorg/checkerframework/org/objectweb/asmx/Type;

    invoke-virtual {v2}, Lorg/checkerframework/org/objectweb/asmx/Type;->getDescriptor()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/checkerframework/org/objectweb/asmx/ClassWriter;->newUTF8(Ljava/lang/String;)I

    move-result v1

    const/16 v2, 0x63

    invoke-virtual {v0, v2, v1}, Lorg/checkerframework/org/objectweb/asmx/ByteVector;->put12(II)Lorg/checkerframework/org/objectweb/asmx/ByteVector;

    goto/16 :goto_8

    .line 136
    :cond_6
    instance-of v0, p2, [B

    const/16 v5, 0x5b

    if-eqz v0, :cond_8

    .line 137
    move-object v0, p2

    check-cast v0, [B

    check-cast v0, [B

    .line 138
    .local v0, "v":[B
    iget-object v2, p0, Lorg/checkerframework/org/objectweb/asmx/AnnotationWriter;->bv:Lorg/checkerframework/org/objectweb/asmx/ByteVector;

    array-length v3, v0

    invoke-virtual {v2, v5, v3}, Lorg/checkerframework/org/objectweb/asmx/ByteVector;->put12(II)Lorg/checkerframework/org/objectweb/asmx/ByteVector;

    .line 139
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_7

    .line 140
    iget-object v3, p0, Lorg/checkerframework/org/objectweb/asmx/AnnotationWriter;->bv:Lorg/checkerframework/org/objectweb/asmx/ByteVector;

    iget-object v4, p0, Lorg/checkerframework/org/objectweb/asmx/AnnotationWriter;->cw:Lorg/checkerframework/org/objectweb/asmx/ClassWriter;

    aget-byte v5, v0, v2

    invoke-virtual {v4, v5}, Lorg/checkerframework/org/objectweb/asmx/ClassWriter;->newInteger(I)Lorg/checkerframework/org/objectweb/asmx/Item;

    move-result-object v4

    iget v4, v4, Lorg/checkerframework/org/objectweb/asmx/Item;->index:I

    invoke-virtual {v3, v1, v4}, Lorg/checkerframework/org/objectweb/asmx/ByteVector;->put12(II)Lorg/checkerframework/org/objectweb/asmx/ByteVector;

    .line 139
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 142
    .end local v0    # "v":[B
    .end local v2    # "i":I
    :cond_7
    goto/16 :goto_8

    :cond_8
    instance-of v0, p2, [Z

    if-eqz v0, :cond_a

    .line 143
    move-object v0, p2

    check-cast v0, [Z

    check-cast v0, [Z

    .line 144
    .local v0, "v":[Z
    iget-object v1, p0, Lorg/checkerframework/org/objectweb/asmx/AnnotationWriter;->bv:Lorg/checkerframework/org/objectweb/asmx/ByteVector;

    array-length v3, v0

    invoke-virtual {v1, v5, v3}, Lorg/checkerframework/org/objectweb/asmx/ByteVector;->put12(II)Lorg/checkerframework/org/objectweb/asmx/ByteVector;

    .line 145
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    array-length v3, v0

    if-ge v1, v3, :cond_9

    .line 146
    iget-object v3, p0, Lorg/checkerframework/org/objectweb/asmx/AnnotationWriter;->bv:Lorg/checkerframework/org/objectweb/asmx/ByteVector;

    iget-object v4, p0, Lorg/checkerframework/org/objectweb/asmx/AnnotationWriter;->cw:Lorg/checkerframework/org/objectweb/asmx/ClassWriter;

    aget-boolean v5, v0, v1

    invoke-virtual {v4, v5}, Lorg/checkerframework/org/objectweb/asmx/ClassWriter;->newInteger(I)Lorg/checkerframework/org/objectweb/asmx/Item;

    move-result-object v4

    iget v4, v4, Lorg/checkerframework/org/objectweb/asmx/Item;->index:I

    invoke-virtual {v3, v2, v4}, Lorg/checkerframework/org/objectweb/asmx/ByteVector;->put12(II)Lorg/checkerframework/org/objectweb/asmx/ByteVector;

    .line 145
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 148
    .end local v0    # "v":[Z
    .end local v1    # "i":I
    :cond_9
    goto/16 :goto_8

    :cond_a
    instance-of v0, p2, [S

    if-eqz v0, :cond_c

    .line 149
    move-object v0, p2

    check-cast v0, [S

    check-cast v0, [S

    .line 150
    .local v0, "v":[S
    iget-object v1, p0, Lorg/checkerframework/org/objectweb/asmx/AnnotationWriter;->bv:Lorg/checkerframework/org/objectweb/asmx/ByteVector;

    array-length v2, v0

    invoke-virtual {v1, v5, v2}, Lorg/checkerframework/org/objectweb/asmx/ByteVector;->put12(II)Lorg/checkerframework/org/objectweb/asmx/ByteVector;

    .line 151
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_2
    array-length v2, v0

    if-ge v1, v2, :cond_b

    .line 152
    iget-object v2, p0, Lorg/checkerframework/org/objectweb/asmx/AnnotationWriter;->bv:Lorg/checkerframework/org/objectweb/asmx/ByteVector;

    iget-object v3, p0, Lorg/checkerframework/org/objectweb/asmx/AnnotationWriter;->cw:Lorg/checkerframework/org/objectweb/asmx/ClassWriter;

    aget-short v5, v0, v1

    invoke-virtual {v3, v5}, Lorg/checkerframework/org/objectweb/asmx/ClassWriter;->newInteger(I)Lorg/checkerframework/org/objectweb/asmx/Item;

    move-result-object v3

    iget v3, v3, Lorg/checkerframework/org/objectweb/asmx/Item;->index:I

    invoke-virtual {v2, v4, v3}, Lorg/checkerframework/org/objectweb/asmx/ByteVector;->put12(II)Lorg/checkerframework/org/objectweb/asmx/ByteVector;

    .line 151
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 154
    .end local v0    # "v":[S
    .end local v1    # "i":I
    :cond_b
    goto/16 :goto_8

    :cond_c
    instance-of v0, p2, [C

    if-eqz v0, :cond_e

    .line 155
    move-object v0, p2

    check-cast v0, [C

    check-cast v0, [C

    .line 156
    .local v0, "v":[C
    iget-object v1, p0, Lorg/checkerframework/org/objectweb/asmx/AnnotationWriter;->bv:Lorg/checkerframework/org/objectweb/asmx/ByteVector;

    array-length v2, v0

    invoke-virtual {v1, v5, v2}, Lorg/checkerframework/org/objectweb/asmx/ByteVector;->put12(II)Lorg/checkerframework/org/objectweb/asmx/ByteVector;

    .line 157
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_3
    array-length v2, v0

    if-ge v1, v2, :cond_d

    .line 158
    iget-object v2, p0, Lorg/checkerframework/org/objectweb/asmx/AnnotationWriter;->bv:Lorg/checkerframework/org/objectweb/asmx/ByteVector;

    iget-object v4, p0, Lorg/checkerframework/org/objectweb/asmx/AnnotationWriter;->cw:Lorg/checkerframework/org/objectweb/asmx/ClassWriter;

    aget-char v5, v0, v1

    invoke-virtual {v4, v5}, Lorg/checkerframework/org/objectweb/asmx/ClassWriter;->newInteger(I)Lorg/checkerframework/org/objectweb/asmx/Item;

    move-result-object v4

    iget v4, v4, Lorg/checkerframework/org/objectweb/asmx/Item;->index:I

    invoke-virtual {v2, v3, v4}, Lorg/checkerframework/org/objectweb/asmx/ByteVector;->put12(II)Lorg/checkerframework/org/objectweb/asmx/ByteVector;

    .line 157
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 160
    .end local v0    # "v":[C
    .end local v1    # "i":I
    :cond_d
    goto/16 :goto_8

    :cond_e
    instance-of v0, p2, [I

    if-eqz v0, :cond_10

    .line 161
    move-object v0, p2

    check-cast v0, [I

    check-cast v0, [I

    .line 162
    .local v0, "v":[I
    iget-object v1, p0, Lorg/checkerframework/org/objectweb/asmx/AnnotationWriter;->bv:Lorg/checkerframework/org/objectweb/asmx/ByteVector;

    array-length v2, v0

    invoke-virtual {v1, v5, v2}, Lorg/checkerframework/org/objectweb/asmx/ByteVector;->put12(II)Lorg/checkerframework/org/objectweb/asmx/ByteVector;

    .line 163
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_4
    array-length v2, v0

    if-ge v1, v2, :cond_f

    .line 164
    iget-object v2, p0, Lorg/checkerframework/org/objectweb/asmx/AnnotationWriter;->bv:Lorg/checkerframework/org/objectweb/asmx/ByteVector;

    iget-object v3, p0, Lorg/checkerframework/org/objectweb/asmx/AnnotationWriter;->cw:Lorg/checkerframework/org/objectweb/asmx/ClassWriter;

    aget v4, v0, v1

    invoke-virtual {v3, v4}, Lorg/checkerframework/org/objectweb/asmx/ClassWriter;->newInteger(I)Lorg/checkerframework/org/objectweb/asmx/Item;

    move-result-object v3

    iget v3, v3, Lorg/checkerframework/org/objectweb/asmx/Item;->index:I

    const/16 v4, 0x49

    invoke-virtual {v2, v4, v3}, Lorg/checkerframework/org/objectweb/asmx/ByteVector;->put12(II)Lorg/checkerframework/org/objectweb/asmx/ByteVector;

    .line 163
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 166
    .end local v0    # "v":[I
    .end local v1    # "i":I
    :cond_f
    goto/16 :goto_8

    :cond_10
    instance-of v0, p2, [J

    if-eqz v0, :cond_12

    .line 167
    move-object v0, p2

    check-cast v0, [J

    check-cast v0, [J

    .line 168
    .local v0, "v":[J
    iget-object v1, p0, Lorg/checkerframework/org/objectweb/asmx/AnnotationWriter;->bv:Lorg/checkerframework/org/objectweb/asmx/ByteVector;

    array-length v2, v0

    invoke-virtual {v1, v5, v2}, Lorg/checkerframework/org/objectweb/asmx/ByteVector;->put12(II)Lorg/checkerframework/org/objectweb/asmx/ByteVector;

    .line 169
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_5
    array-length v2, v0

    if-ge v1, v2, :cond_11

    .line 170
    iget-object v2, p0, Lorg/checkerframework/org/objectweb/asmx/AnnotationWriter;->bv:Lorg/checkerframework/org/objectweb/asmx/ByteVector;

    iget-object v3, p0, Lorg/checkerframework/org/objectweb/asmx/AnnotationWriter;->cw:Lorg/checkerframework/org/objectweb/asmx/ClassWriter;

    aget-wide v4, v0, v1

    invoke-virtual {v3, v4, v5}, Lorg/checkerframework/org/objectweb/asmx/ClassWriter;->newLong(J)Lorg/checkerframework/org/objectweb/asmx/Item;

    move-result-object v3

    iget v3, v3, Lorg/checkerframework/org/objectweb/asmx/Item;->index:I

    const/16 v4, 0x4a

    invoke-virtual {v2, v4, v3}, Lorg/checkerframework/org/objectweb/asmx/ByteVector;->put12(II)Lorg/checkerframework/org/objectweb/asmx/ByteVector;

    .line 169
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 172
    .end local v0    # "v":[J
    .end local v1    # "i":I
    :cond_11
    goto :goto_8

    :cond_12
    instance-of v0, p2, [F

    if-eqz v0, :cond_14

    .line 173
    move-object v0, p2

    check-cast v0, [F

    check-cast v0, [F

    .line 174
    .local v0, "v":[F
    iget-object v1, p0, Lorg/checkerframework/org/objectweb/asmx/AnnotationWriter;->bv:Lorg/checkerframework/org/objectweb/asmx/ByteVector;

    array-length v2, v0

    invoke-virtual {v1, v5, v2}, Lorg/checkerframework/org/objectweb/asmx/ByteVector;->put12(II)Lorg/checkerframework/org/objectweb/asmx/ByteVector;

    .line 175
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_6
    array-length v2, v0

    if-ge v1, v2, :cond_13

    .line 176
    iget-object v2, p0, Lorg/checkerframework/org/objectweb/asmx/AnnotationWriter;->bv:Lorg/checkerframework/org/objectweb/asmx/ByteVector;

    iget-object v3, p0, Lorg/checkerframework/org/objectweb/asmx/AnnotationWriter;->cw:Lorg/checkerframework/org/objectweb/asmx/ClassWriter;

    aget v4, v0, v1

    invoke-virtual {v3, v4}, Lorg/checkerframework/org/objectweb/asmx/ClassWriter;->newFloat(F)Lorg/checkerframework/org/objectweb/asmx/Item;

    move-result-object v3

    iget v3, v3, Lorg/checkerframework/org/objectweb/asmx/Item;->index:I

    const/16 v4, 0x46

    invoke-virtual {v2, v4, v3}, Lorg/checkerframework/org/objectweb/asmx/ByteVector;->put12(II)Lorg/checkerframework/org/objectweb/asmx/ByteVector;

    .line 175
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 178
    .end local v0    # "v":[F
    .end local v1    # "i":I
    :cond_13
    goto :goto_8

    :cond_14
    instance-of v0, p2, [D

    if-eqz v0, :cond_16

    .line 179
    move-object v0, p2

    check-cast v0, [D

    check-cast v0, [D

    .line 180
    .local v0, "v":[D
    iget-object v1, p0, Lorg/checkerframework/org/objectweb/asmx/AnnotationWriter;->bv:Lorg/checkerframework/org/objectweb/asmx/ByteVector;

    array-length v2, v0

    invoke-virtual {v1, v5, v2}, Lorg/checkerframework/org/objectweb/asmx/ByteVector;->put12(II)Lorg/checkerframework/org/objectweb/asmx/ByteVector;

    .line 181
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_7
    array-length v2, v0

    if-ge v1, v2, :cond_15

    .line 182
    iget-object v2, p0, Lorg/checkerframework/org/objectweb/asmx/AnnotationWriter;->bv:Lorg/checkerframework/org/objectweb/asmx/ByteVector;

    iget-object v3, p0, Lorg/checkerframework/org/objectweb/asmx/AnnotationWriter;->cw:Lorg/checkerframework/org/objectweb/asmx/ClassWriter;

    aget-wide v4, v0, v1

    invoke-virtual {v3, v4, v5}, Lorg/checkerframework/org/objectweb/asmx/ClassWriter;->newDouble(D)Lorg/checkerframework/org/objectweb/asmx/Item;

    move-result-object v3

    iget v3, v3, Lorg/checkerframework/org/objectweb/asmx/Item;->index:I

    const/16 v4, 0x44

    invoke-virtual {v2, v4, v3}, Lorg/checkerframework/org/objectweb/asmx/ByteVector;->put12(II)Lorg/checkerframework/org/objectweb/asmx/ByteVector;

    .line 181
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 184
    .end local v0    # "v":[D
    .end local v1    # "i":I
    :cond_15
    goto :goto_8

    .line 185
    :cond_16
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/AnnotationWriter;->cw:Lorg/checkerframework/org/objectweb/asmx/ClassWriter;

    invoke-virtual {v0, p2}, Lorg/checkerframework/org/objectweb/asmx/ClassWriter;->newConstItem(Ljava/lang/Object;)Lorg/checkerframework/org/objectweb/asmx/Item;

    move-result-object v0

    .line 186
    .local v0, "i":Lorg/checkerframework/org/objectweb/asmx/Item;
    iget-object v1, p0, Lorg/checkerframework/org/objectweb/asmx/AnnotationWriter;->bv:Lorg/checkerframework/org/objectweb/asmx/ByteVector;

    const-string v2, ".s.IFJDCS"

    iget v3, v0, Lorg/checkerframework/org/objectweb/asmx/Item;->type:I

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    iget v3, v0, Lorg/checkerframework/org/objectweb/asmx/Item;->index:I

    invoke-virtual {v1, v2, v3}, Lorg/checkerframework/org/objectweb/asmx/ByteVector;->put12(II)Lorg/checkerframework/org/objectweb/asmx/ByteVector;

    .line 188
    .end local v0    # "i":Lorg/checkerframework/org/objectweb/asmx/Item;
    :goto_8
    return-void
.end method

.method public visitAnnotation(Ljava/lang/String;Ljava/lang/String;)Lorg/checkerframework/org/objectweb/asmx/AnnotationVisitor;
    .locals 8
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "desc"    # Ljava/lang/String;

    .line 206
    iget v0, p0, Lorg/checkerframework/org/objectweb/asmx/AnnotationWriter;->size:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/checkerframework/org/objectweb/asmx/AnnotationWriter;->size:I

    .line 207
    iget-boolean v0, p0, Lorg/checkerframework/org/objectweb/asmx/AnnotationWriter;->named:Z

    if-eqz v0, :cond_0

    .line 208
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/AnnotationWriter;->bv:Lorg/checkerframework/org/objectweb/asmx/ByteVector;

    iget-object v1, p0, Lorg/checkerframework/org/objectweb/asmx/AnnotationWriter;->cw:Lorg/checkerframework/org/objectweb/asmx/ClassWriter;

    invoke-virtual {v1, p1}, Lorg/checkerframework/org/objectweb/asmx/ClassWriter;->newUTF8(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/checkerframework/org/objectweb/asmx/ByteVector;->putShort(I)Lorg/checkerframework/org/objectweb/asmx/ByteVector;

    .line 211
    :cond_0
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/AnnotationWriter;->bv:Lorg/checkerframework/org/objectweb/asmx/ByteVector;

    iget-object v1, p0, Lorg/checkerframework/org/objectweb/asmx/AnnotationWriter;->cw:Lorg/checkerframework/org/objectweb/asmx/ClassWriter;

    invoke-virtual {v1, p2}, Lorg/checkerframework/org/objectweb/asmx/ClassWriter;->newUTF8(Ljava/lang/String;)I

    move-result v1

    const/16 v2, 0x40

    invoke-virtual {v0, v2, v1}, Lorg/checkerframework/org/objectweb/asmx/ByteVector;->put12(II)Lorg/checkerframework/org/objectweb/asmx/ByteVector;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/checkerframework/org/objectweb/asmx/ByteVector;->putShort(I)Lorg/checkerframework/org/objectweb/asmx/ByteVector;

    .line 212
    new-instance v0, Lorg/checkerframework/org/objectweb/asmx/AnnotationWriter;

    iget-object v3, p0, Lorg/checkerframework/org/objectweb/asmx/AnnotationWriter;->cw:Lorg/checkerframework/org/objectweb/asmx/ClassWriter;

    const/4 v4, 0x1

    iget-object v6, p0, Lorg/checkerframework/org/objectweb/asmx/AnnotationWriter;->bv:Lorg/checkerframework/org/objectweb/asmx/ByteVector;

    iget v1, v6, Lorg/checkerframework/org/objectweb/asmx/ByteVector;->length:I

    add-int/lit8 v7, v1, -0x2

    move-object v2, v0

    move-object v5, v6

    invoke-direct/range {v2 .. v7}, Lorg/checkerframework/org/objectweb/asmx/AnnotationWriter;-><init>(Lorg/checkerframework/org/objectweb/asmx/ClassWriter;ZLorg/checkerframework/org/objectweb/asmx/ByteVector;Lorg/checkerframework/org/objectweb/asmx/ByteVector;I)V

    return-object v0
.end method

.method public visitArray(Ljava/lang/String;)Lorg/checkerframework/org/objectweb/asmx/AnnotationVisitor;
    .locals 9
    .param p1, "name"    # Ljava/lang/String;

    .line 216
    iget v0, p0, Lorg/checkerframework/org/objectweb/asmx/AnnotationWriter;->size:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/checkerframework/org/objectweb/asmx/AnnotationWriter;->size:I

    .line 217
    iget-boolean v0, p0, Lorg/checkerframework/org/objectweb/asmx/AnnotationWriter;->named:Z

    if-eqz v0, :cond_0

    .line 218
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/AnnotationWriter;->bv:Lorg/checkerframework/org/objectweb/asmx/ByteVector;

    iget-object v1, p0, Lorg/checkerframework/org/objectweb/asmx/AnnotationWriter;->cw:Lorg/checkerframework/org/objectweb/asmx/ClassWriter;

    invoke-virtual {v1, p1}, Lorg/checkerframework/org/objectweb/asmx/ClassWriter;->newUTF8(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/checkerframework/org/objectweb/asmx/ByteVector;->putShort(I)Lorg/checkerframework/org/objectweb/asmx/ByteVector;

    .line 221
    :cond_0
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/AnnotationWriter;->bv:Lorg/checkerframework/org/objectweb/asmx/ByteVector;

    const/16 v1, 0x5b

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/checkerframework/org/objectweb/asmx/ByteVector;->put12(II)Lorg/checkerframework/org/objectweb/asmx/ByteVector;

    .line 222
    new-instance v0, Lorg/checkerframework/org/objectweb/asmx/AnnotationWriter;

    iget-object v4, p0, Lorg/checkerframework/org/objectweb/asmx/AnnotationWriter;->cw:Lorg/checkerframework/org/objectweb/asmx/ClassWriter;

    const/4 v5, 0x0

    iget-object v7, p0, Lorg/checkerframework/org/objectweb/asmx/AnnotationWriter;->bv:Lorg/checkerframework/org/objectweb/asmx/ByteVector;

    iget v1, v7, Lorg/checkerframework/org/objectweb/asmx/ByteVector;->length:I

    add-int/lit8 v8, v1, -0x2

    move-object v3, v0

    move-object v6, v7

    invoke-direct/range {v3 .. v8}, Lorg/checkerframework/org/objectweb/asmx/AnnotationWriter;-><init>(Lorg/checkerframework/org/objectweb/asmx/ClassWriter;ZLorg/checkerframework/org/objectweb/asmx/ByteVector;Lorg/checkerframework/org/objectweb/asmx/ByteVector;I)V

    return-object v0
.end method

.method public visitEnd()V
    .locals 4

    .line 226
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/AnnotationWriter;->parent:Lorg/checkerframework/org/objectweb/asmx/ByteVector;

    if-eqz v0, :cond_0

    .line 227
    iget-object v0, v0, Lorg/checkerframework/org/objectweb/asmx/ByteVector;->data:[B

    .line 228
    .local v0, "data":[B
    iget v1, p0, Lorg/checkerframework/org/objectweb/asmx/AnnotationWriter;->offset:I

    iget v2, p0, Lorg/checkerframework/org/objectweb/asmx/AnnotationWriter;->size:I

    ushr-int/lit8 v3, v2, 0x8

    int-to-byte v3, v3

    aput-byte v3, v0, v1

    .line 229
    add-int/lit8 v1, v1, 0x1

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 231
    .end local v0    # "data":[B
    :cond_0
    return-void
.end method

.method public visitEnum(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "desc"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;

    .line 195
    iget v0, p0, Lorg/checkerframework/org/objectweb/asmx/AnnotationWriter;->size:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/checkerframework/org/objectweb/asmx/AnnotationWriter;->size:I

    .line 196
    iget-boolean v0, p0, Lorg/checkerframework/org/objectweb/asmx/AnnotationWriter;->named:Z

    if-eqz v0, :cond_0

    .line 197
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/AnnotationWriter;->bv:Lorg/checkerframework/org/objectweb/asmx/ByteVector;

    iget-object v1, p0, Lorg/checkerframework/org/objectweb/asmx/AnnotationWriter;->cw:Lorg/checkerframework/org/objectweb/asmx/ClassWriter;

    invoke-virtual {v1, p1}, Lorg/checkerframework/org/objectweb/asmx/ClassWriter;->newUTF8(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/checkerframework/org/objectweb/asmx/ByteVector;->putShort(I)Lorg/checkerframework/org/objectweb/asmx/ByteVector;

    .line 199
    :cond_0
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/AnnotationWriter;->bv:Lorg/checkerframework/org/objectweb/asmx/ByteVector;

    iget-object v1, p0, Lorg/checkerframework/org/objectweb/asmx/AnnotationWriter;->cw:Lorg/checkerframework/org/objectweb/asmx/ClassWriter;

    invoke-virtual {v1, p2}, Lorg/checkerframework/org/objectweb/asmx/ClassWriter;->newUTF8(Ljava/lang/String;)I

    move-result v1

    const/16 v2, 0x65

    invoke-virtual {v0, v2, v1}, Lorg/checkerframework/org/objectweb/asmx/ByteVector;->put12(II)Lorg/checkerframework/org/objectweb/asmx/ByteVector;

    move-result-object v0

    iget-object v1, p0, Lorg/checkerframework/org/objectweb/asmx/AnnotationWriter;->cw:Lorg/checkerframework/org/objectweb/asmx/ClassWriter;

    invoke-virtual {v1, p3}, Lorg/checkerframework/org/objectweb/asmx/ClassWriter;->newUTF8(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/checkerframework/org/objectweb/asmx/ByteVector;->putShort(I)Lorg/checkerframework/org/objectweb/asmx/ByteVector;

    .line 200
    return-void
.end method
