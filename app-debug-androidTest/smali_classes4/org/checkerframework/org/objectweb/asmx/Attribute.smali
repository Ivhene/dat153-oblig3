.class public Lorg/checkerframework/org/objectweb/asmx/Attribute;
.super Ljava/lang/Object;
.source "Attribute.java"


# instance fields
.field next:Lorg/checkerframework/org/objectweb/asmx/Attribute;

.field public final type:Ljava/lang/String;

.field value:[B


# direct methods
.method protected constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "type"    # Ljava/lang/String;

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput-object p1, p0, Lorg/checkerframework/org/objectweb/asmx/Attribute;->type:Ljava/lang/String;

    .line 62
    return-void
.end method


# virtual methods
.method final getCount()I
    .locals 2

    .line 172
    const/4 v0, 0x0

    .line 173
    .local v0, "count":I
    move-object v1, p0

    .line 174
    .local v1, "attr":Lorg/checkerframework/org/objectweb/asmx/Attribute;
    :goto_0
    if-eqz v1, :cond_0

    .line 175
    add-int/lit8 v0, v0, 0x1

    .line 176
    iget-object v1, v1, Lorg/checkerframework/org/objectweb/asmx/Attribute;->next:Lorg/checkerframework/org/objectweb/asmx/Attribute;

    goto :goto_0

    .line 178
    :cond_0
    return v0
.end method

.method protected getLabels()[Lorg/checkerframework/org/objectweb/asmx/Label;
    .locals 1

    .line 90
    const/4 v0, 0x0

    return-object v0
.end method

.method final getSize(Lorg/checkerframework/org/objectweb/asmx/ClassWriter;[BIII)I
    .locals 8
    .param p1, "cw"    # Lorg/checkerframework/org/objectweb/asmx/ClassWriter;
    .param p2, "code"    # [B
    .param p3, "len"    # I
    .param p4, "maxStack"    # I
    .param p5, "maxLocals"    # I

    .line 208
    move-object v0, p0

    .line 209
    .local v0, "attr":Lorg/checkerframework/org/objectweb/asmx/Attribute;
    const/4 v1, 0x0

    .line 210
    .local v1, "size":I
    :goto_0
    if-eqz v0, :cond_0

    .line 211
    iget-object v2, v0, Lorg/checkerframework/org/objectweb/asmx/Attribute;->type:Ljava/lang/String;

    invoke-virtual {p1, v2}, Lorg/checkerframework/org/objectweb/asmx/ClassWriter;->newUTF8(Ljava/lang/String;)I

    .line 212
    move-object v2, v0

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    invoke-virtual/range {v2 .. v7}, Lorg/checkerframework/org/objectweb/asmx/Attribute;->write(Lorg/checkerframework/org/objectweb/asmx/ClassWriter;[BIII)Lorg/checkerframework/org/objectweb/asmx/ByteVector;

    move-result-object v2

    iget v2, v2, Lorg/checkerframework/org/objectweb/asmx/ByteVector;->length:I

    add-int/lit8 v2, v2, 0x6

    add-int/2addr v1, v2

    .line 213
    iget-object v0, v0, Lorg/checkerframework/org/objectweb/asmx/Attribute;->next:Lorg/checkerframework/org/objectweb/asmx/Attribute;

    goto :goto_0

    .line 215
    :cond_0
    return v1
.end method

.method public isCodeAttribute()Z
    .locals 1

    .line 80
    const/4 v0, 0x0

    return v0
.end method

.method public isUnknown()Z
    .locals 1

    .line 71
    const/4 v0, 0x1

    return v0
.end method

.method final put(Lorg/checkerframework/org/objectweb/asmx/ClassWriter;[BIIILorg/checkerframework/org/objectweb/asmx/ByteVector;)V
    .locals 7
    .param p1, "cw"    # Lorg/checkerframework/org/objectweb/asmx/ClassWriter;
    .param p2, "code"    # [B
    .param p3, "len"    # I
    .param p4, "maxStack"    # I
    .param p5, "maxLocals"    # I
    .param p6, "out"    # Lorg/checkerframework/org/objectweb/asmx/ByteVector;

    .line 246
    move-object v0, p0

    .line 247
    .local v0, "attr":Lorg/checkerframework/org/objectweb/asmx/Attribute;
    :goto_0
    if-eqz v0, :cond_0

    .line 248
    move-object v1, v0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-virtual/range {v1 .. v6}, Lorg/checkerframework/org/objectweb/asmx/Attribute;->write(Lorg/checkerframework/org/objectweb/asmx/ClassWriter;[BIII)Lorg/checkerframework/org/objectweb/asmx/ByteVector;

    move-result-object v1

    .line 249
    .local v1, "b":Lorg/checkerframework/org/objectweb/asmx/ByteVector;
    iget-object v2, v0, Lorg/checkerframework/org/objectweb/asmx/Attribute;->type:Ljava/lang/String;

    invoke-virtual {p1, v2}, Lorg/checkerframework/org/objectweb/asmx/ClassWriter;->newUTF8(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p6, v2}, Lorg/checkerframework/org/objectweb/asmx/ByteVector;->putShort(I)Lorg/checkerframework/org/objectweb/asmx/ByteVector;

    move-result-object v2

    iget v3, v1, Lorg/checkerframework/org/objectweb/asmx/ByteVector;->length:I

    invoke-virtual {v2, v3}, Lorg/checkerframework/org/objectweb/asmx/ByteVector;->putInt(I)Lorg/checkerframework/org/objectweb/asmx/ByteVector;

    .line 250
    iget-object v2, v1, Lorg/checkerframework/org/objectweb/asmx/ByteVector;->data:[B

    const/4 v3, 0x0

    iget v4, v1, Lorg/checkerframework/org/objectweb/asmx/ByteVector;->length:I

    invoke-virtual {p6, v2, v3, v4}, Lorg/checkerframework/org/objectweb/asmx/ByteVector;->putByteArray([BII)Lorg/checkerframework/org/objectweb/asmx/ByteVector;

    .line 251
    iget-object v0, v0, Lorg/checkerframework/org/objectweb/asmx/Attribute;->next:Lorg/checkerframework/org/objectweb/asmx/Attribute;

    .line 252
    .end local v1    # "b":Lorg/checkerframework/org/objectweb/asmx/ByteVector;
    goto :goto_0

    .line 253
    :cond_0
    return-void
.end method

.method protected read(Lorg/checkerframework/org/objectweb/asmx/ClassReader;II[CI[Lorg/checkerframework/org/objectweb/asmx/Label;)Lorg/checkerframework/org/objectweb/asmx/Attribute;
    .locals 4
    .param p1, "cr"    # Lorg/checkerframework/org/objectweb/asmx/ClassReader;
    .param p2, "off"    # I
    .param p3, "len"    # I
    .param p4, "buf"    # [C
    .param p5, "codeOff"    # I
    .param p6, "labels"    # [Lorg/checkerframework/org/objectweb/asmx/Label;

    .line 127
    new-instance v0, Lorg/checkerframework/org/objectweb/asmx/Attribute;

    iget-object v1, p0, Lorg/checkerframework/org/objectweb/asmx/Attribute;->type:Ljava/lang/String;

    invoke-direct {v0, v1}, Lorg/checkerframework/org/objectweb/asmx/Attribute;-><init>(Ljava/lang/String;)V

    .line 128
    .local v0, "attr":Lorg/checkerframework/org/objectweb/asmx/Attribute;
    new-array v1, p3, [B

    iput-object v1, v0, Lorg/checkerframework/org/objectweb/asmx/Attribute;->value:[B

    .line 129
    iget-object v1, p1, Lorg/checkerframework/org/objectweb/asmx/ClassReader;->b:[B

    iget-object v2, v0, Lorg/checkerframework/org/objectweb/asmx/Attribute;->value:[B

    const/4 v3, 0x0

    invoke-static {v1, p2, v2, v3, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 130
    return-object v0
.end method

.method protected write(Lorg/checkerframework/org/objectweb/asmx/ClassWriter;[BIII)Lorg/checkerframework/org/objectweb/asmx/ByteVector;
    .locals 2
    .param p1, "cw"    # Lorg/checkerframework/org/objectweb/asmx/ClassWriter;
    .param p2, "code"    # [B
    .param p3, "len"    # I
    .param p4, "maxStack"    # I
    .param p5, "maxLocals"    # I

    .line 160
    new-instance v0, Lorg/checkerframework/org/objectweb/asmx/ByteVector;

    invoke-direct {v0}, Lorg/checkerframework/org/objectweb/asmx/ByteVector;-><init>()V

    .line 161
    .local v0, "v":Lorg/checkerframework/org/objectweb/asmx/ByteVector;
    iget-object v1, p0, Lorg/checkerframework/org/objectweb/asmx/Attribute;->value:[B

    iput-object v1, v0, Lorg/checkerframework/org/objectweb/asmx/ByteVector;->data:[B

    .line 162
    iget-object v1, p0, Lorg/checkerframework/org/objectweb/asmx/Attribute;->value:[B

    array-length v1, v1

    iput v1, v0, Lorg/checkerframework/org/objectweb/asmx/ByteVector;->length:I

    .line 163
    return-object v0
.end method
