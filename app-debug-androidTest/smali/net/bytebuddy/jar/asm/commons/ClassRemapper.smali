.class public Lnet/bytebuddy/jar/asm/commons/ClassRemapper;
.super Lnet/bytebuddy/jar/asm/ClassVisitor;
.source "ClassRemapper.java"


# instance fields
.field protected className:Ljava/lang/String;

.field protected final remapper:Lnet/bytebuddy/jar/asm/commons/Remapper;


# direct methods
.method protected constructor <init>(ILnet/bytebuddy/jar/asm/ClassVisitor;Lnet/bytebuddy/jar/asm/commons/Remapper;)V
    .locals 0
    .param p1, "api"    # I
    .param p2, "classVisitor"    # Lnet/bytebuddy/jar/asm/ClassVisitor;
    .param p3, "remapper"    # Lnet/bytebuddy/jar/asm/commons/Remapper;

    .line 91
    invoke-direct {p0, p1, p2}, Lnet/bytebuddy/jar/asm/ClassVisitor;-><init>(ILnet/bytebuddy/jar/asm/ClassVisitor;)V

    .line 92
    iput-object p3, p0, Lnet/bytebuddy/jar/asm/commons/ClassRemapper;->remapper:Lnet/bytebuddy/jar/asm/commons/Remapper;

    .line 93
    return-void
.end method

.method public constructor <init>(Lnet/bytebuddy/jar/asm/ClassVisitor;Lnet/bytebuddy/jar/asm/commons/Remapper;)V
    .locals 1
    .param p1, "classVisitor"    # Lnet/bytebuddy/jar/asm/ClassVisitor;
    .param p2, "remapper"    # Lnet/bytebuddy/jar/asm/commons/Remapper;

    .line 77
    const/high16 v0, 0x90000

    invoke-direct {p0, v0, p1, p2}, Lnet/bytebuddy/jar/asm/commons/ClassRemapper;-><init>(ILnet/bytebuddy/jar/asm/ClassVisitor;Lnet/bytebuddy/jar/asm/commons/Remapper;)V

    .line 78
    return-void
.end method


# virtual methods
.method protected createAnnotationRemapper(Ljava/lang/String;Lnet/bytebuddy/jar/asm/AnnotationVisitor;)Lnet/bytebuddy/jar/asm/AnnotationVisitor;
    .locals 3
    .param p1, "descriptor"    # Ljava/lang/String;
    .param p2, "annotationVisitor"    # Lnet/bytebuddy/jar/asm/AnnotationVisitor;

    .line 276
    new-instance v0, Lnet/bytebuddy/jar/asm/commons/AnnotationRemapper;

    iget v1, p0, Lnet/bytebuddy/jar/asm/commons/ClassRemapper;->api:I

    iget-object v2, p0, Lnet/bytebuddy/jar/asm/commons/ClassRemapper;->remapper:Lnet/bytebuddy/jar/asm/commons/Remapper;

    invoke-direct {v0, v1, p1, p2, v2}, Lnet/bytebuddy/jar/asm/commons/AnnotationRemapper;-><init>(ILjava/lang/String;Lnet/bytebuddy/jar/asm/AnnotationVisitor;Lnet/bytebuddy/jar/asm/commons/Remapper;)V

    .line 277
    invoke-virtual {p0, p2}, Lnet/bytebuddy/jar/asm/commons/ClassRemapper;->createAnnotationRemapper(Lnet/bytebuddy/jar/asm/AnnotationVisitor;)Lnet/bytebuddy/jar/asm/AnnotationVisitor;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/bytebuddy/jar/asm/commons/AnnotationRemapper;->orDeprecatedValue(Lnet/bytebuddy/jar/asm/AnnotationVisitor;)Lnet/bytebuddy/jar/asm/AnnotationVisitor;

    move-result-object v0

    .line 276
    return-object v0
.end method

.method protected createAnnotationRemapper(Lnet/bytebuddy/jar/asm/AnnotationVisitor;)Lnet/bytebuddy/jar/asm/AnnotationVisitor;
    .locals 4
    .param p1, "annotationVisitor"    # Lnet/bytebuddy/jar/asm/AnnotationVisitor;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 263
    new-instance v0, Lnet/bytebuddy/jar/asm/commons/AnnotationRemapper;

    iget v1, p0, Lnet/bytebuddy/jar/asm/commons/ClassRemapper;->api:I

    const/4 v2, 0x0

    iget-object v3, p0, Lnet/bytebuddy/jar/asm/commons/ClassRemapper;->remapper:Lnet/bytebuddy/jar/asm/commons/Remapper;

    invoke-direct {v0, v1, v2, p1, v3}, Lnet/bytebuddy/jar/asm/commons/AnnotationRemapper;-><init>(ILjava/lang/String;Lnet/bytebuddy/jar/asm/AnnotationVisitor;Lnet/bytebuddy/jar/asm/commons/Remapper;)V

    return-object v0
.end method

.method protected createFieldRemapper(Lnet/bytebuddy/jar/asm/FieldVisitor;)Lnet/bytebuddy/jar/asm/FieldVisitor;
    .locals 3
    .param p1, "fieldVisitor"    # Lnet/bytebuddy/jar/asm/FieldVisitor;

    .line 239
    new-instance v0, Lnet/bytebuddy/jar/asm/commons/FieldRemapper;

    iget v1, p0, Lnet/bytebuddy/jar/asm/commons/ClassRemapper;->api:I

    iget-object v2, p0, Lnet/bytebuddy/jar/asm/commons/ClassRemapper;->remapper:Lnet/bytebuddy/jar/asm/commons/Remapper;

    invoke-direct {v0, v1, p1, v2}, Lnet/bytebuddy/jar/asm/commons/FieldRemapper;-><init>(ILnet/bytebuddy/jar/asm/FieldVisitor;Lnet/bytebuddy/jar/asm/commons/Remapper;)V

    return-object v0
.end method

.method protected createMethodRemapper(Lnet/bytebuddy/jar/asm/MethodVisitor;)Lnet/bytebuddy/jar/asm/MethodVisitor;
    .locals 3
    .param p1, "methodVisitor"    # Lnet/bytebuddy/jar/asm/MethodVisitor;

    .line 250
    new-instance v0, Lnet/bytebuddy/jar/asm/commons/MethodRemapper;

    iget v1, p0, Lnet/bytebuddy/jar/asm/commons/ClassRemapper;->api:I

    iget-object v2, p0, Lnet/bytebuddy/jar/asm/commons/ClassRemapper;->remapper:Lnet/bytebuddy/jar/asm/commons/Remapper;

    invoke-direct {v0, v1, p1, v2}, Lnet/bytebuddy/jar/asm/commons/MethodRemapper;-><init>(ILnet/bytebuddy/jar/asm/MethodVisitor;Lnet/bytebuddy/jar/asm/commons/Remapper;)V

    return-object v0
.end method

.method protected createModuleRemapper(Lnet/bytebuddy/jar/asm/ModuleVisitor;)Lnet/bytebuddy/jar/asm/ModuleVisitor;
    .locals 3
    .param p1, "moduleVisitor"    # Lnet/bytebuddy/jar/asm/ModuleVisitor;

    .line 288
    new-instance v0, Lnet/bytebuddy/jar/asm/commons/ModuleRemapper;

    iget v1, p0, Lnet/bytebuddy/jar/asm/commons/ClassRemapper;->api:I

    iget-object v2, p0, Lnet/bytebuddy/jar/asm/commons/ClassRemapper;->remapper:Lnet/bytebuddy/jar/asm/commons/Remapper;

    invoke-direct {v0, v1, p1, v2}, Lnet/bytebuddy/jar/asm/commons/ModuleRemapper;-><init>(ILnet/bytebuddy/jar/asm/ModuleVisitor;Lnet/bytebuddy/jar/asm/commons/Remapper;)V

    return-object v0
.end method

.method protected createRecordComponentRemapper(Lnet/bytebuddy/jar/asm/RecordComponentVisitor;)Lnet/bytebuddy/jar/asm/RecordComponentVisitor;
    .locals 3
    .param p1, "recordComponentVisitor"    # Lnet/bytebuddy/jar/asm/RecordComponentVisitor;

    .line 300
    new-instance v0, Lnet/bytebuddy/jar/asm/commons/RecordComponentRemapper;

    iget v1, p0, Lnet/bytebuddy/jar/asm/commons/ClassRemapper;->api:I

    iget-object v2, p0, Lnet/bytebuddy/jar/asm/commons/ClassRemapper;->remapper:Lnet/bytebuddy/jar/asm/commons/Remapper;

    invoke-direct {v0, v1, p1, v2}, Lnet/bytebuddy/jar/asm/commons/RecordComponentRemapper;-><init>(ILnet/bytebuddy/jar/asm/RecordComponentVisitor;Lnet/bytebuddy/jar/asm/commons/Remapper;)V

    return-object v0
.end method

.method public visit(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 8
    .param p1, "version"    # I
    .param p2, "access"    # I
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "signature"    # Ljava/lang/String;
    .param p5, "superName"    # Ljava/lang/String;
    .param p6, "interfaces"    # [Ljava/lang/String;

    .line 103
    iput-object p3, p0, Lnet/bytebuddy/jar/asm/commons/ClassRemapper;->className:Ljava/lang/String;

    .line 104
    iget-object v0, p0, Lnet/bytebuddy/jar/asm/commons/ClassRemapper;->remapper:Lnet/bytebuddy/jar/asm/commons/Remapper;

    .line 107
    invoke-virtual {v0, p3}, Lnet/bytebuddy/jar/asm/commons/Remapper;->mapType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/commons/ClassRemapper;->remapper:Lnet/bytebuddy/jar/asm/commons/Remapper;

    .line 108
    const/4 v1, 0x0

    invoke-virtual {v0, p4, v1}, Lnet/bytebuddy/jar/asm/commons/Remapper;->mapSignature(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v5

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/commons/ClassRemapper;->remapper:Lnet/bytebuddy/jar/asm/commons/Remapper;

    .line 109
    invoke-virtual {v0, p5}, Lnet/bytebuddy/jar/asm/commons/Remapper;->mapType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 110
    if-nez p6, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lnet/bytebuddy/jar/asm/commons/ClassRemapper;->remapper:Lnet/bytebuddy/jar/asm/commons/Remapper;

    invoke-virtual {v0, p6}, Lnet/bytebuddy/jar/asm/commons/Remapper;->mapTypes([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    :goto_0
    move-object v7, v0

    .line 104
    move-object v1, p0

    move v2, p1

    move v3, p2

    invoke-super/range {v1 .. v7}, Lnet/bytebuddy/jar/asm/ClassVisitor;->visit(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 111
    return-void
.end method

.method public visitAnnotation(Ljava/lang/String;Z)Lnet/bytebuddy/jar/asm/AnnotationVisitor;
    .locals 2
    .param p1, "descriptor"    # Ljava/lang/String;
    .param p2, "visible"    # Z

    .line 121
    iget-object v0, p0, Lnet/bytebuddy/jar/asm/commons/ClassRemapper;->remapper:Lnet/bytebuddy/jar/asm/commons/Remapper;

    .line 122
    invoke-virtual {v0, p1}, Lnet/bytebuddy/jar/asm/commons/Remapper;->mapDesc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-super {p0, v0, p2}, Lnet/bytebuddy/jar/asm/ClassVisitor;->visitAnnotation(Ljava/lang/String;Z)Lnet/bytebuddy/jar/asm/AnnotationVisitor;

    move-result-object v0

    .line 123
    .local v0, "annotationVisitor":Lnet/bytebuddy/jar/asm/AnnotationVisitor;
    if-nez v0, :cond_0

    .line 124
    const/4 v1, 0x0

    goto :goto_0

    .line 125
    :cond_0
    invoke-virtual {p0, p1, v0}, Lnet/bytebuddy/jar/asm/commons/ClassRemapper;->createAnnotationRemapper(Ljava/lang/String;Lnet/bytebuddy/jar/asm/AnnotationVisitor;)Lnet/bytebuddy/jar/asm/AnnotationVisitor;

    move-result-object v1

    .line 123
    :goto_0
    return-object v1
.end method

.method public visitAttribute(Lnet/bytebuddy/jar/asm/Attribute;)V
    .locals 5
    .param p1, "attribute"    # Lnet/bytebuddy/jar/asm/Attribute;

    .line 140
    instance-of v0, p1, Lnet/bytebuddy/jar/asm/commons/ModuleHashesAttribute;

    if-eqz v0, :cond_0

    .line 141
    move-object v0, p1

    check-cast v0, Lnet/bytebuddy/jar/asm/commons/ModuleHashesAttribute;

    .line 142
    .local v0, "moduleHashesAttribute":Lnet/bytebuddy/jar/asm/commons/ModuleHashesAttribute;
    iget-object v1, v0, Lnet/bytebuddy/jar/asm/commons/ModuleHashesAttribute;->modules:Ljava/util/List;

    .line 143
    .local v1, "modules":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 144
    iget-object v3, p0, Lnet/bytebuddy/jar/asm/commons/ClassRemapper;->remapper:Lnet/bytebuddy/jar/asm/commons/Remapper;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3, v4}, Lnet/bytebuddy/jar/asm/commons/Remapper;->mapModuleName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 143
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 147
    .end local v0    # "moduleHashesAttribute":Lnet/bytebuddy/jar/asm/commons/ModuleHashesAttribute;
    .end local v1    # "modules":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v2    # "i":I
    :cond_0
    invoke-super {p0, p1}, Lnet/bytebuddy/jar/asm/ClassVisitor;->visitAttribute(Lnet/bytebuddy/jar/asm/Attribute;)V

    .line 148
    return-void
.end method

.method public visitField(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lnet/bytebuddy/jar/asm/FieldVisitor;
    .locals 8
    .param p1, "access"    # I
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "descriptor"    # Ljava/lang/String;
    .param p4, "signature"    # Ljava/lang/String;
    .param p5, "value"    # Ljava/lang/Object;

    .line 170
    iget-object v0, p0, Lnet/bytebuddy/jar/asm/commons/ClassRemapper;->remapper:Lnet/bytebuddy/jar/asm/commons/Remapper;

    iget-object v1, p0, Lnet/bytebuddy/jar/asm/commons/ClassRemapper;->className:Ljava/lang/String;

    .line 173
    invoke-virtual {v0, v1, p2, p3}, Lnet/bytebuddy/jar/asm/commons/Remapper;->mapFieldName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/commons/ClassRemapper;->remapper:Lnet/bytebuddy/jar/asm/commons/Remapper;

    .line 174
    invoke-virtual {v0, p3}, Lnet/bytebuddy/jar/asm/commons/Remapper;->mapDesc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/commons/ClassRemapper;->remapper:Lnet/bytebuddy/jar/asm/commons/Remapper;

    .line 175
    const/4 v1, 0x1

    invoke-virtual {v0, p4, v1}, Lnet/bytebuddy/jar/asm/commons/Remapper;->mapSignature(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v6

    .line 176
    const/4 v0, 0x0

    if-nez p5, :cond_0

    move-object v7, v0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lnet/bytebuddy/jar/asm/commons/ClassRemapper;->remapper:Lnet/bytebuddy/jar/asm/commons/Remapper;

    invoke-virtual {v1, p5}, Lnet/bytebuddy/jar/asm/commons/Remapper;->mapValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v7, v1

    .line 171
    :goto_0
    move-object v2, p0

    move v3, p1

    invoke-super/range {v2 .. v7}, Lnet/bytebuddy/jar/asm/ClassVisitor;->visitField(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lnet/bytebuddy/jar/asm/FieldVisitor;

    move-result-object v1

    .line 177
    .local v1, "fieldVisitor":Lnet/bytebuddy/jar/asm/FieldVisitor;
    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p0, v1}, Lnet/bytebuddy/jar/asm/commons/ClassRemapper;->createFieldRemapper(Lnet/bytebuddy/jar/asm/FieldVisitor;)Lnet/bytebuddy/jar/asm/FieldVisitor;

    move-result-object v0

    :goto_1
    return-object v0
.end method

.method public visitInnerClass(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "outerName"    # Ljava/lang/String;
    .param p3, "innerName"    # Ljava/lang/String;
    .param p4, "access"    # I

    .line 201
    iget-object v0, p0, Lnet/bytebuddy/jar/asm/commons/ClassRemapper;->remapper:Lnet/bytebuddy/jar/asm/commons/Remapper;

    .line 202
    invoke-virtual {v0, p1}, Lnet/bytebuddy/jar/asm/commons/Remapper;->mapType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 203
    const/4 v1, 0x0

    if-nez p2, :cond_0

    move-object v2, v1

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lnet/bytebuddy/jar/asm/commons/ClassRemapper;->remapper:Lnet/bytebuddy/jar/asm/commons/Remapper;

    invoke-virtual {v2, p2}, Lnet/bytebuddy/jar/asm/commons/Remapper;->mapType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 204
    :goto_0
    if-nez p3, :cond_1

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lnet/bytebuddy/jar/asm/commons/ClassRemapper;->remapper:Lnet/bytebuddy/jar/asm/commons/Remapper;

    invoke-virtual {v1, p1, p2, p3}, Lnet/bytebuddy/jar/asm/commons/Remapper;->mapInnerClassName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 201
    :goto_1
    invoke-super {p0, v0, v2, v1, p4}, Lnet/bytebuddy/jar/asm/ClassVisitor;->visitInnerClass(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 206
    return-void
.end method

.method public visitMethod(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lnet/bytebuddy/jar/asm/MethodVisitor;
    .locals 8
    .param p1, "access"    # I
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "descriptor"    # Ljava/lang/String;
    .param p4, "signature"    # Ljava/lang/String;
    .param p5, "exceptions"    # [Ljava/lang/String;

    .line 187
    iget-object v0, p0, Lnet/bytebuddy/jar/asm/commons/ClassRemapper;->remapper:Lnet/bytebuddy/jar/asm/commons/Remapper;

    invoke-virtual {v0, p3}, Lnet/bytebuddy/jar/asm/commons/Remapper;->mapMethodDesc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 188
    .local v0, "remappedDescriptor":Ljava/lang/String;
    iget-object v1, p0, Lnet/bytebuddy/jar/asm/commons/ClassRemapper;->remapper:Lnet/bytebuddy/jar/asm/commons/Remapper;

    iget-object v2, p0, Lnet/bytebuddy/jar/asm/commons/ClassRemapper;->className:Ljava/lang/String;

    .line 191
    invoke-virtual {v1, v2, p2, p3}, Lnet/bytebuddy/jar/asm/commons/Remapper;->mapMethodName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v1, p0, Lnet/bytebuddy/jar/asm/commons/ClassRemapper;->remapper:Lnet/bytebuddy/jar/asm/commons/Remapper;

    .line 193
    const/4 v2, 0x0

    invoke-virtual {v1, p4, v2}, Lnet/bytebuddy/jar/asm/commons/Remapper;->mapSignature(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v5

    .line 194
    const/4 v7, 0x0

    if-nez p5, :cond_0

    move-object v6, v7

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lnet/bytebuddy/jar/asm/commons/ClassRemapper;->remapper:Lnet/bytebuddy/jar/asm/commons/Remapper;

    invoke-virtual {v1, p5}, Lnet/bytebuddy/jar/asm/commons/Remapper;->mapTypes([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    move-object v6, v1

    .line 189
    :goto_0
    move-object v1, p0

    move v2, p1

    move-object v4, v0

    invoke-super/range {v1 .. v6}, Lnet/bytebuddy/jar/asm/ClassVisitor;->visitMethod(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lnet/bytebuddy/jar/asm/MethodVisitor;

    move-result-object v1

    .line 195
    .local v1, "methodVisitor":Lnet/bytebuddy/jar/asm/MethodVisitor;
    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p0, v1}, Lnet/bytebuddy/jar/asm/commons/ClassRemapper;->createMethodRemapper(Lnet/bytebuddy/jar/asm/MethodVisitor;)Lnet/bytebuddy/jar/asm/MethodVisitor;

    move-result-object v7

    :goto_1
    return-object v7
.end method

.method public visitModule(Ljava/lang/String;ILjava/lang/String;)Lnet/bytebuddy/jar/asm/ModuleVisitor;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "flags"    # I
    .param p3, "version"    # Ljava/lang/String;

    .line 115
    iget-object v0, p0, Lnet/bytebuddy/jar/asm/commons/ClassRemapper;->remapper:Lnet/bytebuddy/jar/asm/commons/Remapper;

    invoke-virtual {v0, p1}, Lnet/bytebuddy/jar/asm/commons/Remapper;->mapModuleName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-super {p0, v0, p2, p3}, Lnet/bytebuddy/jar/asm/ClassVisitor;->visitModule(Ljava/lang/String;ILjava/lang/String;)Lnet/bytebuddy/jar/asm/ModuleVisitor;

    move-result-object v0

    .line 116
    .local v0, "moduleVisitor":Lnet/bytebuddy/jar/asm/ModuleVisitor;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v0}, Lnet/bytebuddy/jar/asm/commons/ClassRemapper;->createModuleRemapper(Lnet/bytebuddy/jar/asm/ModuleVisitor;)Lnet/bytebuddy/jar/asm/ModuleVisitor;

    move-result-object v1

    :goto_0
    return-object v1
.end method

.method public visitNestHost(Ljava/lang/String;)V
    .locals 1
    .param p1, "nestHost"    # Ljava/lang/String;

    .line 218
    iget-object v0, p0, Lnet/bytebuddy/jar/asm/commons/ClassRemapper;->remapper:Lnet/bytebuddy/jar/asm/commons/Remapper;

    invoke-virtual {v0, p1}, Lnet/bytebuddy/jar/asm/commons/Remapper;->mapType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-super {p0, v0}, Lnet/bytebuddy/jar/asm/ClassVisitor;->visitNestHost(Ljava/lang/String;)V

    .line 219
    return-void
.end method

.method public visitNestMember(Ljava/lang/String;)V
    .locals 1
    .param p1, "nestMember"    # Ljava/lang/String;

    .line 223
    iget-object v0, p0, Lnet/bytebuddy/jar/asm/commons/ClassRemapper;->remapper:Lnet/bytebuddy/jar/asm/commons/Remapper;

    invoke-virtual {v0, p1}, Lnet/bytebuddy/jar/asm/commons/Remapper;->mapType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-super {p0, v0}, Lnet/bytebuddy/jar/asm/ClassVisitor;->visitNestMember(Ljava/lang/String;)V

    .line 224
    return-void
.end method

.method public visitOuterClass(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "owner"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "descriptor"    # Ljava/lang/String;

    .line 210
    iget-object v0, p0, Lnet/bytebuddy/jar/asm/commons/ClassRemapper;->remapper:Lnet/bytebuddy/jar/asm/commons/Remapper;

    .line 211
    invoke-virtual {v0, p1}, Lnet/bytebuddy/jar/asm/commons/Remapper;->mapType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 212
    const/4 v1, 0x0

    if-nez p2, :cond_0

    move-object v2, v1

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lnet/bytebuddy/jar/asm/commons/ClassRemapper;->remapper:Lnet/bytebuddy/jar/asm/commons/Remapper;

    invoke-virtual {v2, p1, p2, p3}, Lnet/bytebuddy/jar/asm/commons/Remapper;->mapMethodName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 213
    :goto_0
    if-nez p3, :cond_1

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lnet/bytebuddy/jar/asm/commons/ClassRemapper;->remapper:Lnet/bytebuddy/jar/asm/commons/Remapper;

    invoke-virtual {v1, p3}, Lnet/bytebuddy/jar/asm/commons/Remapper;->mapMethodDesc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 210
    :goto_1
    invoke-super {p0, v0, v2, v1}, Lnet/bytebuddy/jar/asm/ClassVisitor;->visitOuterClass(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    return-void
.end method

.method public visitPermittedSubclass(Ljava/lang/String;)V
    .locals 1
    .param p1, "permittedSubclass"    # Ljava/lang/String;

    .line 228
    iget-object v0, p0, Lnet/bytebuddy/jar/asm/commons/ClassRemapper;->remapper:Lnet/bytebuddy/jar/asm/commons/Remapper;

    invoke-virtual {v0, p1}, Lnet/bytebuddy/jar/asm/commons/Remapper;->mapType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-super {p0, v0}, Lnet/bytebuddy/jar/asm/ClassVisitor;->visitPermittedSubclass(Ljava/lang/String;)V

    .line 229
    return-void
.end method

.method public visitRecordComponent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lnet/bytebuddy/jar/asm/RecordComponentVisitor;
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "descriptor"    # Ljava/lang/String;
    .param p3, "signature"    # Ljava/lang/String;

    .line 153
    iget-object v0, p0, Lnet/bytebuddy/jar/asm/commons/ClassRemapper;->remapper:Lnet/bytebuddy/jar/asm/commons/Remapper;

    iget-object v1, p0, Lnet/bytebuddy/jar/asm/commons/ClassRemapper;->className:Ljava/lang/String;

    .line 155
    invoke-virtual {v0, v1, p1, p2}, Lnet/bytebuddy/jar/asm/commons/Remapper;->mapRecordComponentName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lnet/bytebuddy/jar/asm/commons/ClassRemapper;->remapper:Lnet/bytebuddy/jar/asm/commons/Remapper;

    .line 156
    invoke-virtual {v1, p2}, Lnet/bytebuddy/jar/asm/commons/Remapper;->mapDesc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lnet/bytebuddy/jar/asm/commons/ClassRemapper;->remapper:Lnet/bytebuddy/jar/asm/commons/Remapper;

    .line 157
    const/4 v3, 0x1

    invoke-virtual {v2, p3, v3}, Lnet/bytebuddy/jar/asm/commons/Remapper;->mapSignature(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    .line 154
    invoke-super {p0, v0, v1, v2}, Lnet/bytebuddy/jar/asm/ClassVisitor;->visitRecordComponent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lnet/bytebuddy/jar/asm/RecordComponentVisitor;

    move-result-object v0

    .line 158
    .local v0, "recordComponentVisitor":Lnet/bytebuddy/jar/asm/RecordComponentVisitor;
    if-nez v0, :cond_0

    .line 159
    const/4 v1, 0x0

    goto :goto_0

    .line 160
    :cond_0
    invoke-virtual {p0, v0}, Lnet/bytebuddy/jar/asm/commons/ClassRemapper;->createRecordComponentRemapper(Lnet/bytebuddy/jar/asm/RecordComponentVisitor;)Lnet/bytebuddy/jar/asm/RecordComponentVisitor;

    move-result-object v1

    .line 158
    :goto_0
    return-object v1
.end method

.method public visitTypeAnnotation(ILnet/bytebuddy/jar/asm/TypePath;Ljava/lang/String;Z)Lnet/bytebuddy/jar/asm/AnnotationVisitor;
    .locals 2
    .param p1, "typeRef"    # I
    .param p2, "typePath"    # Lnet/bytebuddy/jar/asm/TypePath;
    .param p3, "descriptor"    # Ljava/lang/String;
    .param p4, "visible"    # Z

    .line 131
    iget-object v0, p0, Lnet/bytebuddy/jar/asm/commons/ClassRemapper;->remapper:Lnet/bytebuddy/jar/asm/commons/Remapper;

    .line 132
    invoke-virtual {v0, p3}, Lnet/bytebuddy/jar/asm/commons/Remapper;->mapDesc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-super {p0, p1, p2, v0, p4}, Lnet/bytebuddy/jar/asm/ClassVisitor;->visitTypeAnnotation(ILnet/bytebuddy/jar/asm/TypePath;Ljava/lang/String;Z)Lnet/bytebuddy/jar/asm/AnnotationVisitor;

    move-result-object v0

    .line 133
    .local v0, "annotationVisitor":Lnet/bytebuddy/jar/asm/AnnotationVisitor;
    if-nez v0, :cond_0

    .line 134
    const/4 v1, 0x0

    goto :goto_0

    .line 135
    :cond_0
    invoke-virtual {p0, p3, v0}, Lnet/bytebuddy/jar/asm/commons/ClassRemapper;->createAnnotationRemapper(Ljava/lang/String;Lnet/bytebuddy/jar/asm/AnnotationVisitor;)Lnet/bytebuddy/jar/asm/AnnotationVisitor;

    move-result-object v1

    .line 133
    :goto_0
    return-object v1
.end method
