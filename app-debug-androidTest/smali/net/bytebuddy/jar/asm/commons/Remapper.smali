.class public abstract Lnet/bytebuddy/jar/asm/commons/Remapper;
.super Ljava/lang/Object;
.source "Remapper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private mapType(Lnet/bytebuddy/jar/asm/Type;)Lnet/bytebuddy/jar/asm/Type;
    .locals 3
    .param p1, "type"    # Lnet/bytebuddy/jar/asm/Type;

    .line 69
    invoke-virtual {p1}, Lnet/bytebuddy/jar/asm/Type;->getSort()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 83
    return-object p1

    .line 81
    :pswitch_0
    invoke-virtual {p1}, Lnet/bytebuddy/jar/asm/Type;->getDescriptor()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lnet/bytebuddy/jar/asm/commons/Remapper;->mapMethodDesc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lnet/bytebuddy/jar/asm/Type;->getMethodType(Ljava/lang/String;)Lnet/bytebuddy/jar/asm/Type;

    move-result-object v0

    return-object v0

    .line 78
    :pswitch_1
    invoke-virtual {p1}, Lnet/bytebuddy/jar/asm/Type;->getInternalName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lnet/bytebuddy/jar/asm/commons/Remapper;->map(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 79
    .local v0, "remappedInternalName":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-static {v0}, Lnet/bytebuddy/jar/asm/Type;->getObjectType(Ljava/lang/String;)Lnet/bytebuddy/jar/asm/Type;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, p1

    :goto_0
    return-object v1

    .line 71
    .end local v0    # "remappedInternalName":Ljava/lang/String;
    :pswitch_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 72
    .local v0, "remappedDescriptor":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    invoke-virtual {p1}, Lnet/bytebuddy/jar/asm/Type;->getDimensions()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 73
    const/16 v2, 0x5b

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 72
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 75
    .end local v1    # "i":I
    :cond_1
    invoke-virtual {p1}, Lnet/bytebuddy/jar/asm/Type;->getElementType()Lnet/bytebuddy/jar/asm/Type;

    move-result-object v1

    invoke-direct {p0, v1}, Lnet/bytebuddy/jar/asm/commons/Remapper;->mapType(Lnet/bytebuddy/jar/asm/Type;)Lnet/bytebuddy/jar/asm/Type;

    move-result-object v1

    invoke-virtual {v1}, Lnet/bytebuddy/jar/asm/Type;->getDescriptor()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lnet/bytebuddy/jar/asm/Type;->getType(Ljava/lang/String;)Lnet/bytebuddy/jar/asm/Type;

    move-result-object v1

    return-object v1

    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method protected createRemappingSignatureAdapter(Lnet/bytebuddy/jar/asm/signature/SignatureVisitor;)Lnet/bytebuddy/jar/asm/signature/SignatureVisitor;
    .locals 1
    .param p1, "signatureVisitor"    # Lnet/bytebuddy/jar/asm/signature/SignatureVisitor;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 225
    invoke-virtual {p0, p1}, Lnet/bytebuddy/jar/asm/commons/Remapper;->createSignatureRemapper(Lnet/bytebuddy/jar/asm/signature/SignatureVisitor;)Lnet/bytebuddy/jar/asm/signature/SignatureVisitor;

    move-result-object v0

    return-object v0
.end method

.method protected createSignatureRemapper(Lnet/bytebuddy/jar/asm/signature/SignatureVisitor;)Lnet/bytebuddy/jar/asm/signature/SignatureVisitor;
    .locals 1
    .param p1, "signatureVisitor"    # Lnet/bytebuddy/jar/asm/signature/SignatureVisitor;

    .line 236
    new-instance v0, Lnet/bytebuddy/jar/asm/commons/SignatureRemapper;

    invoke-direct {v0, p1, p0}, Lnet/bytebuddy/jar/asm/commons/SignatureRemapper;-><init>(Lnet/bytebuddy/jar/asm/signature/SignatureVisitor;Lnet/bytebuddy/jar/asm/commons/Remapper;)V

    return-object v0
.end method

.method public map(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p1, "internalName"    # Ljava/lang/String;

    .line 358
    return-object p1
.end method

.method public mapAnnotationAttributeName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p1, "descriptor"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;

    .line 248
    return-object p2
.end method

.method public mapDesc(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "descriptor"    # Ljava/lang/String;

    .line 55
    invoke-static {p1}, Lnet/bytebuddy/jar/asm/Type;->getType(Ljava/lang/String;)Lnet/bytebuddy/jar/asm/Type;

    move-result-object v0

    invoke-direct {p0, v0}, Lnet/bytebuddy/jar/asm/commons/Remapper;->mapType(Lnet/bytebuddy/jar/asm/Type;)Lnet/bytebuddy/jar/asm/Type;

    move-result-object v0

    invoke-virtual {v0}, Lnet/bytebuddy/jar/asm/Type;->getDescriptor()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public mapFieldName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p1, "owner"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "descriptor"    # Ljava/lang/String;

    .line 325
    return-object p2
.end method

.method public mapInnerClassName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "ownerName"    # Ljava/lang/String;
    .param p3, "innerName"    # Ljava/lang/String;

    .line 263
    invoke-virtual {p0, p1}, Lnet/bytebuddy/jar/asm/commons/Remapper;->mapType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 264
    .local v0, "remappedInnerName":Ljava/lang/String;
    const-string v1, "$"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 265
    const/16 v1, 0x24

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 266
    .local v1, "index":I
    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 267
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->isDigit(C)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 268
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 270
    :cond_0
    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 272
    .end local v1    # "index":I
    :cond_1
    return-object p3
.end method

.method public mapInvokeDynamicMethodName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "descriptor"    # Ljava/lang/String;

    .line 298
    return-object p1
.end method

.method public mapMethodDesc(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "methodDescriptor"    # Ljava/lang/String;

    .line 130
    const-string v0, "()V"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 131
    return-object p1

    .line 134
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 135
    .local v0, "stringBuilder":Ljava/lang/StringBuilder;
    invoke-static {p1}, Lnet/bytebuddy/jar/asm/Type;->getArgumentTypes(Ljava/lang/String;)[Lnet/bytebuddy/jar/asm/Type;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    .line 136
    .local v4, "argumentType":Lnet/bytebuddy/jar/asm/Type;
    invoke-direct {p0, v4}, Lnet/bytebuddy/jar/asm/commons/Remapper;->mapType(Lnet/bytebuddy/jar/asm/Type;)Lnet/bytebuddy/jar/asm/Type;

    move-result-object v5

    invoke-virtual {v5}, Lnet/bytebuddy/jar/asm/Type;->getDescriptor()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    .end local v4    # "argumentType":Lnet/bytebuddy/jar/asm/Type;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 138
    :cond_1
    invoke-static {p1}, Lnet/bytebuddy/jar/asm/Type;->getReturnType(Ljava/lang/String;)Lnet/bytebuddy/jar/asm/Type;

    move-result-object v1

    .line 139
    .local v1, "returnType":Lnet/bytebuddy/jar/asm/Type;
    sget-object v2, Lnet/bytebuddy/jar/asm/Type;->VOID_TYPE:Lnet/bytebuddy/jar/asm/Type;

    if-ne v1, v2, :cond_2

    .line 140
    const-string v2, ")V"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 142
    :cond_2
    const/16 v2, 0x29

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0, v1}, Lnet/bytebuddy/jar/asm/commons/Remapper;->mapType(Lnet/bytebuddy/jar/asm/Type;)Lnet/bytebuddy/jar/asm/Type;

    move-result-object v3

    invoke-virtual {v3}, Lnet/bytebuddy/jar/asm/Type;->getDescriptor()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 144
    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public mapMethodName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p1, "owner"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "descriptor"    # Ljava/lang/String;

    .line 286
    return-object p2
.end method

.method public mapModuleName(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .line 347
    return-object p1
.end method

.method public mapPackageName(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .line 336
    return-object p1
.end method

.method public mapRecordComponentName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p1, "owner"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "descriptor"    # Ljava/lang/String;

    .line 312
    return-object p2
.end method

.method public mapSignature(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 4
    .param p1, "signature"    # Ljava/lang/String;
    .param p2, "typeSignature"    # Z

    .line 200
    if-nez p1, :cond_0

    .line 201
    const/4 v0, 0x0

    return-object v0

    .line 203
    :cond_0
    new-instance v0, Lnet/bytebuddy/jar/asm/signature/SignatureReader;

    invoke-direct {v0, p1}, Lnet/bytebuddy/jar/asm/signature/SignatureReader;-><init>(Ljava/lang/String;)V

    .line 204
    .local v0, "signatureReader":Lnet/bytebuddy/jar/asm/signature/SignatureReader;
    new-instance v1, Lnet/bytebuddy/jar/asm/signature/SignatureWriter;

    invoke-direct {v1}, Lnet/bytebuddy/jar/asm/signature/SignatureWriter;-><init>()V

    .line 205
    .local v1, "signatureWriter":Lnet/bytebuddy/jar/asm/signature/SignatureWriter;
    invoke-virtual {p0, v1}, Lnet/bytebuddy/jar/asm/commons/Remapper;->createSignatureRemapper(Lnet/bytebuddy/jar/asm/signature/SignatureVisitor;)Lnet/bytebuddy/jar/asm/signature/SignatureVisitor;

    move-result-object v2

    .line 206
    .local v2, "signatureRemapper":Lnet/bytebuddy/jar/asm/signature/SignatureVisitor;
    if-eqz p2, :cond_1

    .line 207
    invoke-virtual {v0, v2}, Lnet/bytebuddy/jar/asm/signature/SignatureReader;->acceptType(Lnet/bytebuddy/jar/asm/signature/SignatureVisitor;)V

    goto :goto_0

    .line 209
    :cond_1
    invoke-virtual {v0, v2}, Lnet/bytebuddy/jar/asm/signature/SignatureReader;->accept(Lnet/bytebuddy/jar/asm/signature/SignatureVisitor;)V

    .line 211
    :goto_0
    invoke-virtual {v1}, Lnet/bytebuddy/jar/asm/signature/SignatureWriter;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public mapType(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "internalName"    # Ljava/lang/String;

    .line 94
    if-nez p1, :cond_0

    .line 95
    const/4 v0, 0x0

    return-object v0

    .line 97
    :cond_0
    invoke-static {p1}, Lnet/bytebuddy/jar/asm/Type;->getObjectType(Ljava/lang/String;)Lnet/bytebuddy/jar/asm/Type;

    move-result-object v0

    invoke-direct {p0, v0}, Lnet/bytebuddy/jar/asm/commons/Remapper;->mapType(Lnet/bytebuddy/jar/asm/Type;)Lnet/bytebuddy/jar/asm/Type;

    move-result-object v0

    invoke-virtual {v0}, Lnet/bytebuddy/jar/asm/Type;->getInternalName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public mapTypes([Ljava/lang/String;)[Ljava/lang/String;
    .locals 5
    .param p1, "internalNames"    # [Ljava/lang/String;

    .line 107
    const/4 v0, 0x0

    .line 108
    .local v0, "remappedInternalNames":[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_2

    .line 109
    aget-object v2, p1, v1

    .line 110
    .local v2, "internalName":Ljava/lang/String;
    invoke-virtual {p0, v2}, Lnet/bytebuddy/jar/asm/commons/Remapper;->mapType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 111
    .local v3, "remappedInternalName":Ljava/lang/String;
    if-eqz v3, :cond_1

    .line 112
    if-nez v0, :cond_0

    .line 113
    invoke-virtual {p1}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, [Ljava/lang/String;

    .line 115
    :cond_0
    aput-object v3, v0, v1

    .line 108
    .end local v2    # "internalName":Ljava/lang/String;
    .end local v3    # "remappedInternalName":Ljava/lang/String;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 118
    .end local v1    # "i":I
    :cond_2
    if-eqz v0, :cond_3

    move-object v1, v0

    goto :goto_1

    :cond_3
    move-object v1, p1

    :goto_1
    return-object v1
.end method

.method public mapValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8
    .param p1, "value"    # Ljava/lang/Object;

    .line 158
    instance-of v0, p1, Lnet/bytebuddy/jar/asm/Type;

    if-eqz v0, :cond_0

    .line 159
    move-object v0, p1

    check-cast v0, Lnet/bytebuddy/jar/asm/Type;

    invoke-direct {p0, v0}, Lnet/bytebuddy/jar/asm/commons/Remapper;->mapType(Lnet/bytebuddy/jar/asm/Type;)Lnet/bytebuddy/jar/asm/Type;

    move-result-object v0

    return-object v0

    .line 161
    :cond_0
    instance-of v0, p1, Lnet/bytebuddy/jar/asm/Handle;

    if-eqz v0, :cond_2

    .line 162
    move-object v0, p1

    check-cast v0, Lnet/bytebuddy/jar/asm/Handle;

    .line 163
    .local v0, "handle":Lnet/bytebuddy/jar/asm/Handle;
    new-instance v7, Lnet/bytebuddy/jar/asm/Handle;

    .line 164
    invoke-virtual {v0}, Lnet/bytebuddy/jar/asm/Handle;->getTag()I

    move-result v2

    .line 165
    invoke-virtual {v0}, Lnet/bytebuddy/jar/asm/Handle;->getOwner()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lnet/bytebuddy/jar/asm/commons/Remapper;->mapType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 166
    invoke-virtual {v0}, Lnet/bytebuddy/jar/asm/Handle;->getOwner()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lnet/bytebuddy/jar/asm/Handle;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lnet/bytebuddy/jar/asm/Handle;->getDesc()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v1, v4, v5}, Lnet/bytebuddy/jar/asm/commons/Remapper;->mapMethodName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 167
    invoke-virtual {v0}, Lnet/bytebuddy/jar/asm/Handle;->getTag()I

    move-result v1

    const/4 v5, 0x4

    if-gt v1, v5, :cond_1

    .line 168
    invoke-virtual {v0}, Lnet/bytebuddy/jar/asm/Handle;->getDesc()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lnet/bytebuddy/jar/asm/commons/Remapper;->mapDesc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object v5, v1

    goto :goto_0

    .line 169
    :cond_1
    invoke-virtual {v0}, Lnet/bytebuddy/jar/asm/Handle;->getDesc()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lnet/bytebuddy/jar/asm/commons/Remapper;->mapMethodDesc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object v5, v1

    .line 170
    :goto_0
    invoke-virtual {v0}, Lnet/bytebuddy/jar/asm/Handle;->isInterface()Z

    move-result v6

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lnet/bytebuddy/jar/asm/Handle;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 163
    return-object v7

    .line 172
    .end local v0    # "handle":Lnet/bytebuddy/jar/asm/Handle;
    :cond_2
    instance-of v0, p1, Lnet/bytebuddy/jar/asm/ConstantDynamic;

    if-eqz v0, :cond_4

    .line 173
    move-object v0, p1

    check-cast v0, Lnet/bytebuddy/jar/asm/ConstantDynamic;

    .line 174
    .local v0, "constantDynamic":Lnet/bytebuddy/jar/asm/ConstantDynamic;
    invoke-virtual {v0}, Lnet/bytebuddy/jar/asm/ConstantDynamic;->getBootstrapMethodArgumentCount()I

    move-result v1

    .line 175
    .local v1, "bootstrapMethodArgumentCount":I
    new-array v2, v1, [Ljava/lang/Object;

    .line 176
    .local v2, "remappedBootstrapMethodArguments":[Ljava/lang/Object;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v3, v1, :cond_3

    .line 177
    nop

    .line 178
    invoke-virtual {v0, v3}, Lnet/bytebuddy/jar/asm/ConstantDynamic;->getBootstrapMethodArgument(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p0, v4}, Lnet/bytebuddy/jar/asm/commons/Remapper;->mapValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v2, v3

    .line 176
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 180
    .end local v3    # "i":I
    :cond_3
    invoke-virtual {v0}, Lnet/bytebuddy/jar/asm/ConstantDynamic;->getDescriptor()Ljava/lang/String;

    move-result-object v3

    .line 181
    .local v3, "descriptor":Ljava/lang/String;
    new-instance v4, Lnet/bytebuddy/jar/asm/ConstantDynamic;

    .line 182
    invoke-virtual {v0}, Lnet/bytebuddy/jar/asm/ConstantDynamic;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5, v3}, Lnet/bytebuddy/jar/asm/commons/Remapper;->mapInvokeDynamicMethodName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 183
    invoke-virtual {p0, v3}, Lnet/bytebuddy/jar/asm/commons/Remapper;->mapDesc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 184
    invoke-virtual {v0}, Lnet/bytebuddy/jar/asm/ConstantDynamic;->getBootstrapMethod()Lnet/bytebuddy/jar/asm/Handle;

    move-result-object v7

    invoke-virtual {p0, v7}, Lnet/bytebuddy/jar/asm/commons/Remapper;->mapValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lnet/bytebuddy/jar/asm/Handle;

    invoke-direct {v4, v5, v6, v7, v2}, Lnet/bytebuddy/jar/asm/ConstantDynamic;-><init>(Ljava/lang/String;Ljava/lang/String;Lnet/bytebuddy/jar/asm/Handle;[Ljava/lang/Object;)V

    .line 181
    return-object v4

    .line 187
    .end local v0    # "constantDynamic":Lnet/bytebuddy/jar/asm/ConstantDynamic;
    .end local v1    # "bootstrapMethodArgumentCount":I
    .end local v2    # "remappedBootstrapMethodArguments":[Ljava/lang/Object;
    .end local v3    # "descriptor":Ljava/lang/String;
    :cond_4
    return-object p1
.end method
