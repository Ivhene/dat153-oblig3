.class public final Lcom/android/dx/dex/code/DalvInsnList;
.super Lcom/android/dx/util/FixedSizeList;
.source "DalvInsnList.java"


# instance fields
.field private final regCount:I


# direct methods
.method public constructor <init>(II)V
    .locals 0
    .param p1, "size"    # I
    .param p2, "regCount"    # I

    .line 78
    invoke-direct {p0, p1}, Lcom/android/dx/util/FixedSizeList;-><init>(I)V

    .line 79
    iput p2, p0, Lcom/android/dx/dex/code/DalvInsnList;->regCount:I

    .line 80
    return-void
.end method

.method public static makeImmutable(Ljava/util/ArrayList;I)Lcom/android/dx/dex/code/DalvInsnList;
    .locals 4
    .param p1, "regCount"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/dx/dex/code/DalvInsn;",
            ">;I)",
            "Lcom/android/dx/dex/code/DalvInsnList;"
        }
    .end annotation

    .line 59
    .local p0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/dx/dex/code/DalvInsn;>;"
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 60
    .local v0, "size":I
    new-instance v1, Lcom/android/dx/dex/code/DalvInsnList;

    invoke-direct {v1, v0, p1}, Lcom/android/dx/dex/code/DalvInsnList;-><init>(II)V

    .line 62
    .local v1, "result":Lcom/android/dx/dex/code/DalvInsnList;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 63
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/dx/dex/code/DalvInsn;

    invoke-virtual {v1, v2, v3}, Lcom/android/dx/dex/code/DalvInsnList;->set(ILcom/android/dx/dex/code/DalvInsn;)V

    .line 62
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 66
    .end local v2    # "i":I
    :cond_0
    invoke-virtual {v1}, Lcom/android/dx/dex/code/DalvInsnList;->setImmutable()V

    .line 67
    return-object v1
.end method


# virtual methods
.method public codeSize()I
    .locals 3

    .line 112
    invoke-virtual {p0}, Lcom/android/dx/dex/code/DalvInsnList;->size()I

    move-result v0

    .line 114
    .local v0, "sz":I
    if-nez v0, :cond_0

    .line 115
    const/4 v1, 0x0

    return v1

    .line 118
    :cond_0
    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p0, v1}, Lcom/android/dx/dex/code/DalvInsnList;->get(I)Lcom/android/dx/dex/code/DalvInsn;

    move-result-object v1

    .line 119
    .local v1, "last":Lcom/android/dx/dex/code/DalvInsn;
    invoke-virtual {v1}, Lcom/android/dx/dex/code/DalvInsn;->getNextAddress()I

    move-result v2

    return v2
.end method

.method public debugPrint(Ljava/io/OutputStream;Ljava/lang/String;Z)V
    .locals 3
    .param p1, "out"    # Ljava/io/OutputStream;
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "verbose"    # Z

    .line 277
    new-instance v0, Ljava/io/OutputStreamWriter;

    invoke-direct {v0, p1}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    .line 278
    .local v0, "w":Ljava/io/Writer;
    invoke-virtual {p0, v0, p2, p3}, Lcom/android/dx/dex/code/DalvInsnList;->debugPrint(Ljava/io/Writer;Ljava/lang/String;Z)V

    .line 281
    :try_start_0
    invoke-virtual {v0}, Ljava/io/Writer;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 284
    nop

    .line 285
    return-void

    .line 282
    :catch_0
    move-exception v1

    .line 283
    .local v1, "ex":Ljava/io/IOException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public debugPrint(Ljava/io/Writer;Ljava/lang/String;Z)V
    .locals 6
    .param p1, "out"    # Ljava/io/Writer;
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "verbose"    # Z

    .line 243
    new-instance v0, Lcom/android/dx/util/IndentingWriter;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1, p2}, Lcom/android/dx/util/IndentingWriter;-><init>(Ljava/io/Writer;ILjava/lang/String;)V

    .line 244
    .local v0, "iw":Lcom/android/dx/util/IndentingWriter;
    invoke-virtual {p0}, Lcom/android/dx/dex/code/DalvInsnList;->size()I

    move-result v2

    .line 247
    .local v2, "sz":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_3

    .line 248
    :try_start_0
    invoke-virtual {p0, v3}, Lcom/android/dx/dex/code/DalvInsnList;->get0(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/dx/dex/code/DalvInsn;

    .line 251
    .local v4, "insn":Lcom/android/dx/dex/code/DalvInsn;
    invoke-virtual {v4}, Lcom/android/dx/dex/code/DalvInsn;->codeSize()I

    move-result v5

    if-nez v5, :cond_1

    if-eqz p3, :cond_0

    goto :goto_1

    .line 254
    :cond_0
    const/4 v5, 0x0

    .local v5, "s":Ljava/lang/String;
    goto :goto_2

    .line 252
    .end local v5    # "s":Ljava/lang/String;
    :cond_1
    :goto_1
    const-string v5, ""

    invoke-virtual {v4, v5, v1, p3}, Lcom/android/dx/dex/code/DalvInsn;->listingString(Ljava/lang/String;IZ)Ljava/lang/String;

    move-result-object v5

    .line 257
    .restart local v5    # "s":Ljava/lang/String;
    :goto_2
    if-eqz v5, :cond_2

    .line 258
    invoke-virtual {v0, v5}, Lcom/android/dx/util/IndentingWriter;->write(Ljava/lang/String;)V

    .line 247
    .end local v4    # "insn":Lcom/android/dx/dex/code/DalvInsn;
    .end local v5    # "s":Ljava/lang/String;
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 262
    .end local v3    # "i":I
    :cond_3
    invoke-virtual {v0}, Lcom/android/dx/util/IndentingWriter;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 265
    nop

    .line 266
    return-void

    .line 263
    :catch_0
    move-exception v1

    .line 264
    .local v1, "ex":Ljava/io/IOException;
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method public get(I)Lcom/android/dx/dex/code/DalvInsn;
    .locals 1
    .param p1, "n"    # I

    .line 91
    invoke-virtual {p0, p1}, Lcom/android/dx/dex/code/DalvInsnList;->get0(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/dx/dex/code/DalvInsn;

    return-object v0
.end method

.method public getOutsSize()I
    .locals 10

    .line 191
    invoke-virtual {p0}, Lcom/android/dx/dex/code/DalvInsnList;->size()I

    move-result v0

    .line 192
    .local v0, "sz":I
    const/4 v1, 0x0

    .line 194
    .local v1, "result":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_6

    .line 195
    invoke-virtual {p0, v2}, Lcom/android/dx/dex/code/DalvInsnList;->get0(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/dx/dex/code/DalvInsn;

    .line 196
    .local v3, "insn":Lcom/android/dx/dex/code/DalvInsn;
    const/4 v4, 0x0

    .line 198
    .local v4, "count":I
    instance-of v5, v3, Lcom/android/dx/dex/code/CstInsn;

    const/4 v6, 0x1

    if-eqz v5, :cond_3

    .line 199
    move-object v5, v3

    check-cast v5, Lcom/android/dx/dex/code/CstInsn;

    invoke-virtual {v5}, Lcom/android/dx/dex/code/CstInsn;->getConstant()Lcom/android/dx/rop/cst/Constant;

    move-result-object v5

    .line 200
    .local v5, "cst":Lcom/android/dx/rop/cst/Constant;
    instance-of v7, v5, Lcom/android/dx/rop/cst/CstBaseMethodRef;

    if-eqz v7, :cond_1

    .line 201
    move-object v7, v5

    check-cast v7, Lcom/android/dx/rop/cst/CstBaseMethodRef;

    .line 202
    .local v7, "methodRef":Lcom/android/dx/rop/cst/CstBaseMethodRef;
    nop

    .line 203
    invoke-virtual {v3}, Lcom/android/dx/dex/code/DalvInsn;->getOpcode()Lcom/android/dx/dex/code/Dop;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/dx/dex/code/Dop;->getFamily()I

    move-result v8

    const/16 v9, 0x71

    if-ne v8, v9, :cond_0

    goto :goto_1

    :cond_0
    const/4 v6, 0x0

    .line 204
    .local v6, "isStatic":Z
    :goto_1
    invoke-virtual {v7, v6}, Lcom/android/dx/rop/cst/CstBaseMethodRef;->getParameterWordCount(Z)I

    move-result v4

    .end local v6    # "isStatic":Z
    .end local v7    # "methodRef":Lcom/android/dx/rop/cst/CstBaseMethodRef;
    goto :goto_2

    .line 205
    :cond_1
    instance-of v6, v5, Lcom/android/dx/rop/cst/CstCallSiteRef;

    if-eqz v6, :cond_2

    .line 206
    move-object v6, v5

    check-cast v6, Lcom/android/dx/rop/cst/CstCallSiteRef;

    .line 207
    .local v6, "invokeDynamicRef":Lcom/android/dx/rop/cst/CstCallSiteRef;
    invoke-virtual {v6}, Lcom/android/dx/rop/cst/CstCallSiteRef;->getPrototype()Lcom/android/dx/rop/type/Prototype;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/dx/rop/type/Prototype;->getParameterTypes()Lcom/android/dx/rop/type/StdTypeList;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/dx/rop/type/StdTypeList;->getWordCount()I

    move-result v4

    goto :goto_3

    .line 205
    .end local v6    # "invokeDynamicRef":Lcom/android/dx/rop/cst/CstCallSiteRef;
    :cond_2
    :goto_2
    nop

    .line 209
    .end local v5    # "cst":Lcom/android/dx/rop/cst/Constant;
    :goto_3
    goto :goto_4

    :cond_3
    instance-of v5, v3, Lcom/android/dx/dex/code/MultiCstInsn;

    if-eqz v5, :cond_5

    .line 210
    invoke-virtual {v3}, Lcom/android/dx/dex/code/DalvInsn;->getOpcode()Lcom/android/dx/dex/code/Dop;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/dx/dex/code/Dop;->getFamily()I

    move-result v5

    const/16 v7, 0xfa

    if-ne v5, v7, :cond_4

    .line 213
    move-object v5, v3

    check-cast v5, Lcom/android/dx/dex/code/MultiCstInsn;

    .line 219
    .local v5, "mci":Lcom/android/dx/dex/code/MultiCstInsn;
    invoke-virtual {v5, v6}, Lcom/android/dx/dex/code/MultiCstInsn;->getConstant(I)Lcom/android/dx/rop/cst/Constant;

    move-result-object v7

    check-cast v7, Lcom/android/dx/rop/cst/CstProtoRef;

    .line 220
    .local v7, "proto":Lcom/android/dx/rop/cst/CstProtoRef;
    invoke-virtual {v7}, Lcom/android/dx/rop/cst/CstProtoRef;->getPrototype()Lcom/android/dx/rop/type/Prototype;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/dx/rop/type/Prototype;->getParameterTypes()Lcom/android/dx/rop/type/StdTypeList;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/dx/rop/type/StdTypeList;->getWordCount()I

    move-result v4

    .line 221
    add-int/2addr v4, v6

    .line 226
    .end local v5    # "mci":Lcom/android/dx/dex/code/MultiCstInsn;
    .end local v7    # "proto":Lcom/android/dx/rop/cst/CstProtoRef;
    :goto_4
    if-le v4, v1, :cond_5

    .line 227
    move v1, v4

    goto :goto_5

    .line 211
    :cond_4
    new-instance v5, Ljava/lang/RuntimeException;

    const-string v6, "Expecting invoke-polymorphic"

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 194
    .end local v3    # "insn":Lcom/android/dx/dex/code/DalvInsn;
    .end local v4    # "count":I
    :cond_5
    :goto_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 231
    .end local v2    # "i":I
    :cond_6
    return v1
.end method

.method public getRegistersSize()I
    .locals 1

    .line 180
    iget v0, p0, Lcom/android/dx/dex/code/DalvInsnList;->regCount:I

    return v0
.end method

.method public set(ILcom/android/dx/dex/code/DalvInsn;)V
    .locals 0
    .param p1, "n"    # I
    .param p2, "insn"    # Lcom/android/dx/dex/code/DalvInsn;

    .line 101
    invoke-virtual {p0, p1, p2}, Lcom/android/dx/dex/code/DalvInsnList;->set0(ILjava/lang/Object;)V

    .line 102
    return-void
.end method

.method public writeTo(Lcom/android/dx/util/AnnotatedOutput;)V
    .locals 9
    .param p1, "out"    # Lcom/android/dx/util/AnnotatedOutput;

    .line 129
    invoke-interface {p1}, Lcom/android/dx/util/AnnotatedOutput;->getCursor()I

    move-result v0

    .line 130
    .local v0, "startCursor":I
    invoke-virtual {p0}, Lcom/android/dx/dex/code/DalvInsnList;->size()I

    move-result v1

    .line 132
    .local v1, "sz":I
    invoke-interface {p1}, Lcom/android/dx/util/AnnotatedOutput;->annotates()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 133
    invoke-interface {p1}, Lcom/android/dx/util/AnnotatedOutput;->isVerbose()Z

    move-result v2

    .line 135
    .local v2, "verbose":Z
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v1, :cond_4

    .line 136
    invoke-virtual {p0, v3}, Lcom/android/dx/dex/code/DalvInsnList;->get0(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/dx/dex/code/DalvInsn;

    .line 137
    .local v4, "insn":Lcom/android/dx/dex/code/DalvInsn;
    invoke-virtual {v4}, Lcom/android/dx/dex/code/DalvInsn;->codeSize()I

    move-result v5

    mul-int/lit8 v5, v5, 0x2

    .line 140
    .local v5, "codeBytes":I
    if-nez v5, :cond_1

    if-eqz v2, :cond_0

    goto :goto_1

    .line 144
    :cond_0
    const/4 v6, 0x0

    .local v6, "s":Ljava/lang/String;
    goto :goto_2

    .line 141
    .end local v6    # "s":Ljava/lang/String;
    :cond_1
    :goto_1
    const-string v6, "  "

    invoke-interface {p1}, Lcom/android/dx/util/AnnotatedOutput;->getAnnotationWidth()I

    move-result v7

    const/4 v8, 0x1

    invoke-virtual {v4, v6, v7, v8}, Lcom/android/dx/dex/code/DalvInsn;->listingString(Ljava/lang/String;IZ)Ljava/lang/String;

    move-result-object v6

    .line 147
    .restart local v6    # "s":Ljava/lang/String;
    :goto_2
    if-eqz v6, :cond_2

    .line 148
    invoke-interface {p1, v5, v6}, Lcom/android/dx/util/AnnotatedOutput;->annotate(ILjava/lang/String;)V

    goto :goto_3

    .line 149
    :cond_2
    if-eqz v5, :cond_3

    .line 150
    const-string v7, ""

    invoke-interface {p1, v5, v7}, Lcom/android/dx/util/AnnotatedOutput;->annotate(ILjava/lang/String;)V

    .line 135
    .end local v4    # "insn":Lcom/android/dx/dex/code/DalvInsn;
    .end local v5    # "codeBytes":I
    .end local v6    # "s":Ljava/lang/String;
    :cond_3
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 155
    .end local v2    # "verbose":Z
    .end local v3    # "i":I
    :cond_4
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_4
    if-ge v2, v1, :cond_5

    .line 156
    invoke-virtual {p0, v2}, Lcom/android/dx/dex/code/DalvInsnList;->get0(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/dx/dex/code/DalvInsn;

    .line 158
    .local v3, "insn":Lcom/android/dx/dex/code/DalvInsn;
    :try_start_0
    invoke-virtual {v3, p1}, Lcom/android/dx/dex/code/DalvInsn;->writeTo(Lcom/android/dx/util/AnnotatedOutput;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 162
    nop

    .line 155
    .end local v3    # "insn":Lcom/android/dx/dex/code/DalvInsn;
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 159
    .restart local v3    # "insn":Lcom/android/dx/dex/code/DalvInsn;
    :catch_0
    move-exception v4

    .line 160
    .local v4, "ex":Ljava/lang/RuntimeException;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "...while writing "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/dex/util/ExceptionWithContext;->withContext(Ljava/lang/Throwable;Ljava/lang/String;)Lcom/android/dex/util/ExceptionWithContext;

    move-result-object v5

    throw v5

    .line 166
    .end local v2    # "i":I
    .end local v3    # "insn":Lcom/android/dx/dex/code/DalvInsn;
    .end local v4    # "ex":Ljava/lang/RuntimeException;
    :cond_5
    invoke-interface {p1}, Lcom/android/dx/util/AnnotatedOutput;->getCursor()I

    move-result v2

    sub-int/2addr v2, v0

    div-int/lit8 v2, v2, 0x2

    .line 167
    .local v2, "written":I
    invoke-virtual {p0}, Lcom/android/dx/dex/code/DalvInsnList;->codeSize()I

    move-result v3

    if-ne v2, v3, :cond_6

    .line 171
    return-void

    .line 168
    :cond_6
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "write length mismatch; expected "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 169
    invoke-virtual {p0}, Lcom/android/dx/dex/code/DalvInsnList;->codeSize()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " but actually wrote "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3
.end method
