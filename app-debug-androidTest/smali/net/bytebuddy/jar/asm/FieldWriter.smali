.class final Lnet/bytebuddy/jar/asm/FieldWriter;
.super Lnet/bytebuddy/jar/asm/FieldVisitor;
.source "FieldWriter.java"


# instance fields
.field private final accessFlags:I

.field private constantValueIndex:I

.field private final descriptorIndex:I

.field private firstAttribute:Lnet/bytebuddy/jar/asm/Attribute;

.field private lastRuntimeInvisibleAnnotation:Lnet/bytebuddy/jar/asm/AnnotationWriter;

.field private lastRuntimeInvisibleTypeAnnotation:Lnet/bytebuddy/jar/asm/AnnotationWriter;

.field private lastRuntimeVisibleAnnotation:Lnet/bytebuddy/jar/asm/AnnotationWriter;

.field private lastRuntimeVisibleTypeAnnotation:Lnet/bytebuddy/jar/asm/AnnotationWriter;

.field private final nameIndex:I

.field private signatureIndex:I

.field private final symbolTable:Lnet/bytebuddy/jar/asm/SymbolTable;


# direct methods
.method constructor <init>(Lnet/bytebuddy/jar/asm/SymbolTable;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .param p1, "symbolTable"    # Lnet/bytebuddy/jar/asm/SymbolTable;
    .param p2, "access"    # I
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "descriptor"    # Ljava/lang/String;
    .param p5, "signature"    # Ljava/lang/String;
    .param p6, "constantValue"    # Ljava/lang/Object;

    .line 127
    const/high16 v0, 0x90000

    invoke-direct {p0, v0}, Lnet/bytebuddy/jar/asm/FieldVisitor;-><init>(I)V

    .line 128
    iput-object p1, p0, Lnet/bytebuddy/jar/asm/FieldWriter;->symbolTable:Lnet/bytebuddy/jar/asm/SymbolTable;

    .line 129
    iput p2, p0, Lnet/bytebuddy/jar/asm/FieldWriter;->accessFlags:I

    .line 130
    invoke-virtual {p1, p3}, Lnet/bytebuddy/jar/asm/SymbolTable;->addConstantUtf8(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lnet/bytebuddy/jar/asm/FieldWriter;->nameIndex:I

    .line 131
    invoke-virtual {p1, p4}, Lnet/bytebuddy/jar/asm/SymbolTable;->addConstantUtf8(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lnet/bytebuddy/jar/asm/FieldWriter;->descriptorIndex:I

    .line 132
    if-eqz p5, :cond_0

    .line 133
    invoke-virtual {p1, p5}, Lnet/bytebuddy/jar/asm/SymbolTable;->addConstantUtf8(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lnet/bytebuddy/jar/asm/FieldWriter;->signatureIndex:I

    .line 135
    :cond_0
    if-eqz p6, :cond_1

    .line 136
    invoke-virtual {p1, p6}, Lnet/bytebuddy/jar/asm/SymbolTable;->addConstant(Ljava/lang/Object;)Lnet/bytebuddy/jar/asm/Symbol;

    move-result-object v0

    iget v0, v0, Lnet/bytebuddy/jar/asm/Symbol;->index:I

    iput v0, p0, Lnet/bytebuddy/jar/asm/FieldWriter;->constantValueIndex:I

    .line 138
    :cond_1
    return-void
.end method


# virtual methods
.method final collectAttributePrototypes(Lnet/bytebuddy/jar/asm/Attribute$Set;)V
    .locals 1
    .param p1, "attributePrototypes"    # Lnet/bytebuddy/jar/asm/Attribute$Set;

    .line 282
    iget-object v0, p0, Lnet/bytebuddy/jar/asm/FieldWriter;->firstAttribute:Lnet/bytebuddy/jar/asm/Attribute;

    invoke-virtual {p1, v0}, Lnet/bytebuddy/jar/asm/Attribute$Set;->addAttributes(Lnet/bytebuddy/jar/asm/Attribute;)V

    .line 283
    return-void
.end method

.method computeFieldInfoSize()I
    .locals 5

    .line 193
    const/16 v0, 0x8

    .line 195
    .local v0, "size":I
    iget v1, p0, Lnet/bytebuddy/jar/asm/FieldWriter;->constantValueIndex:I

    if-eqz v1, :cond_0

    .line 197
    iget-object v1, p0, Lnet/bytebuddy/jar/asm/FieldWriter;->symbolTable:Lnet/bytebuddy/jar/asm/SymbolTable;

    const-string v2, "ConstantValue"

    invoke-virtual {v1, v2}, Lnet/bytebuddy/jar/asm/SymbolTable;->addConstantUtf8(Ljava/lang/String;)I

    .line 198
    add-int/lit8 v0, v0, 0x8

    .line 200
    :cond_0
    iget-object v1, p0, Lnet/bytebuddy/jar/asm/FieldWriter;->symbolTable:Lnet/bytebuddy/jar/asm/SymbolTable;

    iget v2, p0, Lnet/bytebuddy/jar/asm/FieldWriter;->accessFlags:I

    iget v3, p0, Lnet/bytebuddy/jar/asm/FieldWriter;->signatureIndex:I

    invoke-static {v1, v2, v3}, Lnet/bytebuddy/jar/asm/Attribute;->computeAttributesSize(Lnet/bytebuddy/jar/asm/SymbolTable;II)I

    move-result v1

    add-int/2addr v0, v1

    .line 201
    iget-object v1, p0, Lnet/bytebuddy/jar/asm/FieldWriter;->lastRuntimeVisibleAnnotation:Lnet/bytebuddy/jar/asm/AnnotationWriter;

    iget-object v2, p0, Lnet/bytebuddy/jar/asm/FieldWriter;->lastRuntimeInvisibleAnnotation:Lnet/bytebuddy/jar/asm/AnnotationWriter;

    iget-object v3, p0, Lnet/bytebuddy/jar/asm/FieldWriter;->lastRuntimeVisibleTypeAnnotation:Lnet/bytebuddy/jar/asm/AnnotationWriter;

    iget-object v4, p0, Lnet/bytebuddy/jar/asm/FieldWriter;->lastRuntimeInvisibleTypeAnnotation:Lnet/bytebuddy/jar/asm/AnnotationWriter;

    .line 202
    invoke-static {v1, v2, v3, v4}, Lnet/bytebuddy/jar/asm/AnnotationWriter;->computeAnnotationsSize(Lnet/bytebuddy/jar/asm/AnnotationWriter;Lnet/bytebuddy/jar/asm/AnnotationWriter;Lnet/bytebuddy/jar/asm/AnnotationWriter;Lnet/bytebuddy/jar/asm/AnnotationWriter;)I

    move-result v1

    add-int/2addr v0, v1

    .line 207
    iget-object v1, p0, Lnet/bytebuddy/jar/asm/FieldWriter;->firstAttribute:Lnet/bytebuddy/jar/asm/Attribute;

    if-eqz v1, :cond_1

    .line 208
    iget-object v2, p0, Lnet/bytebuddy/jar/asm/FieldWriter;->symbolTable:Lnet/bytebuddy/jar/asm/SymbolTable;

    invoke-virtual {v1, v2}, Lnet/bytebuddy/jar/asm/Attribute;->computeAttributesSize(Lnet/bytebuddy/jar/asm/SymbolTable;)I

    move-result v1

    add-int/2addr v0, v1

    .line 210
    :cond_1
    return v0
.end method

.method putFieldInfo(Lnet/bytebuddy/jar/asm/ByteVector;)V
    .locals 12
    .param p1, "output"    # Lnet/bytebuddy/jar/asm/ByteVector;

    .line 220
    iget-object v0, p0, Lnet/bytebuddy/jar/asm/FieldWriter;->symbolTable:Lnet/bytebuddy/jar/asm/SymbolTable;

    invoke-virtual {v0}, Lnet/bytebuddy/jar/asm/SymbolTable;->getMajorVersion()I

    move-result v0

    const/16 v1, 0x31

    const/4 v2, 0x0

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v2

    .line 222
    .local v0, "useSyntheticAttribute":Z
    :goto_0
    if-eqz v0, :cond_1

    const/16 v2, 0x1000

    :cond_1
    move v1, v2

    .line 223
    .local v1, "mask":I
    iget v2, p0, Lnet/bytebuddy/jar/asm/FieldWriter;->accessFlags:I

    not-int v3, v1

    and-int/2addr v2, v3

    invoke-virtual {p1, v2}, Lnet/bytebuddy/jar/asm/ByteVector;->putShort(I)Lnet/bytebuddy/jar/asm/ByteVector;

    move-result-object v2

    iget v3, p0, Lnet/bytebuddy/jar/asm/FieldWriter;->nameIndex:I

    invoke-virtual {v2, v3}, Lnet/bytebuddy/jar/asm/ByteVector;->putShort(I)Lnet/bytebuddy/jar/asm/ByteVector;

    move-result-object v2

    iget v3, p0, Lnet/bytebuddy/jar/asm/FieldWriter;->descriptorIndex:I

    invoke-virtual {v2, v3}, Lnet/bytebuddy/jar/asm/ByteVector;->putShort(I)Lnet/bytebuddy/jar/asm/ByteVector;

    .line 226
    const/4 v2, 0x0

    .line 227
    .local v2, "attributesCount":I
    iget v3, p0, Lnet/bytebuddy/jar/asm/FieldWriter;->constantValueIndex:I

    if-eqz v3, :cond_2

    .line 228
    add-int/lit8 v2, v2, 0x1

    .line 230
    :cond_2
    iget v3, p0, Lnet/bytebuddy/jar/asm/FieldWriter;->accessFlags:I

    and-int/lit16 v4, v3, 0x1000

    if-eqz v4, :cond_3

    if-eqz v0, :cond_3

    .line 231
    add-int/lit8 v2, v2, 0x1

    .line 233
    :cond_3
    iget v4, p0, Lnet/bytebuddy/jar/asm/FieldWriter;->signatureIndex:I

    if-eqz v4, :cond_4

    .line 234
    add-int/lit8 v2, v2, 0x1

    .line 236
    :cond_4
    const/high16 v4, 0x20000

    and-int/2addr v3, v4

    if-eqz v3, :cond_5

    .line 237
    add-int/lit8 v2, v2, 0x1

    .line 239
    :cond_5
    iget-object v3, p0, Lnet/bytebuddy/jar/asm/FieldWriter;->lastRuntimeVisibleAnnotation:Lnet/bytebuddy/jar/asm/AnnotationWriter;

    if-eqz v3, :cond_6

    .line 240
    add-int/lit8 v2, v2, 0x1

    .line 242
    :cond_6
    iget-object v3, p0, Lnet/bytebuddy/jar/asm/FieldWriter;->lastRuntimeInvisibleAnnotation:Lnet/bytebuddy/jar/asm/AnnotationWriter;

    if-eqz v3, :cond_7

    .line 243
    add-int/lit8 v2, v2, 0x1

    .line 245
    :cond_7
    iget-object v3, p0, Lnet/bytebuddy/jar/asm/FieldWriter;->lastRuntimeVisibleTypeAnnotation:Lnet/bytebuddy/jar/asm/AnnotationWriter;

    if-eqz v3, :cond_8

    .line 246
    add-int/lit8 v2, v2, 0x1

    .line 248
    :cond_8
    iget-object v3, p0, Lnet/bytebuddy/jar/asm/FieldWriter;->lastRuntimeInvisibleTypeAnnotation:Lnet/bytebuddy/jar/asm/AnnotationWriter;

    if-eqz v3, :cond_9

    .line 249
    add-int/lit8 v2, v2, 0x1

    .line 251
    :cond_9
    iget-object v3, p0, Lnet/bytebuddy/jar/asm/FieldWriter;->firstAttribute:Lnet/bytebuddy/jar/asm/Attribute;

    if-eqz v3, :cond_a

    .line 252
    invoke-virtual {v3}, Lnet/bytebuddy/jar/asm/Attribute;->getAttributeCount()I

    move-result v3

    add-int/2addr v2, v3

    .line 254
    :cond_a
    invoke-virtual {p1, v2}, Lnet/bytebuddy/jar/asm/ByteVector;->putShort(I)Lnet/bytebuddy/jar/asm/ByteVector;

    .line 257
    iget v3, p0, Lnet/bytebuddy/jar/asm/FieldWriter;->constantValueIndex:I

    if-eqz v3, :cond_b

    .line 258
    iget-object v3, p0, Lnet/bytebuddy/jar/asm/FieldWriter;->symbolTable:Lnet/bytebuddy/jar/asm/SymbolTable;

    .line 259
    const-string v4, "ConstantValue"

    invoke-virtual {v3, v4}, Lnet/bytebuddy/jar/asm/SymbolTable;->addConstantUtf8(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p1, v3}, Lnet/bytebuddy/jar/asm/ByteVector;->putShort(I)Lnet/bytebuddy/jar/asm/ByteVector;

    move-result-object v3

    .line 260
    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Lnet/bytebuddy/jar/asm/ByteVector;->putInt(I)Lnet/bytebuddy/jar/asm/ByteVector;

    move-result-object v3

    iget v4, p0, Lnet/bytebuddy/jar/asm/FieldWriter;->constantValueIndex:I

    .line 261
    invoke-virtual {v3, v4}, Lnet/bytebuddy/jar/asm/ByteVector;->putShort(I)Lnet/bytebuddy/jar/asm/ByteVector;

    .line 263
    :cond_b
    iget-object v3, p0, Lnet/bytebuddy/jar/asm/FieldWriter;->symbolTable:Lnet/bytebuddy/jar/asm/SymbolTable;

    iget v4, p0, Lnet/bytebuddy/jar/asm/FieldWriter;->accessFlags:I

    iget v5, p0, Lnet/bytebuddy/jar/asm/FieldWriter;->signatureIndex:I

    invoke-static {v3, v4, v5, p1}, Lnet/bytebuddy/jar/asm/Attribute;->putAttributes(Lnet/bytebuddy/jar/asm/SymbolTable;IILnet/bytebuddy/jar/asm/ByteVector;)V

    .line 264
    iget-object v6, p0, Lnet/bytebuddy/jar/asm/FieldWriter;->symbolTable:Lnet/bytebuddy/jar/asm/SymbolTable;

    iget-object v7, p0, Lnet/bytebuddy/jar/asm/FieldWriter;->lastRuntimeVisibleAnnotation:Lnet/bytebuddy/jar/asm/AnnotationWriter;

    iget-object v8, p0, Lnet/bytebuddy/jar/asm/FieldWriter;->lastRuntimeInvisibleAnnotation:Lnet/bytebuddy/jar/asm/AnnotationWriter;

    iget-object v9, p0, Lnet/bytebuddy/jar/asm/FieldWriter;->lastRuntimeVisibleTypeAnnotation:Lnet/bytebuddy/jar/asm/AnnotationWriter;

    iget-object v10, p0, Lnet/bytebuddy/jar/asm/FieldWriter;->lastRuntimeInvisibleTypeAnnotation:Lnet/bytebuddy/jar/asm/AnnotationWriter;

    move-object v11, p1

    invoke-static/range {v6 .. v11}, Lnet/bytebuddy/jar/asm/AnnotationWriter;->putAnnotations(Lnet/bytebuddy/jar/asm/SymbolTable;Lnet/bytebuddy/jar/asm/AnnotationWriter;Lnet/bytebuddy/jar/asm/AnnotationWriter;Lnet/bytebuddy/jar/asm/AnnotationWriter;Lnet/bytebuddy/jar/asm/AnnotationWriter;Lnet/bytebuddy/jar/asm/ByteVector;)V

    .line 271
    iget-object v3, p0, Lnet/bytebuddy/jar/asm/FieldWriter;->firstAttribute:Lnet/bytebuddy/jar/asm/Attribute;

    if-eqz v3, :cond_c

    .line 272
    iget-object v4, p0, Lnet/bytebuddy/jar/asm/FieldWriter;->symbolTable:Lnet/bytebuddy/jar/asm/SymbolTable;

    invoke-virtual {v3, v4, p1}, Lnet/bytebuddy/jar/asm/Attribute;->putAttributes(Lnet/bytebuddy/jar/asm/SymbolTable;Lnet/bytebuddy/jar/asm/ByteVector;)V

    .line 274
    :cond_c
    return-void
.end method

.method public visitAnnotation(Ljava/lang/String;Z)Lnet/bytebuddy/jar/asm/AnnotationVisitor;
    .locals 2
    .param p1, "descriptor"    # Ljava/lang/String;
    .param p2, "visible"    # Z

    .line 146
    if-eqz p2, :cond_0

    .line 147
    iget-object v0, p0, Lnet/bytebuddy/jar/asm/FieldWriter;->symbolTable:Lnet/bytebuddy/jar/asm/SymbolTable;

    iget-object v1, p0, Lnet/bytebuddy/jar/asm/FieldWriter;->lastRuntimeVisibleAnnotation:Lnet/bytebuddy/jar/asm/AnnotationWriter;

    .line 148
    invoke-static {v0, p1, v1}, Lnet/bytebuddy/jar/asm/AnnotationWriter;->create(Lnet/bytebuddy/jar/asm/SymbolTable;Ljava/lang/String;Lnet/bytebuddy/jar/asm/AnnotationWriter;)Lnet/bytebuddy/jar/asm/AnnotationWriter;

    move-result-object v0

    iput-object v0, p0, Lnet/bytebuddy/jar/asm/FieldWriter;->lastRuntimeVisibleAnnotation:Lnet/bytebuddy/jar/asm/AnnotationWriter;

    .line 147
    return-object v0

    .line 150
    :cond_0
    iget-object v0, p0, Lnet/bytebuddy/jar/asm/FieldWriter;->symbolTable:Lnet/bytebuddy/jar/asm/SymbolTable;

    iget-object v1, p0, Lnet/bytebuddy/jar/asm/FieldWriter;->lastRuntimeInvisibleAnnotation:Lnet/bytebuddy/jar/asm/AnnotationWriter;

    .line 151
    invoke-static {v0, p1, v1}, Lnet/bytebuddy/jar/asm/AnnotationWriter;->create(Lnet/bytebuddy/jar/asm/SymbolTable;Ljava/lang/String;Lnet/bytebuddy/jar/asm/AnnotationWriter;)Lnet/bytebuddy/jar/asm/AnnotationWriter;

    move-result-object v0

    iput-object v0, p0, Lnet/bytebuddy/jar/asm/FieldWriter;->lastRuntimeInvisibleAnnotation:Lnet/bytebuddy/jar/asm/AnnotationWriter;

    .line 150
    return-object v0
.end method

.method public visitAttribute(Lnet/bytebuddy/jar/asm/Attribute;)V
    .locals 1
    .param p1, "attribute"    # Lnet/bytebuddy/jar/asm/Attribute;

    .line 172
    iget-object v0, p0, Lnet/bytebuddy/jar/asm/FieldWriter;->firstAttribute:Lnet/bytebuddy/jar/asm/Attribute;

    iput-object v0, p1, Lnet/bytebuddy/jar/asm/Attribute;->nextAttribute:Lnet/bytebuddy/jar/asm/Attribute;

    .line 173
    iput-object p1, p0, Lnet/bytebuddy/jar/asm/FieldWriter;->firstAttribute:Lnet/bytebuddy/jar/asm/Attribute;

    .line 174
    return-void
.end method

.method public visitEnd()V
    .locals 0

    .line 179
    return-void
.end method

.method public visitTypeAnnotation(ILnet/bytebuddy/jar/asm/TypePath;Ljava/lang/String;Z)Lnet/bytebuddy/jar/asm/AnnotationVisitor;
    .locals 2
    .param p1, "typeRef"    # I
    .param p2, "typePath"    # Lnet/bytebuddy/jar/asm/TypePath;
    .param p3, "descriptor"    # Ljava/lang/String;
    .param p4, "visible"    # Z

    .line 158
    if-eqz p4, :cond_0

    .line 159
    iget-object v0, p0, Lnet/bytebuddy/jar/asm/FieldWriter;->symbolTable:Lnet/bytebuddy/jar/asm/SymbolTable;

    iget-object v1, p0, Lnet/bytebuddy/jar/asm/FieldWriter;->lastRuntimeVisibleTypeAnnotation:Lnet/bytebuddy/jar/asm/AnnotationWriter;

    .line 160
    invoke-static {v0, p1, p2, p3, v1}, Lnet/bytebuddy/jar/asm/AnnotationWriter;->create(Lnet/bytebuddy/jar/asm/SymbolTable;ILnet/bytebuddy/jar/asm/TypePath;Ljava/lang/String;Lnet/bytebuddy/jar/asm/AnnotationWriter;)Lnet/bytebuddy/jar/asm/AnnotationWriter;

    move-result-object v0

    iput-object v0, p0, Lnet/bytebuddy/jar/asm/FieldWriter;->lastRuntimeVisibleTypeAnnotation:Lnet/bytebuddy/jar/asm/AnnotationWriter;

    .line 159
    return-object v0

    .line 163
    :cond_0
    iget-object v0, p0, Lnet/bytebuddy/jar/asm/FieldWriter;->symbolTable:Lnet/bytebuddy/jar/asm/SymbolTable;

    iget-object v1, p0, Lnet/bytebuddy/jar/asm/FieldWriter;->lastRuntimeInvisibleTypeAnnotation:Lnet/bytebuddy/jar/asm/AnnotationWriter;

    .line 164
    invoke-static {v0, p1, p2, p3, v1}, Lnet/bytebuddy/jar/asm/AnnotationWriter;->create(Lnet/bytebuddy/jar/asm/SymbolTable;ILnet/bytebuddy/jar/asm/TypePath;Ljava/lang/String;Lnet/bytebuddy/jar/asm/AnnotationWriter;)Lnet/bytebuddy/jar/asm/AnnotationWriter;

    move-result-object v0

    iput-object v0, p0, Lnet/bytebuddy/jar/asm/FieldWriter;->lastRuntimeInvisibleTypeAnnotation:Lnet/bytebuddy/jar/asm/AnnotationWriter;

    .line 163
    return-object v0
.end method
