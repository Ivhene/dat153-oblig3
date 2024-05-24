.class public Lorg/checkerframework/org/objectweb/asmx/attrs/StackMapAttribute;
.super Lorg/checkerframework/org/objectweb/asmx/Attribute;
.source "StackMapAttribute.java"


# static fields
.field static final MAX_SIZE:I = 0xffff


# instance fields
.field public frames:Ljava/util/List;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 153
    const-string v0, "StackMap"

    invoke-direct {p0, v0}, Lorg/checkerframework/org/objectweb/asmx/Attribute;-><init>(Ljava/lang/String;)V

    .line 150
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/attrs/StackMapAttribute;->frames:Ljava/util/List;

    .line 154
    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 0
    .param p1, "frames"    # Ljava/util/List;

    .line 157
    invoke-direct {p0}, Lorg/checkerframework/org/objectweb/asmx/attrs/StackMapAttribute;-><init>()V

    .line 158
    iput-object p1, p0, Lorg/checkerframework/org/objectweb/asmx/attrs/StackMapAttribute;->frames:Ljava/util/List;

    .line 159
    return-void
.end method

.method private getFrameLabels(Lorg/checkerframework/org/objectweb/asmx/attrs/StackMapFrame;Ljava/util/Set;)V
    .locals 1
    .param p1, "frame"    # Lorg/checkerframework/org/objectweb/asmx/attrs/StackMapFrame;
    .param p2, "labels"    # Ljava/util/Set;

    .line 356
    iget-object v0, p1, Lorg/checkerframework/org/objectweb/asmx/attrs/StackMapFrame;->label:Lorg/checkerframework/org/objectweb/asmx/Label;

    invoke-interface {p2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 357
    iget-object v0, p1, Lorg/checkerframework/org/objectweb/asmx/attrs/StackMapFrame;->locals:Ljava/util/List;

    invoke-direct {p0, p2, v0}, Lorg/checkerframework/org/objectweb/asmx/attrs/StackMapAttribute;->getTypeInfoLabels(Ljava/util/Set;Ljava/util/List;)V

    .line 358
    iget-object v0, p1, Lorg/checkerframework/org/objectweb/asmx/attrs/StackMapFrame;->stack:Ljava/util/List;

    invoke-direct {p0, p2, v0}, Lorg/checkerframework/org/objectweb/asmx/attrs/StackMapAttribute;->getTypeInfoLabels(Ljava/util/Set;Ljava/util/List;)V

    .line 359
    return-void
.end method

.method private getLabel(I[Lorg/checkerframework/org/objectweb/asmx/Label;)Lorg/checkerframework/org/objectweb/asmx/Label;
    .locals 2
    .param p1, "offset"    # I
    .param p2, "labels"    # [Lorg/checkerframework/org/objectweb/asmx/Label;

    .line 305
    aget-object v0, p2, p1

    .line 306
    .local v0, "l":Lorg/checkerframework/org/objectweb/asmx/Label;
    if-eqz v0, :cond_0

    .line 307
    return-object v0

    .line 309
    :cond_0
    new-instance v1, Lorg/checkerframework/org/objectweb/asmx/Label;

    invoke-direct {v1}, Lorg/checkerframework/org/objectweb/asmx/Label;-><init>()V

    aput-object v1, p2, p1

    return-object v1
.end method

.method private getTypeInfoLabels(Ljava/util/Set;Ljava/util/List;)V
    .locals 4
    .param p1, "labels"    # Ljava/util/Set;
    .param p2, "info"    # Ljava/util/List;

    .line 362
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "it":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 363
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/checkerframework/org/objectweb/asmx/attrs/StackMapType;

    .line 364
    .local v1, "typeInfo":Lorg/checkerframework/org/objectweb/asmx/attrs/StackMapType;
    invoke-virtual {v1}, Lorg/checkerframework/org/objectweb/asmx/attrs/StackMapType;->getType()I

    move-result v2

    const/16 v3, 0x8

    if-ne v2, v3, :cond_0

    .line 365
    invoke-virtual {v1}, Lorg/checkerframework/org/objectweb/asmx/attrs/StackMapType;->getLabel()Lorg/checkerframework/org/objectweb/asmx/Label;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 367
    .end local v1    # "typeInfo":Lorg/checkerframework/org/objectweb/asmx/attrs/StackMapType;
    :cond_0
    goto :goto_0

    .line 368
    .end local v0    # "it":Ljava/util/Iterator;
    :cond_1
    return-void
.end method

.method private readTypeInfo(Lorg/checkerframework/org/objectweb/asmx/ClassReader;ILjava/util/List;[Lorg/checkerframework/org/objectweb/asmx/Label;[CZZ)I
    .locals 6
    .param p1, "cr"    # Lorg/checkerframework/org/objectweb/asmx/ClassReader;
    .param p2, "off"    # I
    .param p3, "info"    # Ljava/util/List;
    .param p4, "labels"    # [Lorg/checkerframework/org/objectweb/asmx/Label;
    .param p5, "buf"    # [C
    .param p6, "isExt"    # Z
    .param p7, "isExtCode"    # Z

    .line 248
    const/4 v0, 0x0

    .line 249
    .local v0, "n":I
    if-eqz p6, :cond_0

    .line 250
    invoke-virtual {p1, p2}, Lorg/checkerframework/org/objectweb/asmx/ClassReader;->readInt(I)I

    move-result v0

    .line 251
    add-int/lit8 p2, p2, 0x4

    goto :goto_0

    .line 253
    :cond_0
    invoke-virtual {p1, p2}, Lorg/checkerframework/org/objectweb/asmx/ClassReader;->readUnsignedShort(I)I

    move-result v0

    .line 254
    add-int/lit8 p2, p2, 0x2

    .line 256
    :goto_0
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_1
    if-ge v1, v0, :cond_2

    .line 257
    add-int/lit8 v2, p2, 0x1

    .end local p2    # "off":I
    .local v2, "off":I
    invoke-virtual {p1, p2}, Lorg/checkerframework/org/objectweb/asmx/ClassReader;->readByte(I)I

    move-result p2

    .line 258
    .local p2, "itemType":I
    invoke-static {p2}, Lorg/checkerframework/org/objectweb/asmx/attrs/StackMapType;->getTypeInfo(I)Lorg/checkerframework/org/objectweb/asmx/attrs/StackMapType;

    move-result-object v3

    .line 259
    .local v3, "typeInfo":Lorg/checkerframework/org/objectweb/asmx/attrs/StackMapType;
    invoke-interface {p3, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 260
    packed-switch p2, :pswitch_data_0

    move p2, v2

    goto :goto_3

    .line 267
    :pswitch_0
    if-eqz p7, :cond_1

    .line 268
    invoke-virtual {p1, v2}, Lorg/checkerframework/org/objectweb/asmx/ClassReader;->readInt(I)I

    move-result v4

    .line 269
    .local v4, "offset":I
    add-int/lit8 v2, v2, 0x4

    goto :goto_2

    .line 271
    .end local v4    # "offset":I
    :cond_1
    invoke-virtual {p1, v2}, Lorg/checkerframework/org/objectweb/asmx/ClassReader;->readUnsignedShort(I)I

    move-result v4

    .line 272
    .restart local v4    # "offset":I
    add-int/lit8 v2, v2, 0x2

    .line 274
    :goto_2
    invoke-direct {p0, v4, p4}, Lorg/checkerframework/org/objectweb/asmx/attrs/StackMapAttribute;->getLabel(I[Lorg/checkerframework/org/objectweb/asmx/Label;)Lorg/checkerframework/org/objectweb/asmx/Label;

    move-result-object v5

    invoke-virtual {v3, v5}, Lorg/checkerframework/org/objectweb/asmx/attrs/StackMapType;->setLabel(Lorg/checkerframework/org/objectweb/asmx/Label;)V

    move p2, v2

    goto :goto_3

    .line 262
    .end local v4    # "offset":I
    :pswitch_1
    invoke-virtual {p1, v2, p5}, Lorg/checkerframework/org/objectweb/asmx/ClassReader;->readClass(I[C)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/checkerframework/org/objectweb/asmx/attrs/StackMapType;->setObject(Ljava/lang/String;)V

    .line 263
    add-int/lit8 v2, v2, 0x2

    .line 264
    move p2, v2

    .line 256
    .end local v2    # "off":I
    .end local v3    # "typeInfo":Lorg/checkerframework/org/objectweb/asmx/attrs/StackMapType;
    .local p2, "off":I
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 278
    .end local v1    # "j":I
    :cond_2
    return p2

    nop

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private writeFrame(Lorg/checkerframework/org/objectweb/asmx/attrs/StackMapFrame;Lorg/checkerframework/org/objectweb/asmx/ClassWriter;IILorg/checkerframework/org/objectweb/asmx/ByteVector;)V
    .locals 1
    .param p1, "frame"    # Lorg/checkerframework/org/objectweb/asmx/attrs/StackMapFrame;
    .param p2, "cw"    # Lorg/checkerframework/org/objectweb/asmx/ClassWriter;
    .param p3, "maxStack"    # I
    .param p4, "maxLocals"    # I
    .param p5, "bv"    # Lorg/checkerframework/org/objectweb/asmx/ByteVector;

    .line 350
    iget-object v0, p1, Lorg/checkerframework/org/objectweb/asmx/attrs/StackMapFrame;->label:Lorg/checkerframework/org/objectweb/asmx/Label;

    invoke-virtual {v0}, Lorg/checkerframework/org/objectweb/asmx/Label;->getOffset()I

    move-result v0

    invoke-virtual {p5, v0}, Lorg/checkerframework/org/objectweb/asmx/ByteVector;->putShort(I)Lorg/checkerframework/org/objectweb/asmx/ByteVector;

    .line 351
    iget-object v0, p1, Lorg/checkerframework/org/objectweb/asmx/attrs/StackMapFrame;->locals:Ljava/util/List;

    invoke-direct {p0, p5, p2, v0, p4}, Lorg/checkerframework/org/objectweb/asmx/attrs/StackMapAttribute;->writeTypeInfo(Lorg/checkerframework/org/objectweb/asmx/ByteVector;Lorg/checkerframework/org/objectweb/asmx/ClassWriter;Ljava/util/List;I)V

    .line 352
    iget-object v0, p1, Lorg/checkerframework/org/objectweb/asmx/attrs/StackMapFrame;->stack:Ljava/util/List;

    invoke-direct {p0, p5, p2, v0, p3}, Lorg/checkerframework/org/objectweb/asmx/attrs/StackMapAttribute;->writeTypeInfo(Lorg/checkerframework/org/objectweb/asmx/ByteVector;Lorg/checkerframework/org/objectweb/asmx/ClassWriter;Ljava/util/List;I)V

    .line 353
    return-void
.end method

.method private writeTypeInfo(Lorg/checkerframework/org/objectweb/asmx/ByteVector;Lorg/checkerframework/org/objectweb/asmx/ClassWriter;Ljava/util/List;I)V
    .locals 3
    .param p1, "bv"    # Lorg/checkerframework/org/objectweb/asmx/ByteVector;
    .param p2, "cw"    # Lorg/checkerframework/org/objectweb/asmx/ClassWriter;
    .param p3, "info"    # Ljava/util/List;
    .param p4, "max"    # I

    .line 283
    const v0, 0xffff

    if-le p4, v0, :cond_0

    .line 284
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Lorg/checkerframework/org/objectweb/asmx/ByteVector;->putInt(I)Lorg/checkerframework/org/objectweb/asmx/ByteVector;

    goto :goto_0

    .line 286
    :cond_0
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Lorg/checkerframework/org/objectweb/asmx/ByteVector;->putShort(I)Lorg/checkerframework/org/objectweb/asmx/ByteVector;

    .line 288
    :goto_0
    const/4 v0, 0x0

    .local v0, "j":I
    :goto_1
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 289
    invoke-interface {p3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/checkerframework/org/objectweb/asmx/attrs/StackMapType;

    .line 290
    .local v1, "typeInfo":Lorg/checkerframework/org/objectweb/asmx/attrs/StackMapType;
    invoke-virtual {v1}, Lorg/checkerframework/org/objectweb/asmx/attrs/StackMapType;->getType()I

    move-result v2

    invoke-virtual {p1, v2}, Lorg/checkerframework/org/objectweb/asmx/ByteVector;->putByte(I)Lorg/checkerframework/org/objectweb/asmx/ByteVector;

    .line 291
    invoke-virtual {v1}, Lorg/checkerframework/org/objectweb/asmx/attrs/StackMapType;->getType()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    goto :goto_2

    .line 297
    :pswitch_0
    invoke-virtual {v1}, Lorg/checkerframework/org/objectweb/asmx/attrs/StackMapType;->getLabel()Lorg/checkerframework/org/objectweb/asmx/Label;

    move-result-object v2

    invoke-virtual {v2}, Lorg/checkerframework/org/objectweb/asmx/Label;->getOffset()I

    move-result v2

    invoke-virtual {p1, v2}, Lorg/checkerframework/org/objectweb/asmx/ByteVector;->putShort(I)Lorg/checkerframework/org/objectweb/asmx/ByteVector;

    goto :goto_2

    .line 293
    :pswitch_1
    invoke-virtual {v1}, Lorg/checkerframework/org/objectweb/asmx/attrs/StackMapType;->getObject()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Lorg/checkerframework/org/objectweb/asmx/ClassWriter;->newClass(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p1, v2}, Lorg/checkerframework/org/objectweb/asmx/ByteVector;->putShort(I)Lorg/checkerframework/org/objectweb/asmx/ByteVector;

    .line 294
    nop

    .line 288
    .end local v1    # "typeInfo":Lorg/checkerframework/org/objectweb/asmx/attrs/StackMapType;
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 302
    .end local v0    # "j":I
    :cond_1
    return-void

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public getFrame(Lorg/checkerframework/org/objectweb/asmx/Label;)Lorg/checkerframework/org/objectweb/asmx/attrs/StackMapFrame;
    .locals 3
    .param p1, "label"    # Lorg/checkerframework/org/objectweb/asmx/Label;

    .line 166
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lorg/checkerframework/org/objectweb/asmx/attrs/StackMapAttribute;->frames:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 167
    iget-object v1, p0, Lorg/checkerframework/org/objectweb/asmx/attrs/StackMapAttribute;->frames:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/checkerframework/org/objectweb/asmx/attrs/StackMapFrame;

    .line 168
    .local v1, "frame":Lorg/checkerframework/org/objectweb/asmx/attrs/StackMapFrame;
    iget-object v2, v1, Lorg/checkerframework/org/objectweb/asmx/attrs/StackMapFrame;->label:Lorg/checkerframework/org/objectweb/asmx/Label;

    if-ne v2, p1, :cond_0

    .line 169
    return-object v1

    .line 166
    .end local v1    # "frame":Lorg/checkerframework/org/objectweb/asmx/attrs/StackMapFrame;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 172
    .end local v0    # "i":I
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public getFrames()Ljava/util/List;
    .locals 1

    .line 162
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/attrs/StackMapAttribute;->frames:Ljava/util/List;

    return-object v0
.end method

.method protected getLabels()[Lorg/checkerframework/org/objectweb/asmx/Label;
    .locals 3

    .line 336
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 337
    .local v0, "labels":Ljava/util/HashSet;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lorg/checkerframework/org/objectweb/asmx/attrs/StackMapAttribute;->frames:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 338
    iget-object v2, p0, Lorg/checkerframework/org/objectweb/asmx/attrs/StackMapAttribute;->frames:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/checkerframework/org/objectweb/asmx/attrs/StackMapFrame;

    invoke-direct {p0, v2, v0}, Lorg/checkerframework/org/objectweb/asmx/attrs/StackMapAttribute;->getFrameLabels(Lorg/checkerframework/org/objectweb/asmx/attrs/StackMapFrame;Ljava/util/Set;)V

    .line 337
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 340
    .end local v1    # "i":I
    :cond_0
    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v1

    new-array v1, v1, [Lorg/checkerframework/org/objectweb/asmx/Label;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lorg/checkerframework/org/objectweb/asmx/Label;

    check-cast v1, [Lorg/checkerframework/org/objectweb/asmx/Label;

    return-object v1
.end method

.method public isCodeAttribute()Z
    .locals 1

    .line 180
    const/4 v0, 0x1

    return v0
.end method

.method public isUnknown()Z
    .locals 1

    .line 176
    const/4 v0, 0x0

    return v0
.end method

.method protected read(Lorg/checkerframework/org/objectweb/asmx/ClassReader;II[CI[Lorg/checkerframework/org/objectweb/asmx/Label;)Lorg/checkerframework/org/objectweb/asmx/Attribute;
    .locals 19
    .param p1, "cr"    # Lorg/checkerframework/org/objectweb/asmx/ClassReader;
    .param p2, "off"    # I
    .param p3, "len"    # I
    .param p4, "buf"    # [C
    .param p5, "codeOff"    # I
    .param p6, "labels"    # [Lorg/checkerframework/org/objectweb/asmx/Label;

    .line 191
    move-object/from16 v15, p1

    move/from16 v13, p5

    new-instance v0, Lorg/checkerframework/org/objectweb/asmx/attrs/StackMapAttribute;

    invoke-direct {v0}, Lorg/checkerframework/org/objectweb/asmx/attrs/StackMapAttribute;-><init>()V

    move-object v12, v0

    .line 193
    .local v12, "attr":Lorg/checkerframework/org/objectweb/asmx/attrs/StackMapAttribute;
    add-int/lit8 v0, v13, 0x4

    invoke-virtual {v15, v0}, Lorg/checkerframework/org/objectweb/asmx/ClassReader;->readInt(I)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const v3, 0xffff

    if-le v0, v3, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    move/from16 v16, v0

    .line 194
    .local v16, "isExtCodeSize":Z
    add-int/lit8 v0, v13, 0x2

    invoke-virtual {v15, v0}, Lorg/checkerframework/org/objectweb/asmx/ClassReader;->readUnsignedShort(I)I

    move-result v0

    if-le v0, v3, :cond_1

    move v6, v2

    goto :goto_1

    :cond_1
    move v6, v1

    .line 195
    .local v6, "isExtLocals":Z
    :goto_1
    invoke-virtual {v15, v13}, Lorg/checkerframework/org/objectweb/asmx/ClassReader;->readUnsignedShort(I)I

    move-result v0

    if-le v0, v3, :cond_2

    move v14, v2

    goto :goto_2

    :cond_2
    move v14, v1

    .line 197
    .local v14, "isExtStack":Z
    :goto_2
    const/4 v0, 0x0

    .line 198
    .local v0, "size":I
    if-eqz v16, :cond_3

    .line 199
    invoke-virtual/range {p1 .. p2}, Lorg/checkerframework/org/objectweb/asmx/ClassReader;->readInt(I)I

    move-result v0

    .line 200
    add-int/lit8 v1, p2, 0x4

    move v11, v0

    .end local p2    # "off":I
    .local v1, "off":I
    goto :goto_3

    .line 202
    .end local v1    # "off":I
    .restart local p2    # "off":I
    :cond_3
    invoke-virtual/range {p1 .. p2}, Lorg/checkerframework/org/objectweb/asmx/ClassReader;->readUnsignedShort(I)I

    move-result v0

    .line 203
    add-int/lit8 v1, p2, 0x2

    move v11, v0

    .line 205
    .end local v0    # "size":I
    .end local p2    # "off":I
    .restart local v1    # "off":I
    .local v11, "size":I
    :goto_3
    const/4 v0, 0x0

    move v10, v0

    .local v10, "i":I
    :goto_4
    if-ge v10, v11, :cond_5

    .line 207
    if-eqz v16, :cond_4

    .line 208
    invoke-virtual {v15, v1}, Lorg/checkerframework/org/objectweb/asmx/ClassReader;->readInt(I)I

    move-result v0

    .line 209
    .local v0, "offset":I
    add-int/lit8 v1, v1, 0x4

    move v9, v0

    move v8, v1

    goto :goto_5

    .line 211
    .end local v0    # "offset":I
    :cond_4
    invoke-virtual {v15, v1}, Lorg/checkerframework/org/objectweb/asmx/ClassReader;->readUnsignedShort(I)I

    move-result v0

    .line 212
    .restart local v0    # "offset":I
    add-int/lit8 v1, v1, 0x2

    move v9, v0

    move v8, v1

    .line 215
    .end local v0    # "offset":I
    .end local v1    # "off":I
    .local v8, "off":I
    .local v9, "offset":I
    :goto_5
    move-object/from16 v7, p0

    move-object/from16 v5, p6

    invoke-direct {v7, v9, v5}, Lorg/checkerframework/org/objectweb/asmx/attrs/StackMapAttribute;->getLabel(I[Lorg/checkerframework/org/objectweb/asmx/Label;)Lorg/checkerframework/org/objectweb/asmx/Label;

    move-result-object v4

    .line 216
    .local v4, "label":Lorg/checkerframework/org/objectweb/asmx/Label;
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v3, v0

    .line 217
    .local v3, "locals":Ljava/util/List;
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v2, v0

    .line 219
    .local v2, "stack":Ljava/util/List;
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 p2, v2

    .end local v2    # "stack":Ljava/util/List;
    .local p2, "stack":Ljava/util/List;
    move v2, v8

    move-object/from16 v17, v3

    .end local v3    # "locals":Ljava/util/List;
    .local v17, "locals":Ljava/util/List;
    move-object/from16 v18, v4

    .end local v4    # "label":Lorg/checkerframework/org/objectweb/asmx/Label;
    .local v18, "label":Lorg/checkerframework/org/objectweb/asmx/Label;
    move-object/from16 v4, p6

    move-object/from16 v5, p4

    move/from16 v7, v16

    invoke-direct/range {v0 .. v7}, Lorg/checkerframework/org/objectweb/asmx/attrs/StackMapAttribute;->readTypeInfo(Lorg/checkerframework/org/objectweb/asmx/ClassReader;ILjava/util/List;[Lorg/checkerframework/org/objectweb/asmx/Label;[CZZ)I

    move-result v0

    .line 226
    .end local v8    # "off":I
    .local v0, "off":I
    move-object/from16 v8, p0

    move v1, v9

    .end local v9    # "offset":I
    .local v1, "offset":I
    move-object/from16 v9, p1

    move v2, v10

    .end local v10    # "i":I
    .local v2, "i":I
    move v10, v0

    move v3, v11

    .end local v11    # "size":I
    .local v3, "size":I
    move-object/from16 v11, p2

    move-object v4, v12

    .end local v12    # "attr":Lorg/checkerframework/org/objectweb/asmx/attrs/StackMapAttribute;
    .local v4, "attr":Lorg/checkerframework/org/objectweb/asmx/attrs/StackMapAttribute;
    move-object/from16 v12, p6

    move-object/from16 v13, p4

    move/from16 v15, v16

    invoke-direct/range {v8 .. v15}, Lorg/checkerframework/org/objectweb/asmx/attrs/StackMapAttribute;->readTypeInfo(Lorg/checkerframework/org/objectweb/asmx/ClassReader;ILjava/util/List;[Lorg/checkerframework/org/objectweb/asmx/Label;[CZZ)I

    move-result v0

    .line 234
    iget-object v5, v4, Lorg/checkerframework/org/objectweb/asmx/attrs/StackMapAttribute;->frames:Ljava/util/List;

    new-instance v7, Lorg/checkerframework/org/objectweb/asmx/attrs/StackMapFrame;

    move-object/from16 v10, p2

    move-object/from16 v9, v17

    move-object/from16 v8, v18

    .end local v17    # "locals":Ljava/util/List;
    .end local v18    # "label":Lorg/checkerframework/org/objectweb/asmx/Label;
    .end local p2    # "stack":Ljava/util/List;
    .local v8, "label":Lorg/checkerframework/org/objectweb/asmx/Label;
    .local v9, "locals":Ljava/util/List;
    .local v10, "stack":Ljava/util/List;
    invoke-direct {v7, v8, v9, v10}, Lorg/checkerframework/org/objectweb/asmx/attrs/StackMapFrame;-><init>(Lorg/checkerframework/org/objectweb/asmx/Label;Ljava/util/List;Ljava/util/List;)V

    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 205
    .end local v1    # "offset":I
    .end local v8    # "label":Lorg/checkerframework/org/objectweb/asmx/Label;
    .end local v9    # "locals":Ljava/util/List;
    .end local v10    # "stack":Ljava/util/List;
    add-int/lit8 v10, v2, 0x1

    move-object/from16 v15, p1

    move/from16 v13, p5

    move v1, v0

    move v11, v3

    move-object v12, v4

    .end local v2    # "i":I
    .local v10, "i":I
    goto :goto_4

    .end local v0    # "off":I
    .end local v3    # "size":I
    .end local v4    # "attr":Lorg/checkerframework/org/objectweb/asmx/attrs/StackMapAttribute;
    .local v1, "off":I
    .restart local v11    # "size":I
    .restart local v12    # "attr":Lorg/checkerframework/org/objectweb/asmx/attrs/StackMapAttribute;
    :cond_5
    move-object v4, v12

    .line 236
    .end local v10    # "i":I
    .end local v12    # "attr":Lorg/checkerframework/org/objectweb/asmx/attrs/StackMapAttribute;
    .restart local v4    # "attr":Lorg/checkerframework/org/objectweb/asmx/attrs/StackMapAttribute;
    return-object v4
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 371
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "StackMap["

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 372
    .local v0, "sb":Ljava/lang/StringBuffer;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lorg/checkerframework/org/objectweb/asmx/attrs/StackMapAttribute;->frames:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 373
    const/16 v2, 0xa

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v2

    const/16 v3, 0x5b

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v2

    iget-object v3, p0, Lorg/checkerframework/org/objectweb/asmx/attrs/StackMapAttribute;->frames:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v2

    const/16 v3, 0x5d

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 372
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 375
    .end local v1    # "i":I
    :cond_0
    const-string v1, "\n]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 376
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method protected write(Lorg/checkerframework/org/objectweb/asmx/ClassWriter;[BIII)Lorg/checkerframework/org/objectweb/asmx/ByteVector;
    .locals 8
    .param p1, "cw"    # Lorg/checkerframework/org/objectweb/asmx/ClassWriter;
    .param p2, "code"    # [B
    .param p3, "len"    # I
    .param p4, "maxStack"    # I
    .param p5, "maxLocals"    # I

    .line 319
    new-instance v0, Lorg/checkerframework/org/objectweb/asmx/ByteVector;

    invoke-direct {v0}, Lorg/checkerframework/org/objectweb/asmx/ByteVector;-><init>()V

    .line 320
    .local v0, "bv":Lorg/checkerframework/org/objectweb/asmx/ByteVector;
    if-eqz p2, :cond_0

    array-length v1, p2

    const v2, 0xffff

    if-le v1, v2, :cond_0

    .line 321
    iget-object v1, p0, Lorg/checkerframework/org/objectweb/asmx/attrs/StackMapAttribute;->frames:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/checkerframework/org/objectweb/asmx/ByteVector;->putInt(I)Lorg/checkerframework/org/objectweb/asmx/ByteVector;

    goto :goto_0

    .line 323
    :cond_0
    iget-object v1, p0, Lorg/checkerframework/org/objectweb/asmx/attrs/StackMapAttribute;->frames:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/checkerframework/org/objectweb/asmx/ByteVector;->putShort(I)Lorg/checkerframework/org/objectweb/asmx/ByteVector;

    .line 325
    :goto_0
    const/4 v1, 0x0

    move v7, v1

    .local v7, "i":I
    :goto_1
    iget-object v1, p0, Lorg/checkerframework/org/objectweb/asmx/attrs/StackMapAttribute;->frames:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v7, v1, :cond_1

    .line 326
    iget-object v1, p0, Lorg/checkerframework/org/objectweb/asmx/attrs/StackMapAttribute;->frames:Ljava/util/List;

    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lorg/checkerframework/org/objectweb/asmx/attrs/StackMapFrame;

    move-object v1, p0

    move-object v3, p1

    move v4, p4

    move v5, p5

    move-object v6, v0

    invoke-direct/range {v1 .. v6}, Lorg/checkerframework/org/objectweb/asmx/attrs/StackMapAttribute;->writeFrame(Lorg/checkerframework/org/objectweb/asmx/attrs/StackMapFrame;Lorg/checkerframework/org/objectweb/asmx/ClassWriter;IILorg/checkerframework/org/objectweb/asmx/ByteVector;)V

    .line 325
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 332
    .end local v7    # "i":I
    :cond_1
    return-object v0
.end method
