.class public Lnet/bytebuddy/jar/asm/Attribute;
.super Ljava/lang/Object;
.source "Attribute.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/bytebuddy/jar/asm/Attribute$Set;
    }
.end annotation


# instance fields
.field private content:[B

.field nextAttribute:Lnet/bytebuddy/jar/asm/Attribute;

.field public final type:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "type"    # Ljava/lang/String;

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    iput-object p1, p0, Lnet/bytebuddy/jar/asm/Attribute;->type:Ljava/lang/String;

    .line 66
    return-void
.end method

.method static computeAttributesSize(Lnet/bytebuddy/jar/asm/SymbolTable;II)I
    .locals 3
    .param p0, "symbolTable"    # Lnet/bytebuddy/jar/asm/SymbolTable;
    .param p1, "accessFlags"    # I
    .param p2, "signatureIndex"    # I

    .line 244
    const/4 v0, 0x0

    .line 246
    .local v0, "size":I
    and-int/lit16 v1, p1, 0x1000

    if-eqz v1, :cond_0

    .line 247
    invoke-virtual {p0}, Lnet/bytebuddy/jar/asm/SymbolTable;->getMajorVersion()I

    move-result v1

    const/16 v2, 0x31

    if-ge v1, v2, :cond_0

    .line 249
    const-string v1, "Synthetic"

    invoke-virtual {p0, v1}, Lnet/bytebuddy/jar/asm/SymbolTable;->addConstantUtf8(Ljava/lang/String;)I

    .line 250
    add-int/lit8 v0, v0, 0x6

    .line 252
    :cond_0
    if-eqz p2, :cond_1

    .line 254
    const-string v1, "Signature"

    invoke-virtual {p0, v1}, Lnet/bytebuddy/jar/asm/SymbolTable;->addConstantUtf8(Ljava/lang/String;)I

    .line 255
    add-int/lit8 v0, v0, 0x8

    .line 258
    :cond_1
    const/high16 v1, 0x20000

    and-int/2addr v1, p1

    if-eqz v1, :cond_2

    .line 260
    const-string v1, "Deprecated"

    invoke-virtual {p0, v1}, Lnet/bytebuddy/jar/asm/SymbolTable;->addConstantUtf8(Ljava/lang/String;)I

    .line 261
    add-int/lit8 v0, v0, 0x6

    .line 263
    :cond_2
    return v0
.end method

.method static putAttributes(Lnet/bytebuddy/jar/asm/SymbolTable;IILnet/bytebuddy/jar/asm/ByteVector;)V
    .locals 3
    .param p0, "symbolTable"    # Lnet/bytebuddy/jar/asm/SymbolTable;
    .param p1, "accessFlags"    # I
    .param p2, "signatureIndex"    # I
    .param p3, "output"    # Lnet/bytebuddy/jar/asm/ByteVector;

    .line 335
    and-int/lit16 v0, p1, 0x1000

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 336
    invoke-virtual {p0}, Lnet/bytebuddy/jar/asm/SymbolTable;->getMajorVersion()I

    move-result v0

    const/16 v2, 0x31

    if-ge v0, v2, :cond_0

    .line 337
    const-string v0, "Synthetic"

    invoke-virtual {p0, v0}, Lnet/bytebuddy/jar/asm/SymbolTable;->addConstantUtf8(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p3, v0}, Lnet/bytebuddy/jar/asm/ByteVector;->putShort(I)Lnet/bytebuddy/jar/asm/ByteVector;

    move-result-object v0

    invoke-virtual {v0, v1}, Lnet/bytebuddy/jar/asm/ByteVector;->putInt(I)Lnet/bytebuddy/jar/asm/ByteVector;

    .line 339
    :cond_0
    if-eqz p2, :cond_1

    .line 340
    nop

    .line 341
    const-string v0, "Signature"

    invoke-virtual {p0, v0}, Lnet/bytebuddy/jar/asm/SymbolTable;->addConstantUtf8(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p3, v0}, Lnet/bytebuddy/jar/asm/ByteVector;->putShort(I)Lnet/bytebuddy/jar/asm/ByteVector;

    move-result-object v0

    .line 342
    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Lnet/bytebuddy/jar/asm/ByteVector;->putInt(I)Lnet/bytebuddy/jar/asm/ByteVector;

    move-result-object v0

    .line 343
    invoke-virtual {v0, p2}, Lnet/bytebuddy/jar/asm/ByteVector;->putShort(I)Lnet/bytebuddy/jar/asm/ByteVector;

    .line 345
    :cond_1
    const/high16 v0, 0x20000

    and-int/2addr v0, p1

    if-eqz v0, :cond_2

    .line 346
    const-string v0, "Deprecated"

    invoke-virtual {p0, v0}, Lnet/bytebuddy/jar/asm/SymbolTable;->addConstantUtf8(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p3, v0}, Lnet/bytebuddy/jar/asm/ByteVector;->putShort(I)Lnet/bytebuddy/jar/asm/ByteVector;

    move-result-object v0

    invoke-virtual {v0, v1}, Lnet/bytebuddy/jar/asm/ByteVector;->putInt(I)Lnet/bytebuddy/jar/asm/ByteVector;

    .line 348
    :cond_2
    return-void
.end method


# virtual methods
.method final computeAttributesSize(Lnet/bytebuddy/jar/asm/SymbolTable;)I
    .locals 10
    .param p1, "symbolTable"    # Lnet/bytebuddy/jar/asm/SymbolTable;

    .line 187
    const/4 v6, 0x0

    .line 188
    .local v6, "code":[B
    const/4 v7, 0x0

    .line 189
    .local v7, "codeLength":I
    const/4 v8, -0x1

    .line 190
    .local v8, "maxStack":I
    const/4 v9, -0x1

    .line 191
    .local v9, "maxLocals":I
    const/4 v3, 0x0

    const/4 v4, -0x1

    const/4 v5, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, v6

    invoke-virtual/range {v0 .. v5}, Lnet/bytebuddy/jar/asm/Attribute;->computeAttributesSize(Lnet/bytebuddy/jar/asm/SymbolTable;[BIII)I

    move-result v0

    return v0
.end method

.method final computeAttributesSize(Lnet/bytebuddy/jar/asm/SymbolTable;[BIII)I
    .locals 9
    .param p1, "symbolTable"    # Lnet/bytebuddy/jar/asm/SymbolTable;
    .param p2, "code"    # [B
    .param p3, "codeLength"    # I
    .param p4, "maxStack"    # I
    .param p5, "maxLocals"    # I

    .line 219
    iget-object v6, p1, Lnet/bytebuddy/jar/asm/SymbolTable;->classWriter:Lnet/bytebuddy/jar/asm/ClassWriter;

    .line 220
    .local v6, "classWriter":Lnet/bytebuddy/jar/asm/ClassWriter;
    const/4 v0, 0x0

    .line 221
    .local v0, "size":I
    move-object v1, p0

    move v7, v0

    move-object v8, v1

    .line 222
    .end local v0    # "size":I
    .local v7, "size":I
    .local v8, "attribute":Lnet/bytebuddy/jar/asm/Attribute;
    :goto_0
    if-eqz v8, :cond_0

    .line 223
    iget-object v0, v8, Lnet/bytebuddy/jar/asm/Attribute;->type:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lnet/bytebuddy/jar/asm/SymbolTable;->addConstantUtf8(Ljava/lang/String;)I

    .line 224
    move-object v0, v8

    move-object v1, v6

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lnet/bytebuddy/jar/asm/Attribute;->write(Lnet/bytebuddy/jar/asm/ClassWriter;[BIII)Lnet/bytebuddy/jar/asm/ByteVector;

    move-result-object v0

    iget v0, v0, Lnet/bytebuddy/jar/asm/ByteVector;->length:I

    add-int/lit8 v0, v0, 0x6

    add-int/2addr v7, v0

    .line 225
    iget-object v8, v8, Lnet/bytebuddy/jar/asm/Attribute;->nextAttribute:Lnet/bytebuddy/jar/asm/Attribute;

    goto :goto_0

    .line 227
    :cond_0
    return v7
.end method

.method final getAttributeCount()I
    .locals 2

    .line 168
    const/4 v0, 0x0

    .line 169
    .local v0, "count":I
    move-object v1, p0

    .line 170
    .local v1, "attribute":Lnet/bytebuddy/jar/asm/Attribute;
    :goto_0
    if-eqz v1, :cond_0

    .line 171
    add-int/lit8 v0, v0, 0x1

    .line 172
    iget-object v1, v1, Lnet/bytebuddy/jar/asm/Attribute;->nextAttribute:Lnet/bytebuddy/jar/asm/Attribute;

    goto :goto_0

    .line 174
    :cond_0
    return v0
.end method

.method protected getLabels()[Lnet/bytebuddy/jar/asm/Label;
    .locals 1

    .line 98
    const/4 v0, 0x0

    new-array v0, v0, [Lnet/bytebuddy/jar/asm/Label;

    return-object v0
.end method

.method public isCodeAttribute()Z
    .locals 1

    .line 88
    const/4 v0, 0x0

    return v0
.end method

.method public isUnknown()Z
    .locals 1

    .line 79
    const/4 v0, 0x1

    return v0
.end method

.method final putAttributes(Lnet/bytebuddy/jar/asm/SymbolTable;Lnet/bytebuddy/jar/asm/ByteVector;)V
    .locals 11
    .param p1, "symbolTable"    # Lnet/bytebuddy/jar/asm/SymbolTable;
    .param p2, "output"    # Lnet/bytebuddy/jar/asm/ByteVector;

    .line 275
    const/4 v7, 0x0

    .line 276
    .local v7, "code":[B
    const/4 v8, 0x0

    .line 277
    .local v8, "codeLength":I
    const/4 v9, -0x1

    .line 278
    .local v9, "maxStack":I
    const/4 v10, -0x1

    .line 279
    .local v10, "maxLocals":I
    const/4 v3, 0x0

    const/4 v4, -0x1

    const/4 v5, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, v7

    move-object v6, p2

    invoke-virtual/range {v0 .. v6}, Lnet/bytebuddy/jar/asm/Attribute;->putAttributes(Lnet/bytebuddy/jar/asm/SymbolTable;[BIIILnet/bytebuddy/jar/asm/ByteVector;)V

    .line 280
    return-void
.end method

.method final putAttributes(Lnet/bytebuddy/jar/asm/SymbolTable;[BIIILnet/bytebuddy/jar/asm/ByteVector;)V
    .locals 8
    .param p1, "symbolTable"    # Lnet/bytebuddy/jar/asm/SymbolTable;
    .param p2, "code"    # [B
    .param p3, "codeLength"    # I
    .param p4, "maxStack"    # I
    .param p5, "maxLocals"    # I
    .param p6, "output"    # Lnet/bytebuddy/jar/asm/ByteVector;

    .line 307
    iget-object v6, p1, Lnet/bytebuddy/jar/asm/SymbolTable;->classWriter:Lnet/bytebuddy/jar/asm/ClassWriter;

    .line 308
    .local v6, "classWriter":Lnet/bytebuddy/jar/asm/ClassWriter;
    move-object v0, p0

    move-object v7, v0

    .line 309
    .local v7, "attribute":Lnet/bytebuddy/jar/asm/Attribute;
    :goto_0
    if-eqz v7, :cond_0

    .line 310
    nop

    .line 311
    move-object v0, v7

    move-object v1, v6

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lnet/bytebuddy/jar/asm/Attribute;->write(Lnet/bytebuddy/jar/asm/ClassWriter;[BIII)Lnet/bytebuddy/jar/asm/ByteVector;

    move-result-object v0

    .line 313
    .local v0, "attributeContent":Lnet/bytebuddy/jar/asm/ByteVector;
    iget-object v1, v7, Lnet/bytebuddy/jar/asm/Attribute;->type:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lnet/bytebuddy/jar/asm/SymbolTable;->addConstantUtf8(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p6, v1}, Lnet/bytebuddy/jar/asm/ByteVector;->putShort(I)Lnet/bytebuddy/jar/asm/ByteVector;

    move-result-object v1

    iget v2, v0, Lnet/bytebuddy/jar/asm/ByteVector;->length:I

    invoke-virtual {v1, v2}, Lnet/bytebuddy/jar/asm/ByteVector;->putInt(I)Lnet/bytebuddy/jar/asm/ByteVector;

    .line 314
    iget-object v1, v0, Lnet/bytebuddy/jar/asm/ByteVector;->data:[B

    const/4 v2, 0x0

    iget v3, v0, Lnet/bytebuddy/jar/asm/ByteVector;->length:I

    invoke-virtual {p6, v1, v2, v3}, Lnet/bytebuddy/jar/asm/ByteVector;->putByteArray([BII)Lnet/bytebuddy/jar/asm/ByteVector;

    .line 315
    iget-object v7, v7, Lnet/bytebuddy/jar/asm/Attribute;->nextAttribute:Lnet/bytebuddy/jar/asm/Attribute;

    .line 316
    .end local v0    # "attributeContent":Lnet/bytebuddy/jar/asm/ByteVector;
    goto :goto_0

    .line 317
    :cond_0
    return-void
.end method

.method protected read(Lnet/bytebuddy/jar/asm/ClassReader;II[CI[Lnet/bytebuddy/jar/asm/Label;)Lnet/bytebuddy/jar/asm/Attribute;
    .locals 4
    .param p1, "classReader"    # Lnet/bytebuddy/jar/asm/ClassReader;
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .param p4, "charBuffer"    # [C
    .param p5, "codeAttributeOffset"    # I
    .param p6, "labels"    # [Lnet/bytebuddy/jar/asm/Label;

    .line 128
    new-instance v0, Lnet/bytebuddy/jar/asm/Attribute;

    iget-object v1, p0, Lnet/bytebuddy/jar/asm/Attribute;->type:Ljava/lang/String;

    invoke-direct {v0, v1}, Lnet/bytebuddy/jar/asm/Attribute;-><init>(Ljava/lang/String;)V

    .line 129
    .local v0, "attribute":Lnet/bytebuddy/jar/asm/Attribute;
    new-array v1, p3, [B

    iput-object v1, v0, Lnet/bytebuddy/jar/asm/Attribute;->content:[B

    .line 130
    iget-object v1, p1, Lnet/bytebuddy/jar/asm/ClassReader;->classFileBuffer:[B

    iget-object v2, v0, Lnet/bytebuddy/jar/asm/Attribute;->content:[B

    const/4 v3, 0x0

    invoke-static {v1, p2, v2, v3, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 131
    return-object v0
.end method

.method protected write(Lnet/bytebuddy/jar/asm/ClassWriter;[BIII)Lnet/bytebuddy/jar/asm/ByteVector;
    .locals 2
    .param p1, "classWriter"    # Lnet/bytebuddy/jar/asm/ClassWriter;
    .param p2, "code"    # [B
    .param p3, "codeLength"    # I
    .param p4, "maxStack"    # I
    .param p5, "maxLocals"    # I

    .line 159
    new-instance v0, Lnet/bytebuddy/jar/asm/ByteVector;

    iget-object v1, p0, Lnet/bytebuddy/jar/asm/Attribute;->content:[B

    invoke-direct {v0, v1}, Lnet/bytebuddy/jar/asm/ByteVector;-><init>([B)V

    return-object v0
.end method
