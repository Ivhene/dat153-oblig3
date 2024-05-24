.class public Lnet/bytebuddy/jar/asm/commons/MethodRemapper;
.super Lnet/bytebuddy/jar/asm/MethodVisitor;
.source "MethodRemapper.java"


# instance fields
.field protected final remapper:Lnet/bytebuddy/jar/asm/commons/Remapper;


# direct methods
.method protected constructor <init>(ILnet/bytebuddy/jar/asm/MethodVisitor;Lnet/bytebuddy/jar/asm/commons/Remapper;)V
    .locals 0
    .param p1, "api"    # I
    .param p2, "methodVisitor"    # Lnet/bytebuddy/jar/asm/MethodVisitor;
    .param p3, "remapper"    # Lnet/bytebuddy/jar/asm/commons/Remapper;

    .line 71
    invoke-direct {p0, p1, p2}, Lnet/bytebuddy/jar/asm/MethodVisitor;-><init>(ILnet/bytebuddy/jar/asm/MethodVisitor;)V

    .line 72
    iput-object p3, p0, Lnet/bytebuddy/jar/asm/commons/MethodRemapper;->remapper:Lnet/bytebuddy/jar/asm/commons/Remapper;

    .line 73
    return-void
.end method

.method public constructor <init>(Lnet/bytebuddy/jar/asm/MethodVisitor;Lnet/bytebuddy/jar/asm/commons/Remapper;)V
    .locals 1
    .param p1, "methodVisitor"    # Lnet/bytebuddy/jar/asm/MethodVisitor;
    .param p2, "remapper"    # Lnet/bytebuddy/jar/asm/commons/Remapper;

    .line 56
    const/high16 v0, 0x90000

    invoke-direct {p0, v0, p1, p2}, Lnet/bytebuddy/jar/asm/commons/MethodRemapper;-><init>(ILnet/bytebuddy/jar/asm/MethodVisitor;Lnet/bytebuddy/jar/asm/commons/Remapper;)V

    .line 57
    return-void
.end method

.method private remapFrameTypes(I[Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 4
    .param p1, "numTypes"    # I
    .param p2, "frameTypes"    # [Ljava/lang/Object;

    .line 128
    if-nez p2, :cond_0

    .line 129
    return-object p2

    .line 131
    :cond_0
    const/4 v0, 0x0

    .line 132
    .local v0, "remappedFrameTypes":[Ljava/lang/Object;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, p1, :cond_3

    .line 133
    aget-object v2, p2, v1

    instance-of v2, v2, Ljava/lang/String;

    if-eqz v2, :cond_2

    .line 134
    if-nez v0, :cond_1

    .line 135
    new-array v0, p1, [Ljava/lang/Object;

    .line 136
    const/4 v2, 0x0

    invoke-static {p2, v2, v0, v2, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 138
    :cond_1
    iget-object v2, p0, Lnet/bytebuddy/jar/asm/commons/MethodRemapper;->remapper:Lnet/bytebuddy/jar/asm/commons/Remapper;

    aget-object v3, p2, v1

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Lnet/bytebuddy/jar/asm/commons/Remapper;->mapType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 132
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 141
    .end local v1    # "i":I
    :cond_3
    if-nez v0, :cond_4

    move-object v1, p2

    goto :goto_1

    :cond_4
    move-object v1, v0

    :goto_1
    return-object v1
.end method


# virtual methods
.method protected createAnnotationRemapper(Ljava/lang/String;Lnet/bytebuddy/jar/asm/AnnotationVisitor;)Lnet/bytebuddy/jar/asm/AnnotationVisitor;
    .locals 3
    .param p1, "descriptor"    # Ljava/lang/String;
    .param p2, "annotationVisitor"    # Lnet/bytebuddy/jar/asm/AnnotationVisitor;

    .line 289
    new-instance v0, Lnet/bytebuddy/jar/asm/commons/AnnotationRemapper;

    iget v1, p0, Lnet/bytebuddy/jar/asm/commons/MethodRemapper;->api:I

    iget-object v2, p0, Lnet/bytebuddy/jar/asm/commons/MethodRemapper;->remapper:Lnet/bytebuddy/jar/asm/commons/Remapper;

    invoke-direct {v0, v1, p1, p2, v2}, Lnet/bytebuddy/jar/asm/commons/AnnotationRemapper;-><init>(ILjava/lang/String;Lnet/bytebuddy/jar/asm/AnnotationVisitor;Lnet/bytebuddy/jar/asm/commons/Remapper;)V

    .line 290
    invoke-virtual {p0, p2}, Lnet/bytebuddy/jar/asm/commons/MethodRemapper;->createAnnotationRemapper(Lnet/bytebuddy/jar/asm/AnnotationVisitor;)Lnet/bytebuddy/jar/asm/AnnotationVisitor;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/bytebuddy/jar/asm/commons/AnnotationRemapper;->orDeprecatedValue(Lnet/bytebuddy/jar/asm/AnnotationVisitor;)Lnet/bytebuddy/jar/asm/AnnotationVisitor;

    move-result-object v0

    .line 289
    return-object v0
.end method

.method protected createAnnotationRemapper(Lnet/bytebuddy/jar/asm/AnnotationVisitor;)Lnet/bytebuddy/jar/asm/AnnotationVisitor;
    .locals 4
    .param p1, "annotationVisitor"    # Lnet/bytebuddy/jar/asm/AnnotationVisitor;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 276
    new-instance v0, Lnet/bytebuddy/jar/asm/commons/AnnotationRemapper;

    iget v1, p0, Lnet/bytebuddy/jar/asm/commons/MethodRemapper;->api:I

    const/4 v2, 0x0

    iget-object v3, p0, Lnet/bytebuddy/jar/asm/commons/MethodRemapper;->remapper:Lnet/bytebuddy/jar/asm/commons/Remapper;

    invoke-direct {v0, v1, v2, p1, v3}, Lnet/bytebuddy/jar/asm/commons/AnnotationRemapper;-><init>(ILjava/lang/String;Lnet/bytebuddy/jar/asm/AnnotationVisitor;Lnet/bytebuddy/jar/asm/commons/Remapper;)V

    return-object v0
.end method

.method public visitAnnotation(Ljava/lang/String;Z)Lnet/bytebuddy/jar/asm/AnnotationVisitor;
    .locals 2
    .param p1, "descriptor"    # Ljava/lang/String;
    .param p2, "visible"    # Z

    .line 85
    iget-object v0, p0, Lnet/bytebuddy/jar/asm/commons/MethodRemapper;->remapper:Lnet/bytebuddy/jar/asm/commons/Remapper;

    .line 86
    invoke-virtual {v0, p1}, Lnet/bytebuddy/jar/asm/commons/Remapper;->mapDesc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-super {p0, v0, p2}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitAnnotation(Ljava/lang/String;Z)Lnet/bytebuddy/jar/asm/AnnotationVisitor;

    move-result-object v0

    .line 87
    .local v0, "annotationVisitor":Lnet/bytebuddy/jar/asm/AnnotationVisitor;
    if-nez v0, :cond_0

    .line 88
    move-object v1, v0

    goto :goto_0

    .line 89
    :cond_0
    invoke-virtual {p0, p1, v0}, Lnet/bytebuddy/jar/asm/commons/MethodRemapper;->createAnnotationRemapper(Ljava/lang/String;Lnet/bytebuddy/jar/asm/AnnotationVisitor;)Lnet/bytebuddy/jar/asm/AnnotationVisitor;

    move-result-object v1

    .line 87
    :goto_0
    return-object v1
.end method

.method public visitAnnotationDefault()Lnet/bytebuddy/jar/asm/AnnotationVisitor;
    .locals 2

    .line 77
    invoke-super {p0}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitAnnotationDefault()Lnet/bytebuddy/jar/asm/AnnotationVisitor;

    move-result-object v0

    .line 78
    .local v0, "annotationVisitor":Lnet/bytebuddy/jar/asm/AnnotationVisitor;
    if-nez v0, :cond_0

    .line 79
    move-object v1, v0

    goto :goto_0

    .line 80
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Lnet/bytebuddy/jar/asm/commons/MethodRemapper;->createAnnotationRemapper(Ljava/lang/String;Lnet/bytebuddy/jar/asm/AnnotationVisitor;)Lnet/bytebuddy/jar/asm/AnnotationVisitor;

    move-result-object v1

    .line 78
    :goto_0
    return-object v1
.end method

.method public visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "opcode"    # I
    .param p2, "owner"    # Ljava/lang/String;
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "descriptor"    # Ljava/lang/String;

    .line 147
    iget-object v0, p0, Lnet/bytebuddy/jar/asm/commons/MethodRemapper;->remapper:Lnet/bytebuddy/jar/asm/commons/Remapper;

    .line 149
    invoke-virtual {v0, p2}, Lnet/bytebuddy/jar/asm/commons/Remapper;->mapType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lnet/bytebuddy/jar/asm/commons/MethodRemapper;->remapper:Lnet/bytebuddy/jar/asm/commons/Remapper;

    .line 150
    invoke-virtual {v1, p2, p3, p4}, Lnet/bytebuddy/jar/asm/commons/Remapper;->mapFieldName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lnet/bytebuddy/jar/asm/commons/MethodRemapper;->remapper:Lnet/bytebuddy/jar/asm/commons/Remapper;

    .line 151
    invoke-virtual {v2, p4}, Lnet/bytebuddy/jar/asm/commons/Remapper;->mapDesc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 147
    invoke-super {p0, p1, v0, v1, v2}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    return-void
.end method

.method public visitFrame(II[Ljava/lang/Object;I[Ljava/lang/Object;)V
    .locals 6
    .param p1, "type"    # I
    .param p2, "numLocal"    # I
    .param p3, "local"    # [Ljava/lang/Object;
    .param p4, "numStack"    # I
    .param p5, "stack"    # [Ljava/lang/Object;

    .line 119
    nop

    .line 122
    invoke-direct {p0, p2, p3}, Lnet/bytebuddy/jar/asm/commons/MethodRemapper;->remapFrameTypes(I[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    .line 124
    invoke-direct {p0, p4, p5}, Lnet/bytebuddy/jar/asm/commons/MethodRemapper;->remapFrameTypes(I[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    .line 119
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v4, p4

    invoke-super/range {v0 .. v5}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitFrame(II[Ljava/lang/Object;I[Ljava/lang/Object;)V

    .line 125
    return-void
.end method

.method public visitInsnAnnotation(ILnet/bytebuddy/jar/asm/TypePath;Ljava/lang/String;Z)Lnet/bytebuddy/jar/asm/AnnotationVisitor;
    .locals 2
    .param p1, "typeRef"    # I
    .param p2, "typePath"    # Lnet/bytebuddy/jar/asm/TypePath;
    .param p3, "descriptor"    # Ljava/lang/String;
    .param p4, "visible"    # Z

    .line 209
    iget-object v0, p0, Lnet/bytebuddy/jar/asm/commons/MethodRemapper;->remapper:Lnet/bytebuddy/jar/asm/commons/Remapper;

    .line 210
    invoke-virtual {v0, p3}, Lnet/bytebuddy/jar/asm/commons/Remapper;->mapDesc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-super {p0, p1, p2, v0, p4}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitInsnAnnotation(ILnet/bytebuddy/jar/asm/TypePath;Ljava/lang/String;Z)Lnet/bytebuddy/jar/asm/AnnotationVisitor;

    move-result-object v0

    .line 211
    .local v0, "annotationVisitor":Lnet/bytebuddy/jar/asm/AnnotationVisitor;
    if-nez v0, :cond_0

    .line 212
    move-object v1, v0

    goto :goto_0

    .line 213
    :cond_0
    invoke-virtual {p0, p3, v0}, Lnet/bytebuddy/jar/asm/commons/MethodRemapper;->createAnnotationRemapper(Ljava/lang/String;Lnet/bytebuddy/jar/asm/AnnotationVisitor;)Lnet/bytebuddy/jar/asm/AnnotationVisitor;

    move-result-object v1

    .line 211
    :goto_0
    return-object v1
.end method

.method public varargs visitInvokeDynamicInsn(Ljava/lang/String;Ljava/lang/String;Lnet/bytebuddy/jar/asm/Handle;[Ljava/lang/Object;)V
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "descriptor"    # Ljava/lang/String;
    .param p3, "bootstrapMethodHandle"    # Lnet/bytebuddy/jar/asm/Handle;
    .param p4, "bootstrapMethodArguments"    # [Ljava/lang/Object;

    .line 180
    array-length v0, p4

    new-array v0, v0, [Ljava/lang/Object;

    .line 181
    .local v0, "remappedBootstrapMethodArguments":[Ljava/lang/Object;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p4

    if-ge v1, v2, :cond_0

    .line 182
    iget-object v2, p0, Lnet/bytebuddy/jar/asm/commons/MethodRemapper;->remapper:Lnet/bytebuddy/jar/asm/commons/Remapper;

    aget-object v3, p4, v1

    invoke-virtual {v2, v3}, Lnet/bytebuddy/jar/asm/commons/Remapper;->mapValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v0, v1

    .line 181
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 184
    .end local v1    # "i":I
    :cond_0
    iget-object v1, p0, Lnet/bytebuddy/jar/asm/commons/MethodRemapper;->remapper:Lnet/bytebuddy/jar/asm/commons/Remapper;

    .line 185
    invoke-virtual {v1, p1, p2}, Lnet/bytebuddy/jar/asm/commons/Remapper;->mapInvokeDynamicMethodName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lnet/bytebuddy/jar/asm/commons/MethodRemapper;->remapper:Lnet/bytebuddy/jar/asm/commons/Remapper;

    .line 186
    invoke-virtual {v2, p2}, Lnet/bytebuddy/jar/asm/commons/Remapper;->mapMethodDesc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lnet/bytebuddy/jar/asm/commons/MethodRemapper;->remapper:Lnet/bytebuddy/jar/asm/commons/Remapper;

    .line 187
    invoke-virtual {v3, p3}, Lnet/bytebuddy/jar/asm/commons/Remapper;->mapValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lnet/bytebuddy/jar/asm/Handle;

    .line 184
    invoke-super {p0, v1, v2, v3, v0}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitInvokeDynamicInsn(Ljava/lang/String;Ljava/lang/String;Lnet/bytebuddy/jar/asm/Handle;[Ljava/lang/Object;)V

    .line 189
    return-void
.end method

.method public visitLdcInsn(Ljava/lang/Object;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/Object;

    .line 198
    iget-object v0, p0, Lnet/bytebuddy/jar/asm/commons/MethodRemapper;->remapper:Lnet/bytebuddy/jar/asm/commons/Remapper;

    invoke-virtual {v0, p1}, Lnet/bytebuddy/jar/asm/commons/Remapper;->mapValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-super {p0, v0}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitLdcInsn(Ljava/lang/Object;)V

    .line 199
    return-void
.end method

.method public visitLocalVariable(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lnet/bytebuddy/jar/asm/Label;Lnet/bytebuddy/jar/asm/Label;I)V
    .locals 8
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "descriptor"    # Ljava/lang/String;
    .param p3, "signature"    # Ljava/lang/String;
    .param p4, "start"    # Lnet/bytebuddy/jar/asm/Label;
    .param p5, "end"    # Lnet/bytebuddy/jar/asm/Label;
    .param p6, "index"    # I

    .line 240
    iget-object v0, p0, Lnet/bytebuddy/jar/asm/commons/MethodRemapper;->remapper:Lnet/bytebuddy/jar/asm/commons/Remapper;

    .line 242
    invoke-virtual {v0, p2}, Lnet/bytebuddy/jar/asm/commons/Remapper;->mapDesc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/commons/MethodRemapper;->remapper:Lnet/bytebuddy/jar/asm/commons/Remapper;

    .line 243
    const/4 v1, 0x1

    invoke-virtual {v0, p3, v1}, Lnet/bytebuddy/jar/asm/commons/Remapper;->mapSignature(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v4

    .line 240
    move-object v1, p0

    move-object v2, p1

    move-object v5, p4

    move-object v6, p5

    move v7, p6

    invoke-super/range {v1 .. v7}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitLocalVariable(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lnet/bytebuddy/jar/asm/Label;Lnet/bytebuddy/jar/asm/Label;I)V

    .line 247
    return-void
.end method

.method public visitLocalVariableAnnotation(ILnet/bytebuddy/jar/asm/TypePath;[Lnet/bytebuddy/jar/asm/Label;[Lnet/bytebuddy/jar/asm/Label;[ILjava/lang/String;Z)Lnet/bytebuddy/jar/asm/AnnotationVisitor;
    .locals 10
    .param p1, "typeRef"    # I
    .param p2, "typePath"    # Lnet/bytebuddy/jar/asm/TypePath;
    .param p3, "start"    # [Lnet/bytebuddy/jar/asm/Label;
    .param p4, "end"    # [Lnet/bytebuddy/jar/asm/Label;
    .param p5, "index"    # [I
    .param p6, "descriptor"    # Ljava/lang/String;
    .param p7, "visible"    # Z

    .line 258
    move-object v8, p0

    move-object/from16 v9, p6

    iget-object v0, v8, Lnet/bytebuddy/jar/asm/commons/MethodRemapper;->remapper:Lnet/bytebuddy/jar/asm/commons/Remapper;

    .line 260
    invoke-virtual {v0, v9}, Lnet/bytebuddy/jar/asm/commons/Remapper;->mapDesc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 259
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move/from16 v7, p7

    invoke-super/range {v0 .. v7}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitLocalVariableAnnotation(ILnet/bytebuddy/jar/asm/TypePath;[Lnet/bytebuddy/jar/asm/Label;[Lnet/bytebuddy/jar/asm/Label;[ILjava/lang/String;Z)Lnet/bytebuddy/jar/asm/AnnotationVisitor;

    move-result-object v0

    .line 261
    .local v0, "annotationVisitor":Lnet/bytebuddy/jar/asm/AnnotationVisitor;
    if-nez v0, :cond_0

    .line 262
    move-object v1, v0

    goto :goto_0

    .line 263
    :cond_0
    invoke-virtual {p0, v9, v0}, Lnet/bytebuddy/jar/asm/commons/MethodRemapper;->createAnnotationRemapper(Ljava/lang/String;Lnet/bytebuddy/jar/asm/AnnotationVisitor;)Lnet/bytebuddy/jar/asm/AnnotationVisitor;

    move-result-object v1

    .line 261
    :goto_0
    return-object v1
.end method

.method public visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 7
    .param p1, "opcodeAndSource"    # I
    .param p2, "owner"    # Ljava/lang/String;
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "descriptor"    # Ljava/lang/String;
    .param p5, "isInterface"    # Z

    .line 161
    iget v0, p0, Lnet/bytebuddy/jar/asm/commons/MethodRemapper;->api:I

    const/high16 v1, 0x50000

    if-ge v0, v1, :cond_0

    and-int/lit16 v0, p1, 0x100

    if-nez v0, :cond_0

    .line 163
    invoke-super/range {p0 .. p5}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 164
    return-void

    .line 166
    :cond_0
    iget-object v0, p0, Lnet/bytebuddy/jar/asm/commons/MethodRemapper;->remapper:Lnet/bytebuddy/jar/asm/commons/Remapper;

    .line 168
    invoke-virtual {v0, p2}, Lnet/bytebuddy/jar/asm/commons/Remapper;->mapType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/commons/MethodRemapper;->remapper:Lnet/bytebuddy/jar/asm/commons/Remapper;

    .line 169
    invoke-virtual {v0, p2, p3, p4}, Lnet/bytebuddy/jar/asm/commons/Remapper;->mapMethodName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/commons/MethodRemapper;->remapper:Lnet/bytebuddy/jar/asm/commons/Remapper;

    .line 170
    invoke-virtual {v0, p4}, Lnet/bytebuddy/jar/asm/commons/Remapper;->mapMethodDesc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 166
    move-object v1, p0

    move v2, p1

    move v6, p5

    invoke-super/range {v1 .. v6}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 172
    return-void
.end method

.method public visitMultiANewArrayInsn(Ljava/lang/String;I)V
    .locals 1
    .param p1, "descriptor"    # Ljava/lang/String;
    .param p2, "numDimensions"    # I

    .line 203
    iget-object v0, p0, Lnet/bytebuddy/jar/asm/commons/MethodRemapper;->remapper:Lnet/bytebuddy/jar/asm/commons/Remapper;

    invoke-virtual {v0, p1}, Lnet/bytebuddy/jar/asm/commons/Remapper;->mapDesc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-super {p0, v0, p2}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitMultiANewArrayInsn(Ljava/lang/String;I)V

    .line 204
    return-void
.end method

.method public visitParameterAnnotation(ILjava/lang/String;Z)Lnet/bytebuddy/jar/asm/AnnotationVisitor;
    .locals 2
    .param p1, "parameter"    # I
    .param p2, "descriptor"    # Ljava/lang/String;
    .param p3, "visible"    # Z

    .line 105
    iget-object v0, p0, Lnet/bytebuddy/jar/asm/commons/MethodRemapper;->remapper:Lnet/bytebuddy/jar/asm/commons/Remapper;

    .line 106
    invoke-virtual {v0, p2}, Lnet/bytebuddy/jar/asm/commons/Remapper;->mapDesc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-super {p0, p1, v0, p3}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitParameterAnnotation(ILjava/lang/String;Z)Lnet/bytebuddy/jar/asm/AnnotationVisitor;

    move-result-object v0

    .line 107
    .local v0, "annotationVisitor":Lnet/bytebuddy/jar/asm/AnnotationVisitor;
    if-nez v0, :cond_0

    .line 108
    move-object v1, v0

    goto :goto_0

    .line 109
    :cond_0
    invoke-virtual {p0, p2, v0}, Lnet/bytebuddy/jar/asm/commons/MethodRemapper;->createAnnotationRemapper(Ljava/lang/String;Lnet/bytebuddy/jar/asm/AnnotationVisitor;)Lnet/bytebuddy/jar/asm/AnnotationVisitor;

    move-result-object v1

    .line 107
    :goto_0
    return-object v1
.end method

.method public visitTryCatchAnnotation(ILnet/bytebuddy/jar/asm/TypePath;Ljava/lang/String;Z)Lnet/bytebuddy/jar/asm/AnnotationVisitor;
    .locals 2
    .param p1, "typeRef"    # I
    .param p2, "typePath"    # Lnet/bytebuddy/jar/asm/TypePath;
    .param p3, "descriptor"    # Ljava/lang/String;
    .param p4, "visible"    # Z

    .line 225
    iget-object v0, p0, Lnet/bytebuddy/jar/asm/commons/MethodRemapper;->remapper:Lnet/bytebuddy/jar/asm/commons/Remapper;

    .line 226
    invoke-virtual {v0, p3}, Lnet/bytebuddy/jar/asm/commons/Remapper;->mapDesc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-super {p0, p1, p2, v0, p4}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitTryCatchAnnotation(ILnet/bytebuddy/jar/asm/TypePath;Ljava/lang/String;Z)Lnet/bytebuddy/jar/asm/AnnotationVisitor;

    move-result-object v0

    .line 227
    .local v0, "annotationVisitor":Lnet/bytebuddy/jar/asm/AnnotationVisitor;
    if-nez v0, :cond_0

    .line 228
    move-object v1, v0

    goto :goto_0

    .line 229
    :cond_0
    invoke-virtual {p0, p3, v0}, Lnet/bytebuddy/jar/asm/commons/MethodRemapper;->createAnnotationRemapper(Ljava/lang/String;Lnet/bytebuddy/jar/asm/AnnotationVisitor;)Lnet/bytebuddy/jar/asm/AnnotationVisitor;

    move-result-object v1

    .line 227
    :goto_0
    return-object v1
.end method

.method public visitTryCatchBlock(Lnet/bytebuddy/jar/asm/Label;Lnet/bytebuddy/jar/asm/Label;Lnet/bytebuddy/jar/asm/Label;Ljava/lang/String;)V
    .locals 1
    .param p1, "start"    # Lnet/bytebuddy/jar/asm/Label;
    .param p2, "end"    # Lnet/bytebuddy/jar/asm/Label;
    .param p3, "handler"    # Lnet/bytebuddy/jar/asm/Label;
    .param p4, "type"    # Ljava/lang/String;

    .line 219
    if-nez p4, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lnet/bytebuddy/jar/asm/commons/MethodRemapper;->remapper:Lnet/bytebuddy/jar/asm/commons/Remapper;

    invoke-virtual {v0, p4}, Lnet/bytebuddy/jar/asm/commons/Remapper;->mapType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-super {p0, p1, p2, p3, v0}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitTryCatchBlock(Lnet/bytebuddy/jar/asm/Label;Lnet/bytebuddy/jar/asm/Label;Lnet/bytebuddy/jar/asm/Label;Ljava/lang/String;)V

    .line 220
    return-void
.end method

.method public visitTypeAnnotation(ILnet/bytebuddy/jar/asm/TypePath;Ljava/lang/String;Z)Lnet/bytebuddy/jar/asm/AnnotationVisitor;
    .locals 2
    .param p1, "typeRef"    # I
    .param p2, "typePath"    # Lnet/bytebuddy/jar/asm/TypePath;
    .param p3, "descriptor"    # Ljava/lang/String;
    .param p4, "visible"    # Z

    .line 95
    iget-object v0, p0, Lnet/bytebuddy/jar/asm/commons/MethodRemapper;->remapper:Lnet/bytebuddy/jar/asm/commons/Remapper;

    .line 96
    invoke-virtual {v0, p3}, Lnet/bytebuddy/jar/asm/commons/Remapper;->mapDesc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-super {p0, p1, p2, v0, p4}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitTypeAnnotation(ILnet/bytebuddy/jar/asm/TypePath;Ljava/lang/String;Z)Lnet/bytebuddy/jar/asm/AnnotationVisitor;

    move-result-object v0

    .line 97
    .local v0, "annotationVisitor":Lnet/bytebuddy/jar/asm/AnnotationVisitor;
    if-nez v0, :cond_0

    .line 98
    move-object v1, v0

    goto :goto_0

    .line 99
    :cond_0
    invoke-virtual {p0, p3, v0}, Lnet/bytebuddy/jar/asm/commons/MethodRemapper;->createAnnotationRemapper(Ljava/lang/String;Lnet/bytebuddy/jar/asm/AnnotationVisitor;)Lnet/bytebuddy/jar/asm/AnnotationVisitor;

    move-result-object v1

    .line 97
    :goto_0
    return-object v1
.end method

.method public visitTypeInsn(ILjava/lang/String;)V
    .locals 1
    .param p1, "opcode"    # I
    .param p2, "type"    # Ljava/lang/String;

    .line 193
    iget-object v0, p0, Lnet/bytebuddy/jar/asm/commons/MethodRemapper;->remapper:Lnet/bytebuddy/jar/asm/commons/Remapper;

    invoke-virtual {v0, p2}, Lnet/bytebuddy/jar/asm/commons/Remapper;->mapType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-super {p0, p1, v0}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitTypeInsn(ILjava/lang/String;)V

    .line 194
    return-void
.end method
