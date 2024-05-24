.class final Lorg/checkerframework/org/objectweb/asmx/FieldWriter;
.super Ljava/lang/Object;
.source "FieldWriter.java"

# interfaces
.implements Lorg/checkerframework/org/objectweb/asmx/FieldVisitor;


# instance fields
.field private access:I

.field private anns:Lorg/checkerframework/org/objectweb/asmx/AnnotationWriter;

.field private attrs:Lorg/checkerframework/org/objectweb/asmx/Attribute;

.field private cw:Lorg/checkerframework/org/objectweb/asmx/ClassWriter;

.field private desc:I

.field private ianns:Lorg/checkerframework/org/objectweb/asmx/AnnotationWriter;

.field private ixanns:Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationWriter;

.field private name:I

.field next:Lorg/checkerframework/org/objectweb/asmx/FieldWriter;

.field private signature:I

.field private value:I

.field private xanns:Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationWriter;


# direct methods
.method protected constructor <init>(Lorg/checkerframework/org/objectweb/asmx/ClassWriter;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .param p1, "cw"    # Lorg/checkerframework/org/objectweb/asmx/ClassWriter;
    .param p2, "access"    # I
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "desc"    # Ljava/lang/String;
    .param p5, "signature"    # Ljava/lang/String;
    .param p6, "value"    # Ljava/lang/Object;

    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 120
    iget-object v0, p1, Lorg/checkerframework/org/objectweb/asmx/ClassWriter;->firstField:Lorg/checkerframework/org/objectweb/asmx/FieldWriter;

    if-nez v0, :cond_0

    .line 121
    iput-object p0, p1, Lorg/checkerframework/org/objectweb/asmx/ClassWriter;->firstField:Lorg/checkerframework/org/objectweb/asmx/FieldWriter;

    goto :goto_0

    .line 123
    :cond_0
    iget-object v0, p1, Lorg/checkerframework/org/objectweb/asmx/ClassWriter;->lastField:Lorg/checkerframework/org/objectweb/asmx/FieldWriter;

    iput-object p0, v0, Lorg/checkerframework/org/objectweb/asmx/FieldWriter;->next:Lorg/checkerframework/org/objectweb/asmx/FieldWriter;

    .line 125
    :goto_0
    iput-object p0, p1, Lorg/checkerframework/org/objectweb/asmx/ClassWriter;->lastField:Lorg/checkerframework/org/objectweb/asmx/FieldWriter;

    .line 126
    iput-object p1, p0, Lorg/checkerframework/org/objectweb/asmx/FieldWriter;->cw:Lorg/checkerframework/org/objectweb/asmx/ClassWriter;

    .line 127
    iput p2, p0, Lorg/checkerframework/org/objectweb/asmx/FieldWriter;->access:I

    .line 128
    invoke-virtual {p1, p3}, Lorg/checkerframework/org/objectweb/asmx/ClassWriter;->newUTF8(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lorg/checkerframework/org/objectweb/asmx/FieldWriter;->name:I

    .line 129
    invoke-virtual {p1, p4}, Lorg/checkerframework/org/objectweb/asmx/ClassWriter;->newUTF8(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lorg/checkerframework/org/objectweb/asmx/FieldWriter;->desc:I

    .line 130
    if-eqz p5, :cond_1

    .line 131
    invoke-virtual {p1, p5}, Lorg/checkerframework/org/objectweb/asmx/ClassWriter;->newUTF8(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lorg/checkerframework/org/objectweb/asmx/FieldWriter;->signature:I

    .line 133
    :cond_1
    if-eqz p6, :cond_2

    .line 134
    invoke-virtual {p1, p6}, Lorg/checkerframework/org/objectweb/asmx/ClassWriter;->newConstItem(Ljava/lang/Object;)Lorg/checkerframework/org/objectweb/asmx/Item;

    move-result-object v0

    iget v0, v0, Lorg/checkerframework/org/objectweb/asmx/Item;->index:I

    iput v0, p0, Lorg/checkerframework/org/objectweb/asmx/FieldWriter;->value:I

    .line 136
    :cond_2
    return-void
.end method


# virtual methods
.method getSize()I
    .locals 7

    .line 198
    const/16 v0, 0x8

    .line 199
    .local v0, "size":I
    iget v1, p0, Lorg/checkerframework/org/objectweb/asmx/FieldWriter;->value:I

    if-eqz v1, :cond_0

    .line 200
    iget-object v1, p0, Lorg/checkerframework/org/objectweb/asmx/FieldWriter;->cw:Lorg/checkerframework/org/objectweb/asmx/ClassWriter;

    const-string v2, "ConstantValue"

    invoke-virtual {v1, v2}, Lorg/checkerframework/org/objectweb/asmx/ClassWriter;->newUTF8(Ljava/lang/String;)I

    .line 201
    add-int/lit8 v0, v0, 0x8

    .line 203
    :cond_0
    iget v1, p0, Lorg/checkerframework/org/objectweb/asmx/FieldWriter;->access:I

    and-int/lit16 v1, v1, 0x1000

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/checkerframework/org/objectweb/asmx/FieldWriter;->cw:Lorg/checkerframework/org/objectweb/asmx/ClassWriter;

    iget v1, v1, Lorg/checkerframework/org/objectweb/asmx/ClassWriter;->version:I

    const v2, 0xffff

    and-int/2addr v1, v2

    const/16 v2, 0x31

    if-ge v1, v2, :cond_1

    .line 206
    iget-object v1, p0, Lorg/checkerframework/org/objectweb/asmx/FieldWriter;->cw:Lorg/checkerframework/org/objectweb/asmx/ClassWriter;

    const-string v2, "Synthetic"

    invoke-virtual {v1, v2}, Lorg/checkerframework/org/objectweb/asmx/ClassWriter;->newUTF8(Ljava/lang/String;)I

    .line 207
    add-int/lit8 v0, v0, 0x6

    .line 209
    :cond_1
    iget v1, p0, Lorg/checkerframework/org/objectweb/asmx/FieldWriter;->access:I

    const/high16 v2, 0x20000

    and-int/2addr v1, v2

    if-eqz v1, :cond_2

    .line 210
    iget-object v1, p0, Lorg/checkerframework/org/objectweb/asmx/FieldWriter;->cw:Lorg/checkerframework/org/objectweb/asmx/ClassWriter;

    const-string v2, "Deprecated"

    invoke-virtual {v1, v2}, Lorg/checkerframework/org/objectweb/asmx/ClassWriter;->newUTF8(Ljava/lang/String;)I

    .line 211
    add-int/lit8 v0, v0, 0x6

    .line 213
    :cond_2
    iget-object v1, p0, Lorg/checkerframework/org/objectweb/asmx/FieldWriter;->cw:Lorg/checkerframework/org/objectweb/asmx/ClassWriter;

    iget v1, v1, Lorg/checkerframework/org/objectweb/asmx/ClassWriter;->version:I

    const/16 v2, 0x30

    if-ne v1, v2, :cond_3

    iget v1, p0, Lorg/checkerframework/org/objectweb/asmx/FieldWriter;->access:I

    and-int/lit16 v1, v1, 0x4000

    if-eqz v1, :cond_3

    .line 214
    iget-object v1, p0, Lorg/checkerframework/org/objectweb/asmx/FieldWriter;->cw:Lorg/checkerframework/org/objectweb/asmx/ClassWriter;

    const-string v2, "Enum"

    invoke-virtual {v1, v2}, Lorg/checkerframework/org/objectweb/asmx/ClassWriter;->newUTF8(Ljava/lang/String;)I

    .line 215
    add-int/lit8 v0, v0, 0x6

    .line 217
    :cond_3
    iget v1, p0, Lorg/checkerframework/org/objectweb/asmx/FieldWriter;->signature:I

    if-eqz v1, :cond_4

    .line 218
    iget-object v1, p0, Lorg/checkerframework/org/objectweb/asmx/FieldWriter;->cw:Lorg/checkerframework/org/objectweb/asmx/ClassWriter;

    const-string v2, "Signature"

    invoke-virtual {v1, v2}, Lorg/checkerframework/org/objectweb/asmx/ClassWriter;->newUTF8(Ljava/lang/String;)I

    .line 219
    add-int/lit8 v0, v0, 0x8

    .line 221
    :cond_4
    iget-object v1, p0, Lorg/checkerframework/org/objectweb/asmx/FieldWriter;->anns:Lorg/checkerframework/org/objectweb/asmx/AnnotationWriter;

    if-eqz v1, :cond_5

    .line 222
    iget-object v1, p0, Lorg/checkerframework/org/objectweb/asmx/FieldWriter;->cw:Lorg/checkerframework/org/objectweb/asmx/ClassWriter;

    const-string v2, "RuntimeVisibleAnnotations"

    invoke-virtual {v1, v2}, Lorg/checkerframework/org/objectweb/asmx/ClassWriter;->newUTF8(Ljava/lang/String;)I

    .line 223
    iget-object v1, p0, Lorg/checkerframework/org/objectweb/asmx/FieldWriter;->anns:Lorg/checkerframework/org/objectweb/asmx/AnnotationWriter;

    invoke-virtual {v1}, Lorg/checkerframework/org/objectweb/asmx/AnnotationWriter;->getSize()I

    move-result v1

    add-int/lit8 v1, v1, 0x8

    add-int/2addr v0, v1

    .line 225
    :cond_5
    iget-object v1, p0, Lorg/checkerframework/org/objectweb/asmx/FieldWriter;->ianns:Lorg/checkerframework/org/objectweb/asmx/AnnotationWriter;

    if-eqz v1, :cond_6

    .line 226
    iget-object v1, p0, Lorg/checkerframework/org/objectweb/asmx/FieldWriter;->cw:Lorg/checkerframework/org/objectweb/asmx/ClassWriter;

    const-string v2, "RuntimeInvisibleAnnotations"

    invoke-virtual {v1, v2}, Lorg/checkerframework/org/objectweb/asmx/ClassWriter;->newUTF8(Ljava/lang/String;)I

    .line 227
    iget-object v1, p0, Lorg/checkerframework/org/objectweb/asmx/FieldWriter;->ianns:Lorg/checkerframework/org/objectweb/asmx/AnnotationWriter;

    invoke-virtual {v1}, Lorg/checkerframework/org/objectweb/asmx/AnnotationWriter;->getSize()I

    move-result v1

    add-int/lit8 v1, v1, 0x8

    add-int/2addr v0, v1

    .line 230
    :cond_6
    iget-object v1, p0, Lorg/checkerframework/org/objectweb/asmx/FieldWriter;->xanns:Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationWriter;

    if-eqz v1, :cond_7

    .line 231
    iget-object v1, p0, Lorg/checkerframework/org/objectweb/asmx/FieldWriter;->cw:Lorg/checkerframework/org/objectweb/asmx/ClassWriter;

    const-string v2, "RuntimeVisibleTypeAnnotations"

    invoke-virtual {v1, v2}, Lorg/checkerframework/org/objectweb/asmx/ClassWriter;->newUTF8(Ljava/lang/String;)I

    .line 232
    iget-object v1, p0, Lorg/checkerframework/org/objectweb/asmx/FieldWriter;->xanns:Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationWriter;

    invoke-virtual {v1}, Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationWriter;->getSize()I

    move-result v1

    add-int/lit8 v1, v1, 0x8

    add-int/2addr v0, v1

    .line 234
    :cond_7
    iget-object v1, p0, Lorg/checkerframework/org/objectweb/asmx/FieldWriter;->ixanns:Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationWriter;

    if-eqz v1, :cond_8

    .line 235
    iget-object v1, p0, Lorg/checkerframework/org/objectweb/asmx/FieldWriter;->cw:Lorg/checkerframework/org/objectweb/asmx/ClassWriter;

    const-string v2, "RuntimeInvisibleTypeAnnotations"

    invoke-virtual {v1, v2}, Lorg/checkerframework/org/objectweb/asmx/ClassWriter;->newUTF8(Ljava/lang/String;)I

    .line 236
    iget-object v1, p0, Lorg/checkerframework/org/objectweb/asmx/FieldWriter;->ixanns:Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationWriter;

    invoke-virtual {v1}, Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationWriter;->getSize()I

    move-result v1

    add-int/lit8 v1, v1, 0x8

    add-int/2addr v0, v1

    .line 239
    :cond_8
    iget-object v1, p0, Lorg/checkerframework/org/objectweb/asmx/FieldWriter;->attrs:Lorg/checkerframework/org/objectweb/asmx/Attribute;

    if-eqz v1, :cond_9

    .line 240
    iget-object v2, p0, Lorg/checkerframework/org/objectweb/asmx/FieldWriter;->cw:Lorg/checkerframework/org/objectweb/asmx/ClassWriter;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, -0x1

    const/4 v6, -0x1

    invoke-virtual/range {v1 .. v6}, Lorg/checkerframework/org/objectweb/asmx/Attribute;->getSize(Lorg/checkerframework/org/objectweb/asmx/ClassWriter;[BIII)I

    move-result v1

    add-int/2addr v0, v1

    .line 242
    :cond_9
    return v0
.end method

.method put(Lorg/checkerframework/org/objectweb/asmx/ByteVector;)V
    .locals 9
    .param p1, "out"    # Lorg/checkerframework/org/objectweb/asmx/ByteVector;

    .line 251
    iget v0, p0, Lorg/checkerframework/org/objectweb/asmx/FieldWriter;->access:I

    invoke-virtual {p1, v0}, Lorg/checkerframework/org/objectweb/asmx/ByteVector;->putShort(I)Lorg/checkerframework/org/objectweb/asmx/ByteVector;

    move-result-object v0

    iget v1, p0, Lorg/checkerframework/org/objectweb/asmx/FieldWriter;->name:I

    invoke-virtual {v0, v1}, Lorg/checkerframework/org/objectweb/asmx/ByteVector;->putShort(I)Lorg/checkerframework/org/objectweb/asmx/ByteVector;

    move-result-object v0

    iget v1, p0, Lorg/checkerframework/org/objectweb/asmx/FieldWriter;->desc:I

    invoke-virtual {v0, v1}, Lorg/checkerframework/org/objectweb/asmx/ByteVector;->putShort(I)Lorg/checkerframework/org/objectweb/asmx/ByteVector;

    .line 252
    const/4 v0, 0x0

    .line 253
    .local v0, "attributeCount":I
    iget v1, p0, Lorg/checkerframework/org/objectweb/asmx/FieldWriter;->value:I

    if-eqz v1, :cond_0

    .line 254
    add-int/lit8 v0, v0, 0x1

    .line 256
    :cond_0
    iget v1, p0, Lorg/checkerframework/org/objectweb/asmx/FieldWriter;->access:I

    and-int/lit16 v1, v1, 0x1000

    const/16 v2, 0x31

    const v3, 0xffff

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/checkerframework/org/objectweb/asmx/FieldWriter;->cw:Lorg/checkerframework/org/objectweb/asmx/ClassWriter;

    iget v1, v1, Lorg/checkerframework/org/objectweb/asmx/ClassWriter;->version:I

    and-int/2addr v1, v3

    if-ge v1, v2, :cond_1

    .line 259
    add-int/lit8 v0, v0, 0x1

    .line 261
    :cond_1
    iget v1, p0, Lorg/checkerframework/org/objectweb/asmx/FieldWriter;->access:I

    const/high16 v4, 0x20000

    and-int/2addr v1, v4

    if-eqz v1, :cond_2

    .line 262
    add-int/lit8 v0, v0, 0x1

    .line 264
    :cond_2
    iget-object v1, p0, Lorg/checkerframework/org/objectweb/asmx/FieldWriter;->cw:Lorg/checkerframework/org/objectweb/asmx/ClassWriter;

    iget v1, v1, Lorg/checkerframework/org/objectweb/asmx/ClassWriter;->version:I

    const/16 v5, 0x30

    if-ne v1, v5, :cond_3

    iget v1, p0, Lorg/checkerframework/org/objectweb/asmx/FieldWriter;->access:I

    and-int/lit16 v1, v1, 0x4000

    if-eqz v1, :cond_3

    .line 265
    add-int/lit8 v0, v0, 0x1

    .line 267
    :cond_3
    iget v1, p0, Lorg/checkerframework/org/objectweb/asmx/FieldWriter;->signature:I

    if-eqz v1, :cond_4

    .line 268
    add-int/lit8 v0, v0, 0x1

    .line 270
    :cond_4
    iget-object v1, p0, Lorg/checkerframework/org/objectweb/asmx/FieldWriter;->anns:Lorg/checkerframework/org/objectweb/asmx/AnnotationWriter;

    if-eqz v1, :cond_5

    .line 271
    add-int/lit8 v0, v0, 0x1

    .line 273
    :cond_5
    iget-object v1, p0, Lorg/checkerframework/org/objectweb/asmx/FieldWriter;->ianns:Lorg/checkerframework/org/objectweb/asmx/AnnotationWriter;

    if-eqz v1, :cond_6

    .line 274
    add-int/lit8 v0, v0, 0x1

    .line 277
    :cond_6
    iget-object v1, p0, Lorg/checkerframework/org/objectweb/asmx/FieldWriter;->xanns:Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationWriter;

    if-eqz v1, :cond_7

    .line 278
    add-int/lit8 v0, v0, 0x1

    .line 280
    :cond_7
    iget-object v1, p0, Lorg/checkerframework/org/objectweb/asmx/FieldWriter;->ixanns:Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationWriter;

    if-eqz v1, :cond_8

    .line 281
    add-int/lit8 v0, v0, 0x1

    .line 285
    :cond_8
    iget-object v1, p0, Lorg/checkerframework/org/objectweb/asmx/FieldWriter;->attrs:Lorg/checkerframework/org/objectweb/asmx/Attribute;

    if-eqz v1, :cond_9

    .line 286
    invoke-virtual {v1}, Lorg/checkerframework/org/objectweb/asmx/Attribute;->getCount()I

    move-result v1

    add-int/2addr v0, v1

    .line 288
    :cond_9
    invoke-virtual {p1, v0}, Lorg/checkerframework/org/objectweb/asmx/ByteVector;->putShort(I)Lorg/checkerframework/org/objectweb/asmx/ByteVector;

    .line 289
    iget v1, p0, Lorg/checkerframework/org/objectweb/asmx/FieldWriter;->value:I

    const/4 v6, 0x2

    if-eqz v1, :cond_a

    .line 290
    iget-object v1, p0, Lorg/checkerframework/org/objectweb/asmx/FieldWriter;->cw:Lorg/checkerframework/org/objectweb/asmx/ClassWriter;

    const-string v7, "ConstantValue"

    invoke-virtual {v1, v7}, Lorg/checkerframework/org/objectweb/asmx/ClassWriter;->newUTF8(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v1}, Lorg/checkerframework/org/objectweb/asmx/ByteVector;->putShort(I)Lorg/checkerframework/org/objectweb/asmx/ByteVector;

    .line 291
    invoke-virtual {p1, v6}, Lorg/checkerframework/org/objectweb/asmx/ByteVector;->putInt(I)Lorg/checkerframework/org/objectweb/asmx/ByteVector;

    move-result-object v1

    iget v7, p0, Lorg/checkerframework/org/objectweb/asmx/FieldWriter;->value:I

    invoke-virtual {v1, v7}, Lorg/checkerframework/org/objectweb/asmx/ByteVector;->putShort(I)Lorg/checkerframework/org/objectweb/asmx/ByteVector;

    .line 293
    :cond_a
    iget v1, p0, Lorg/checkerframework/org/objectweb/asmx/FieldWriter;->access:I

    and-int/lit16 v1, v1, 0x1000

    const/4 v7, 0x0

    if-eqz v1, :cond_b

    iget-object v1, p0, Lorg/checkerframework/org/objectweb/asmx/FieldWriter;->cw:Lorg/checkerframework/org/objectweb/asmx/ClassWriter;

    iget v1, v1, Lorg/checkerframework/org/objectweb/asmx/ClassWriter;->version:I

    and-int/2addr v1, v3

    if-ge v1, v2, :cond_b

    .line 296
    iget-object v1, p0, Lorg/checkerframework/org/objectweb/asmx/FieldWriter;->cw:Lorg/checkerframework/org/objectweb/asmx/ClassWriter;

    const-string v2, "Synthetic"

    invoke-virtual {v1, v2}, Lorg/checkerframework/org/objectweb/asmx/ClassWriter;->newUTF8(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v1}, Lorg/checkerframework/org/objectweb/asmx/ByteVector;->putShort(I)Lorg/checkerframework/org/objectweb/asmx/ByteVector;

    move-result-object v1

    invoke-virtual {v1, v7}, Lorg/checkerframework/org/objectweb/asmx/ByteVector;->putInt(I)Lorg/checkerframework/org/objectweb/asmx/ByteVector;

    .line 298
    :cond_b
    iget v1, p0, Lorg/checkerframework/org/objectweb/asmx/FieldWriter;->access:I

    and-int/2addr v1, v4

    if-eqz v1, :cond_c

    .line 299
    iget-object v1, p0, Lorg/checkerframework/org/objectweb/asmx/FieldWriter;->cw:Lorg/checkerframework/org/objectweb/asmx/ClassWriter;

    const-string v2, "Deprecated"

    invoke-virtual {v1, v2}, Lorg/checkerframework/org/objectweb/asmx/ClassWriter;->newUTF8(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v1}, Lorg/checkerframework/org/objectweb/asmx/ByteVector;->putShort(I)Lorg/checkerframework/org/objectweb/asmx/ByteVector;

    move-result-object v1

    invoke-virtual {v1, v7}, Lorg/checkerframework/org/objectweb/asmx/ByteVector;->putInt(I)Lorg/checkerframework/org/objectweb/asmx/ByteVector;

    .line 301
    :cond_c
    iget-object v1, p0, Lorg/checkerframework/org/objectweb/asmx/FieldWriter;->cw:Lorg/checkerframework/org/objectweb/asmx/ClassWriter;

    iget v1, v1, Lorg/checkerframework/org/objectweb/asmx/ClassWriter;->version:I

    if-ne v1, v5, :cond_d

    iget v1, p0, Lorg/checkerframework/org/objectweb/asmx/FieldWriter;->access:I

    and-int/lit16 v1, v1, 0x4000

    if-eqz v1, :cond_d

    .line 302
    iget-object v1, p0, Lorg/checkerframework/org/objectweb/asmx/FieldWriter;->cw:Lorg/checkerframework/org/objectweb/asmx/ClassWriter;

    const-string v2, "Enum"

    invoke-virtual {v1, v2}, Lorg/checkerframework/org/objectweb/asmx/ClassWriter;->newUTF8(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v1}, Lorg/checkerframework/org/objectweb/asmx/ByteVector;->putShort(I)Lorg/checkerframework/org/objectweb/asmx/ByteVector;

    move-result-object v1

    invoke-virtual {v1, v7}, Lorg/checkerframework/org/objectweb/asmx/ByteVector;->putInt(I)Lorg/checkerframework/org/objectweb/asmx/ByteVector;

    .line 304
    :cond_d
    iget v1, p0, Lorg/checkerframework/org/objectweb/asmx/FieldWriter;->signature:I

    if-eqz v1, :cond_e

    .line 305
    iget-object v1, p0, Lorg/checkerframework/org/objectweb/asmx/FieldWriter;->cw:Lorg/checkerframework/org/objectweb/asmx/ClassWriter;

    const-string v2, "Signature"

    invoke-virtual {v1, v2}, Lorg/checkerframework/org/objectweb/asmx/ClassWriter;->newUTF8(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v1}, Lorg/checkerframework/org/objectweb/asmx/ByteVector;->putShort(I)Lorg/checkerframework/org/objectweb/asmx/ByteVector;

    .line 306
    invoke-virtual {p1, v6}, Lorg/checkerframework/org/objectweb/asmx/ByteVector;->putInt(I)Lorg/checkerframework/org/objectweb/asmx/ByteVector;

    move-result-object v1

    iget v2, p0, Lorg/checkerframework/org/objectweb/asmx/FieldWriter;->signature:I

    invoke-virtual {v1, v2}, Lorg/checkerframework/org/objectweb/asmx/ByteVector;->putShort(I)Lorg/checkerframework/org/objectweb/asmx/ByteVector;

    .line 308
    :cond_e
    iget-object v1, p0, Lorg/checkerframework/org/objectweb/asmx/FieldWriter;->anns:Lorg/checkerframework/org/objectweb/asmx/AnnotationWriter;

    if-eqz v1, :cond_f

    .line 309
    iget-object v1, p0, Lorg/checkerframework/org/objectweb/asmx/FieldWriter;->cw:Lorg/checkerframework/org/objectweb/asmx/ClassWriter;

    const-string v2, "RuntimeVisibleAnnotations"

    invoke-virtual {v1, v2}, Lorg/checkerframework/org/objectweb/asmx/ClassWriter;->newUTF8(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v1}, Lorg/checkerframework/org/objectweb/asmx/ByteVector;->putShort(I)Lorg/checkerframework/org/objectweb/asmx/ByteVector;

    .line 310
    iget-object v1, p0, Lorg/checkerframework/org/objectweb/asmx/FieldWriter;->anns:Lorg/checkerframework/org/objectweb/asmx/AnnotationWriter;

    invoke-virtual {v1, p1}, Lorg/checkerframework/org/objectweb/asmx/AnnotationWriter;->put(Lorg/checkerframework/org/objectweb/asmx/ByteVector;)V

    .line 312
    :cond_f
    iget-object v1, p0, Lorg/checkerframework/org/objectweb/asmx/FieldWriter;->ianns:Lorg/checkerframework/org/objectweb/asmx/AnnotationWriter;

    if-eqz v1, :cond_10

    .line 313
    iget-object v1, p0, Lorg/checkerframework/org/objectweb/asmx/FieldWriter;->cw:Lorg/checkerframework/org/objectweb/asmx/ClassWriter;

    const-string v2, "RuntimeInvisibleAnnotations"

    invoke-virtual {v1, v2}, Lorg/checkerframework/org/objectweb/asmx/ClassWriter;->newUTF8(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v1}, Lorg/checkerframework/org/objectweb/asmx/ByteVector;->putShort(I)Lorg/checkerframework/org/objectweb/asmx/ByteVector;

    .line 314
    iget-object v1, p0, Lorg/checkerframework/org/objectweb/asmx/FieldWriter;->ianns:Lorg/checkerframework/org/objectweb/asmx/AnnotationWriter;

    invoke-virtual {v1, p1}, Lorg/checkerframework/org/objectweb/asmx/AnnotationWriter;->put(Lorg/checkerframework/org/objectweb/asmx/ByteVector;)V

    .line 318
    :cond_10
    iget-object v1, p0, Lorg/checkerframework/org/objectweb/asmx/FieldWriter;->xanns:Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationWriter;

    if-eqz v1, :cond_11

    .line 319
    iget-object v1, p0, Lorg/checkerframework/org/objectweb/asmx/FieldWriter;->cw:Lorg/checkerframework/org/objectweb/asmx/ClassWriter;

    const-string v2, "RuntimeVisibleTypeAnnotations"

    invoke-virtual {v1, v2}, Lorg/checkerframework/org/objectweb/asmx/ClassWriter;->newUTF8(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v1}, Lorg/checkerframework/org/objectweb/asmx/ByteVector;->putShort(I)Lorg/checkerframework/org/objectweb/asmx/ByteVector;

    .line 320
    iget-object v1, p0, Lorg/checkerframework/org/objectweb/asmx/FieldWriter;->xanns:Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationWriter;

    invoke-virtual {v1, p1}, Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationWriter;->put(Lorg/checkerframework/org/objectweb/asmx/ByteVector;)V

    .line 322
    :cond_11
    iget-object v1, p0, Lorg/checkerframework/org/objectweb/asmx/FieldWriter;->ixanns:Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationWriter;

    if-eqz v1, :cond_12

    .line 323
    iget-object v1, p0, Lorg/checkerframework/org/objectweb/asmx/FieldWriter;->cw:Lorg/checkerframework/org/objectweb/asmx/ClassWriter;

    const-string v2, "RuntimeInvisibleTypeAnnotations"

    invoke-virtual {v1, v2}, Lorg/checkerframework/org/objectweb/asmx/ClassWriter;->newUTF8(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v1}, Lorg/checkerframework/org/objectweb/asmx/ByteVector;->putShort(I)Lorg/checkerframework/org/objectweb/asmx/ByteVector;

    .line 324
    iget-object v1, p0, Lorg/checkerframework/org/objectweb/asmx/FieldWriter;->ixanns:Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationWriter;

    invoke-virtual {v1, p1}, Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationWriter;->put(Lorg/checkerframework/org/objectweb/asmx/ByteVector;)V

    .line 328
    :cond_12
    iget-object v2, p0, Lorg/checkerframework/org/objectweb/asmx/FieldWriter;->attrs:Lorg/checkerframework/org/objectweb/asmx/Attribute;

    if-eqz v2, :cond_13

    .line 329
    iget-object v3, p0, Lorg/checkerframework/org/objectweb/asmx/FieldWriter;->cw:Lorg/checkerframework/org/objectweb/asmx/ClassWriter;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, -0x1

    const/4 v7, -0x1

    move-object v8, p1

    invoke-virtual/range {v2 .. v8}, Lorg/checkerframework/org/objectweb/asmx/Attribute;->put(Lorg/checkerframework/org/objectweb/asmx/ClassWriter;[BIIILorg/checkerframework/org/objectweb/asmx/ByteVector;)V

    .line 331
    :cond_13
    return-void
.end method

.method public visitAnnotation(Ljava/lang/String;Z)Lorg/checkerframework/org/objectweb/asmx/AnnotationVisitor;
    .locals 8
    .param p1, "desc"    # Ljava/lang/String;
    .param p2, "visible"    # Z

    .line 146
    new-instance v0, Lorg/checkerframework/org/objectweb/asmx/ByteVector;

    invoke-direct {v0}, Lorg/checkerframework/org/objectweb/asmx/ByteVector;-><init>()V

    .line 148
    .local v0, "bv":Lorg/checkerframework/org/objectweb/asmx/ByteVector;
    iget-object v1, p0, Lorg/checkerframework/org/objectweb/asmx/FieldWriter;->cw:Lorg/checkerframework/org/objectweb/asmx/ClassWriter;

    invoke-virtual {v1, p1}, Lorg/checkerframework/org/objectweb/asmx/ClassWriter;->newUTF8(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/checkerframework/org/objectweb/asmx/ByteVector;->putShort(I)Lorg/checkerframework/org/objectweb/asmx/ByteVector;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lorg/checkerframework/org/objectweb/asmx/ByteVector;->putShort(I)Lorg/checkerframework/org/objectweb/asmx/ByteVector;

    .line 149
    new-instance v7, Lorg/checkerframework/org/objectweb/asmx/AnnotationWriter;

    iget-object v2, p0, Lorg/checkerframework/org/objectweb/asmx/FieldWriter;->cw:Lorg/checkerframework/org/objectweb/asmx/ClassWriter;

    const/4 v3, 0x1

    const/4 v6, 0x2

    move-object v1, v7

    move-object v4, v0

    move-object v5, v0

    invoke-direct/range {v1 .. v6}, Lorg/checkerframework/org/objectweb/asmx/AnnotationWriter;-><init>(Lorg/checkerframework/org/objectweb/asmx/ClassWriter;ZLorg/checkerframework/org/objectweb/asmx/ByteVector;Lorg/checkerframework/org/objectweb/asmx/ByteVector;I)V

    .line 150
    .local v1, "aw":Lorg/checkerframework/org/objectweb/asmx/AnnotationWriter;
    if-eqz p2, :cond_0

    .line 151
    iget-object v2, p0, Lorg/checkerframework/org/objectweb/asmx/FieldWriter;->anns:Lorg/checkerframework/org/objectweb/asmx/AnnotationWriter;

    iput-object v2, v1, Lorg/checkerframework/org/objectweb/asmx/AnnotationWriter;->next:Lorg/checkerframework/org/objectweb/asmx/AnnotationWriter;

    .line 152
    iput-object v1, p0, Lorg/checkerframework/org/objectweb/asmx/FieldWriter;->anns:Lorg/checkerframework/org/objectweb/asmx/AnnotationWriter;

    goto :goto_0

    .line 154
    :cond_0
    iget-object v2, p0, Lorg/checkerframework/org/objectweb/asmx/FieldWriter;->ianns:Lorg/checkerframework/org/objectweb/asmx/AnnotationWriter;

    iput-object v2, v1, Lorg/checkerframework/org/objectweb/asmx/AnnotationWriter;->next:Lorg/checkerframework/org/objectweb/asmx/AnnotationWriter;

    .line 155
    iput-object v1, p0, Lorg/checkerframework/org/objectweb/asmx/FieldWriter;->ianns:Lorg/checkerframework/org/objectweb/asmx/AnnotationWriter;

    .line 157
    :goto_0
    return-object v1
.end method

.method public visitAttribute(Lorg/checkerframework/org/objectweb/asmx/Attribute;)V
    .locals 1
    .param p1, "attr"    # Lorg/checkerframework/org/objectweb/asmx/Attribute;

    .line 181
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/FieldWriter;->attrs:Lorg/checkerframework/org/objectweb/asmx/Attribute;

    iput-object v0, p1, Lorg/checkerframework/org/objectweb/asmx/Attribute;->next:Lorg/checkerframework/org/objectweb/asmx/Attribute;

    .line 182
    iput-object p1, p0, Lorg/checkerframework/org/objectweb/asmx/FieldWriter;->attrs:Lorg/checkerframework/org/objectweb/asmx/Attribute;

    .line 183
    return-void
.end method

.method public visitEnd()V
    .locals 0

    .line 186
    return-void
.end method

.method public visitTypeAnnotation(Ljava/lang/String;ZZ)Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationVisitor;
    .locals 7
    .param p1, "desc"    # Ljava/lang/String;
    .param p2, "visible"    # Z
    .param p3, "inCode"    # Z

    .line 166
    new-instance v3, Lorg/checkerframework/org/objectweb/asmx/ByteVector;

    invoke-direct {v3}, Lorg/checkerframework/org/objectweb/asmx/ByteVector;-><init>()V

    .line 167
    .local v3, "bv":Lorg/checkerframework/org/objectweb/asmx/ByteVector;
    new-instance v6, Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationWriter;

    iget-object v1, p0, Lorg/checkerframework/org/objectweb/asmx/FieldWriter;->cw:Lorg/checkerframework/org/objectweb/asmx/ClassWriter;

    const/4 v2, 0x1

    move-object v0, v6

    move-object v4, v3

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationWriter;-><init>(Lorg/checkerframework/org/objectweb/asmx/ClassWriter;ZLorg/checkerframework/org/objectweb/asmx/ByteVector;Lorg/checkerframework/org/objectweb/asmx/ByteVector;Ljava/lang/String;)V

    .line 169
    .local v0, "xaw":Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationWriter;
    if-eqz p2, :cond_0

    .line 170
    iget-object v1, p0, Lorg/checkerframework/org/objectweb/asmx/FieldWriter;->xanns:Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationWriter;

    iput-object v1, v0, Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationWriter;->next:Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationWriter;

    .line 171
    iput-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/FieldWriter;->xanns:Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationWriter;

    goto :goto_0

    .line 173
    :cond_0
    iget-object v1, p0, Lorg/checkerframework/org/objectweb/asmx/FieldWriter;->ixanns:Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationWriter;

    iput-object v1, v0, Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationWriter;->next:Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationWriter;

    .line 174
    iput-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/FieldWriter;->ixanns:Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationWriter;

    .line 176
    :goto_0
    return-object v0
.end method
