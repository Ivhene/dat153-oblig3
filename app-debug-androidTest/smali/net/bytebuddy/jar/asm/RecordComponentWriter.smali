.class final Lnet/bytebuddy/jar/asm/RecordComponentWriter;
.super Lnet/bytebuddy/jar/asm/RecordComponentVisitor;
.source "RecordComponentWriter.java"


# instance fields
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
.method constructor <init>(Lnet/bytebuddy/jar/asm/SymbolTable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "symbolTable"    # Lnet/bytebuddy/jar/asm/SymbolTable;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "descriptor"    # Ljava/lang/String;
    .param p4, "signature"    # Ljava/lang/String;

    .line 97
    const/high16 v0, 0x90000

    invoke-direct {p0, v0}, Lnet/bytebuddy/jar/asm/RecordComponentVisitor;-><init>(I)V

    .line 98
    iput-object p1, p0, Lnet/bytebuddy/jar/asm/RecordComponentWriter;->symbolTable:Lnet/bytebuddy/jar/asm/SymbolTable;

    .line 99
    invoke-virtual {p1, p2}, Lnet/bytebuddy/jar/asm/SymbolTable;->addConstantUtf8(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lnet/bytebuddy/jar/asm/RecordComponentWriter;->nameIndex:I

    .line 100
    invoke-virtual {p1, p3}, Lnet/bytebuddy/jar/asm/SymbolTable;->addConstantUtf8(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lnet/bytebuddy/jar/asm/RecordComponentWriter;->descriptorIndex:I

    .line 101
    if-eqz p4, :cond_0

    .line 102
    invoke-virtual {p1, p4}, Lnet/bytebuddy/jar/asm/SymbolTable;->addConstantUtf8(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lnet/bytebuddy/jar/asm/RecordComponentWriter;->signatureIndex:I

    .line 104
    :cond_0
    return-void
.end method


# virtual methods
.method final collectAttributePrototypes(Lnet/bytebuddy/jar/asm/Attribute$Set;)V
    .locals 1
    .param p1, "attributePrototypes"    # Lnet/bytebuddy/jar/asm/Attribute$Set;

    .line 223
    iget-object v0, p0, Lnet/bytebuddy/jar/asm/RecordComponentWriter;->firstAttribute:Lnet/bytebuddy/jar/asm/Attribute;

    invoke-virtual {p1, v0}, Lnet/bytebuddy/jar/asm/Attribute$Set;->addAttributes(Lnet/bytebuddy/jar/asm/Attribute;)V

    .line 224
    return-void
.end method

.method computeRecordComponentInfoSize()I
    .locals 5

    .line 160
    const/4 v0, 0x6

    .line 161
    .local v0, "size":I
    iget-object v1, p0, Lnet/bytebuddy/jar/asm/RecordComponentWriter;->symbolTable:Lnet/bytebuddy/jar/asm/SymbolTable;

    const/4 v2, 0x0

    iget v3, p0, Lnet/bytebuddy/jar/asm/RecordComponentWriter;->signatureIndex:I

    invoke-static {v1, v2, v3}, Lnet/bytebuddy/jar/asm/Attribute;->computeAttributesSize(Lnet/bytebuddy/jar/asm/SymbolTable;II)I

    move-result v1

    add-int/2addr v0, v1

    .line 162
    iget-object v1, p0, Lnet/bytebuddy/jar/asm/RecordComponentWriter;->lastRuntimeVisibleAnnotation:Lnet/bytebuddy/jar/asm/AnnotationWriter;

    iget-object v2, p0, Lnet/bytebuddy/jar/asm/RecordComponentWriter;->lastRuntimeInvisibleAnnotation:Lnet/bytebuddy/jar/asm/AnnotationWriter;

    iget-object v3, p0, Lnet/bytebuddy/jar/asm/RecordComponentWriter;->lastRuntimeVisibleTypeAnnotation:Lnet/bytebuddy/jar/asm/AnnotationWriter;

    iget-object v4, p0, Lnet/bytebuddy/jar/asm/RecordComponentWriter;->lastRuntimeInvisibleTypeAnnotation:Lnet/bytebuddy/jar/asm/AnnotationWriter;

    .line 163
    invoke-static {v1, v2, v3, v4}, Lnet/bytebuddy/jar/asm/AnnotationWriter;->computeAnnotationsSize(Lnet/bytebuddy/jar/asm/AnnotationWriter;Lnet/bytebuddy/jar/asm/AnnotationWriter;Lnet/bytebuddy/jar/asm/AnnotationWriter;Lnet/bytebuddy/jar/asm/AnnotationWriter;)I

    move-result v1

    add-int/2addr v0, v1

    .line 168
    iget-object v1, p0, Lnet/bytebuddy/jar/asm/RecordComponentWriter;->firstAttribute:Lnet/bytebuddy/jar/asm/Attribute;

    if-eqz v1, :cond_0

    .line 169
    iget-object v2, p0, Lnet/bytebuddy/jar/asm/RecordComponentWriter;->symbolTable:Lnet/bytebuddy/jar/asm/SymbolTable;

    invoke-virtual {v1, v2}, Lnet/bytebuddy/jar/asm/Attribute;->computeAttributesSize(Lnet/bytebuddy/jar/asm/SymbolTable;)I

    move-result v1

    add-int/2addr v0, v1

    .line 171
    :cond_0
    return v0
.end method

.method putRecordComponentInfo(Lnet/bytebuddy/jar/asm/ByteVector;)V
    .locals 10
    .param p1, "output"    # Lnet/bytebuddy/jar/asm/ByteVector;

    .line 181
    iget v0, p0, Lnet/bytebuddy/jar/asm/RecordComponentWriter;->nameIndex:I

    invoke-virtual {p1, v0}, Lnet/bytebuddy/jar/asm/ByteVector;->putShort(I)Lnet/bytebuddy/jar/asm/ByteVector;

    move-result-object v0

    iget v1, p0, Lnet/bytebuddy/jar/asm/RecordComponentWriter;->descriptorIndex:I

    invoke-virtual {v0, v1}, Lnet/bytebuddy/jar/asm/ByteVector;->putShort(I)Lnet/bytebuddy/jar/asm/ByteVector;

    .line 184
    const/4 v0, 0x0

    .line 185
    .local v0, "attributesCount":I
    iget v1, p0, Lnet/bytebuddy/jar/asm/RecordComponentWriter;->signatureIndex:I

    if-eqz v1, :cond_0

    .line 186
    add-int/lit8 v0, v0, 0x1

    .line 188
    :cond_0
    iget-object v1, p0, Lnet/bytebuddy/jar/asm/RecordComponentWriter;->lastRuntimeVisibleAnnotation:Lnet/bytebuddy/jar/asm/AnnotationWriter;

    if-eqz v1, :cond_1

    .line 189
    add-int/lit8 v0, v0, 0x1

    .line 191
    :cond_1
    iget-object v1, p0, Lnet/bytebuddy/jar/asm/RecordComponentWriter;->lastRuntimeInvisibleAnnotation:Lnet/bytebuddy/jar/asm/AnnotationWriter;

    if-eqz v1, :cond_2

    .line 192
    add-int/lit8 v0, v0, 0x1

    .line 194
    :cond_2
    iget-object v1, p0, Lnet/bytebuddy/jar/asm/RecordComponentWriter;->lastRuntimeVisibleTypeAnnotation:Lnet/bytebuddy/jar/asm/AnnotationWriter;

    if-eqz v1, :cond_3

    .line 195
    add-int/lit8 v0, v0, 0x1

    .line 197
    :cond_3
    iget-object v1, p0, Lnet/bytebuddy/jar/asm/RecordComponentWriter;->lastRuntimeInvisibleTypeAnnotation:Lnet/bytebuddy/jar/asm/AnnotationWriter;

    if-eqz v1, :cond_4

    .line 198
    add-int/lit8 v0, v0, 0x1

    .line 200
    :cond_4
    iget-object v1, p0, Lnet/bytebuddy/jar/asm/RecordComponentWriter;->firstAttribute:Lnet/bytebuddy/jar/asm/Attribute;

    if-eqz v1, :cond_5

    .line 201
    invoke-virtual {v1}, Lnet/bytebuddy/jar/asm/Attribute;->getAttributeCount()I

    move-result v1

    add-int/2addr v0, v1

    .line 203
    :cond_5
    invoke-virtual {p1, v0}, Lnet/bytebuddy/jar/asm/ByteVector;->putShort(I)Lnet/bytebuddy/jar/asm/ByteVector;

    .line 204
    iget-object v1, p0, Lnet/bytebuddy/jar/asm/RecordComponentWriter;->symbolTable:Lnet/bytebuddy/jar/asm/SymbolTable;

    const/4 v2, 0x0

    iget v3, p0, Lnet/bytebuddy/jar/asm/RecordComponentWriter;->signatureIndex:I

    invoke-static {v1, v2, v3, p1}, Lnet/bytebuddy/jar/asm/Attribute;->putAttributes(Lnet/bytebuddy/jar/asm/SymbolTable;IILnet/bytebuddy/jar/asm/ByteVector;)V

    .line 205
    iget-object v4, p0, Lnet/bytebuddy/jar/asm/RecordComponentWriter;->symbolTable:Lnet/bytebuddy/jar/asm/SymbolTable;

    iget-object v5, p0, Lnet/bytebuddy/jar/asm/RecordComponentWriter;->lastRuntimeVisibleAnnotation:Lnet/bytebuddy/jar/asm/AnnotationWriter;

    iget-object v6, p0, Lnet/bytebuddy/jar/asm/RecordComponentWriter;->lastRuntimeInvisibleAnnotation:Lnet/bytebuddy/jar/asm/AnnotationWriter;

    iget-object v7, p0, Lnet/bytebuddy/jar/asm/RecordComponentWriter;->lastRuntimeVisibleTypeAnnotation:Lnet/bytebuddy/jar/asm/AnnotationWriter;

    iget-object v8, p0, Lnet/bytebuddy/jar/asm/RecordComponentWriter;->lastRuntimeInvisibleTypeAnnotation:Lnet/bytebuddy/jar/asm/AnnotationWriter;

    move-object v9, p1

    invoke-static/range {v4 .. v9}, Lnet/bytebuddy/jar/asm/AnnotationWriter;->putAnnotations(Lnet/bytebuddy/jar/asm/SymbolTable;Lnet/bytebuddy/jar/asm/AnnotationWriter;Lnet/bytebuddy/jar/asm/AnnotationWriter;Lnet/bytebuddy/jar/asm/AnnotationWriter;Lnet/bytebuddy/jar/asm/AnnotationWriter;Lnet/bytebuddy/jar/asm/ByteVector;)V

    .line 212
    iget-object v1, p0, Lnet/bytebuddy/jar/asm/RecordComponentWriter;->firstAttribute:Lnet/bytebuddy/jar/asm/Attribute;

    if-eqz v1, :cond_6

    .line 213
    iget-object v2, p0, Lnet/bytebuddy/jar/asm/RecordComponentWriter;->symbolTable:Lnet/bytebuddy/jar/asm/SymbolTable;

    invoke-virtual {v1, v2, p1}, Lnet/bytebuddy/jar/asm/Attribute;->putAttributes(Lnet/bytebuddy/jar/asm/SymbolTable;Lnet/bytebuddy/jar/asm/ByteVector;)V

    .line 215
    :cond_6
    return-void
.end method

.method public visitAnnotation(Ljava/lang/String;Z)Lnet/bytebuddy/jar/asm/AnnotationVisitor;
    .locals 2
    .param p1, "descriptor"    # Ljava/lang/String;
    .param p2, "visible"    # Z

    .line 112
    if-eqz p2, :cond_0

    .line 113
    iget-object v0, p0, Lnet/bytebuddy/jar/asm/RecordComponentWriter;->symbolTable:Lnet/bytebuddy/jar/asm/SymbolTable;

    iget-object v1, p0, Lnet/bytebuddy/jar/asm/RecordComponentWriter;->lastRuntimeVisibleAnnotation:Lnet/bytebuddy/jar/asm/AnnotationWriter;

    .line 114
    invoke-static {v0, p1, v1}, Lnet/bytebuddy/jar/asm/AnnotationWriter;->create(Lnet/bytebuddy/jar/asm/SymbolTable;Ljava/lang/String;Lnet/bytebuddy/jar/asm/AnnotationWriter;)Lnet/bytebuddy/jar/asm/AnnotationWriter;

    move-result-object v0

    iput-object v0, p0, Lnet/bytebuddy/jar/asm/RecordComponentWriter;->lastRuntimeVisibleAnnotation:Lnet/bytebuddy/jar/asm/AnnotationWriter;

    .line 113
    return-object v0

    .line 116
    :cond_0
    iget-object v0, p0, Lnet/bytebuddy/jar/asm/RecordComponentWriter;->symbolTable:Lnet/bytebuddy/jar/asm/SymbolTable;

    iget-object v1, p0, Lnet/bytebuddy/jar/asm/RecordComponentWriter;->lastRuntimeInvisibleAnnotation:Lnet/bytebuddy/jar/asm/AnnotationWriter;

    .line 117
    invoke-static {v0, p1, v1}, Lnet/bytebuddy/jar/asm/AnnotationWriter;->create(Lnet/bytebuddy/jar/asm/SymbolTable;Ljava/lang/String;Lnet/bytebuddy/jar/asm/AnnotationWriter;)Lnet/bytebuddy/jar/asm/AnnotationWriter;

    move-result-object v0

    iput-object v0, p0, Lnet/bytebuddy/jar/asm/RecordComponentWriter;->lastRuntimeInvisibleAnnotation:Lnet/bytebuddy/jar/asm/AnnotationWriter;

    .line 116
    return-object v0
.end method

.method public visitAttribute(Lnet/bytebuddy/jar/asm/Attribute;)V
    .locals 1
    .param p1, "attribute"    # Lnet/bytebuddy/jar/asm/Attribute;

    .line 138
    iget-object v0, p0, Lnet/bytebuddy/jar/asm/RecordComponentWriter;->firstAttribute:Lnet/bytebuddy/jar/asm/Attribute;

    iput-object v0, p1, Lnet/bytebuddy/jar/asm/Attribute;->nextAttribute:Lnet/bytebuddy/jar/asm/Attribute;

    .line 139
    iput-object p1, p0, Lnet/bytebuddy/jar/asm/RecordComponentWriter;->firstAttribute:Lnet/bytebuddy/jar/asm/Attribute;

    .line 140
    return-void
.end method

.method public visitEnd()V
    .locals 0

    .line 145
    return-void
.end method

.method public visitTypeAnnotation(ILnet/bytebuddy/jar/asm/TypePath;Ljava/lang/String;Z)Lnet/bytebuddy/jar/asm/AnnotationVisitor;
    .locals 2
    .param p1, "typeRef"    # I
    .param p2, "typePath"    # Lnet/bytebuddy/jar/asm/TypePath;
    .param p3, "descriptor"    # Ljava/lang/String;
    .param p4, "visible"    # Z

    .line 124
    if-eqz p4, :cond_0

    .line 125
    iget-object v0, p0, Lnet/bytebuddy/jar/asm/RecordComponentWriter;->symbolTable:Lnet/bytebuddy/jar/asm/SymbolTable;

    iget-object v1, p0, Lnet/bytebuddy/jar/asm/RecordComponentWriter;->lastRuntimeVisibleTypeAnnotation:Lnet/bytebuddy/jar/asm/AnnotationWriter;

    .line 126
    invoke-static {v0, p1, p2, p3, v1}, Lnet/bytebuddy/jar/asm/AnnotationWriter;->create(Lnet/bytebuddy/jar/asm/SymbolTable;ILnet/bytebuddy/jar/asm/TypePath;Ljava/lang/String;Lnet/bytebuddy/jar/asm/AnnotationWriter;)Lnet/bytebuddy/jar/asm/AnnotationWriter;

    move-result-object v0

    iput-object v0, p0, Lnet/bytebuddy/jar/asm/RecordComponentWriter;->lastRuntimeVisibleTypeAnnotation:Lnet/bytebuddy/jar/asm/AnnotationWriter;

    .line 125
    return-object v0

    .line 129
    :cond_0
    iget-object v0, p0, Lnet/bytebuddy/jar/asm/RecordComponentWriter;->symbolTable:Lnet/bytebuddy/jar/asm/SymbolTable;

    iget-object v1, p0, Lnet/bytebuddy/jar/asm/RecordComponentWriter;->lastRuntimeInvisibleTypeAnnotation:Lnet/bytebuddy/jar/asm/AnnotationWriter;

    .line 130
    invoke-static {v0, p1, p2, p3, v1}, Lnet/bytebuddy/jar/asm/AnnotationWriter;->create(Lnet/bytebuddy/jar/asm/SymbolTable;ILnet/bytebuddy/jar/asm/TypePath;Ljava/lang/String;Lnet/bytebuddy/jar/asm/AnnotationWriter;)Lnet/bytebuddy/jar/asm/AnnotationWriter;

    move-result-object v0

    iput-object v0, p0, Lnet/bytebuddy/jar/asm/RecordComponentWriter;->lastRuntimeInvisibleTypeAnnotation:Lnet/bytebuddy/jar/asm/AnnotationWriter;

    .line 129
    return-object v0
.end method
