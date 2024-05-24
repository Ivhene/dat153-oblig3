.class final Lnet/bytebuddy/jar/asm/AnnotationWriter;
.super Lnet/bytebuddy/jar/asm/AnnotationVisitor;
.source "AnnotationWriter.java"


# instance fields
.field private final annotation:Lnet/bytebuddy/jar/asm/ByteVector;

.field private nextAnnotation:Lnet/bytebuddy/jar/asm/AnnotationWriter;

.field private numElementValuePairs:I

.field private final numElementValuePairsOffset:I

.field private final previousAnnotation:Lnet/bytebuddy/jar/asm/AnnotationWriter;

.field private final symbolTable:Lnet/bytebuddy/jar/asm/SymbolTable;

.field private final useNamedValues:Z


# direct methods
.method constructor <init>(Lnet/bytebuddy/jar/asm/SymbolTable;ZLnet/bytebuddy/jar/asm/ByteVector;Lnet/bytebuddy/jar/asm/AnnotationWriter;)V
    .locals 1
    .param p1, "symbolTable"    # Lnet/bytebuddy/jar/asm/SymbolTable;
    .param p2, "useNamedValues"    # Z
    .param p3, "annotation"    # Lnet/bytebuddy/jar/asm/ByteVector;
    .param p4, "previousAnnotation"    # Lnet/bytebuddy/jar/asm/AnnotationWriter;

    .line 115
    const/high16 v0, 0x90000

    invoke-direct {p0, v0}, Lnet/bytebuddy/jar/asm/AnnotationVisitor;-><init>(I)V

    .line 116
    iput-object p1, p0, Lnet/bytebuddy/jar/asm/AnnotationWriter;->symbolTable:Lnet/bytebuddy/jar/asm/SymbolTable;

    .line 117
    iput-boolean p2, p0, Lnet/bytebuddy/jar/asm/AnnotationWriter;->useNamedValues:Z

    .line 118
    iput-object p3, p0, Lnet/bytebuddy/jar/asm/AnnotationWriter;->annotation:Lnet/bytebuddy/jar/asm/ByteVector;

    .line 120
    iget v0, p3, Lnet/bytebuddy/jar/asm/ByteVector;->length:I

    if-nez v0, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    :cond_0
    iget v0, p3, Lnet/bytebuddy/jar/asm/ByteVector;->length:I

    add-int/lit8 v0, v0, -0x2

    :goto_0
    iput v0, p0, Lnet/bytebuddy/jar/asm/AnnotationWriter;->numElementValuePairsOffset:I

    .line 121
    iput-object p4, p0, Lnet/bytebuddy/jar/asm/AnnotationWriter;->previousAnnotation:Lnet/bytebuddy/jar/asm/AnnotationWriter;

    .line 122
    if-eqz p4, :cond_1

    .line 123
    iput-object p0, p4, Lnet/bytebuddy/jar/asm/AnnotationWriter;->nextAnnotation:Lnet/bytebuddy/jar/asm/AnnotationWriter;

    .line 125
    :cond_1
    return-void
.end method

.method static computeAnnotationsSize(Lnet/bytebuddy/jar/asm/AnnotationWriter;Lnet/bytebuddy/jar/asm/AnnotationWriter;Lnet/bytebuddy/jar/asm/AnnotationWriter;Lnet/bytebuddy/jar/asm/AnnotationWriter;)I
    .locals 2
    .param p0, "lastRuntimeVisibleAnnotation"    # Lnet/bytebuddy/jar/asm/AnnotationWriter;
    .param p1, "lastRuntimeInvisibleAnnotation"    # Lnet/bytebuddy/jar/asm/AnnotationWriter;
    .param p2, "lastRuntimeVisibleTypeAnnotation"    # Lnet/bytebuddy/jar/asm/AnnotationWriter;
    .param p3, "lastRuntimeInvisibleTypeAnnotation"    # Lnet/bytebuddy/jar/asm/AnnotationWriter;

    .line 372
    const/4 v0, 0x0

    .line 373
    .local v0, "size":I
    if-eqz p0, :cond_0

    .line 374
    nop

    .line 375
    const-string v1, "RuntimeVisibleAnnotations"

    invoke-virtual {p0, v1}, Lnet/bytebuddy/jar/asm/AnnotationWriter;->computeAnnotationsSize(Ljava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 378
    :cond_0
    if-eqz p1, :cond_1

    .line 379
    nop

    .line 380
    const-string v1, "RuntimeInvisibleAnnotations"

    invoke-virtual {p1, v1}, Lnet/bytebuddy/jar/asm/AnnotationWriter;->computeAnnotationsSize(Ljava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 383
    :cond_1
    if-eqz p2, :cond_2

    .line 384
    nop

    .line 385
    const-string v1, "RuntimeVisibleTypeAnnotations"

    invoke-virtual {p2, v1}, Lnet/bytebuddy/jar/asm/AnnotationWriter;->computeAnnotationsSize(Ljava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 388
    :cond_2
    if-eqz p3, :cond_3

    .line 389
    nop

    .line 390
    const-string v1, "RuntimeInvisibleTypeAnnotations"

    invoke-virtual {p3, v1}, Lnet/bytebuddy/jar/asm/AnnotationWriter;->computeAnnotationsSize(Ljava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 393
    :cond_3
    return v0
.end method

.method static computeParameterAnnotationsSize(Ljava/lang/String;[Lnet/bytebuddy/jar/asm/AnnotationWriter;I)I
    .locals 4
    .param p0, "attributeName"    # Ljava/lang/String;
    .param p1, "annotationWriters"    # [Lnet/bytebuddy/jar/asm/AnnotationWriter;
    .param p2, "annotableParameterCount"    # I

    .line 496
    mul-int/lit8 v0, p2, 0x2

    add-int/lit8 v0, v0, 0x7

    .line 497
    .local v0, "attributeSize":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, p2, :cond_1

    .line 498
    aget-object v2, p1, v1

    .line 499
    .local v2, "annotationWriter":Lnet/bytebuddy/jar/asm/AnnotationWriter;
    nop

    .line 500
    if-nez v2, :cond_0

    const/4 v3, 0x0

    goto :goto_1

    :cond_0
    invoke-virtual {v2, p0}, Lnet/bytebuddy/jar/asm/AnnotationWriter;->computeAnnotationsSize(Ljava/lang/String;)I

    move-result v3

    add-int/lit8 v3, v3, -0x8

    :goto_1
    add-int/2addr v0, v3

    .line 497
    .end local v2    # "annotationWriter":Lnet/bytebuddy/jar/asm/AnnotationWriter;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 502
    .end local v1    # "i":I
    :cond_1
    return v0
.end method

.method static create(Lnet/bytebuddy/jar/asm/SymbolTable;ILnet/bytebuddy/jar/asm/TypePath;Ljava/lang/String;Lnet/bytebuddy/jar/asm/AnnotationWriter;)Lnet/bytebuddy/jar/asm/AnnotationWriter;
    .locals 3
    .param p0, "symbolTable"    # Lnet/bytebuddy/jar/asm/SymbolTable;
    .param p1, "typeRef"    # I
    .param p2, "typePath"    # Lnet/bytebuddy/jar/asm/TypePath;
    .param p3, "descriptor"    # Ljava/lang/String;
    .param p4, "previousAnnotation"    # Lnet/bytebuddy/jar/asm/AnnotationWriter;

    .line 175
    new-instance v0, Lnet/bytebuddy/jar/asm/ByteVector;

    invoke-direct {v0}, Lnet/bytebuddy/jar/asm/ByteVector;-><init>()V

    .line 177
    .local v0, "typeAnnotation":Lnet/bytebuddy/jar/asm/ByteVector;
    invoke-static {p1, v0}, Lnet/bytebuddy/jar/asm/TypeReference;->putTarget(ILnet/bytebuddy/jar/asm/ByteVector;)V

    .line 178
    invoke-static {p2, v0}, Lnet/bytebuddy/jar/asm/TypePath;->put(Lnet/bytebuddy/jar/asm/TypePath;Lnet/bytebuddy/jar/asm/ByteVector;)V

    .line 180
    invoke-virtual {p0, p3}, Lnet/bytebuddy/jar/asm/SymbolTable;->addConstantUtf8(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lnet/bytebuddy/jar/asm/ByteVector;->putShort(I)Lnet/bytebuddy/jar/asm/ByteVector;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lnet/bytebuddy/jar/asm/ByteVector;->putShort(I)Lnet/bytebuddy/jar/asm/ByteVector;

    .line 181
    new-instance v1, Lnet/bytebuddy/jar/asm/AnnotationWriter;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2, v0, p4}, Lnet/bytebuddy/jar/asm/AnnotationWriter;-><init>(Lnet/bytebuddy/jar/asm/SymbolTable;ZLnet/bytebuddy/jar/asm/ByteVector;Lnet/bytebuddy/jar/asm/AnnotationWriter;)V

    return-object v1
.end method

.method static create(Lnet/bytebuddy/jar/asm/SymbolTable;Ljava/lang/String;Lnet/bytebuddy/jar/asm/AnnotationWriter;)Lnet/bytebuddy/jar/asm/AnnotationWriter;
    .locals 3
    .param p0, "symbolTable"    # Lnet/bytebuddy/jar/asm/SymbolTable;
    .param p1, "descriptor"    # Ljava/lang/String;
    .param p2, "previousAnnotation"    # Lnet/bytebuddy/jar/asm/AnnotationWriter;

    .line 143
    new-instance v0, Lnet/bytebuddy/jar/asm/ByteVector;

    invoke-direct {v0}, Lnet/bytebuddy/jar/asm/ByteVector;-><init>()V

    .line 145
    .local v0, "annotation":Lnet/bytebuddy/jar/asm/ByteVector;
    invoke-virtual {p0, p1}, Lnet/bytebuddy/jar/asm/SymbolTable;->addConstantUtf8(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lnet/bytebuddy/jar/asm/ByteVector;->putShort(I)Lnet/bytebuddy/jar/asm/ByteVector;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lnet/bytebuddy/jar/asm/ByteVector;->putShort(I)Lnet/bytebuddy/jar/asm/ByteVector;

    .line 146
    new-instance v1, Lnet/bytebuddy/jar/asm/AnnotationWriter;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2, v0, p2}, Lnet/bytebuddy/jar/asm/AnnotationWriter;-><init>(Lnet/bytebuddy/jar/asm/SymbolTable;ZLnet/bytebuddy/jar/asm/ByteVector;Lnet/bytebuddy/jar/asm/AnnotationWriter;)V

    return-object v1
.end method

.method static putAnnotations(Lnet/bytebuddy/jar/asm/SymbolTable;Lnet/bytebuddy/jar/asm/AnnotationWriter;Lnet/bytebuddy/jar/asm/AnnotationWriter;Lnet/bytebuddy/jar/asm/AnnotationWriter;Lnet/bytebuddy/jar/asm/AnnotationWriter;Lnet/bytebuddy/jar/asm/ByteVector;)V
    .locals 1
    .param p0, "symbolTable"    # Lnet/bytebuddy/jar/asm/SymbolTable;
    .param p1, "lastRuntimeVisibleAnnotation"    # Lnet/bytebuddy/jar/asm/AnnotationWriter;
    .param p2, "lastRuntimeInvisibleAnnotation"    # Lnet/bytebuddy/jar/asm/AnnotationWriter;
    .param p3, "lastRuntimeVisibleTypeAnnotation"    # Lnet/bytebuddy/jar/asm/AnnotationWriter;
    .param p4, "lastRuntimeInvisibleTypeAnnotation"    # Lnet/bytebuddy/jar/asm/AnnotationWriter;
    .param p5, "output"    # Lnet/bytebuddy/jar/asm/ByteVector;

    .line 455
    if-eqz p1, :cond_0

    .line 456
    nop

    .line 457
    const-string v0, "RuntimeVisibleAnnotations"

    invoke-virtual {p0, v0}, Lnet/bytebuddy/jar/asm/SymbolTable;->addConstantUtf8(Ljava/lang/String;)I

    move-result v0

    .line 456
    invoke-virtual {p1, v0, p5}, Lnet/bytebuddy/jar/asm/AnnotationWriter;->putAnnotations(ILnet/bytebuddy/jar/asm/ByteVector;)V

    .line 459
    :cond_0
    if-eqz p2, :cond_1

    .line 460
    nop

    .line 461
    const-string v0, "RuntimeInvisibleAnnotations"

    invoke-virtual {p0, v0}, Lnet/bytebuddy/jar/asm/SymbolTable;->addConstantUtf8(Ljava/lang/String;)I

    move-result v0

    .line 460
    invoke-virtual {p2, v0, p5}, Lnet/bytebuddy/jar/asm/AnnotationWriter;->putAnnotations(ILnet/bytebuddy/jar/asm/ByteVector;)V

    .line 463
    :cond_1
    if-eqz p3, :cond_2

    .line 464
    nop

    .line 465
    const-string v0, "RuntimeVisibleTypeAnnotations"

    invoke-virtual {p0, v0}, Lnet/bytebuddy/jar/asm/SymbolTable;->addConstantUtf8(Ljava/lang/String;)I

    move-result v0

    .line 464
    invoke-virtual {p3, v0, p5}, Lnet/bytebuddy/jar/asm/AnnotationWriter;->putAnnotations(ILnet/bytebuddy/jar/asm/ByteVector;)V

    .line 467
    :cond_2
    if-eqz p4, :cond_3

    .line 468
    nop

    .line 469
    const-string v0, "RuntimeInvisibleTypeAnnotations"

    invoke-virtual {p0, v0}, Lnet/bytebuddy/jar/asm/SymbolTable;->addConstantUtf8(Ljava/lang/String;)I

    move-result v0

    .line 468
    invoke-virtual {p4, v0, p5}, Lnet/bytebuddy/jar/asm/AnnotationWriter;->putAnnotations(ILnet/bytebuddy/jar/asm/ByteVector;)V

    .line 471
    :cond_3
    return-void
.end method

.method static putParameterAnnotations(I[Lnet/bytebuddy/jar/asm/AnnotationWriter;ILnet/bytebuddy/jar/asm/ByteVector;)V
    .locals 8
    .param p0, "attributeNameIndex"    # I
    .param p1, "annotationWriters"    # [Lnet/bytebuddy/jar/asm/AnnotationWriter;
    .param p2, "annotableParameterCount"    # I
    .param p3, "output"    # Lnet/bytebuddy/jar/asm/ByteVector;

    .line 524
    mul-int/lit8 v0, p2, 0x2

    add-int/lit8 v0, v0, 0x1

    .line 525
    .local v0, "attributeLength":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/4 v2, 0x0

    if-ge v1, p2, :cond_1

    .line 526
    aget-object v3, p1, v1

    .line 527
    .local v3, "annotationWriter":Lnet/bytebuddy/jar/asm/AnnotationWriter;
    nop

    .line 528
    if-nez v3, :cond_0

    goto :goto_1

    :cond_0
    const/4 v2, 0x0

    invoke-virtual {v3, v2}, Lnet/bytebuddy/jar/asm/AnnotationWriter;->computeAnnotationsSize(Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v2, v2, -0x8

    :goto_1
    add-int/2addr v0, v2

    .line 525
    .end local v3    # "annotationWriter":Lnet/bytebuddy/jar/asm/AnnotationWriter;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 530
    .end local v1    # "i":I
    :cond_1
    invoke-virtual {p3, p0}, Lnet/bytebuddy/jar/asm/ByteVector;->putShort(I)Lnet/bytebuddy/jar/asm/ByteVector;

    .line 531
    invoke-virtual {p3, v0}, Lnet/bytebuddy/jar/asm/ByteVector;->putInt(I)Lnet/bytebuddy/jar/asm/ByteVector;

    .line 532
    invoke-virtual {p3, p2}, Lnet/bytebuddy/jar/asm/ByteVector;->putByte(I)Lnet/bytebuddy/jar/asm/ByteVector;

    .line 533
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_2
    if-ge v1, p2, :cond_4

    .line 534
    aget-object v3, p1, v1

    .line 535
    .restart local v3    # "annotationWriter":Lnet/bytebuddy/jar/asm/AnnotationWriter;
    const/4 v4, 0x0

    .line 536
    .local v4, "firstAnnotation":Lnet/bytebuddy/jar/asm/AnnotationWriter;
    const/4 v5, 0x0

    .line 537
    .local v5, "numAnnotations":I
    :goto_3
    if-eqz v3, :cond_2

    .line 539
    invoke-virtual {v3}, Lnet/bytebuddy/jar/asm/AnnotationWriter;->visitEnd()V

    .line 540
    add-int/lit8 v5, v5, 0x1

    .line 541
    move-object v4, v3

    .line 542
    iget-object v3, v3, Lnet/bytebuddy/jar/asm/AnnotationWriter;->previousAnnotation:Lnet/bytebuddy/jar/asm/AnnotationWriter;

    goto :goto_3

    .line 544
    :cond_2
    invoke-virtual {p3, v5}, Lnet/bytebuddy/jar/asm/ByteVector;->putShort(I)Lnet/bytebuddy/jar/asm/ByteVector;

    .line 545
    move-object v3, v4

    .line 546
    :goto_4
    if-eqz v3, :cond_3

    .line 547
    iget-object v6, v3, Lnet/bytebuddy/jar/asm/AnnotationWriter;->annotation:Lnet/bytebuddy/jar/asm/ByteVector;

    iget-object v6, v6, Lnet/bytebuddy/jar/asm/ByteVector;->data:[B

    iget-object v7, v3, Lnet/bytebuddy/jar/asm/AnnotationWriter;->annotation:Lnet/bytebuddy/jar/asm/ByteVector;

    iget v7, v7, Lnet/bytebuddy/jar/asm/ByteVector;->length:I

    invoke-virtual {p3, v6, v2, v7}, Lnet/bytebuddy/jar/asm/ByteVector;->putByteArray([BII)Lnet/bytebuddy/jar/asm/ByteVector;

    .line 549
    iget-object v3, v3, Lnet/bytebuddy/jar/asm/AnnotationWriter;->nextAnnotation:Lnet/bytebuddy/jar/asm/AnnotationWriter;

    goto :goto_4

    .line 533
    .end local v3    # "annotationWriter":Lnet/bytebuddy/jar/asm/AnnotationWriter;
    .end local v4    # "firstAnnotation":Lnet/bytebuddy/jar/asm/AnnotationWriter;
    .end local v5    # "numAnnotations":I
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 552
    .end local v1    # "i":I
    :cond_4
    return-void
.end method


# virtual methods
.method computeAnnotationsSize(Ljava/lang/String;)I
    .locals 3
    .param p1, "attributeName"    # Ljava/lang/String;

    .line 333
    if-eqz p1, :cond_0

    .line 334
    iget-object v0, p0, Lnet/bytebuddy/jar/asm/AnnotationWriter;->symbolTable:Lnet/bytebuddy/jar/asm/SymbolTable;

    invoke-virtual {v0, p1}, Lnet/bytebuddy/jar/asm/SymbolTable;->addConstantUtf8(Ljava/lang/String;)I

    .line 337
    :cond_0
    const/16 v0, 0x8

    .line 338
    .local v0, "attributeSize":I
    move-object v1, p0

    .line 339
    .local v1, "annotationWriter":Lnet/bytebuddy/jar/asm/AnnotationWriter;
    :goto_0
    if-eqz v1, :cond_1

    .line 340
    iget-object v2, v1, Lnet/bytebuddy/jar/asm/AnnotationWriter;->annotation:Lnet/bytebuddy/jar/asm/ByteVector;

    iget v2, v2, Lnet/bytebuddy/jar/asm/ByteVector;->length:I

    add-int/2addr v0, v2

    .line 341
    iget-object v1, v1, Lnet/bytebuddy/jar/asm/AnnotationWriter;->previousAnnotation:Lnet/bytebuddy/jar/asm/AnnotationWriter;

    goto :goto_0

    .line 343
    :cond_1
    return v0
.end method

.method putAnnotations(ILnet/bytebuddy/jar/asm/ByteVector;)V
    .locals 7
    .param p1, "attributeNameIndex"    # I
    .param p2, "output"    # Lnet/bytebuddy/jar/asm/ByteVector;

    .line 406
    const/4 v0, 0x2

    .line 407
    .local v0, "attributeLength":I
    const/4 v1, 0x0

    .line 408
    .local v1, "numAnnotations":I
    move-object v2, p0

    .line 409
    .local v2, "annotationWriter":Lnet/bytebuddy/jar/asm/AnnotationWriter;
    const/4 v3, 0x0

    .line 410
    .local v3, "firstAnnotation":Lnet/bytebuddy/jar/asm/AnnotationWriter;
    :goto_0
    if-eqz v2, :cond_0

    .line 412
    invoke-virtual {v2}, Lnet/bytebuddy/jar/asm/AnnotationWriter;->visitEnd()V

    .line 413
    iget-object v4, v2, Lnet/bytebuddy/jar/asm/AnnotationWriter;->annotation:Lnet/bytebuddy/jar/asm/ByteVector;

    iget v4, v4, Lnet/bytebuddy/jar/asm/ByteVector;->length:I

    add-int/2addr v0, v4

    .line 414
    add-int/lit8 v1, v1, 0x1

    .line 415
    move-object v3, v2

    .line 416
    iget-object v2, v2, Lnet/bytebuddy/jar/asm/AnnotationWriter;->previousAnnotation:Lnet/bytebuddy/jar/asm/AnnotationWriter;

    goto :goto_0

    .line 418
    :cond_0
    invoke-virtual {p2, p1}, Lnet/bytebuddy/jar/asm/ByteVector;->putShort(I)Lnet/bytebuddy/jar/asm/ByteVector;

    .line 419
    invoke-virtual {p2, v0}, Lnet/bytebuddy/jar/asm/ByteVector;->putInt(I)Lnet/bytebuddy/jar/asm/ByteVector;

    .line 420
    invoke-virtual {p2, v1}, Lnet/bytebuddy/jar/asm/ByteVector;->putShort(I)Lnet/bytebuddy/jar/asm/ByteVector;

    .line 421
    move-object v2, v3

    .line 422
    :goto_1
    if-eqz v2, :cond_1

    .line 423
    iget-object v4, v2, Lnet/bytebuddy/jar/asm/AnnotationWriter;->annotation:Lnet/bytebuddy/jar/asm/ByteVector;

    iget-object v4, v4, Lnet/bytebuddy/jar/asm/ByteVector;->data:[B

    iget-object v5, v2, Lnet/bytebuddy/jar/asm/AnnotationWriter;->annotation:Lnet/bytebuddy/jar/asm/ByteVector;

    iget v5, v5, Lnet/bytebuddy/jar/asm/ByteVector;->length:I

    const/4 v6, 0x0

    invoke-virtual {p2, v4, v6, v5}, Lnet/bytebuddy/jar/asm/ByteVector;->putByteArray([BII)Lnet/bytebuddy/jar/asm/ByteVector;

    .line 424
    iget-object v2, v2, Lnet/bytebuddy/jar/asm/AnnotationWriter;->nextAnnotation:Lnet/bytebuddy/jar/asm/AnnotationWriter;

    goto :goto_1

    .line 426
    :cond_1
    return-void
.end method

.method public visit(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 8
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .line 193
    iget v0, p0, Lnet/bytebuddy/jar/asm/AnnotationWriter;->numElementValuePairs:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lnet/bytebuddy/jar/asm/AnnotationWriter;->numElementValuePairs:I

    .line 194
    iget-boolean v0, p0, Lnet/bytebuddy/jar/asm/AnnotationWriter;->useNamedValues:Z

    if-eqz v0, :cond_0

    .line 195
    iget-object v0, p0, Lnet/bytebuddy/jar/asm/AnnotationWriter;->annotation:Lnet/bytebuddy/jar/asm/ByteVector;

    iget-object v1, p0, Lnet/bytebuddy/jar/asm/AnnotationWriter;->symbolTable:Lnet/bytebuddy/jar/asm/SymbolTable;

    invoke-virtual {v1, p1}, Lnet/bytebuddy/jar/asm/SymbolTable;->addConstantUtf8(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lnet/bytebuddy/jar/asm/ByteVector;->putShort(I)Lnet/bytebuddy/jar/asm/ByteVector;

    .line 197
    :cond_0
    instance-of v0, p2, Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 198
    iget-object v0, p0, Lnet/bytebuddy/jar/asm/AnnotationWriter;->annotation:Lnet/bytebuddy/jar/asm/ByteVector;

    iget-object v1, p0, Lnet/bytebuddy/jar/asm/AnnotationWriter;->symbolTable:Lnet/bytebuddy/jar/asm/SymbolTable;

    move-object v2, p2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Lnet/bytebuddy/jar/asm/SymbolTable;->addConstantUtf8(Ljava/lang/String;)I

    move-result v1

    const/16 v2, 0x73

    invoke-virtual {v0, v2, v1}, Lnet/bytebuddy/jar/asm/ByteVector;->put12(II)Lnet/bytebuddy/jar/asm/ByteVector;

    goto/16 :goto_8

    .line 199
    :cond_1
    instance-of v0, p2, Ljava/lang/Byte;

    const/16 v1, 0x42

    if-eqz v0, :cond_2

    .line 200
    iget-object v0, p0, Lnet/bytebuddy/jar/asm/AnnotationWriter;->annotation:Lnet/bytebuddy/jar/asm/ByteVector;

    iget-object v2, p0, Lnet/bytebuddy/jar/asm/AnnotationWriter;->symbolTable:Lnet/bytebuddy/jar/asm/SymbolTable;

    move-object v3, p2

    check-cast v3, Ljava/lang/Byte;

    invoke-virtual {v3}, Ljava/lang/Byte;->byteValue()B

    move-result v3

    invoke-virtual {v2, v3}, Lnet/bytebuddy/jar/asm/SymbolTable;->addConstantInteger(I)Lnet/bytebuddy/jar/asm/Symbol;

    move-result-object v2

    iget v2, v2, Lnet/bytebuddy/jar/asm/Symbol;->index:I

    invoke-virtual {v0, v1, v2}, Lnet/bytebuddy/jar/asm/ByteVector;->put12(II)Lnet/bytebuddy/jar/asm/ByteVector;

    goto/16 :goto_8

    .line 201
    :cond_2
    instance-of v0, p2, Ljava/lang/Boolean;

    const/16 v2, 0x5a

    if-eqz v0, :cond_3

    .line 202
    move-object v0, p2

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 203
    .local v0, "booleanValue":I
    iget-object v1, p0, Lnet/bytebuddy/jar/asm/AnnotationWriter;->annotation:Lnet/bytebuddy/jar/asm/ByteVector;

    iget-object v3, p0, Lnet/bytebuddy/jar/asm/AnnotationWriter;->symbolTable:Lnet/bytebuddy/jar/asm/SymbolTable;

    invoke-virtual {v3, v0}, Lnet/bytebuddy/jar/asm/SymbolTable;->addConstantInteger(I)Lnet/bytebuddy/jar/asm/Symbol;

    move-result-object v3

    iget v3, v3, Lnet/bytebuddy/jar/asm/Symbol;->index:I

    invoke-virtual {v1, v2, v3}, Lnet/bytebuddy/jar/asm/ByteVector;->put12(II)Lnet/bytebuddy/jar/asm/ByteVector;

    .line 204
    .end local v0    # "booleanValue":I
    goto/16 :goto_8

    :cond_3
    instance-of v0, p2, Ljava/lang/Character;

    const/16 v3, 0x43

    if-eqz v0, :cond_4

    .line 205
    iget-object v0, p0, Lnet/bytebuddy/jar/asm/AnnotationWriter;->annotation:Lnet/bytebuddy/jar/asm/ByteVector;

    iget-object v1, p0, Lnet/bytebuddy/jar/asm/AnnotationWriter;->symbolTable:Lnet/bytebuddy/jar/asm/SymbolTable;

    move-object v2, p2

    check-cast v2, Ljava/lang/Character;

    invoke-virtual {v2}, Ljava/lang/Character;->charValue()C

    move-result v2

    invoke-virtual {v1, v2}, Lnet/bytebuddy/jar/asm/SymbolTable;->addConstantInteger(I)Lnet/bytebuddy/jar/asm/Symbol;

    move-result-object v1

    iget v1, v1, Lnet/bytebuddy/jar/asm/Symbol;->index:I

    invoke-virtual {v0, v3, v1}, Lnet/bytebuddy/jar/asm/ByteVector;->put12(II)Lnet/bytebuddy/jar/asm/ByteVector;

    goto/16 :goto_8

    .line 206
    :cond_4
    instance-of v0, p2, Ljava/lang/Short;

    const/16 v4, 0x53

    if-eqz v0, :cond_5

    .line 207
    iget-object v0, p0, Lnet/bytebuddy/jar/asm/AnnotationWriter;->annotation:Lnet/bytebuddy/jar/asm/ByteVector;

    iget-object v1, p0, Lnet/bytebuddy/jar/asm/AnnotationWriter;->symbolTable:Lnet/bytebuddy/jar/asm/SymbolTable;

    move-object v2, p2

    check-cast v2, Ljava/lang/Short;

    invoke-virtual {v2}, Ljava/lang/Short;->shortValue()S

    move-result v2

    invoke-virtual {v1, v2}, Lnet/bytebuddy/jar/asm/SymbolTable;->addConstantInteger(I)Lnet/bytebuddy/jar/asm/Symbol;

    move-result-object v1

    iget v1, v1, Lnet/bytebuddy/jar/asm/Symbol;->index:I

    invoke-virtual {v0, v4, v1}, Lnet/bytebuddy/jar/asm/ByteVector;->put12(II)Lnet/bytebuddy/jar/asm/ByteVector;

    goto/16 :goto_8

    .line 208
    :cond_5
    instance-of v0, p2, Lnet/bytebuddy/jar/asm/Type;

    if-eqz v0, :cond_6

    .line 209
    iget-object v0, p0, Lnet/bytebuddy/jar/asm/AnnotationWriter;->annotation:Lnet/bytebuddy/jar/asm/ByteVector;

    iget-object v1, p0, Lnet/bytebuddy/jar/asm/AnnotationWriter;->symbolTable:Lnet/bytebuddy/jar/asm/SymbolTable;

    move-object v2, p2

    check-cast v2, Lnet/bytebuddy/jar/asm/Type;

    invoke-virtual {v2}, Lnet/bytebuddy/jar/asm/Type;->getDescriptor()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lnet/bytebuddy/jar/asm/SymbolTable;->addConstantUtf8(Ljava/lang/String;)I

    move-result v1

    const/16 v2, 0x63

    invoke-virtual {v0, v2, v1}, Lnet/bytebuddy/jar/asm/ByteVector;->put12(II)Lnet/bytebuddy/jar/asm/ByteVector;

    goto/16 :goto_8

    .line 210
    :cond_6
    instance-of v0, p2, [B

    const/4 v5, 0x0

    const/16 v6, 0x5b

    if-eqz v0, :cond_8

    .line 211
    move-object v0, p2

    check-cast v0, [B

    .line 212
    .local v0, "byteArray":[B
    iget-object v2, p0, Lnet/bytebuddy/jar/asm/AnnotationWriter;->annotation:Lnet/bytebuddy/jar/asm/ByteVector;

    array-length v3, v0

    invoke-virtual {v2, v6, v3}, Lnet/bytebuddy/jar/asm/ByteVector;->put12(II)Lnet/bytebuddy/jar/asm/ByteVector;

    .line 213
    array-length v2, v0

    :goto_0
    if-ge v5, v2, :cond_7

    aget-byte v3, v0, v5

    .line 214
    .local v3, "byteValue":B
    iget-object v4, p0, Lnet/bytebuddy/jar/asm/AnnotationWriter;->annotation:Lnet/bytebuddy/jar/asm/ByteVector;

    iget-object v6, p0, Lnet/bytebuddy/jar/asm/AnnotationWriter;->symbolTable:Lnet/bytebuddy/jar/asm/SymbolTable;

    invoke-virtual {v6, v3}, Lnet/bytebuddy/jar/asm/SymbolTable;->addConstantInteger(I)Lnet/bytebuddy/jar/asm/Symbol;

    move-result-object v6

    iget v6, v6, Lnet/bytebuddy/jar/asm/Symbol;->index:I

    invoke-virtual {v4, v1, v6}, Lnet/bytebuddy/jar/asm/ByteVector;->put12(II)Lnet/bytebuddy/jar/asm/ByteVector;

    .line 213
    .end local v3    # "byteValue":B
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 216
    .end local v0    # "byteArray":[B
    :cond_7
    goto/16 :goto_8

    :cond_8
    instance-of v0, p2, [Z

    if-eqz v0, :cond_a

    .line 217
    move-object v0, p2

    check-cast v0, [Z

    .line 218
    .local v0, "booleanArray":[Z
    iget-object v1, p0, Lnet/bytebuddy/jar/asm/AnnotationWriter;->annotation:Lnet/bytebuddy/jar/asm/ByteVector;

    array-length v3, v0

    invoke-virtual {v1, v6, v3}, Lnet/bytebuddy/jar/asm/ByteVector;->put12(II)Lnet/bytebuddy/jar/asm/ByteVector;

    .line 219
    array-length v1, v0

    :goto_1
    if-ge v5, v1, :cond_9

    aget-boolean v3, v0, v5

    .line 220
    .local v3, "booleanValue":Z
    iget-object v4, p0, Lnet/bytebuddy/jar/asm/AnnotationWriter;->annotation:Lnet/bytebuddy/jar/asm/ByteVector;

    iget-object v6, p0, Lnet/bytebuddy/jar/asm/AnnotationWriter;->symbolTable:Lnet/bytebuddy/jar/asm/SymbolTable;

    invoke-virtual {v6, v3}, Lnet/bytebuddy/jar/asm/SymbolTable;->addConstantInteger(I)Lnet/bytebuddy/jar/asm/Symbol;

    move-result-object v6

    iget v6, v6, Lnet/bytebuddy/jar/asm/Symbol;->index:I

    invoke-virtual {v4, v2, v6}, Lnet/bytebuddy/jar/asm/ByteVector;->put12(II)Lnet/bytebuddy/jar/asm/ByteVector;

    .line 219
    .end local v3    # "booleanValue":Z
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 222
    .end local v0    # "booleanArray":[Z
    :cond_9
    goto/16 :goto_8

    :cond_a
    instance-of v0, p2, [S

    if-eqz v0, :cond_c

    .line 223
    move-object v0, p2

    check-cast v0, [S

    .line 224
    .local v0, "shortArray":[S
    iget-object v1, p0, Lnet/bytebuddy/jar/asm/AnnotationWriter;->annotation:Lnet/bytebuddy/jar/asm/ByteVector;

    array-length v2, v0

    invoke-virtual {v1, v6, v2}, Lnet/bytebuddy/jar/asm/ByteVector;->put12(II)Lnet/bytebuddy/jar/asm/ByteVector;

    .line 225
    array-length v1, v0

    :goto_2
    if-ge v5, v1, :cond_b

    aget-short v2, v0, v5

    .line 226
    .local v2, "shortValue":S
    iget-object v3, p0, Lnet/bytebuddy/jar/asm/AnnotationWriter;->annotation:Lnet/bytebuddy/jar/asm/ByteVector;

    iget-object v6, p0, Lnet/bytebuddy/jar/asm/AnnotationWriter;->symbolTable:Lnet/bytebuddy/jar/asm/SymbolTable;

    invoke-virtual {v6, v2}, Lnet/bytebuddy/jar/asm/SymbolTable;->addConstantInteger(I)Lnet/bytebuddy/jar/asm/Symbol;

    move-result-object v6

    iget v6, v6, Lnet/bytebuddy/jar/asm/Symbol;->index:I

    invoke-virtual {v3, v4, v6}, Lnet/bytebuddy/jar/asm/ByteVector;->put12(II)Lnet/bytebuddy/jar/asm/ByteVector;

    .line 225
    .end local v2    # "shortValue":S
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 228
    .end local v0    # "shortArray":[S
    :cond_b
    goto/16 :goto_8

    :cond_c
    instance-of v0, p2, [C

    if-eqz v0, :cond_e

    .line 229
    move-object v0, p2

    check-cast v0, [C

    .line 230
    .local v0, "charArray":[C
    iget-object v1, p0, Lnet/bytebuddy/jar/asm/AnnotationWriter;->annotation:Lnet/bytebuddy/jar/asm/ByteVector;

    array-length v2, v0

    invoke-virtual {v1, v6, v2}, Lnet/bytebuddy/jar/asm/ByteVector;->put12(II)Lnet/bytebuddy/jar/asm/ByteVector;

    .line 231
    array-length v1, v0

    :goto_3
    if-ge v5, v1, :cond_d

    aget-char v2, v0, v5

    .line 232
    .local v2, "charValue":C
    iget-object v4, p0, Lnet/bytebuddy/jar/asm/AnnotationWriter;->annotation:Lnet/bytebuddy/jar/asm/ByteVector;

    iget-object v6, p0, Lnet/bytebuddy/jar/asm/AnnotationWriter;->symbolTable:Lnet/bytebuddy/jar/asm/SymbolTable;

    invoke-virtual {v6, v2}, Lnet/bytebuddy/jar/asm/SymbolTable;->addConstantInteger(I)Lnet/bytebuddy/jar/asm/Symbol;

    move-result-object v6

    iget v6, v6, Lnet/bytebuddy/jar/asm/Symbol;->index:I

    invoke-virtual {v4, v3, v6}, Lnet/bytebuddy/jar/asm/ByteVector;->put12(II)Lnet/bytebuddy/jar/asm/ByteVector;

    .line 231
    .end local v2    # "charValue":C
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 234
    .end local v0    # "charArray":[C
    :cond_d
    goto/16 :goto_8

    :cond_e
    instance-of v0, p2, [I

    if-eqz v0, :cond_10

    .line 235
    move-object v0, p2

    check-cast v0, [I

    .line 236
    .local v0, "intArray":[I
    iget-object v1, p0, Lnet/bytebuddy/jar/asm/AnnotationWriter;->annotation:Lnet/bytebuddy/jar/asm/ByteVector;

    array-length v2, v0

    invoke-virtual {v1, v6, v2}, Lnet/bytebuddy/jar/asm/ByteVector;->put12(II)Lnet/bytebuddy/jar/asm/ByteVector;

    .line 237
    array-length v1, v0

    :goto_4
    if-ge v5, v1, :cond_f

    aget v2, v0, v5

    .line 238
    .local v2, "intValue":I
    iget-object v3, p0, Lnet/bytebuddy/jar/asm/AnnotationWriter;->annotation:Lnet/bytebuddy/jar/asm/ByteVector;

    iget-object v4, p0, Lnet/bytebuddy/jar/asm/AnnotationWriter;->symbolTable:Lnet/bytebuddy/jar/asm/SymbolTable;

    invoke-virtual {v4, v2}, Lnet/bytebuddy/jar/asm/SymbolTable;->addConstantInteger(I)Lnet/bytebuddy/jar/asm/Symbol;

    move-result-object v4

    iget v4, v4, Lnet/bytebuddy/jar/asm/Symbol;->index:I

    const/16 v6, 0x49

    invoke-virtual {v3, v6, v4}, Lnet/bytebuddy/jar/asm/ByteVector;->put12(II)Lnet/bytebuddy/jar/asm/ByteVector;

    .line 237
    .end local v2    # "intValue":I
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    .line 240
    .end local v0    # "intArray":[I
    :cond_f
    goto/16 :goto_8

    :cond_10
    instance-of v0, p2, [J

    if-eqz v0, :cond_12

    .line 241
    move-object v0, p2

    check-cast v0, [J

    .line 242
    .local v0, "longArray":[J
    iget-object v1, p0, Lnet/bytebuddy/jar/asm/AnnotationWriter;->annotation:Lnet/bytebuddy/jar/asm/ByteVector;

    array-length v2, v0

    invoke-virtual {v1, v6, v2}, Lnet/bytebuddy/jar/asm/ByteVector;->put12(II)Lnet/bytebuddy/jar/asm/ByteVector;

    .line 243
    array-length v1, v0

    :goto_5
    if-ge v5, v1, :cond_11

    aget-wide v2, v0, v5

    .line 244
    .local v2, "longValue":J
    iget-object v4, p0, Lnet/bytebuddy/jar/asm/AnnotationWriter;->annotation:Lnet/bytebuddy/jar/asm/ByteVector;

    iget-object v6, p0, Lnet/bytebuddy/jar/asm/AnnotationWriter;->symbolTable:Lnet/bytebuddy/jar/asm/SymbolTable;

    invoke-virtual {v6, v2, v3}, Lnet/bytebuddy/jar/asm/SymbolTable;->addConstantLong(J)Lnet/bytebuddy/jar/asm/Symbol;

    move-result-object v6

    iget v6, v6, Lnet/bytebuddy/jar/asm/Symbol;->index:I

    const/16 v7, 0x4a

    invoke-virtual {v4, v7, v6}, Lnet/bytebuddy/jar/asm/ByteVector;->put12(II)Lnet/bytebuddy/jar/asm/ByteVector;

    .line 243
    .end local v2    # "longValue":J
    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    .line 246
    .end local v0    # "longArray":[J
    :cond_11
    goto :goto_8

    :cond_12
    instance-of v0, p2, [F

    if-eqz v0, :cond_14

    .line 247
    move-object v0, p2

    check-cast v0, [F

    .line 248
    .local v0, "floatArray":[F
    iget-object v1, p0, Lnet/bytebuddy/jar/asm/AnnotationWriter;->annotation:Lnet/bytebuddy/jar/asm/ByteVector;

    array-length v2, v0

    invoke-virtual {v1, v6, v2}, Lnet/bytebuddy/jar/asm/ByteVector;->put12(II)Lnet/bytebuddy/jar/asm/ByteVector;

    .line 249
    array-length v1, v0

    :goto_6
    if-ge v5, v1, :cond_13

    aget v2, v0, v5

    .line 250
    .local v2, "floatValue":F
    iget-object v3, p0, Lnet/bytebuddy/jar/asm/AnnotationWriter;->annotation:Lnet/bytebuddy/jar/asm/ByteVector;

    iget-object v4, p0, Lnet/bytebuddy/jar/asm/AnnotationWriter;->symbolTable:Lnet/bytebuddy/jar/asm/SymbolTable;

    invoke-virtual {v4, v2}, Lnet/bytebuddy/jar/asm/SymbolTable;->addConstantFloat(F)Lnet/bytebuddy/jar/asm/Symbol;

    move-result-object v4

    iget v4, v4, Lnet/bytebuddy/jar/asm/Symbol;->index:I

    const/16 v6, 0x46

    invoke-virtual {v3, v6, v4}, Lnet/bytebuddy/jar/asm/ByteVector;->put12(II)Lnet/bytebuddy/jar/asm/ByteVector;

    .line 249
    .end local v2    # "floatValue":F
    add-int/lit8 v5, v5, 0x1

    goto :goto_6

    .line 252
    .end local v0    # "floatArray":[F
    :cond_13
    goto :goto_8

    :cond_14
    instance-of v0, p2, [D

    if-eqz v0, :cond_16

    .line 253
    move-object v0, p2

    check-cast v0, [D

    .line 254
    .local v0, "doubleArray":[D
    iget-object v1, p0, Lnet/bytebuddy/jar/asm/AnnotationWriter;->annotation:Lnet/bytebuddy/jar/asm/ByteVector;

    array-length v2, v0

    invoke-virtual {v1, v6, v2}, Lnet/bytebuddy/jar/asm/ByteVector;->put12(II)Lnet/bytebuddy/jar/asm/ByteVector;

    .line 255
    array-length v1, v0

    :goto_7
    if-ge v5, v1, :cond_15

    aget-wide v2, v0, v5

    .line 256
    .local v2, "doubleValue":D
    iget-object v4, p0, Lnet/bytebuddy/jar/asm/AnnotationWriter;->annotation:Lnet/bytebuddy/jar/asm/ByteVector;

    iget-object v6, p0, Lnet/bytebuddy/jar/asm/AnnotationWriter;->symbolTable:Lnet/bytebuddy/jar/asm/SymbolTable;

    invoke-virtual {v6, v2, v3}, Lnet/bytebuddy/jar/asm/SymbolTable;->addConstantDouble(D)Lnet/bytebuddy/jar/asm/Symbol;

    move-result-object v6

    iget v6, v6, Lnet/bytebuddy/jar/asm/Symbol;->index:I

    const/16 v7, 0x44

    invoke-virtual {v4, v7, v6}, Lnet/bytebuddy/jar/asm/ByteVector;->put12(II)Lnet/bytebuddy/jar/asm/ByteVector;

    .line 255
    .end local v2    # "doubleValue":D
    add-int/lit8 v5, v5, 0x1

    goto :goto_7

    .line 258
    .end local v0    # "doubleArray":[D
    :cond_15
    goto :goto_8

    .line 259
    :cond_16
    iget-object v0, p0, Lnet/bytebuddy/jar/asm/AnnotationWriter;->symbolTable:Lnet/bytebuddy/jar/asm/SymbolTable;

    invoke-virtual {v0, p2}, Lnet/bytebuddy/jar/asm/SymbolTable;->addConstant(Ljava/lang/Object;)Lnet/bytebuddy/jar/asm/Symbol;

    move-result-object v0

    .line 260
    .local v0, "symbol":Lnet/bytebuddy/jar/asm/Symbol;
    iget-object v1, p0, Lnet/bytebuddy/jar/asm/AnnotationWriter;->annotation:Lnet/bytebuddy/jar/asm/ByteVector;

    const-string v2, ".s.IFJDCS"

    iget v3, v0, Lnet/bytebuddy/jar/asm/Symbol;->tag:I

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    iget v3, v0, Lnet/bytebuddy/jar/asm/Symbol;->index:I

    invoke-virtual {v1, v2, v3}, Lnet/bytebuddy/jar/asm/ByteVector;->put12(II)Lnet/bytebuddy/jar/asm/ByteVector;

    .line 262
    .end local v0    # "symbol":Lnet/bytebuddy/jar/asm/Symbol;
    :goto_8
    return-void
.end method

.method public visitAnnotation(Ljava/lang/String;Ljava/lang/String;)Lnet/bytebuddy/jar/asm/AnnotationVisitor;
    .locals 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "descriptor"    # Ljava/lang/String;

    .line 281
    iget v0, p0, Lnet/bytebuddy/jar/asm/AnnotationWriter;->numElementValuePairs:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lnet/bytebuddy/jar/asm/AnnotationWriter;->numElementValuePairs:I

    .line 282
    iget-boolean v0, p0, Lnet/bytebuddy/jar/asm/AnnotationWriter;->useNamedValues:Z

    if-eqz v0, :cond_0

    .line 283
    iget-object v0, p0, Lnet/bytebuddy/jar/asm/AnnotationWriter;->annotation:Lnet/bytebuddy/jar/asm/ByteVector;

    iget-object v2, p0, Lnet/bytebuddy/jar/asm/AnnotationWriter;->symbolTable:Lnet/bytebuddy/jar/asm/SymbolTable;

    invoke-virtual {v2, p1}, Lnet/bytebuddy/jar/asm/SymbolTable;->addConstantUtf8(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Lnet/bytebuddy/jar/asm/ByteVector;->putShort(I)Lnet/bytebuddy/jar/asm/ByteVector;

    .line 286
    :cond_0
    iget-object v0, p0, Lnet/bytebuddy/jar/asm/AnnotationWriter;->annotation:Lnet/bytebuddy/jar/asm/ByteVector;

    iget-object v2, p0, Lnet/bytebuddy/jar/asm/AnnotationWriter;->symbolTable:Lnet/bytebuddy/jar/asm/SymbolTable;

    invoke-virtual {v2, p2}, Lnet/bytebuddy/jar/asm/SymbolTable;->addConstantUtf8(Ljava/lang/String;)I

    move-result v2

    const/16 v3, 0x40

    invoke-virtual {v0, v3, v2}, Lnet/bytebuddy/jar/asm/ByteVector;->put12(II)Lnet/bytebuddy/jar/asm/ByteVector;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lnet/bytebuddy/jar/asm/ByteVector;->putShort(I)Lnet/bytebuddy/jar/asm/ByteVector;

    .line 287
    new-instance v0, Lnet/bytebuddy/jar/asm/AnnotationWriter;

    iget-object v2, p0, Lnet/bytebuddy/jar/asm/AnnotationWriter;->symbolTable:Lnet/bytebuddy/jar/asm/SymbolTable;

    iget-object v3, p0, Lnet/bytebuddy/jar/asm/AnnotationWriter;->annotation:Lnet/bytebuddy/jar/asm/ByteVector;

    const/4 v4, 0x0

    invoke-direct {v0, v2, v1, v3, v4}, Lnet/bytebuddy/jar/asm/AnnotationWriter;-><init>(Lnet/bytebuddy/jar/asm/SymbolTable;ZLnet/bytebuddy/jar/asm/ByteVector;Lnet/bytebuddy/jar/asm/AnnotationWriter;)V

    return-object v0
.end method

.method public visitArray(Ljava/lang/String;)Lnet/bytebuddy/jar/asm/AnnotationVisitor;
    .locals 5
    .param p1, "name"    # Ljava/lang/String;

    .line 294
    iget v0, p0, Lnet/bytebuddy/jar/asm/AnnotationWriter;->numElementValuePairs:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lnet/bytebuddy/jar/asm/AnnotationWriter;->numElementValuePairs:I

    .line 295
    iget-boolean v0, p0, Lnet/bytebuddy/jar/asm/AnnotationWriter;->useNamedValues:Z

    if-eqz v0, :cond_0

    .line 296
    iget-object v0, p0, Lnet/bytebuddy/jar/asm/AnnotationWriter;->annotation:Lnet/bytebuddy/jar/asm/ByteVector;

    iget-object v1, p0, Lnet/bytebuddy/jar/asm/AnnotationWriter;->symbolTable:Lnet/bytebuddy/jar/asm/SymbolTable;

    invoke-virtual {v1, p1}, Lnet/bytebuddy/jar/asm/SymbolTable;->addConstantUtf8(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lnet/bytebuddy/jar/asm/ByteVector;->putShort(I)Lnet/bytebuddy/jar/asm/ByteVector;

    .line 305
    :cond_0
    iget-object v0, p0, Lnet/bytebuddy/jar/asm/AnnotationWriter;->annotation:Lnet/bytebuddy/jar/asm/ByteVector;

    const/16 v1, 0x5b

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lnet/bytebuddy/jar/asm/ByteVector;->put12(II)Lnet/bytebuddy/jar/asm/ByteVector;

    .line 306
    new-instance v0, Lnet/bytebuddy/jar/asm/AnnotationWriter;

    iget-object v1, p0, Lnet/bytebuddy/jar/asm/AnnotationWriter;->symbolTable:Lnet/bytebuddy/jar/asm/SymbolTable;

    iget-object v3, p0, Lnet/bytebuddy/jar/asm/AnnotationWriter;->annotation:Lnet/bytebuddy/jar/asm/ByteVector;

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lnet/bytebuddy/jar/asm/AnnotationWriter;-><init>(Lnet/bytebuddy/jar/asm/SymbolTable;ZLnet/bytebuddy/jar/asm/ByteVector;Lnet/bytebuddy/jar/asm/AnnotationWriter;)V

    return-object v0
.end method

.method public visitEnd()V
    .locals 4

    .line 311
    iget v0, p0, Lnet/bytebuddy/jar/asm/AnnotationWriter;->numElementValuePairsOffset:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 312
    iget-object v0, p0, Lnet/bytebuddy/jar/asm/AnnotationWriter;->annotation:Lnet/bytebuddy/jar/asm/ByteVector;

    iget-object v0, v0, Lnet/bytebuddy/jar/asm/ByteVector;->data:[B

    .line 313
    .local v0, "data":[B
    iget v1, p0, Lnet/bytebuddy/jar/asm/AnnotationWriter;->numElementValuePairsOffset:I

    iget v2, p0, Lnet/bytebuddy/jar/asm/AnnotationWriter;->numElementValuePairs:I

    ushr-int/lit8 v3, v2, 0x8

    int-to-byte v3, v3

    aput-byte v3, v0, v1

    .line 314
    add-int/lit8 v1, v1, 0x1

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 316
    .end local v0    # "data":[B
    :cond_0
    return-void
.end method

.method public visitEnum(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "descriptor"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;

    .line 268
    iget v0, p0, Lnet/bytebuddy/jar/asm/AnnotationWriter;->numElementValuePairs:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lnet/bytebuddy/jar/asm/AnnotationWriter;->numElementValuePairs:I

    .line 269
    iget-boolean v0, p0, Lnet/bytebuddy/jar/asm/AnnotationWriter;->useNamedValues:Z

    if-eqz v0, :cond_0

    .line 270
    iget-object v0, p0, Lnet/bytebuddy/jar/asm/AnnotationWriter;->annotation:Lnet/bytebuddy/jar/asm/ByteVector;

    iget-object v1, p0, Lnet/bytebuddy/jar/asm/AnnotationWriter;->symbolTable:Lnet/bytebuddy/jar/asm/SymbolTable;

    invoke-virtual {v1, p1}, Lnet/bytebuddy/jar/asm/SymbolTable;->addConstantUtf8(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lnet/bytebuddy/jar/asm/ByteVector;->putShort(I)Lnet/bytebuddy/jar/asm/ByteVector;

    .line 272
    :cond_0
    iget-object v0, p0, Lnet/bytebuddy/jar/asm/AnnotationWriter;->annotation:Lnet/bytebuddy/jar/asm/ByteVector;

    iget-object v1, p0, Lnet/bytebuddy/jar/asm/AnnotationWriter;->symbolTable:Lnet/bytebuddy/jar/asm/SymbolTable;

    .line 273
    invoke-virtual {v1, p2}, Lnet/bytebuddy/jar/asm/SymbolTable;->addConstantUtf8(Ljava/lang/String;)I

    move-result v1

    const/16 v2, 0x65

    invoke-virtual {v0, v2, v1}, Lnet/bytebuddy/jar/asm/ByteVector;->put12(II)Lnet/bytebuddy/jar/asm/ByteVector;

    move-result-object v0

    iget-object v1, p0, Lnet/bytebuddy/jar/asm/AnnotationWriter;->symbolTable:Lnet/bytebuddy/jar/asm/SymbolTable;

    .line 274
    invoke-virtual {v1, p3}, Lnet/bytebuddy/jar/asm/SymbolTable;->addConstantUtf8(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lnet/bytebuddy/jar/asm/ByteVector;->putShort(I)Lnet/bytebuddy/jar/asm/ByteVector;

    .line 275
    return-void
.end method
