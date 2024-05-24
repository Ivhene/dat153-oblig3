.class final Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationWriter;
.super Ljava/lang/Object;
.source "TypeAnnotationWriter.java"

# interfaces
.implements Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationVisitor;


# instance fields
.field private final bv:Lorg/checkerframework/org/objectweb/asmx/ByteVector;

.field private final cw:Lorg/checkerframework/org/objectweb/asmx/ClassWriter;

.field private final desc:Ljava/lang/String;

.field private final named:Z

.field next:Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationWriter;

.field private offset:I

.field private final parent:Lorg/checkerframework/org/objectweb/asmx/ByteVector;

.field prev:Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationWriter;

.field private size:I

.field private xlocations:[Lcom/sun/tools/javac/code/TypeAnnotationPosition$TypePathEntry;

.field private xlocations_index:I


# direct methods
.method constructor <init>(Lorg/checkerframework/org/objectweb/asmx/ClassWriter;ZLorg/checkerframework/org/objectweb/asmx/ByteVector;Lorg/checkerframework/org/objectweb/asmx/ByteVector;Ljava/lang/String;)V
    .locals 1
    .param p1, "cw"    # Lorg/checkerframework/org/objectweb/asmx/ClassWriter;
    .param p2, "named"    # Z
    .param p3, "bv"    # Lorg/checkerframework/org/objectweb/asmx/ByteVector;
    .param p4, "parent"    # Lorg/checkerframework/org/objectweb/asmx/ByteVector;
    .param p5, "desc"    # Ljava/lang/String;

    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 120
    iput-object p1, p0, Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationWriter;->cw:Lorg/checkerframework/org/objectweb/asmx/ClassWriter;

    .line 121
    iput-boolean p2, p0, Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationWriter;->named:Z

    .line 122
    iput-object p3, p0, Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationWriter;->bv:Lorg/checkerframework/org/objectweb/asmx/ByteVector;

    .line 123
    iput-object p4, p0, Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationWriter;->parent:Lorg/checkerframework/org/objectweb/asmx/ByteVector;

    .line 124
    iput-object p5, p0, Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationWriter;->desc:Ljava/lang/String;

    .line 127
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationWriter;->xlocations:[Lcom/sun/tools/javac/code/TypeAnnotationPosition$TypePathEntry;

    .line 128
    const/4 v0, 0x0

    iput v0, p0, Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationWriter;->xlocations_index:I

    .line 129
    return-void
.end method

.method static put([Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationWriter;Lorg/checkerframework/org/objectweb/asmx/ByteVector;)V
    .locals 8
    .param p0, "panns"    # [Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationWriter;
    .param p1, "out"    # Lorg/checkerframework/org/objectweb/asmx/ByteVector;

    .line 304
    array-length v0, p0

    mul-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x1

    .line 305
    .local v0, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p0

    const/4 v3, 0x0

    if-ge v1, v2, :cond_1

    .line 306
    aget-object v2, p0, v1

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    aget-object v2, p0, v1

    invoke-virtual {v2}, Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationWriter;->getSize()I

    move-result v3

    :goto_1
    add-int/2addr v0, v3

    .line 305
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 308
    .end local v1    # "i":I
    :cond_1
    invoke-virtual {p1, v0}, Lorg/checkerframework/org/objectweb/asmx/ByteVector;->putInt(I)Lorg/checkerframework/org/objectweb/asmx/ByteVector;

    move-result-object v1

    array-length v2, p0

    invoke-virtual {v1, v2}, Lorg/checkerframework/org/objectweb/asmx/ByteVector;->putByte(I)Lorg/checkerframework/org/objectweb/asmx/ByteVector;

    .line 309
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_2
    array-length v2, p0

    if-ge v1, v2, :cond_4

    .line 310
    aget-object v2, p0, v1

    .line 311
    .local v2, "aw":Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationWriter;
    const/4 v4, 0x0

    .line 312
    .local v4, "last":Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationWriter;
    const/4 v5, 0x0

    .line 313
    .local v5, "n":I
    :goto_3
    if-eqz v2, :cond_2

    .line 314
    add-int/lit8 v5, v5, 0x1

    .line 315
    invoke-virtual {v2}, Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationWriter;->visitEnd()V

    .line 316
    iput-object v4, v2, Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationWriter;->prev:Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationWriter;

    .line 317
    move-object v4, v2

    .line 318
    iget-object v2, v2, Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationWriter;->next:Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationWriter;

    goto :goto_3

    .line 320
    :cond_2
    invoke-virtual {p1, v5}, Lorg/checkerframework/org/objectweb/asmx/ByteVector;->putShort(I)Lorg/checkerframework/org/objectweb/asmx/ByteVector;

    .line 321
    move-object v2, v4

    .line 322
    :goto_4
    if-eqz v2, :cond_3

    .line 323
    iget-object v6, v2, Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationWriter;->bv:Lorg/checkerframework/org/objectweb/asmx/ByteVector;

    iget-object v6, v6, Lorg/checkerframework/org/objectweb/asmx/ByteVector;->data:[B

    iget-object v7, v2, Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationWriter;->bv:Lorg/checkerframework/org/objectweb/asmx/ByteVector;

    iget v7, v7, Lorg/checkerframework/org/objectweb/asmx/ByteVector;->length:I

    invoke-virtual {p1, v6, v3, v7}, Lorg/checkerframework/org/objectweb/asmx/ByteVector;->putByteArray([BII)Lorg/checkerframework/org/objectweb/asmx/ByteVector;

    .line 324
    iget-object v2, v2, Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationWriter;->prev:Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationWriter;

    goto :goto_4

    .line 309
    .end local v2    # "aw":Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationWriter;
    .end local v4    # "last":Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationWriter;
    .end local v5    # "n":I
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 327
    .end local v1    # "i":I
    :cond_4
    return-void
.end method


# virtual methods
.method getSize()I
    .locals 3

    .line 260
    const/4 v0, 0x0

    .line 261
    .local v0, "size":I
    move-object v1, p0

    .line 262
    .local v1, "aw":Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationWriter;
    :goto_0
    if-eqz v1, :cond_0

    .line 263
    iget-object v2, v1, Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationWriter;->bv:Lorg/checkerframework/org/objectweb/asmx/ByteVector;

    iget v2, v2, Lorg/checkerframework/org/objectweb/asmx/ByteVector;->length:I

    add-int/2addr v0, v2

    .line 264
    iget-object v1, v1, Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationWriter;->next:Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationWriter;

    goto :goto_0

    .line 266
    :cond_0
    return v0
.end method

.method put(Lorg/checkerframework/org/objectweb/asmx/ByteVector;)V
    .locals 7
    .param p1, "out"    # Lorg/checkerframework/org/objectweb/asmx/ByteVector;

    .line 276
    const/4 v0, 0x0

    .line 277
    .local v0, "n":I
    const/4 v1, 0x2

    .line 278
    .local v1, "size":I
    move-object v2, p0

    .line 279
    .local v2, "aw":Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationWriter;
    const/4 v3, 0x0

    .line 280
    .local v3, "last":Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationWriter;
    :goto_0
    if-eqz v2, :cond_0

    .line 281
    add-int/lit8 v0, v0, 0x1

    .line 282
    iget-object v4, v2, Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationWriter;->bv:Lorg/checkerframework/org/objectweb/asmx/ByteVector;

    iget v4, v4, Lorg/checkerframework/org/objectweb/asmx/ByteVector;->length:I

    add-int/2addr v1, v4

    .line 283
    invoke-virtual {v2}, Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationWriter;->visitEnd()V

    .line 284
    iput-object v3, v2, Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationWriter;->prev:Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationWriter;

    .line 285
    move-object v3, v2

    .line 286
    iget-object v2, v2, Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationWriter;->next:Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationWriter;

    goto :goto_0

    .line 288
    :cond_0
    invoke-virtual {p1, v1}, Lorg/checkerframework/org/objectweb/asmx/ByteVector;->putInt(I)Lorg/checkerframework/org/objectweb/asmx/ByteVector;

    .line 289
    invoke-virtual {p1, v0}, Lorg/checkerframework/org/objectweb/asmx/ByteVector;->putShort(I)Lorg/checkerframework/org/objectweb/asmx/ByteVector;

    .line 290
    move-object v2, v3

    .line 291
    :goto_1
    if-eqz v2, :cond_1

    .line 292
    iget-object v4, v2, Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationWriter;->bv:Lorg/checkerframework/org/objectweb/asmx/ByteVector;

    iget-object v4, v4, Lorg/checkerframework/org/objectweb/asmx/ByteVector;->data:[B

    iget-object v5, v2, Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationWriter;->bv:Lorg/checkerframework/org/objectweb/asmx/ByteVector;

    iget v5, v5, Lorg/checkerframework/org/objectweb/asmx/ByteVector;->length:I

    const/4 v6, 0x0

    invoke-virtual {p1, v4, v6, v5}, Lorg/checkerframework/org/objectweb/asmx/ByteVector;->putByteArray([BII)Lorg/checkerframework/org/objectweb/asmx/ByteVector;

    .line 293
    iget-object v2, v2, Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationWriter;->prev:Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationWriter;

    goto :goto_1

    .line 295
    :cond_1
    return-void
.end method

.method public visit(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .line 136
    iget v0, p0, Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationWriter;->size:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationWriter;->size:I

    .line 137
    iget-boolean v0, p0, Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationWriter;->named:Z

    if-eqz v0, :cond_0

    .line 138
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationWriter;->bv:Lorg/checkerframework/org/objectweb/asmx/ByteVector;

    iget-object v1, p0, Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationWriter;->cw:Lorg/checkerframework/org/objectweb/asmx/ClassWriter;

    invoke-virtual {v1, p1}, Lorg/checkerframework/org/objectweb/asmx/ClassWriter;->newUTF8(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/checkerframework/org/objectweb/asmx/ByteVector;->putShort(I)Lorg/checkerframework/org/objectweb/asmx/ByteVector;

    .line 140
    :cond_0
    instance-of v0, p2, Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 141
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationWriter;->bv:Lorg/checkerframework/org/objectweb/asmx/ByteVector;

    iget-object v1, p0, Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationWriter;->cw:Lorg/checkerframework/org/objectweb/asmx/ClassWriter;

    move-object v2, p2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Lorg/checkerframework/org/objectweb/asmx/ClassWriter;->newUTF8(Ljava/lang/String;)I

    move-result v1

    const/16 v2, 0x73

    invoke-virtual {v0, v2, v1}, Lorg/checkerframework/org/objectweb/asmx/ByteVector;->put12(II)Lorg/checkerframework/org/objectweb/asmx/ByteVector;

    goto/16 :goto_8

    .line 142
    :cond_1
    instance-of v0, p2, Ljava/lang/Byte;

    const/16 v1, 0x42

    if-eqz v0, :cond_2

    .line 143
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationWriter;->bv:Lorg/checkerframework/org/objectweb/asmx/ByteVector;

    iget-object v2, p0, Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationWriter;->cw:Lorg/checkerframework/org/objectweb/asmx/ClassWriter;

    move-object v3, p2

    check-cast v3, Ljava/lang/Byte;

    invoke-virtual {v3}, Ljava/lang/Byte;->byteValue()B

    move-result v3

    invoke-virtual {v2, v3}, Lorg/checkerframework/org/objectweb/asmx/ClassWriter;->newInteger(I)Lorg/checkerframework/org/objectweb/asmx/Item;

    move-result-object v2

    iget v2, v2, Lorg/checkerframework/org/objectweb/asmx/Item;->index:I

    invoke-virtual {v0, v1, v2}, Lorg/checkerframework/org/objectweb/asmx/ByteVector;->put12(II)Lorg/checkerframework/org/objectweb/asmx/ByteVector;

    goto/16 :goto_8

    .line 144
    :cond_2
    instance-of v0, p2, Ljava/lang/Boolean;

    const/16 v2, 0x5a

    if-eqz v0, :cond_3

    .line 145
    move-object v0, p2

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 146
    .local v0, "v":I
    iget-object v1, p0, Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationWriter;->bv:Lorg/checkerframework/org/objectweb/asmx/ByteVector;

    iget-object v3, p0, Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationWriter;->cw:Lorg/checkerframework/org/objectweb/asmx/ClassWriter;

    invoke-virtual {v3, v0}, Lorg/checkerframework/org/objectweb/asmx/ClassWriter;->newInteger(I)Lorg/checkerframework/org/objectweb/asmx/Item;

    move-result-object v3

    iget v3, v3, Lorg/checkerframework/org/objectweb/asmx/Item;->index:I

    invoke-virtual {v1, v2, v3}, Lorg/checkerframework/org/objectweb/asmx/ByteVector;->put12(II)Lorg/checkerframework/org/objectweb/asmx/ByteVector;

    .line 147
    .end local v0    # "v":I
    goto/16 :goto_8

    :cond_3
    instance-of v0, p2, Ljava/lang/Character;

    const/16 v3, 0x43

    if-eqz v0, :cond_4

    .line 148
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationWriter;->bv:Lorg/checkerframework/org/objectweb/asmx/ByteVector;

    iget-object v1, p0, Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationWriter;->cw:Lorg/checkerframework/org/objectweb/asmx/ClassWriter;

    move-object v2, p2

    check-cast v2, Ljava/lang/Character;

    invoke-virtual {v2}, Ljava/lang/Character;->charValue()C

    move-result v2

    invoke-virtual {v1, v2}, Lorg/checkerframework/org/objectweb/asmx/ClassWriter;->newInteger(I)Lorg/checkerframework/org/objectweb/asmx/Item;

    move-result-object v1

    iget v1, v1, Lorg/checkerframework/org/objectweb/asmx/Item;->index:I

    invoke-virtual {v0, v3, v1}, Lorg/checkerframework/org/objectweb/asmx/ByteVector;->put12(II)Lorg/checkerframework/org/objectweb/asmx/ByteVector;

    goto/16 :goto_8

    .line 149
    :cond_4
    instance-of v0, p2, Ljava/lang/Short;

    const/16 v4, 0x53

    if-eqz v0, :cond_5

    .line 150
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationWriter;->bv:Lorg/checkerframework/org/objectweb/asmx/ByteVector;

    iget-object v1, p0, Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationWriter;->cw:Lorg/checkerframework/org/objectweb/asmx/ClassWriter;

    move-object v2, p2

    check-cast v2, Ljava/lang/Short;

    invoke-virtual {v2}, Ljava/lang/Short;->shortValue()S

    move-result v2

    invoke-virtual {v1, v2}, Lorg/checkerframework/org/objectweb/asmx/ClassWriter;->newInteger(I)Lorg/checkerframework/org/objectweb/asmx/Item;

    move-result-object v1

    iget v1, v1, Lorg/checkerframework/org/objectweb/asmx/Item;->index:I

    invoke-virtual {v0, v4, v1}, Lorg/checkerframework/org/objectweb/asmx/ByteVector;->put12(II)Lorg/checkerframework/org/objectweb/asmx/ByteVector;

    goto/16 :goto_8

    .line 151
    :cond_5
    instance-of v0, p2, Lorg/checkerframework/org/objectweb/asmx/Type;

    if-eqz v0, :cond_6

    .line 152
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationWriter;->bv:Lorg/checkerframework/org/objectweb/asmx/ByteVector;

    iget-object v1, p0, Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationWriter;->cw:Lorg/checkerframework/org/objectweb/asmx/ClassWriter;

    move-object v2, p2

    check-cast v2, Lorg/checkerframework/org/objectweb/asmx/Type;

    invoke-virtual {v2}, Lorg/checkerframework/org/objectweb/asmx/Type;->getDescriptor()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/checkerframework/org/objectweb/asmx/ClassWriter;->newUTF8(Ljava/lang/String;)I

    move-result v1

    const/16 v2, 0x63

    invoke-virtual {v0, v2, v1}, Lorg/checkerframework/org/objectweb/asmx/ByteVector;->put12(II)Lorg/checkerframework/org/objectweb/asmx/ByteVector;

    goto/16 :goto_8

    .line 153
    :cond_6
    instance-of v0, p2, [B

    const/16 v5, 0x5b

    if-eqz v0, :cond_8

    .line 154
    move-object v0, p2

    check-cast v0, [B

    check-cast v0, [B

    .line 155
    .local v0, "v":[B
    iget-object v2, p0, Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationWriter;->bv:Lorg/checkerframework/org/objectweb/asmx/ByteVector;

    array-length v3, v0

    invoke-virtual {v2, v5, v3}, Lorg/checkerframework/org/objectweb/asmx/ByteVector;->put12(II)Lorg/checkerframework/org/objectweb/asmx/ByteVector;

    .line 156
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_7

    .line 157
    iget-object v3, p0, Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationWriter;->bv:Lorg/checkerframework/org/objectweb/asmx/ByteVector;

    iget-object v4, p0, Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationWriter;->cw:Lorg/checkerframework/org/objectweb/asmx/ClassWriter;

    aget-byte v5, v0, v2

    invoke-virtual {v4, v5}, Lorg/checkerframework/org/objectweb/asmx/ClassWriter;->newInteger(I)Lorg/checkerframework/org/objectweb/asmx/Item;

    move-result-object v4

    iget v4, v4, Lorg/checkerframework/org/objectweb/asmx/Item;->index:I

    invoke-virtual {v3, v1, v4}, Lorg/checkerframework/org/objectweb/asmx/ByteVector;->put12(II)Lorg/checkerframework/org/objectweb/asmx/ByteVector;

    .line 156
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 159
    .end local v0    # "v":[B
    .end local v2    # "i":I
    :cond_7
    goto/16 :goto_8

    :cond_8
    instance-of v0, p2, [Z

    if-eqz v0, :cond_a

    .line 160
    move-object v0, p2

    check-cast v0, [Z

    check-cast v0, [Z

    .line 161
    .local v0, "v":[Z
    iget-object v1, p0, Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationWriter;->bv:Lorg/checkerframework/org/objectweb/asmx/ByteVector;

    array-length v3, v0

    invoke-virtual {v1, v5, v3}, Lorg/checkerframework/org/objectweb/asmx/ByteVector;->put12(II)Lorg/checkerframework/org/objectweb/asmx/ByteVector;

    .line 162
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    array-length v3, v0

    if-ge v1, v3, :cond_9

    .line 163
    iget-object v3, p0, Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationWriter;->bv:Lorg/checkerframework/org/objectweb/asmx/ByteVector;

    iget-object v4, p0, Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationWriter;->cw:Lorg/checkerframework/org/objectweb/asmx/ClassWriter;

    aget-boolean v5, v0, v1

    invoke-virtual {v4, v5}, Lorg/checkerframework/org/objectweb/asmx/ClassWriter;->newInteger(I)Lorg/checkerframework/org/objectweb/asmx/Item;

    move-result-object v4

    iget v4, v4, Lorg/checkerframework/org/objectweb/asmx/Item;->index:I

    invoke-virtual {v3, v2, v4}, Lorg/checkerframework/org/objectweb/asmx/ByteVector;->put12(II)Lorg/checkerframework/org/objectweb/asmx/ByteVector;

    .line 162
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 165
    .end local v0    # "v":[Z
    .end local v1    # "i":I
    :cond_9
    goto/16 :goto_8

    :cond_a
    instance-of v0, p2, [S

    if-eqz v0, :cond_c

    .line 166
    move-object v0, p2

    check-cast v0, [S

    check-cast v0, [S

    .line 167
    .local v0, "v":[S
    iget-object v1, p0, Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationWriter;->bv:Lorg/checkerframework/org/objectweb/asmx/ByteVector;

    array-length v2, v0

    invoke-virtual {v1, v5, v2}, Lorg/checkerframework/org/objectweb/asmx/ByteVector;->put12(II)Lorg/checkerframework/org/objectweb/asmx/ByteVector;

    .line 168
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_2
    array-length v2, v0

    if-ge v1, v2, :cond_b

    .line 169
    iget-object v2, p0, Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationWriter;->bv:Lorg/checkerframework/org/objectweb/asmx/ByteVector;

    iget-object v3, p0, Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationWriter;->cw:Lorg/checkerframework/org/objectweb/asmx/ClassWriter;

    aget-short v5, v0, v1

    invoke-virtual {v3, v5}, Lorg/checkerframework/org/objectweb/asmx/ClassWriter;->newInteger(I)Lorg/checkerframework/org/objectweb/asmx/Item;

    move-result-object v3

    iget v3, v3, Lorg/checkerframework/org/objectweb/asmx/Item;->index:I

    invoke-virtual {v2, v4, v3}, Lorg/checkerframework/org/objectweb/asmx/ByteVector;->put12(II)Lorg/checkerframework/org/objectweb/asmx/ByteVector;

    .line 168
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 171
    .end local v0    # "v":[S
    .end local v1    # "i":I
    :cond_b
    goto/16 :goto_8

    :cond_c
    instance-of v0, p2, [C

    if-eqz v0, :cond_e

    .line 172
    move-object v0, p2

    check-cast v0, [C

    check-cast v0, [C

    .line 173
    .local v0, "v":[C
    iget-object v1, p0, Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationWriter;->bv:Lorg/checkerframework/org/objectweb/asmx/ByteVector;

    array-length v2, v0

    invoke-virtual {v1, v5, v2}, Lorg/checkerframework/org/objectweb/asmx/ByteVector;->put12(II)Lorg/checkerframework/org/objectweb/asmx/ByteVector;

    .line 174
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_3
    array-length v2, v0

    if-ge v1, v2, :cond_d

    .line 175
    iget-object v2, p0, Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationWriter;->bv:Lorg/checkerframework/org/objectweb/asmx/ByteVector;

    iget-object v4, p0, Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationWriter;->cw:Lorg/checkerframework/org/objectweb/asmx/ClassWriter;

    aget-char v5, v0, v1

    invoke-virtual {v4, v5}, Lorg/checkerframework/org/objectweb/asmx/ClassWriter;->newInteger(I)Lorg/checkerframework/org/objectweb/asmx/Item;

    move-result-object v4

    iget v4, v4, Lorg/checkerframework/org/objectweb/asmx/Item;->index:I

    invoke-virtual {v2, v3, v4}, Lorg/checkerframework/org/objectweb/asmx/ByteVector;->put12(II)Lorg/checkerframework/org/objectweb/asmx/ByteVector;

    .line 174
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 177
    .end local v0    # "v":[C
    .end local v1    # "i":I
    :cond_d
    goto/16 :goto_8

    :cond_e
    instance-of v0, p2, [I

    if-eqz v0, :cond_10

    .line 178
    move-object v0, p2

    check-cast v0, [I

    check-cast v0, [I

    .line 179
    .local v0, "v":[I
    iget-object v1, p0, Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationWriter;->bv:Lorg/checkerframework/org/objectweb/asmx/ByteVector;

    array-length v2, v0

    invoke-virtual {v1, v5, v2}, Lorg/checkerframework/org/objectweb/asmx/ByteVector;->put12(II)Lorg/checkerframework/org/objectweb/asmx/ByteVector;

    .line 180
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_4
    array-length v2, v0

    if-ge v1, v2, :cond_f

    .line 181
    iget-object v2, p0, Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationWriter;->bv:Lorg/checkerframework/org/objectweb/asmx/ByteVector;

    iget-object v3, p0, Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationWriter;->cw:Lorg/checkerframework/org/objectweb/asmx/ClassWriter;

    aget v4, v0, v1

    invoke-virtual {v3, v4}, Lorg/checkerframework/org/objectweb/asmx/ClassWriter;->newInteger(I)Lorg/checkerframework/org/objectweb/asmx/Item;

    move-result-object v3

    iget v3, v3, Lorg/checkerframework/org/objectweb/asmx/Item;->index:I

    const/16 v4, 0x49

    invoke-virtual {v2, v4, v3}, Lorg/checkerframework/org/objectweb/asmx/ByteVector;->put12(II)Lorg/checkerframework/org/objectweb/asmx/ByteVector;

    .line 180
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 183
    .end local v0    # "v":[I
    .end local v1    # "i":I
    :cond_f
    goto/16 :goto_8

    :cond_10
    instance-of v0, p2, [J

    if-eqz v0, :cond_12

    .line 184
    move-object v0, p2

    check-cast v0, [J

    check-cast v0, [J

    .line 185
    .local v0, "v":[J
    iget-object v1, p0, Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationWriter;->bv:Lorg/checkerframework/org/objectweb/asmx/ByteVector;

    array-length v2, v0

    invoke-virtual {v1, v5, v2}, Lorg/checkerframework/org/objectweb/asmx/ByteVector;->put12(II)Lorg/checkerframework/org/objectweb/asmx/ByteVector;

    .line 186
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_5
    array-length v2, v0

    if-ge v1, v2, :cond_11

    .line 187
    iget-object v2, p0, Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationWriter;->bv:Lorg/checkerframework/org/objectweb/asmx/ByteVector;

    iget-object v3, p0, Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationWriter;->cw:Lorg/checkerframework/org/objectweb/asmx/ClassWriter;

    aget-wide v4, v0, v1

    invoke-virtual {v3, v4, v5}, Lorg/checkerframework/org/objectweb/asmx/ClassWriter;->newLong(J)Lorg/checkerframework/org/objectweb/asmx/Item;

    move-result-object v3

    iget v3, v3, Lorg/checkerframework/org/objectweb/asmx/Item;->index:I

    const/16 v4, 0x4a

    invoke-virtual {v2, v4, v3}, Lorg/checkerframework/org/objectweb/asmx/ByteVector;->put12(II)Lorg/checkerframework/org/objectweb/asmx/ByteVector;

    .line 186
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 189
    .end local v0    # "v":[J
    .end local v1    # "i":I
    :cond_11
    goto :goto_8

    :cond_12
    instance-of v0, p2, [F

    if-eqz v0, :cond_14

    .line 190
    move-object v0, p2

    check-cast v0, [F

    check-cast v0, [F

    .line 191
    .local v0, "v":[F
    iget-object v1, p0, Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationWriter;->bv:Lorg/checkerframework/org/objectweb/asmx/ByteVector;

    array-length v2, v0

    invoke-virtual {v1, v5, v2}, Lorg/checkerframework/org/objectweb/asmx/ByteVector;->put12(II)Lorg/checkerframework/org/objectweb/asmx/ByteVector;

    .line 192
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_6
    array-length v2, v0

    if-ge v1, v2, :cond_13

    .line 193
    iget-object v2, p0, Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationWriter;->bv:Lorg/checkerframework/org/objectweb/asmx/ByteVector;

    iget-object v3, p0, Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationWriter;->cw:Lorg/checkerframework/org/objectweb/asmx/ClassWriter;

    aget v4, v0, v1

    invoke-virtual {v3, v4}, Lorg/checkerframework/org/objectweb/asmx/ClassWriter;->newFloat(F)Lorg/checkerframework/org/objectweb/asmx/Item;

    move-result-object v3

    iget v3, v3, Lorg/checkerframework/org/objectweb/asmx/Item;->index:I

    const/16 v4, 0x46

    invoke-virtual {v2, v4, v3}, Lorg/checkerframework/org/objectweb/asmx/ByteVector;->put12(II)Lorg/checkerframework/org/objectweb/asmx/ByteVector;

    .line 192
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 195
    .end local v0    # "v":[F
    .end local v1    # "i":I
    :cond_13
    goto :goto_8

    :cond_14
    instance-of v0, p2, [D

    if-eqz v0, :cond_16

    .line 196
    move-object v0, p2

    check-cast v0, [D

    check-cast v0, [D

    .line 197
    .local v0, "v":[D
    iget-object v1, p0, Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationWriter;->bv:Lorg/checkerframework/org/objectweb/asmx/ByteVector;

    array-length v2, v0

    invoke-virtual {v1, v5, v2}, Lorg/checkerframework/org/objectweb/asmx/ByteVector;->put12(II)Lorg/checkerframework/org/objectweb/asmx/ByteVector;

    .line 198
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_7
    array-length v2, v0

    if-ge v1, v2, :cond_15

    .line 199
    iget-object v2, p0, Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationWriter;->bv:Lorg/checkerframework/org/objectweb/asmx/ByteVector;

    iget-object v3, p0, Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationWriter;->cw:Lorg/checkerframework/org/objectweb/asmx/ClassWriter;

    aget-wide v4, v0, v1

    invoke-virtual {v3, v4, v5}, Lorg/checkerframework/org/objectweb/asmx/ClassWriter;->newDouble(D)Lorg/checkerframework/org/objectweb/asmx/Item;

    move-result-object v3

    iget v3, v3, Lorg/checkerframework/org/objectweb/asmx/Item;->index:I

    const/16 v4, 0x44

    invoke-virtual {v2, v4, v3}, Lorg/checkerframework/org/objectweb/asmx/ByteVector;->put12(II)Lorg/checkerframework/org/objectweb/asmx/ByteVector;

    .line 198
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 201
    .end local v0    # "v":[D
    .end local v1    # "i":I
    :cond_15
    goto :goto_8

    .line 202
    :cond_16
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationWriter;->cw:Lorg/checkerframework/org/objectweb/asmx/ClassWriter;

    invoke-virtual {v0, p2}, Lorg/checkerframework/org/objectweb/asmx/ClassWriter;->newConstItem(Ljava/lang/Object;)Lorg/checkerframework/org/objectweb/asmx/Item;

    move-result-object v0

    .line 203
    .local v0, "i":Lorg/checkerframework/org/objectweb/asmx/Item;
    iget-object v1, p0, Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationWriter;->bv:Lorg/checkerframework/org/objectweb/asmx/ByteVector;

    const-string v2, ".s.IFJDCS"

    iget v3, v0, Lorg/checkerframework/org/objectweb/asmx/Item;->type:I

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    iget v3, v0, Lorg/checkerframework/org/objectweb/asmx/Item;->index:I

    invoke-virtual {v1, v2, v3}, Lorg/checkerframework/org/objectweb/asmx/ByteVector;->put12(II)Lorg/checkerframework/org/objectweb/asmx/ByteVector;

    .line 205
    .end local v0    # "i":Lorg/checkerframework/org/objectweb/asmx/Item;
    :goto_8
    return-void
.end method

.method public visitAnnotation(Ljava/lang/String;Ljava/lang/String;)Lorg/checkerframework/org/objectweb/asmx/AnnotationVisitor;
    .locals 8
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "desc"    # Ljava/lang/String;

    .line 223
    iget v0, p0, Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationWriter;->size:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationWriter;->size:I

    .line 224
    iget-boolean v0, p0, Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationWriter;->named:Z

    if-eqz v0, :cond_0

    .line 225
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationWriter;->bv:Lorg/checkerframework/org/objectweb/asmx/ByteVector;

    iget-object v1, p0, Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationWriter;->cw:Lorg/checkerframework/org/objectweb/asmx/ClassWriter;

    invoke-virtual {v1, p1}, Lorg/checkerframework/org/objectweb/asmx/ClassWriter;->newUTF8(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/checkerframework/org/objectweb/asmx/ByteVector;->putShort(I)Lorg/checkerframework/org/objectweb/asmx/ByteVector;

    .line 228
    :cond_0
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationWriter;->bv:Lorg/checkerframework/org/objectweb/asmx/ByteVector;

    iget-object v1, p0, Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationWriter;->cw:Lorg/checkerframework/org/objectweb/asmx/ClassWriter;

    invoke-virtual {v1, p2}, Lorg/checkerframework/org/objectweb/asmx/ClassWriter;->newUTF8(Ljava/lang/String;)I

    move-result v1

    const/16 v2, 0x40

    invoke-virtual {v0, v2, v1}, Lorg/checkerframework/org/objectweb/asmx/ByteVector;->put12(II)Lorg/checkerframework/org/objectweb/asmx/ByteVector;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/checkerframework/org/objectweb/asmx/ByteVector;->putShort(I)Lorg/checkerframework/org/objectweb/asmx/ByteVector;

    .line 229
    new-instance v0, Lorg/checkerframework/org/objectweb/asmx/AnnotationWriter;

    iget-object v3, p0, Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationWriter;->cw:Lorg/checkerframework/org/objectweb/asmx/ClassWriter;

    const/4 v4, 0x1

    iget-object v6, p0, Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationWriter;->bv:Lorg/checkerframework/org/objectweb/asmx/ByteVector;

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

    .line 233
    iget v0, p0, Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationWriter;->size:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationWriter;->size:I

    .line 234
    iget-boolean v0, p0, Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationWriter;->named:Z

    if-eqz v0, :cond_0

    .line 235
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationWriter;->bv:Lorg/checkerframework/org/objectweb/asmx/ByteVector;

    iget-object v1, p0, Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationWriter;->cw:Lorg/checkerframework/org/objectweb/asmx/ClassWriter;

    invoke-virtual {v1, p1}, Lorg/checkerframework/org/objectweb/asmx/ClassWriter;->newUTF8(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/checkerframework/org/objectweb/asmx/ByteVector;->putShort(I)Lorg/checkerframework/org/objectweb/asmx/ByteVector;

    .line 238
    :cond_0
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationWriter;->bv:Lorg/checkerframework/org/objectweb/asmx/ByteVector;

    const/16 v1, 0x5b

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/checkerframework/org/objectweb/asmx/ByteVector;->put12(II)Lorg/checkerframework/org/objectweb/asmx/ByteVector;

    .line 239
    new-instance v0, Lorg/checkerframework/org/objectweb/asmx/AnnotationWriter;

    iget-object v4, p0, Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationWriter;->cw:Lorg/checkerframework/org/objectweb/asmx/ClassWriter;

    const/4 v5, 0x0

    iget-object v7, p0, Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationWriter;->bv:Lorg/checkerframework/org/objectweb/asmx/ByteVector;

    iget v1, v7, Lorg/checkerframework/org/objectweb/asmx/ByteVector;->length:I

    add-int/lit8 v8, v1, -0x2

    move-object v3, v0

    move-object v6, v7

    invoke-direct/range {v3 .. v8}, Lorg/checkerframework/org/objectweb/asmx/AnnotationWriter;-><init>(Lorg/checkerframework/org/objectweb/asmx/ClassWriter;ZLorg/checkerframework/org/objectweb/asmx/ByteVector;Lorg/checkerframework/org/objectweb/asmx/ByteVector;I)V

    return-object v0
.end method

.method public visitEnd()V
    .locals 4

    .line 243
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationWriter;->parent:Lorg/checkerframework/org/objectweb/asmx/ByteVector;

    if-eqz v0, :cond_0

    .line 244
    iget-object v0, v0, Lorg/checkerframework/org/objectweb/asmx/ByteVector;->data:[B

    .line 245
    .local v0, "data":[B
    iget v1, p0, Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationWriter;->offset:I

    iget v2, p0, Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationWriter;->size:I

    ushr-int/lit8 v3, v2, 0x8

    int-to-byte v3, v3

    aput-byte v3, v0, v1

    .line 246
    add-int/lit8 v1, v1, 0x1

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 248
    .end local v0    # "data":[B
    :cond_0
    return-void
.end method

.method public visitEnum(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "desc"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;

    .line 212
    iget v0, p0, Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationWriter;->size:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationWriter;->size:I

    .line 213
    iget-boolean v0, p0, Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationWriter;->named:Z

    if-eqz v0, :cond_0

    .line 214
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationWriter;->bv:Lorg/checkerframework/org/objectweb/asmx/ByteVector;

    iget-object v1, p0, Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationWriter;->cw:Lorg/checkerframework/org/objectweb/asmx/ClassWriter;

    invoke-virtual {v1, p1}, Lorg/checkerframework/org/objectweb/asmx/ClassWriter;->newUTF8(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/checkerframework/org/objectweb/asmx/ByteVector;->putShort(I)Lorg/checkerframework/org/objectweb/asmx/ByteVector;

    .line 216
    :cond_0
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationWriter;->bv:Lorg/checkerframework/org/objectweb/asmx/ByteVector;

    iget-object v1, p0, Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationWriter;->cw:Lorg/checkerframework/org/objectweb/asmx/ClassWriter;

    invoke-virtual {v1, p2}, Lorg/checkerframework/org/objectweb/asmx/ClassWriter;->newUTF8(Ljava/lang/String;)I

    move-result v1

    const/16 v2, 0x65

    invoke-virtual {v0, v2, v1}, Lorg/checkerframework/org/objectweb/asmx/ByteVector;->put12(II)Lorg/checkerframework/org/objectweb/asmx/ByteVector;

    move-result-object v0

    iget-object v1, p0, Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationWriter;->cw:Lorg/checkerframework/org/objectweb/asmx/ClassWriter;

    invoke-virtual {v1, p3}, Lorg/checkerframework/org/objectweb/asmx/ClassWriter;->newUTF8(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/checkerframework/org/objectweb/asmx/ByteVector;->putShort(I)Lorg/checkerframework/org/objectweb/asmx/ByteVector;

    .line 217
    return-void
.end method

.method public visitXBoundIndex(I)V
    .locals 1
    .param p1, "bound_index"    # I

    .line 385
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationWriter;->bv:Lorg/checkerframework/org/objectweb/asmx/ByteVector;

    invoke-virtual {v0, p1}, Lorg/checkerframework/org/objectweb/asmx/ByteVector;->putByte(I)Lorg/checkerframework/org/objectweb/asmx/ByteVector;

    .line 386
    return-void
.end method

.method public visitXExceptionIndex(I)V
    .locals 1
    .param p1, "exception_index"    # I

    .line 395
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationWriter;->bv:Lorg/checkerframework/org/objectweb/asmx/ByteVector;

    invoke-virtual {v0, p1}, Lorg/checkerframework/org/objectweb/asmx/ByteVector;->putByte(I)Lorg/checkerframework/org/objectweb/asmx/ByteVector;

    .line 396
    return-void
.end method

.method public visitXIndex(I)V
    .locals 1
    .param p1, "index"    # I

    .line 375
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationWriter;->bv:Lorg/checkerframework/org/objectweb/asmx/ByteVector;

    invoke-virtual {v0, p1}, Lorg/checkerframework/org/objectweb/asmx/ByteVector;->putShort(I)Lorg/checkerframework/org/objectweb/asmx/ByteVector;

    .line 376
    return-void
.end method

.method public visitXLength(I)V
    .locals 1
    .param p1, "length"    # I

    .line 370
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationWriter;->bv:Lorg/checkerframework/org/objectweb/asmx/ByteVector;

    invoke-virtual {v0, p1}, Lorg/checkerframework/org/objectweb/asmx/ByteVector;->putShort(I)Lorg/checkerframework/org/objectweb/asmx/ByteVector;

    .line 371
    return-void
.end method

.method public visitXLocation(Lcom/sun/tools/javac/code/TypeAnnotationPosition$TypePathEntry;)V
    .locals 2
    .param p1, "location"    # Lcom/sun/tools/javac/code/TypeAnnotationPosition$TypePathEntry;

    .line 352
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationWriter;->xlocations:[Lcom/sun/tools/javac/code/TypeAnnotationPosition$TypePathEntry;

    iget v1, p0, Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationWriter;->xlocations_index:I

    aput-object p1, v0, v1

    .line 353
    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationWriter;->xlocations_index:I

    .line 354
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationWriter;->bv:Lorg/checkerframework/org/objectweb/asmx/ByteVector;

    iget-object v1, p1, Lcom/sun/tools/javac/code/TypeAnnotationPosition$TypePathEntry;->tag:Lcom/sun/tools/javac/code/TypeAnnotationPosition$TypePathEntryKind;

    iget v1, v1, Lcom/sun/tools/javac/code/TypeAnnotationPosition$TypePathEntryKind;->tag:I

    invoke-virtual {v0, v1}, Lorg/checkerframework/org/objectweb/asmx/ByteVector;->putByte(I)Lorg/checkerframework/org/objectweb/asmx/ByteVector;

    .line 355
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationWriter;->bv:Lorg/checkerframework/org/objectweb/asmx/ByteVector;

    iget v1, p1, Lcom/sun/tools/javac/code/TypeAnnotationPosition$TypePathEntry;->arg:I

    invoke-virtual {v0, v1}, Lorg/checkerframework/org/objectweb/asmx/ByteVector;->putByte(I)Lorg/checkerframework/org/objectweb/asmx/ByteVector;

    .line 356
    return-void
.end method

.method public visitXLocationLength(I)V
    .locals 1
    .param p1, "location_length"    # I

    .line 345
    new-array v0, p1, [Lcom/sun/tools/javac/code/TypeAnnotationPosition$TypePathEntry;

    iput-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationWriter;->xlocations:[Lcom/sun/tools/javac/code/TypeAnnotationPosition$TypePathEntry;

    .line 346
    const/4 v0, 0x0

    iput v0, p0, Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationWriter;->xlocations_index:I

    .line 347
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationWriter;->bv:Lorg/checkerframework/org/objectweb/asmx/ByteVector;

    invoke-virtual {v0, p1}, Lorg/checkerframework/org/objectweb/asmx/ByteVector;->putByte(I)Lorg/checkerframework/org/objectweb/asmx/ByteVector;

    .line 348
    return-void
.end method

.method public visitXNameAndArgsSize()V
    .locals 3

    .line 399
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationWriter;->bv:Lorg/checkerframework/org/objectweb/asmx/ByteVector;

    iget-object v1, p0, Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationWriter;->cw:Lorg/checkerframework/org/objectweb/asmx/ClassWriter;

    iget-object v2, p0, Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationWriter;->desc:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lorg/checkerframework/org/objectweb/asmx/ClassWriter;->newUTF8(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/checkerframework/org/objectweb/asmx/ByteVector;->putShort(I)Lorg/checkerframework/org/objectweb/asmx/ByteVector;

    .line 401
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationWriter;->bv:Lorg/checkerframework/org/objectweb/asmx/ByteVector;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/checkerframework/org/objectweb/asmx/ByteVector;->putShort(I)Lorg/checkerframework/org/objectweb/asmx/ByteVector;

    .line 403
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationWriter;->bv:Lorg/checkerframework/org/objectweb/asmx/ByteVector;

    iget v0, v0, Lorg/checkerframework/org/objectweb/asmx/ByteVector;->length:I

    add-int/lit8 v0, v0, -0x2

    iput v0, p0, Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationWriter;->offset:I

    .line 404
    return-void
.end method

.method public visitXNumEntries(I)V
    .locals 1
    .param p1, "num_entries"    # I

    .line 360
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationWriter;->bv:Lorg/checkerframework/org/objectweb/asmx/ByteVector;

    invoke-virtual {v0, p1}, Lorg/checkerframework/org/objectweb/asmx/ByteVector;->putShort(I)Lorg/checkerframework/org/objectweb/asmx/ByteVector;

    .line 361
    return-void
.end method

.method public visitXOffset(I)V
    .locals 1
    .param p1, "offset"    # I

    .line 340
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationWriter;->bv:Lorg/checkerframework/org/objectweb/asmx/ByteVector;

    invoke-virtual {v0, p1}, Lorg/checkerframework/org/objectweb/asmx/ByteVector;->putShort(I)Lorg/checkerframework/org/objectweb/asmx/ByteVector;

    .line 341
    return-void
.end method

.method public visitXParamIndex(I)V
    .locals 1
    .param p1, "param_index"    # I

    .line 380
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationWriter;->bv:Lorg/checkerframework/org/objectweb/asmx/ByteVector;

    invoke-virtual {v0, p1}, Lorg/checkerframework/org/objectweb/asmx/ByteVector;->putByte(I)Lorg/checkerframework/org/objectweb/asmx/ByteVector;

    .line 381
    return-void
.end method

.method public visitXStartPc(I)V
    .locals 1
    .param p1, "start_pc"    # I

    .line 365
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationWriter;->bv:Lorg/checkerframework/org/objectweb/asmx/ByteVector;

    invoke-virtual {v0, p1}, Lorg/checkerframework/org/objectweb/asmx/ByteVector;->putShort(I)Lorg/checkerframework/org/objectweb/asmx/ByteVector;

    .line 366
    return-void
.end method

.method public visitXTargetType(I)V
    .locals 1
    .param p1, "target_type"    # I

    .line 335
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationWriter;->bv:Lorg/checkerframework/org/objectweb/asmx/ByteVector;

    invoke-virtual {v0, p1}, Lorg/checkerframework/org/objectweb/asmx/ByteVector;->putByte(I)Lorg/checkerframework/org/objectweb/asmx/ByteVector;

    .line 336
    return-void
.end method

.method public visitXTypeIndex(I)V
    .locals 1
    .param p1, "type_index"    # I

    .line 391
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationWriter;->bv:Lorg/checkerframework/org/objectweb/asmx/ByteVector;

    invoke-virtual {v0, p1}, Lorg/checkerframework/org/objectweb/asmx/ByteVector;->putByte(I)Lorg/checkerframework/org/objectweb/asmx/ByteVector;

    .line 392
    return-void
.end method
