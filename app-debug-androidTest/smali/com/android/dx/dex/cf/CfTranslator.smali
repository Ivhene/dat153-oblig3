.class public Lcom/android/dx/dex/cf/CfTranslator;
.super Ljava/lang/Object;
.source "CfTranslator.java"


# static fields
.field private static final DEBUG:Z = false


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    return-void
.end method

.method private static coerceConstant(Lcom/android/dx/rop/cst/TypedConstant;Lcom/android/dx/rop/type/Type;)Lcom/android/dx/rop/cst/TypedConstant;
    .locals 4
    .param p0, "constant"    # Lcom/android/dx/rop/cst/TypedConstant;
    .param p1, "type"    # Lcom/android/dx/rop/type/Type;

    .line 241
    invoke-virtual {p0}, Lcom/android/dx/rop/cst/TypedConstant;->getType()Lcom/android/dx/rop/type/Type;

    move-result-object v0

    .line 243
    .local v0, "constantType":Lcom/android/dx/rop/type/Type;
    invoke-virtual {v0, p1}, Lcom/android/dx/rop/type/Type;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 244
    return-object p0

    .line 247
    :cond_0
    invoke-virtual {p1}, Lcom/android/dx/rop/type/Type;->getBasicType()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 261
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "can\'t coerce "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 258
    :sswitch_0
    move-object v1, p0

    check-cast v1, Lcom/android/dx/rop/cst/CstInteger;

    invoke-virtual {v1}, Lcom/android/dx/rop/cst/CstInteger;->getValue()I

    move-result v1

    invoke-static {v1}, Lcom/android/dx/rop/cst/CstShort;->make(I)Lcom/android/dx/rop/cst/CstShort;

    move-result-object v1

    return-object v1

    .line 255
    :sswitch_1
    move-object v1, p0

    check-cast v1, Lcom/android/dx/rop/cst/CstInteger;

    invoke-virtual {v1}, Lcom/android/dx/rop/cst/CstInteger;->getValue()I

    move-result v1

    invoke-static {v1}, Lcom/android/dx/rop/cst/CstChar;->make(I)Lcom/android/dx/rop/cst/CstChar;

    move-result-object v1

    return-object v1

    .line 252
    :sswitch_2
    move-object v1, p0

    check-cast v1, Lcom/android/dx/rop/cst/CstInteger;

    invoke-virtual {v1}, Lcom/android/dx/rop/cst/CstInteger;->getValue()I

    move-result v1

    invoke-static {v1}, Lcom/android/dx/rop/cst/CstByte;->make(I)Lcom/android/dx/rop/cst/CstByte;

    move-result-object v1

    return-object v1

    .line 249
    :sswitch_3
    move-object v1, p0

    check-cast v1, Lcom/android/dx/rop/cst/CstInteger;

    invoke-virtual {v1}, Lcom/android/dx/rop/cst/CstInteger;->getValue()I

    move-result v1

    invoke-static {v1}, Lcom/android/dx/rop/cst/CstBoolean;->make(I)Lcom/android/dx/rop/cst/CstBoolean;

    move-result-object v1

    return-object v1

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_3
        0x2 -> :sswitch_2
        0x3 -> :sswitch_1
        0x8 -> :sswitch_0
    .end sparse-switch
.end method

.method private static processFields(Lcom/android/dx/cf/direct/DirectClassFile;Lcom/android/dx/dex/file/ClassDefItem;Lcom/android/dx/dex/file/DexFile;)V
    .locals 10
    .param p0, "cf"    # Lcom/android/dx/cf/direct/DirectClassFile;
    .param p1, "out"    # Lcom/android/dx/dex/file/ClassDefItem;
    .param p2, "dexFile"    # Lcom/android/dx/dex/file/DexFile;

    .line 196
    invoke-virtual {p0}, Lcom/android/dx/cf/direct/DirectClassFile;->getThisClass()Lcom/android/dx/rop/cst/CstType;

    move-result-object v0

    .line 197
    .local v0, "thisClass":Lcom/android/dx/rop/cst/CstType;
    invoke-virtual {p0}, Lcom/android/dx/cf/direct/DirectClassFile;->getFields()Lcom/android/dx/cf/iface/FieldList;

    move-result-object v1

    .line 198
    .local v1, "fields":Lcom/android/dx/cf/iface/FieldList;
    invoke-interface {v1}, Lcom/android/dx/cf/iface/FieldList;->size()I

    move-result v2

    .line 200
    .local v2, "sz":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_3

    .line 201
    invoke-interface {v1, v3}, Lcom/android/dx/cf/iface/FieldList;->get(I)Lcom/android/dx/cf/iface/Field;

    move-result-object v4

    .line 203
    .local v4, "one":Lcom/android/dx/cf/iface/Field;
    :try_start_0
    new-instance v5, Lcom/android/dx/rop/cst/CstFieldRef;

    invoke-interface {v4}, Lcom/android/dx/cf/iface/Field;->getNat()Lcom/android/dx/rop/cst/CstNat;

    move-result-object v6

    invoke-direct {v5, v0, v6}, Lcom/android/dx/rop/cst/CstFieldRef;-><init>(Lcom/android/dx/rop/cst/CstType;Lcom/android/dx/rop/cst/CstNat;)V

    .line 204
    .local v5, "field":Lcom/android/dx/rop/cst/CstFieldRef;
    invoke-interface {v4}, Lcom/android/dx/cf/iface/Field;->getAccessFlags()I

    move-result v6

    .line 206
    .local v6, "accessFlags":I
    invoke-static {v6}, Lcom/android/dx/rop/code/AccessFlags;->isStatic(I)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 207
    invoke-interface {v4}, Lcom/android/dx/cf/iface/Field;->getConstantValue()Lcom/android/dx/rop/cst/TypedConstant;

    move-result-object v7

    .line 208
    .local v7, "constVal":Lcom/android/dx/rop/cst/TypedConstant;
    new-instance v8, Lcom/android/dx/dex/file/EncodedField;

    invoke-direct {v8, v5, v6}, Lcom/android/dx/dex/file/EncodedField;-><init>(Lcom/android/dx/rop/cst/CstFieldRef;I)V

    .line 209
    .local v8, "fi":Lcom/android/dx/dex/file/EncodedField;
    if-eqz v7, :cond_0

    .line 210
    invoke-virtual {v5}, Lcom/android/dx/rop/cst/CstFieldRef;->getType()Lcom/android/dx/rop/type/Type;

    move-result-object v9

    invoke-static {v7, v9}, Lcom/android/dx/dex/cf/CfTranslator;->coerceConstant(Lcom/android/dx/rop/cst/TypedConstant;Lcom/android/dx/rop/type/Type;)Lcom/android/dx/rop/cst/TypedConstant;

    move-result-object v9

    move-object v7, v9

    .line 212
    :cond_0
    invoke-virtual {p1, v8, v7}, Lcom/android/dx/dex/file/ClassDefItem;->addStaticField(Lcom/android/dx/dex/file/EncodedField;Lcom/android/dx/rop/cst/Constant;)V

    .line 213
    .end local v7    # "constVal":Lcom/android/dx/rop/cst/TypedConstant;
    .end local v8    # "fi":Lcom/android/dx/dex/file/EncodedField;
    goto :goto_1

    .line 214
    :cond_1
    new-instance v7, Lcom/android/dx/dex/file/EncodedField;

    invoke-direct {v7, v5, v6}, Lcom/android/dx/dex/file/EncodedField;-><init>(Lcom/android/dx/rop/cst/CstFieldRef;I)V

    .line 215
    .local v7, "fi":Lcom/android/dx/dex/file/EncodedField;
    invoke-virtual {p1, v7}, Lcom/android/dx/dex/file/ClassDefItem;->addInstanceField(Lcom/android/dx/dex/file/EncodedField;)V

    .line 218
    .end local v7    # "fi":Lcom/android/dx/dex/file/EncodedField;
    :goto_1
    nop

    .line 219
    invoke-interface {v4}, Lcom/android/dx/cf/iface/Field;->getAttributes()Lcom/android/dx/cf/iface/AttributeList;

    move-result-object v7

    invoke-static {v7}, Lcom/android/dx/dex/cf/AttributeTranslator;->getAnnotations(Lcom/android/dx/cf/iface/AttributeList;)Lcom/android/dx/rop/annotation/Annotations;

    move-result-object v7

    .line 220
    .local v7, "annotations":Lcom/android/dx/rop/annotation/Annotations;
    invoke-virtual {v7}, Lcom/android/dx/rop/annotation/Annotations;->size()I

    move-result v8

    if-eqz v8, :cond_2

    .line 221
    invoke-virtual {p1, v5, v7, p2}, Lcom/android/dx/dex/file/ClassDefItem;->addFieldAnnotations(Lcom/android/dx/rop/cst/CstFieldRef;Lcom/android/dx/rop/annotation/Annotations;Lcom/android/dx/dex/file/DexFile;)V

    .line 223
    :cond_2
    invoke-virtual {p2}, Lcom/android/dx/dex/file/DexFile;->getFieldIds()Lcom/android/dx/dex/file/FieldIdsSection;

    move-result-object v8

    invoke-virtual {v8, v5}, Lcom/android/dx/dex/file/FieldIdsSection;->intern(Lcom/android/dx/rop/cst/CstFieldRef;)Lcom/android/dx/dex/file/FieldIdItem;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 228
    nop

    .line 200
    .end local v4    # "one":Lcom/android/dx/cf/iface/Field;
    .end local v5    # "field":Lcom/android/dx/rop/cst/CstFieldRef;
    .end local v6    # "accessFlags":I
    .end local v7    # "annotations":Lcom/android/dx/rop/annotation/Annotations;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 224
    .restart local v4    # "one":Lcom/android/dx/cf/iface/Field;
    :catch_0
    move-exception v5

    .line 225
    .local v5, "ex":Ljava/lang/RuntimeException;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "...while processing "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {v4}, Lcom/android/dx/cf/iface/Field;->getName()Lcom/android/dx/rop/cst/CstString;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/dx/rop/cst/CstString;->toHuman()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 226
    invoke-interface {v4}, Lcom/android/dx/cf/iface/Field;->getDescriptor()Lcom/android/dx/rop/cst/CstString;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/dx/rop/cst/CstString;->toHuman()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 227
    .local v6, "msg":Ljava/lang/String;
    invoke-static {v5, v6}, Lcom/android/dex/util/ExceptionWithContext;->withContext(Ljava/lang/Throwable;Ljava/lang/String;)Lcom/android/dex/util/ExceptionWithContext;

    move-result-object v7

    throw v7

    .line 230
    .end local v3    # "i":I
    .end local v4    # "one":Lcom/android/dx/cf/iface/Field;
    .end local v5    # "ex":Ljava/lang/RuntimeException;
    .end local v6    # "msg":Ljava/lang/String;
    :cond_3
    return-void
.end method

.method private static processMethods(Lcom/android/dx/command/dexer/DxContext;Lcom/android/dx/cf/direct/DirectClassFile;Lcom/android/dx/dex/cf/CfOptions;Lcom/android/dx/dex/DexOptions;Lcom/android/dx/dex/file/ClassDefItem;Lcom/android/dx/dex/file/DexFile;)V
    .locals 34
    .param p0, "context"    # Lcom/android/dx/command/dexer/DxContext;
    .param p1, "cf"    # Lcom/android/dx/cf/direct/DirectClassFile;
    .param p2, "cfOptions"    # Lcom/android/dx/dex/cf/CfOptions;
    .param p3, "dexOptions"    # Lcom/android/dx/dex/DexOptions;
    .param p4, "out"    # Lcom/android/dx/dex/file/ClassDefItem;
    .param p5, "dexFile"    # Lcom/android/dx/dex/file/DexFile;

    .line 279
    move-object/from16 v9, p0

    move-object/from16 v10, p2

    move-object/from16 v11, p3

    move-object/from16 v12, p4

    move-object/from16 v13, p5

    invoke-virtual/range {p1 .. p1}, Lcom/android/dx/cf/direct/DirectClassFile;->getThisClass()Lcom/android/dx/rop/cst/CstType;

    move-result-object v14

    .line 280
    .local v14, "thisClass":Lcom/android/dx/rop/cst/CstType;
    invoke-virtual/range {p1 .. p1}, Lcom/android/dx/cf/direct/DirectClassFile;->getMethods()Lcom/android/dx/cf/iface/MethodList;

    move-result-object v15

    .line 281
    .local v15, "methods":Lcom/android/dx/cf/iface/MethodList;
    invoke-interface {v15}, Lcom/android/dx/cf/iface/MethodList;->size()I

    move-result v8

    .line 283
    .local v8, "sz":I
    const/4 v0, 0x0

    move v7, v0

    .local v7, "i":I
    :goto_0
    if-ge v7, v8, :cond_10

    .line 284
    invoke-interface {v15, v7}, Lcom/android/dx/cf/iface/MethodList;->get(I)Lcom/android/dx/cf/iface/Method;

    move-result-object v6

    .line 286
    .local v6, "one":Lcom/android/dx/cf/iface/Method;
    :try_start_0
    new-instance v0, Lcom/android/dx/rop/cst/CstMethodRef;

    invoke-interface {v6}, Lcom/android/dx/cf/iface/Method;->getNat()Lcom/android/dx/rop/cst/CstNat;

    move-result-object v1

    invoke-direct {v0, v14, v1}, Lcom/android/dx/rop/cst/CstMethodRef;-><init>(Lcom/android/dx/rop/cst/CstType;Lcom/android/dx/rop/cst/CstNat;)V

    .line 287
    .local v0, "meth":Lcom/android/dx/rop/cst/CstMethodRef;
    invoke-interface {v6}, Lcom/android/dx/cf/iface/Method;->getAccessFlags()I

    move-result v1

    move/from16 v16, v1

    .line 288
    .local v16, "accessFlags":I
    invoke-static/range {v16 .. v16}, Lcom/android/dx/rop/code/AccessFlags;->isStatic(I)Z

    move-result v1

    move v5, v1

    .line 289
    .local v5, "isStatic":Z
    invoke-static/range {v16 .. v16}, Lcom/android/dx/rop/code/AccessFlags;->isPrivate(I)Z

    move-result v1

    move/from16 v17, v1

    .line 290
    .local v17, "isPrivate":Z
    invoke-static/range {v16 .. v16}, Lcom/android/dx/rop/code/AccessFlags;->isNative(I)Z

    move-result v1

    move/from16 v18, v1

    .line 291
    .local v18, "isNative":Z
    invoke-static/range {v16 .. v16}, Lcom/android/dx/rop/code/AccessFlags;->isAbstract(I)Z

    move-result v1

    move/from16 v19, v1

    .line 292
    .local v19, "isAbstract":Z
    invoke-virtual {v0}, Lcom/android/dx/rop/cst/CstMethodRef;->isInstanceInit()Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_7

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_1

    .line 293
    :try_start_1
    invoke-virtual {v0}, Lcom/android/dx/rop/cst/CstMethodRef;->isClassInit()Z

    move-result v1
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    move v1, v2

    goto :goto_2

    .line 395
    .end local v0    # "meth":Lcom/android/dx/rop/cst/CstMethodRef;
    .end local v5    # "isStatic":Z
    .end local v16    # "accessFlags":I
    .end local v17    # "isPrivate":Z
    .end local v18    # "isNative":Z
    .end local v19    # "isAbstract":Z
    :catch_0
    move-exception v0

    move-object/from16 v22, v6

    move/from16 v24, v7

    move/from16 v33, v8

    move-object/from16 v25, v14

    goto/16 :goto_c

    .line 293
    .restart local v0    # "meth":Lcom/android/dx/rop/cst/CstMethodRef;
    .restart local v5    # "isStatic":Z
    .restart local v16    # "accessFlags":I
    .restart local v17    # "isPrivate":Z
    .restart local v18    # "isNative":Z
    .restart local v19    # "isAbstract":Z
    :cond_1
    :goto_1
    move v1, v3

    :goto_2
    move/from16 v20, v1

    .line 296
    .local v20, "isConstructor":Z
    if-nez v18, :cond_9

    if-eqz v19, :cond_2

    move/from16 v30, v5

    move-object/from16 v22, v6

    move/from16 v24, v7

    move/from16 v33, v8

    move-object/from16 v25, v14

    goto/16 :goto_7

    .line 300
    :cond_2
    :try_start_2
    new-instance v1, Lcom/android/dx/cf/code/ConcreteMethod;

    iget v4, v10, Lcom/android/dx/dex/cf/CfOptions;->positionInfo:I

    if-eq v4, v3, :cond_3

    move v2, v3

    :cond_3
    iget-boolean v3, v10, Lcom/android/dx/dex/cf/CfOptions;->localInfo:Z

    move-object/from16 v4, p1

    invoke-direct {v1, v6, v4, v2, v3}, Lcom/android/dx/cf/code/ConcreteMethod;-><init>(Lcom/android/dx/cf/iface/Method;Lcom/android/dx/cf/iface/ClassFile;ZZ)V

    move-object v3, v1

    .line 307
    .local v3, "concrete":Lcom/android/dx/cf/code/ConcreteMethod;
    sget-object v1, Lcom/android/dx/rop/code/DexTranslationAdvice;->THE_ONE:Lcom/android/dx/rop/code/DexTranslationAdvice;

    move-object v2, v1

    .line 309
    .local v2, "advice":Lcom/android/dx/rop/code/TranslationAdvice;
    invoke-static {v3, v2, v15, v11}, Lcom/android/dx/cf/code/Ropper;->convert(Lcom/android/dx/cf/code/ConcreteMethod;Lcom/android/dx/rop/code/TranslationAdvice;Lcom/android/dx/cf/iface/MethodList;Lcom/android/dx/dex/DexOptions;)Lcom/android/dx/rop/code/RopMethod;

    move-result-object v1

    .line 310
    .local v1, "rmeth":Lcom/android/dx/rop/code/RopMethod;
    const/16 v21, 0x0

    .line 313
    .local v21, "nonOptRmeth":Lcom/android/dx/rop/code/RopMethod;
    invoke-virtual {v0, v5}, Lcom/android/dx/rop/cst/CstMethodRef;->getParameterWordCount(Z)I

    move-result v22

    move/from16 v23, v22

    .line 315
    .local v23, "paramSize":I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 316
    invoke-virtual {v14}, Lcom/android/dx/rop/cst/CstType;->getClassType()Lcom/android/dx/rop/type/Type;

    move-result-object v22
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_7

    move/from16 v24, v7

    .end local v7    # "i":I
    .local v24, "i":I
    :try_start_3
    invoke-virtual/range {v22 .. v22}, Lcom/android/dx/rop/type/Type;->getDescriptor()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, "."

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 317
    invoke-interface {v6}, Lcom/android/dx/cf/iface/Method;->getName()Lcom/android/dx/rop/cst/CstString;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/dx/rop/cst/CstString;->getString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v7, v4

    .line 319
    .local v7, "canonicalName":Ljava/lang/String;
    iget-boolean v4, v10, Lcom/android/dx/dex/cf/CfOptions;->optimize:Z
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_5

    if-eqz v4, :cond_6

    :try_start_4
    iget-object v4, v9, Lcom/android/dx/command/dexer/DxContext;->optimizerOptions:Lcom/android/dx/dex/cf/OptimizerOptions;

    .line 320
    invoke-virtual {v4, v7}, Lcom/android/dx/dex/cf/OptimizerOptions;->shouldOptimize(Ljava/lang/String;)Z

    move-result v4
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_2

    if-eqz v4, :cond_5

    .line 325
    move-object v4, v1

    .line 326
    .end local v21    # "nonOptRmeth":Lcom/android/dx/rop/code/RopMethod;
    .local v4, "nonOptRmeth":Lcom/android/dx/rop/code/RopMethod;
    move-object/from16 v22, v6

    .end local v6    # "one":Lcom/android/dx/cf/iface/Method;
    .local v22, "one":Lcom/android/dx/cf/iface/Method;
    :try_start_5
    iget-boolean v6, v10, Lcom/android/dx/dex/cf/CfOptions;->localInfo:Z
    :try_end_5
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_1

    move-object/from16 v25, v14

    move/from16 v14, v23

    .end local v23    # "paramSize":I
    .local v14, "paramSize":I
    .local v25, "thisClass":Lcom/android/dx/rop/cst/CstType;
    :try_start_6
    invoke-static {v1, v14, v5, v6, v2}, Lcom/android/dx/ssa/Optimizer;->optimize(Lcom/android/dx/rop/code/RopMethod;IZZLcom/android/dx/rop/code/TranslationAdvice;)Lcom/android/dx/rop/code/RopMethod;

    move-result-object v6

    move-object v1, v6

    .line 334
    iget-boolean v6, v10, Lcom/android/dx/dex/cf/CfOptions;->statistics:Z

    if-eqz v6, :cond_4

    .line 335
    iget-object v6, v9, Lcom/android/dx/command/dexer/DxContext;->codeStatistics:Lcom/android/dx/dex/cf/CodeStatistics;

    invoke-virtual {v6, v4, v1}, Lcom/android/dx/dex/cf/CodeStatistics;->updateRopStatistics(Lcom/android/dx/rop/code/RopMethod;Lcom/android/dx/rop/code/RopMethod;)V
    :try_end_6
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_3

    .line 340
    :cond_4
    move-object v6, v1

    move-object/from16 v21, v4

    goto :goto_4

    .line 395
    .end local v0    # "meth":Lcom/android/dx/rop/cst/CstMethodRef;
    .end local v1    # "rmeth":Lcom/android/dx/rop/code/RopMethod;
    .end local v2    # "advice":Lcom/android/dx/rop/code/TranslationAdvice;
    .end local v3    # "concrete":Lcom/android/dx/cf/code/ConcreteMethod;
    .end local v4    # "nonOptRmeth":Lcom/android/dx/rop/code/RopMethod;
    .end local v5    # "isStatic":Z
    .end local v7    # "canonicalName":Ljava/lang/String;
    .end local v16    # "accessFlags":I
    .end local v17    # "isPrivate":Z
    .end local v18    # "isNative":Z
    .end local v19    # "isAbstract":Z
    .end local v20    # "isConstructor":Z
    .end local v25    # "thisClass":Lcom/android/dx/rop/cst/CstType;
    .local v14, "thisClass":Lcom/android/dx/rop/cst/CstType;
    :catch_1
    move-exception v0

    move-object/from16 v25, v14

    move/from16 v33, v8

    .end local v14    # "thisClass":Lcom/android/dx/rop/cst/CstType;
    .restart local v25    # "thisClass":Lcom/android/dx/rop/cst/CstType;
    goto/16 :goto_c

    .line 320
    .end local v22    # "one":Lcom/android/dx/cf/iface/Method;
    .end local v25    # "thisClass":Lcom/android/dx/rop/cst/CstType;
    .restart local v0    # "meth":Lcom/android/dx/rop/cst/CstMethodRef;
    .restart local v1    # "rmeth":Lcom/android/dx/rop/code/RopMethod;
    .restart local v2    # "advice":Lcom/android/dx/rop/code/TranslationAdvice;
    .restart local v3    # "concrete":Lcom/android/dx/cf/code/ConcreteMethod;
    .restart local v5    # "isStatic":Z
    .restart local v6    # "one":Lcom/android/dx/cf/iface/Method;
    .restart local v7    # "canonicalName":Ljava/lang/String;
    .restart local v14    # "thisClass":Lcom/android/dx/rop/cst/CstType;
    .restart local v16    # "accessFlags":I
    .restart local v17    # "isPrivate":Z
    .restart local v18    # "isNative":Z
    .restart local v19    # "isAbstract":Z
    .restart local v20    # "isConstructor":Z
    .restart local v21    # "nonOptRmeth":Lcom/android/dx/rop/code/RopMethod;
    .restart local v23    # "paramSize":I
    :cond_5
    move-object/from16 v22, v6

    move-object/from16 v25, v14

    move/from16 v14, v23

    .end local v6    # "one":Lcom/android/dx/cf/iface/Method;
    .end local v23    # "paramSize":I
    .local v14, "paramSize":I
    .restart local v22    # "one":Lcom/android/dx/cf/iface/Method;
    .restart local v25    # "thisClass":Lcom/android/dx/rop/cst/CstType;
    goto :goto_3

    .line 395
    .end local v0    # "meth":Lcom/android/dx/rop/cst/CstMethodRef;
    .end local v1    # "rmeth":Lcom/android/dx/rop/code/RopMethod;
    .end local v2    # "advice":Lcom/android/dx/rop/code/TranslationAdvice;
    .end local v3    # "concrete":Lcom/android/dx/cf/code/ConcreteMethod;
    .end local v5    # "isStatic":Z
    .end local v7    # "canonicalName":Ljava/lang/String;
    .end local v16    # "accessFlags":I
    .end local v17    # "isPrivate":Z
    .end local v18    # "isNative":Z
    .end local v19    # "isAbstract":Z
    .end local v20    # "isConstructor":Z
    .end local v21    # "nonOptRmeth":Lcom/android/dx/rop/code/RopMethod;
    .end local v22    # "one":Lcom/android/dx/cf/iface/Method;
    .end local v25    # "thisClass":Lcom/android/dx/rop/cst/CstType;
    .restart local v6    # "one":Lcom/android/dx/cf/iface/Method;
    .local v14, "thisClass":Lcom/android/dx/rop/cst/CstType;
    :catch_2
    move-exception v0

    move-object/from16 v22, v6

    move-object/from16 v25, v14

    move/from16 v33, v8

    .end local v6    # "one":Lcom/android/dx/cf/iface/Method;
    .end local v14    # "thisClass":Lcom/android/dx/rop/cst/CstType;
    .restart local v22    # "one":Lcom/android/dx/cf/iface/Method;
    .restart local v25    # "thisClass":Lcom/android/dx/rop/cst/CstType;
    goto/16 :goto_c

    .line 319
    .end local v22    # "one":Lcom/android/dx/cf/iface/Method;
    .end local v25    # "thisClass":Lcom/android/dx/rop/cst/CstType;
    .restart local v0    # "meth":Lcom/android/dx/rop/cst/CstMethodRef;
    .restart local v1    # "rmeth":Lcom/android/dx/rop/code/RopMethod;
    .restart local v2    # "advice":Lcom/android/dx/rop/code/TranslationAdvice;
    .restart local v3    # "concrete":Lcom/android/dx/cf/code/ConcreteMethod;
    .restart local v5    # "isStatic":Z
    .restart local v6    # "one":Lcom/android/dx/cf/iface/Method;
    .restart local v7    # "canonicalName":Ljava/lang/String;
    .restart local v14    # "thisClass":Lcom/android/dx/rop/cst/CstType;
    .restart local v16    # "accessFlags":I
    .restart local v17    # "isPrivate":Z
    .restart local v18    # "isNative":Z
    .restart local v19    # "isAbstract":Z
    .restart local v20    # "isConstructor":Z
    .restart local v21    # "nonOptRmeth":Lcom/android/dx/rop/code/RopMethod;
    .restart local v23    # "paramSize":I
    :cond_6
    move-object/from16 v22, v6

    move-object/from16 v25, v14

    move/from16 v14, v23

    .line 340
    .end local v6    # "one":Lcom/android/dx/cf/iface/Method;
    .end local v23    # "paramSize":I
    .local v14, "paramSize":I
    .restart local v22    # "one":Lcom/android/dx/cf/iface/Method;
    .restart local v25    # "thisClass":Lcom/android/dx/rop/cst/CstType;
    :goto_3
    move-object v6, v1

    .end local v1    # "rmeth":Lcom/android/dx/rop/code/RopMethod;
    .local v6, "rmeth":Lcom/android/dx/rop/code/RopMethod;
    :goto_4
    const/4 v1, 0x0

    .line 342
    .local v1, "locals":Lcom/android/dx/rop/code/LocalVariableInfo;
    :try_start_7
    iget-boolean v4, v10, Lcom/android/dx/dex/cf/CfOptions;->localInfo:Z
    :try_end_7
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_7} :catch_4

    if-eqz v4, :cond_7

    .line 343
    :try_start_8
    invoke-static {v6}, Lcom/android/dx/rop/code/LocalVariableExtractor;->extract(Lcom/android/dx/rop/code/RopMethod;)Lcom/android/dx/rop/code/LocalVariableInfo;

    move-result-object v4
    :try_end_8
    .catch Ljava/lang/RuntimeException; {:try_start_8 .. :try_end_8} :catch_3

    move-object v1, v4

    goto :goto_5

    .line 395
    .end local v0    # "meth":Lcom/android/dx/rop/cst/CstMethodRef;
    .end local v1    # "locals":Lcom/android/dx/rop/code/LocalVariableInfo;
    .end local v2    # "advice":Lcom/android/dx/rop/code/TranslationAdvice;
    .end local v3    # "concrete":Lcom/android/dx/cf/code/ConcreteMethod;
    .end local v5    # "isStatic":Z
    .end local v6    # "rmeth":Lcom/android/dx/rop/code/RopMethod;
    .end local v7    # "canonicalName":Ljava/lang/String;
    .end local v14    # "paramSize":I
    .end local v16    # "accessFlags":I
    .end local v17    # "isPrivate":Z
    .end local v18    # "isNative":Z
    .end local v19    # "isAbstract":Z
    .end local v20    # "isConstructor":Z
    .end local v21    # "nonOptRmeth":Lcom/android/dx/rop/code/RopMethod;
    :catch_3
    move-exception v0

    move/from16 v33, v8

    goto/16 :goto_c

    .line 342
    .restart local v0    # "meth":Lcom/android/dx/rop/cst/CstMethodRef;
    .restart local v1    # "locals":Lcom/android/dx/rop/code/LocalVariableInfo;
    .restart local v2    # "advice":Lcom/android/dx/rop/code/TranslationAdvice;
    .restart local v3    # "concrete":Lcom/android/dx/cf/code/ConcreteMethod;
    .restart local v5    # "isStatic":Z
    .restart local v6    # "rmeth":Lcom/android/dx/rop/code/RopMethod;
    .restart local v7    # "canonicalName":Ljava/lang/String;
    .restart local v14    # "paramSize":I
    .restart local v16    # "accessFlags":I
    .restart local v17    # "isPrivate":Z
    .restart local v18    # "isNative":Z
    .restart local v19    # "isAbstract":Z
    .restart local v20    # "isConstructor":Z
    .restart local v21    # "nonOptRmeth":Lcom/android/dx/rop/code/RopMethod;
    :cond_7
    move-object v4, v1

    .line 346
    .end local v1    # "locals":Lcom/android/dx/rop/code/LocalVariableInfo;
    .local v4, "locals":Lcom/android/dx/rop/code/LocalVariableInfo;
    :goto_5
    :try_start_9
    iget v1, v10, Lcom/android/dx/dex/cf/CfOptions;->positionInfo:I

    invoke-static {v6, v1, v4, v14, v11}, Lcom/android/dx/dex/code/RopTranslator;->translate(Lcom/android/dx/rop/code/RopMethod;ILcom/android/dx/rop/code/LocalVariableInfo;ILcom/android/dx/dex/DexOptions;)Lcom/android/dx/dex/code/DalvCode;

    move-result-object v1

    move-object/from16 v23, v1

    .line 349
    .local v23, "code":Lcom/android/dx/dex/code/DalvCode;
    iget-boolean v1, v10, Lcom/android/dx/dex/cf/CfOptions;->statistics:Z

    if-eqz v1, :cond_8

    if-eqz v21, :cond_8

    .line 350
    nop

    .line 351
    invoke-virtual {v3}, Lcom/android/dx/cf/code/ConcreteMethod;->getCode()Lcom/android/dx/cf/code/BytecodeArray;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/dx/cf/code/BytecodeArray;->size()I

    move-result v26
    :try_end_9
    .catch Ljava/lang/RuntimeException; {:try_start_9 .. :try_end_9} :catch_4

    .line 350
    move-object/from16 v1, p0

    move-object/from16 v27, v2

    .end local v2    # "advice":Lcom/android/dx/rop/code/TranslationAdvice;
    .local v27, "advice":Lcom/android/dx/rop/code/TranslationAdvice;
    move-object/from16 v2, p2

    move-object/from16 v28, v3

    .end local v3    # "concrete":Lcom/android/dx/cf/code/ConcreteMethod;
    .local v28, "concrete":Lcom/android/dx/cf/code/ConcreteMethod;
    move-object/from16 v3, p3

    move-object/from16 v29, v4

    .end local v4    # "locals":Lcom/android/dx/rop/code/LocalVariableInfo;
    .local v29, "locals":Lcom/android/dx/rop/code/LocalVariableInfo;
    move-object v4, v6

    move/from16 v30, v5

    .end local v5    # "isStatic":Z
    .local v30, "isStatic":Z
    move-object/from16 v5, v21

    move-object/from16 v31, v6

    .end local v6    # "rmeth":Lcom/android/dx/rop/code/RopMethod;
    .local v31, "rmeth":Lcom/android/dx/rop/code/RopMethod;
    move-object/from16 v6, v29

    move-object/from16 v32, v7

    .end local v7    # "canonicalName":Ljava/lang/String;
    .local v32, "canonicalName":Ljava/lang/String;
    move v7, v14

    move/from16 v33, v8

    .end local v8    # "sz":I
    .local v33, "sz":I
    move/from16 v8, v26

    :try_start_a
    invoke-static/range {v1 .. v8}, Lcom/android/dx/dex/cf/CfTranslator;->updateDexStatistics(Lcom/android/dx/command/dexer/DxContext;Lcom/android/dx/dex/cf/CfOptions;Lcom/android/dx/dex/DexOptions;Lcom/android/dx/rop/code/RopMethod;Lcom/android/dx/rop/code/RopMethod;Lcom/android/dx/rop/code/LocalVariableInfo;II)V

    goto :goto_6

    .line 349
    .end local v27    # "advice":Lcom/android/dx/rop/code/TranslationAdvice;
    .end local v28    # "concrete":Lcom/android/dx/cf/code/ConcreteMethod;
    .end local v29    # "locals":Lcom/android/dx/rop/code/LocalVariableInfo;
    .end local v30    # "isStatic":Z
    .end local v31    # "rmeth":Lcom/android/dx/rop/code/RopMethod;
    .end local v32    # "canonicalName":Ljava/lang/String;
    .end local v33    # "sz":I
    .restart local v2    # "advice":Lcom/android/dx/rop/code/TranslationAdvice;
    .restart local v3    # "concrete":Lcom/android/dx/cf/code/ConcreteMethod;
    .restart local v4    # "locals":Lcom/android/dx/rop/code/LocalVariableInfo;
    .restart local v5    # "isStatic":Z
    .restart local v6    # "rmeth":Lcom/android/dx/rop/code/RopMethod;
    .restart local v7    # "canonicalName":Ljava/lang/String;
    .restart local v8    # "sz":I
    :cond_8
    move-object/from16 v27, v2

    move-object/from16 v28, v3

    move-object/from16 v29, v4

    move/from16 v30, v5

    move-object/from16 v31, v6

    move-object/from16 v32, v7

    move/from16 v33, v8

    .line 356
    .end local v2    # "advice":Lcom/android/dx/rop/code/TranslationAdvice;
    .end local v3    # "concrete":Lcom/android/dx/cf/code/ConcreteMethod;
    .end local v4    # "locals":Lcom/android/dx/rop/code/LocalVariableInfo;
    .end local v5    # "isStatic":Z
    .end local v6    # "rmeth":Lcom/android/dx/rop/code/RopMethod;
    .end local v7    # "canonicalName":Ljava/lang/String;
    .end local v8    # "sz":I
    .end local v14    # "paramSize":I
    .end local v21    # "nonOptRmeth":Lcom/android/dx/rop/code/RopMethod;
    .restart local v30    # "isStatic":Z
    .restart local v33    # "sz":I
    :goto_6
    move-object/from16 v1, v23

    goto :goto_8

    .line 395
    .end local v0    # "meth":Lcom/android/dx/rop/cst/CstMethodRef;
    .end local v16    # "accessFlags":I
    .end local v17    # "isPrivate":Z
    .end local v18    # "isNative":Z
    .end local v19    # "isAbstract":Z
    .end local v20    # "isConstructor":Z
    .end local v23    # "code":Lcom/android/dx/dex/code/DalvCode;
    .end local v30    # "isStatic":Z
    .end local v33    # "sz":I
    .restart local v8    # "sz":I
    :catch_4
    move-exception v0

    move/from16 v33, v8

    .end local v8    # "sz":I
    .restart local v33    # "sz":I
    goto/16 :goto_c

    .end local v22    # "one":Lcom/android/dx/cf/iface/Method;
    .end local v25    # "thisClass":Lcom/android/dx/rop/cst/CstType;
    .end local v33    # "sz":I
    .local v6, "one":Lcom/android/dx/cf/iface/Method;
    .restart local v8    # "sz":I
    .local v14, "thisClass":Lcom/android/dx/rop/cst/CstType;
    :catch_5
    move-exception v0

    move-object/from16 v22, v6

    move/from16 v33, v8

    move-object/from16 v25, v14

    .end local v6    # "one":Lcom/android/dx/cf/iface/Method;
    .end local v8    # "sz":I
    .end local v14    # "thisClass":Lcom/android/dx/rop/cst/CstType;
    .restart local v22    # "one":Lcom/android/dx/cf/iface/Method;
    .restart local v25    # "thisClass":Lcom/android/dx/rop/cst/CstType;
    .restart local v33    # "sz":I
    goto/16 :goto_c

    .line 296
    .end local v22    # "one":Lcom/android/dx/cf/iface/Method;
    .end local v24    # "i":I
    .end local v25    # "thisClass":Lcom/android/dx/rop/cst/CstType;
    .end local v33    # "sz":I
    .restart local v0    # "meth":Lcom/android/dx/rop/cst/CstMethodRef;
    .restart local v5    # "isStatic":Z
    .restart local v6    # "one":Lcom/android/dx/cf/iface/Method;
    .local v7, "i":I
    .restart local v8    # "sz":I
    .restart local v14    # "thisClass":Lcom/android/dx/rop/cst/CstType;
    .restart local v16    # "accessFlags":I
    .restart local v17    # "isPrivate":Z
    .restart local v18    # "isNative":Z
    .restart local v19    # "isAbstract":Z
    .restart local v20    # "isConstructor":Z
    :cond_9
    move/from16 v30, v5

    move-object/from16 v22, v6

    move/from16 v24, v7

    move/from16 v33, v8

    move-object/from16 v25, v14

    .line 298
    .end local v5    # "isStatic":Z
    .end local v6    # "one":Lcom/android/dx/cf/iface/Method;
    .end local v7    # "i":I
    .end local v8    # "sz":I
    .end local v14    # "thisClass":Lcom/android/dx/rop/cst/CstType;
    .restart local v22    # "one":Lcom/android/dx/cf/iface/Method;
    .restart local v24    # "i":I
    .restart local v25    # "thisClass":Lcom/android/dx/rop/cst/CstType;
    .restart local v30    # "isStatic":Z
    .restart local v33    # "sz":I
    :goto_7
    const/16 v23, 0x0

    move-object/from16 v1, v23

    .line 356
    .local v1, "code":Lcom/android/dx/dex/code/DalvCode;
    :goto_8
    invoke-static/range {v16 .. v16}, Lcom/android/dx/rop/code/AccessFlags;->isSynchronized(I)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 357
    const/high16 v2, 0x20000

    or-int v16, v16, v2

    .line 363
    if-nez v18, :cond_a

    .line 364
    and-int/lit8 v16, v16, -0x21

    .line 368
    :cond_a
    if-eqz v20, :cond_b

    .line 369
    const/high16 v2, 0x10000

    or-int v16, v16, v2

    move/from16 v2, v16

    goto :goto_9

    .line 368
    :cond_b
    move/from16 v2, v16

    .line 372
    .end local v16    # "accessFlags":I
    .local v2, "accessFlags":I
    :goto_9
    invoke-static/range {v22 .. v22}, Lcom/android/dx/dex/cf/AttributeTranslator;->getExceptions(Lcom/android/dx/cf/iface/Method;)Lcom/android/dx/rop/type/TypeList;

    move-result-object v3

    .line 373
    .local v3, "exceptions":Lcom/android/dx/rop/type/TypeList;
    new-instance v4, Lcom/android/dx/dex/file/EncodedMethod;

    invoke-direct {v4, v0, v2, v1, v3}, Lcom/android/dx/dex/file/EncodedMethod;-><init>(Lcom/android/dx/rop/cst/CstMethodRef;ILcom/android/dx/dex/code/DalvCode;Lcom/android/dx/rop/type/TypeList;)V

    .line 376
    .local v4, "mi":Lcom/android/dx/dex/file/EncodedMethod;
    invoke-virtual {v0}, Lcom/android/dx/rop/cst/CstMethodRef;->isInstanceInit()Z

    move-result v5

    if-nez v5, :cond_d

    invoke-virtual {v0}, Lcom/android/dx/rop/cst/CstMethodRef;->isClassInit()Z

    move-result v5

    if-nez v5, :cond_d

    if-nez v30, :cond_d

    if-eqz v17, :cond_c

    goto :goto_a

    .line 380
    :cond_c
    invoke-virtual {v12, v4}, Lcom/android/dx/dex/file/ClassDefItem;->addVirtualMethod(Lcom/android/dx/dex/file/EncodedMethod;)V

    goto :goto_b

    .line 378
    :cond_d
    :goto_a
    invoke-virtual {v12, v4}, Lcom/android/dx/dex/file/ClassDefItem;->addDirectMethod(Lcom/android/dx/dex/file/EncodedMethod;)V

    .line 383
    :goto_b
    nop

    .line 384
    invoke-static/range {v22 .. v22}, Lcom/android/dx/dex/cf/AttributeTranslator;->getMethodAnnotations(Lcom/android/dx/cf/iface/Method;)Lcom/android/dx/rop/annotation/Annotations;

    move-result-object v5

    .line 385
    .local v5, "annotations":Lcom/android/dx/rop/annotation/Annotations;
    invoke-virtual {v5}, Lcom/android/dx/rop/annotation/Annotations;->size()I

    move-result v6

    if-eqz v6, :cond_e

    .line 386
    invoke-virtual {v12, v0, v5, v13}, Lcom/android/dx/dex/file/ClassDefItem;->addMethodAnnotations(Lcom/android/dx/rop/cst/CstMethodRef;Lcom/android/dx/rop/annotation/Annotations;Lcom/android/dx/dex/file/DexFile;)V

    .line 389
    :cond_e
    nop

    .line 390
    invoke-static/range {v22 .. v22}, Lcom/android/dx/dex/cf/AttributeTranslator;->getParameterAnnotations(Lcom/android/dx/cf/iface/Method;)Lcom/android/dx/rop/annotation/AnnotationsList;

    move-result-object v6

    .line 391
    .local v6, "list":Lcom/android/dx/rop/annotation/AnnotationsList;
    invoke-virtual {v6}, Lcom/android/dx/rop/annotation/AnnotationsList;->size()I

    move-result v7

    if-eqz v7, :cond_f

    .line 392
    invoke-virtual {v12, v0, v6, v13}, Lcom/android/dx/dex/file/ClassDefItem;->addParameterAnnotations(Lcom/android/dx/rop/cst/CstMethodRef;Lcom/android/dx/rop/annotation/AnnotationsList;Lcom/android/dx/dex/file/DexFile;)V

    .line 394
    :cond_f
    invoke-virtual/range {p5 .. p5}, Lcom/android/dx/dex/file/DexFile;->getMethodIds()Lcom/android/dx/dex/file/MethodIdsSection;

    move-result-object v7

    invoke-virtual {v7, v0}, Lcom/android/dx/dex/file/MethodIdsSection;->intern(Lcom/android/dx/rop/cst/CstBaseMethodRef;)Lcom/android/dx/dex/file/MethodIdItem;
    :try_end_a
    .catch Ljava/lang/RuntimeException; {:try_start_a .. :try_end_a} :catch_6

    .line 399
    nop

    .line 283
    .end local v0    # "meth":Lcom/android/dx/rop/cst/CstMethodRef;
    .end local v1    # "code":Lcom/android/dx/dex/code/DalvCode;
    .end local v2    # "accessFlags":I
    .end local v3    # "exceptions":Lcom/android/dx/rop/type/TypeList;
    .end local v4    # "mi":Lcom/android/dx/dex/file/EncodedMethod;
    .end local v5    # "annotations":Lcom/android/dx/rop/annotation/Annotations;
    .end local v6    # "list":Lcom/android/dx/rop/annotation/AnnotationsList;
    .end local v17    # "isPrivate":Z
    .end local v18    # "isNative":Z
    .end local v19    # "isAbstract":Z
    .end local v20    # "isConstructor":Z
    .end local v22    # "one":Lcom/android/dx/cf/iface/Method;
    .end local v30    # "isStatic":Z
    add-int/lit8 v7, v24, 0x1

    move-object/from16 v14, v25

    move/from16 v8, v33

    .end local v24    # "i":I
    .restart local v7    # "i":I
    goto/16 :goto_0

    .line 395
    .end local v7    # "i":I
    .restart local v22    # "one":Lcom/android/dx/cf/iface/Method;
    .restart local v24    # "i":I
    :catch_6
    move-exception v0

    goto :goto_c

    .end local v22    # "one":Lcom/android/dx/cf/iface/Method;
    .end local v24    # "i":I
    .end local v25    # "thisClass":Lcom/android/dx/rop/cst/CstType;
    .end local v33    # "sz":I
    .local v6, "one":Lcom/android/dx/cf/iface/Method;
    .restart local v7    # "i":I
    .restart local v8    # "sz":I
    .restart local v14    # "thisClass":Lcom/android/dx/rop/cst/CstType;
    :catch_7
    move-exception v0

    move-object/from16 v22, v6

    move/from16 v24, v7

    move/from16 v33, v8

    move-object/from16 v25, v14

    .line 396
    .end local v6    # "one":Lcom/android/dx/cf/iface/Method;
    .end local v7    # "i":I
    .end local v8    # "sz":I
    .end local v14    # "thisClass":Lcom/android/dx/rop/cst/CstType;
    .local v0, "ex":Ljava/lang/RuntimeException;
    .restart local v22    # "one":Lcom/android/dx/cf/iface/Method;
    .restart local v24    # "i":I
    .restart local v25    # "thisClass":Lcom/android/dx/rop/cst/CstType;
    .restart local v33    # "sz":I
    :goto_c
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "...while processing "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface/range {v22 .. v22}, Lcom/android/dx/cf/iface/Method;->getName()Lcom/android/dx/rop/cst/CstString;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/dx/rop/cst/CstString;->toHuman()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 397
    invoke-interface/range {v22 .. v22}, Lcom/android/dx/cf/iface/Method;->getDescriptor()Lcom/android/dx/rop/cst/CstString;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/dx/rop/cst/CstString;->toHuman()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 398
    .local v1, "msg":Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/android/dex/util/ExceptionWithContext;->withContext(Ljava/lang/Throwable;Ljava/lang/String;)Lcom/android/dex/util/ExceptionWithContext;

    move-result-object v2

    throw v2

    .line 401
    .end local v0    # "ex":Ljava/lang/RuntimeException;
    .end local v1    # "msg":Ljava/lang/String;
    .end local v22    # "one":Lcom/android/dx/cf/iface/Method;
    .end local v24    # "i":I
    .end local v25    # "thisClass":Lcom/android/dx/rop/cst/CstType;
    .end local v33    # "sz":I
    .restart local v8    # "sz":I
    .restart local v14    # "thisClass":Lcom/android/dx/rop/cst/CstType;
    :cond_10
    return-void
.end method

.method public static translate(Lcom/android/dx/command/dexer/DxContext;Lcom/android/dx/cf/direct/DirectClassFile;[BLcom/android/dx/dex/cf/CfOptions;Lcom/android/dx/dex/DexOptions;Lcom/android/dx/dex/file/DexFile;)Lcom/android/dx/dex/file/ClassDefItem;
    .locals 3
    .param p0, "context"    # Lcom/android/dx/command/dexer/DxContext;
    .param p1, "cf"    # Lcom/android/dx/cf/direct/DirectClassFile;
    .param p2, "bytes"    # [B
    .param p3, "cfOptions"    # Lcom/android/dx/dex/cf/CfOptions;
    .param p4, "dexOptions"    # Lcom/android/dx/dex/DexOptions;
    .param p5, "dexFile"    # Lcom/android/dx/dex/file/DexFile;

    .line 102
    :try_start_0
    invoke-static/range {p0 .. p5}, Lcom/android/dx/dex/cf/CfTranslator;->translate0(Lcom/android/dx/command/dexer/DxContext;Lcom/android/dx/cf/direct/DirectClassFile;[BLcom/android/dx/dex/cf/CfOptions;Lcom/android/dx/dex/DexOptions;Lcom/android/dx/dex/file/DexFile;)Lcom/android/dx/dex/file/ClassDefItem;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 103
    :catch_0
    move-exception v0

    .line 104
    .local v0, "ex":Ljava/lang/RuntimeException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "...while processing "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/dx/cf/direct/DirectClassFile;->getFilePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 105
    .local v1, "msg":Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/android/dex/util/ExceptionWithContext;->withContext(Ljava/lang/Throwable;Ljava/lang/String;)Lcom/android/dex/util/ExceptionWithContext;

    move-result-object v2

    throw v2
.end method

.method private static translate0(Lcom/android/dx/command/dexer/DxContext;Lcom/android/dx/cf/direct/DirectClassFile;[BLcom/android/dx/dex/cf/CfOptions;Lcom/android/dx/dex/DexOptions;Lcom/android/dx/dex/file/DexFile;)Lcom/android/dx/dex/file/ClassDefItem;
    .locals 22
    .param p0, "context"    # Lcom/android/dx/command/dexer/DxContext;
    .param p1, "cf"    # Lcom/android/dx/cf/direct/DirectClassFile;
    .param p2, "bytes"    # [B
    .param p3, "cfOptions"    # Lcom/android/dx/dex/cf/CfOptions;
    .param p4, "dexOptions"    # Lcom/android/dx/dex/DexOptions;
    .param p5, "dexFile"    # Lcom/android/dx/dex/file/DexFile;

    .line 126
    move-object/from16 v6, p1

    move-object/from16 v7, p3

    move-object/from16 v8, p5

    move-object/from16 v9, p0

    iget-object v0, v9, Lcom/android/dx/command/dexer/DxContext;->optimizerOptions:Lcom/android/dx/dex/cf/OptimizerOptions;

    iget-object v1, v7, Lcom/android/dx/dex/cf/CfOptions;->optimizeListFile:Ljava/lang/String;

    iget-object v2, v7, Lcom/android/dx/dex/cf/CfOptions;->dontOptimizeListFile:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/android/dx/dex/cf/OptimizerOptions;->loadOptimizeLists(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    invoke-virtual/range {p1 .. p1}, Lcom/android/dx/cf/direct/DirectClassFile;->getThisClass()Lcom/android/dx/rop/cst/CstType;

    move-result-object v16

    .line 132
    .local v16, "thisClass":Lcom/android/dx/rop/cst/CstType;
    invoke-virtual/range {p1 .. p1}, Lcom/android/dx/cf/direct/DirectClassFile;->getAccessFlags()I

    move-result v0

    and-int/lit8 v17, v0, -0x21

    .line 133
    .local v17, "classAccessFlags":I
    iget v0, v7, Lcom/android/dx/dex/cf/CfOptions;->positionInfo:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    move-object v15, v0

    goto :goto_0

    .line 134
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/android/dx/cf/direct/DirectClassFile;->getSourceFile()Lcom/android/dx/rop/cst/CstString;

    move-result-object v0

    move-object v15, v0

    :goto_0
    nop

    .line 135
    .local v15, "sourceFile":Lcom/android/dx/rop/cst/CstString;
    new-instance v0, Lcom/android/dx/dex/file/ClassDefItem;

    .line 137
    invoke-virtual/range {p1 .. p1}, Lcom/android/dx/cf/direct/DirectClassFile;->getSuperclass()Lcom/android/dx/rop/cst/CstType;

    move-result-object v13

    invoke-virtual/range {p1 .. p1}, Lcom/android/dx/cf/direct/DirectClassFile;->getInterfaces()Lcom/android/dx/rop/type/TypeList;

    move-result-object v14

    move-object v10, v0

    move-object/from16 v11, v16

    move/from16 v12, v17

    invoke-direct/range {v10 .. v15}, Lcom/android/dx/dex/file/ClassDefItem;-><init>(Lcom/android/dx/rop/cst/CstType;ILcom/android/dx/rop/cst/CstType;Lcom/android/dx/rop/type/TypeList;Lcom/android/dx/rop/cst/CstString;)V

    .line 139
    .local v10, "out":Lcom/android/dx/dex/file/ClassDefItem;
    nop

    .line 140
    invoke-static {v6, v7}, Lcom/android/dx/dex/cf/AttributeTranslator;->getClassAnnotations(Lcom/android/dx/cf/direct/DirectClassFile;Lcom/android/dx/dex/cf/CfOptions;)Lcom/android/dx/rop/annotation/Annotations;

    move-result-object v11

    .line 141
    .local v11, "classAnnotations":Lcom/android/dx/rop/annotation/Annotations;
    invoke-virtual {v11}, Lcom/android/dx/rop/annotation/Annotations;->size()I

    move-result v0

    if-eqz v0, :cond_1

    .line 142
    invoke-virtual {v10, v11, v8}, Lcom/android/dx/dex/file/ClassDefItem;->setClassAnnotations(Lcom/android/dx/rop/annotation/Annotations;Lcom/android/dx/dex/file/DexFile;)V

    .line 145
    :cond_1
    invoke-virtual/range {p5 .. p5}, Lcom/android/dx/dex/file/DexFile;->getFieldIds()Lcom/android/dx/dex/file/FieldIdsSection;

    move-result-object v12

    .line 146
    .local v12, "fieldIdsSection":Lcom/android/dx/dex/file/FieldIdsSection;
    invoke-virtual/range {p5 .. p5}, Lcom/android/dx/dex/file/DexFile;->getMethodIds()Lcom/android/dx/dex/file/MethodIdsSection;

    move-result-object v13

    .line 147
    .local v13, "methodIdsSection":Lcom/android/dx/dex/file/MethodIdsSection;
    invoke-virtual/range {p5 .. p5}, Lcom/android/dx/dex/file/DexFile;->getMethodHandles()Lcom/android/dx/dex/file/MethodHandlesSection;

    move-result-object v14

    .line 148
    .local v14, "methodHandlesSection":Lcom/android/dx/dex/file/MethodHandlesSection;
    invoke-virtual/range {p5 .. p5}, Lcom/android/dx/dex/file/DexFile;->getCallSiteIds()Lcom/android/dx/dex/file/CallSiteIdsSection;

    move-result-object v5

    .line 149
    .local v5, "callSiteIds":Lcom/android/dx/dex/file/CallSiteIdsSection;
    invoke-static {v6, v10, v8}, Lcom/android/dx/dex/cf/CfTranslator;->processFields(Lcom/android/dx/cf/direct/DirectClassFile;Lcom/android/dx/dex/file/ClassDefItem;Lcom/android/dx/dex/file/DexFile;)V

    .line 150
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    move-object v4, v10

    move-object v6, v5

    .end local v5    # "callSiteIds":Lcom/android/dx/dex/file/CallSiteIdsSection;
    .local v6, "callSiteIds":Lcom/android/dx/dex/file/CallSiteIdsSection;
    move-object/from16 v5, p5

    invoke-static/range {v0 .. v5}, Lcom/android/dx/dex/cf/CfTranslator;->processMethods(Lcom/android/dx/command/dexer/DxContext;Lcom/android/dx/cf/direct/DirectClassFile;Lcom/android/dx/dex/cf/CfOptions;Lcom/android/dx/dex/DexOptions;Lcom/android/dx/dex/file/ClassDefItem;Lcom/android/dx/dex/file/DexFile;)V

    .line 153
    invoke-virtual/range {p1 .. p1}, Lcom/android/dx/cf/direct/DirectClassFile;->getConstantPool()Lcom/android/dx/rop/cst/ConstantPool;

    move-result-object v0

    .line 154
    .local v0, "constantPool":Lcom/android/dx/rop/cst/ConstantPool;
    invoke-interface {v0}, Lcom/android/dx/rop/cst/ConstantPool;->size()I

    move-result v1

    .line 156
    .local v1, "constantPoolSize":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v1, :cond_9

    .line 157
    invoke-interface {v0, v2}, Lcom/android/dx/rop/cst/ConstantPool;->getOrNull(I)Lcom/android/dx/rop/cst/Constant;

    move-result-object v3

    .line 158
    .local v3, "constant":Lcom/android/dx/rop/cst/Constant;
    instance-of v4, v3, Lcom/android/dx/rop/cst/CstMethodRef;

    if-eqz v4, :cond_2

    .line 159
    move-object v4, v3

    check-cast v4, Lcom/android/dx/rop/cst/CstBaseMethodRef;

    invoke-virtual {v13, v4}, Lcom/android/dx/dex/file/MethodIdsSection;->intern(Lcom/android/dx/rop/cst/CstBaseMethodRef;)Lcom/android/dx/dex/file/MethodIdItem;

    move-object/from16 v18, v0

    move/from16 v19, v1

    goto/16 :goto_3

    .line 160
    :cond_2
    instance-of v4, v3, Lcom/android/dx/rop/cst/CstInterfaceMethodRef;

    if-eqz v4, :cond_3

    .line 161
    move-object v4, v3

    check-cast v4, Lcom/android/dx/rop/cst/CstInterfaceMethodRef;

    invoke-virtual {v4}, Lcom/android/dx/rop/cst/CstInterfaceMethodRef;->toMethodRef()Lcom/android/dx/rop/cst/CstMethodRef;

    move-result-object v4

    invoke-virtual {v13, v4}, Lcom/android/dx/dex/file/MethodIdsSection;->intern(Lcom/android/dx/rop/cst/CstBaseMethodRef;)Lcom/android/dx/dex/file/MethodIdItem;

    move-object/from16 v18, v0

    move/from16 v19, v1

    goto/16 :goto_3

    .line 162
    :cond_3
    instance-of v4, v3, Lcom/android/dx/rop/cst/CstFieldRef;

    if-eqz v4, :cond_4

    .line 163
    move-object v4, v3

    check-cast v4, Lcom/android/dx/rop/cst/CstFieldRef;

    invoke-virtual {v12, v4}, Lcom/android/dx/dex/file/FieldIdsSection;->intern(Lcom/android/dx/rop/cst/CstFieldRef;)Lcom/android/dx/dex/file/FieldIdItem;

    move-object/from16 v18, v0

    move/from16 v19, v1

    goto/16 :goto_3

    .line 164
    :cond_4
    instance-of v4, v3, Lcom/android/dx/rop/cst/CstEnumRef;

    if-eqz v4, :cond_5

    .line 165
    move-object v4, v3

    check-cast v4, Lcom/android/dx/rop/cst/CstEnumRef;

    invoke-virtual {v4}, Lcom/android/dx/rop/cst/CstEnumRef;->getFieldRef()Lcom/android/dx/rop/cst/CstFieldRef;

    move-result-object v4

    invoke-virtual {v12, v4}, Lcom/android/dx/dex/file/FieldIdsSection;->intern(Lcom/android/dx/rop/cst/CstFieldRef;)Lcom/android/dx/dex/file/FieldIdItem;

    move-object/from16 v18, v0

    move/from16 v19, v1

    goto :goto_3

    .line 166
    :cond_5
    instance-of v4, v3, Lcom/android/dx/rop/cst/CstMethodHandle;

    if-eqz v4, :cond_6

    .line 167
    move-object v4, v3

    check-cast v4, Lcom/android/dx/rop/cst/CstMethodHandle;

    invoke-virtual {v14, v4}, Lcom/android/dx/dex/file/MethodHandlesSection;->intern(Lcom/android/dx/rop/cst/CstMethodHandle;)V

    move-object/from16 v18, v0

    move/from16 v19, v1

    goto :goto_3

    .line 168
    :cond_6
    instance-of v4, v3, Lcom/android/dx/rop/cst/CstInvokeDynamic;

    if-eqz v4, :cond_7

    .line 169
    move-object v4, v3

    check-cast v4, Lcom/android/dx/rop/cst/CstInvokeDynamic;

    .line 170
    .local v4, "cstInvokeDynamic":Lcom/android/dx/rop/cst/CstInvokeDynamic;
    invoke-virtual {v4}, Lcom/android/dx/rop/cst/CstInvokeDynamic;->getBootstrapMethodIndex()I

    move-result v5

    .line 171
    .local v5, "index":I
    move-object/from16 v18, v0

    .end local v0    # "constantPool":Lcom/android/dx/rop/cst/ConstantPool;
    .local v18, "constantPool":Lcom/android/dx/rop/cst/ConstantPool;
    invoke-virtual/range {p1 .. p1}, Lcom/android/dx/cf/direct/DirectClassFile;->getBootstrapMethods()Lcom/android/dx/cf/code/BootstrapMethodsList;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/android/dx/cf/code/BootstrapMethodsList;->get(I)Lcom/android/dx/cf/code/BootstrapMethodsList$Item;

    move-result-object v0

    .line 172
    .local v0, "bootstrapMethod":Lcom/android/dx/cf/code/BootstrapMethodsList$Item;
    nop

    .line 173
    move/from16 v19, v1

    .end local v1    # "constantPoolSize":I
    .local v19, "constantPoolSize":I
    invoke-virtual {v0}, Lcom/android/dx/cf/code/BootstrapMethodsList$Item;->getBootstrapMethodHandle()Lcom/android/dx/rop/cst/CstMethodHandle;

    move-result-object v1

    .line 174
    move-object/from16 v20, v3

    .end local v3    # "constant":Lcom/android/dx/rop/cst/Constant;
    .local v20, "constant":Lcom/android/dx/rop/cst/Constant;
    invoke-virtual {v4}, Lcom/android/dx/rop/cst/CstInvokeDynamic;->getNat()Lcom/android/dx/rop/cst/CstNat;

    move-result-object v3

    .line 175
    move/from16 v21, v5

    .end local v5    # "index":I
    .local v21, "index":I
    invoke-virtual {v0}, Lcom/android/dx/cf/code/BootstrapMethodsList$Item;->getBootstrapMethodArguments()Lcom/android/dx/cf/code/BootstrapMethodArgumentsList;

    move-result-object v5

    .line 173
    invoke-static {v1, v3, v5}, Lcom/android/dx/rop/cst/CstCallSite;->make(Lcom/android/dx/rop/cst/CstMethodHandle;Lcom/android/dx/rop/cst/CstNat;Lcom/android/dx/cf/code/BootstrapMethodArgumentsList;)Lcom/android/dx/rop/cst/CstCallSite;

    move-result-object v1

    .line 176
    .local v1, "callSite":Lcom/android/dx/rop/cst/CstCallSite;
    invoke-virtual/range {p1 .. p1}, Lcom/android/dx/cf/direct/DirectClassFile;->getThisClass()Lcom/android/dx/rop/cst/CstType;

    move-result-object v3

    invoke-virtual {v4, v3}, Lcom/android/dx/rop/cst/CstInvokeDynamic;->setDeclaringClass(Lcom/android/dx/rop/cst/CstType;)V

    .line 177
    invoke-virtual {v4, v1}, Lcom/android/dx/rop/cst/CstInvokeDynamic;->setCallSite(Lcom/android/dx/rop/cst/CstCallSite;)V

    .line 178
    invoke-virtual {v4}, Lcom/android/dx/rop/cst/CstInvokeDynamic;->getReferences()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_8

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/dx/rop/cst/CstCallSiteRef;

    .line 179
    .local v5, "ref":Lcom/android/dx/rop/cst/CstCallSiteRef;
    invoke-virtual {v6, v5}, Lcom/android/dx/dex/file/CallSiteIdsSection;->intern(Lcom/android/dx/rop/cst/CstCallSiteRef;)V

    .line 180
    .end local v5    # "ref":Lcom/android/dx/rop/cst/CstCallSiteRef;
    goto :goto_2

    .line 168
    .end local v4    # "cstInvokeDynamic":Lcom/android/dx/rop/cst/CstInvokeDynamic;
    .end local v18    # "constantPool":Lcom/android/dx/rop/cst/ConstantPool;
    .end local v19    # "constantPoolSize":I
    .end local v20    # "constant":Lcom/android/dx/rop/cst/Constant;
    .end local v21    # "index":I
    .local v0, "constantPool":Lcom/android/dx/rop/cst/ConstantPool;
    .local v1, "constantPoolSize":I
    .restart local v3    # "constant":Lcom/android/dx/rop/cst/Constant;
    :cond_7
    move-object/from16 v18, v0

    move/from16 v19, v1

    move-object/from16 v20, v3

    .line 156
    .end local v0    # "constantPool":Lcom/android/dx/rop/cst/ConstantPool;
    .end local v1    # "constantPoolSize":I
    .end local v3    # "constant":Lcom/android/dx/rop/cst/Constant;
    .restart local v18    # "constantPool":Lcom/android/dx/rop/cst/ConstantPool;
    .restart local v19    # "constantPoolSize":I
    :cond_8
    :goto_3
    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, v18

    move/from16 v1, v19

    goto/16 :goto_1

    .line 184
    .end local v2    # "i":I
    .end local v18    # "constantPool":Lcom/android/dx/rop/cst/ConstantPool;
    .end local v19    # "constantPoolSize":I
    .restart local v0    # "constantPool":Lcom/android/dx/rop/cst/ConstantPool;
    .restart local v1    # "constantPoolSize":I
    :cond_9
    return-object v10
.end method

.method private static updateDexStatistics(Lcom/android/dx/command/dexer/DxContext;Lcom/android/dx/dex/cf/CfOptions;Lcom/android/dx/dex/DexOptions;Lcom/android/dx/rop/code/RopMethod;Lcom/android/dx/rop/code/RopMethod;Lcom/android/dx/rop/code/LocalVariableInfo;II)V
    .locals 4
    .param p0, "context"    # Lcom/android/dx/command/dexer/DxContext;
    .param p1, "cfOptions"    # Lcom/android/dx/dex/cf/CfOptions;
    .param p2, "dexOptions"    # Lcom/android/dx/dex/DexOptions;
    .param p3, "optRmeth"    # Lcom/android/dx/rop/code/RopMethod;
    .param p4, "nonOptRmeth"    # Lcom/android/dx/rop/code/RopMethod;
    .param p5, "locals"    # Lcom/android/dx/rop/code/LocalVariableInfo;
    .param p6, "paramSize"    # I
    .param p7, "originalByteCount"    # I

    .line 417
    iget v0, p1, Lcom/android/dx/dex/cf/CfOptions;->positionInfo:I

    invoke-static {p3, v0, p5, p6, p2}, Lcom/android/dx/dex/code/RopTranslator;->translate(Lcom/android/dx/rop/code/RopMethod;ILcom/android/dx/rop/code/LocalVariableInfo;ILcom/android/dx/dex/DexOptions;)Lcom/android/dx/dex/code/DalvCode;

    move-result-object v0

    .line 419
    .local v0, "optCode":Lcom/android/dx/dex/code/DalvCode;
    iget v1, p1, Lcom/android/dx/dex/cf/CfOptions;->positionInfo:I

    invoke-static {p4, v1, p5, p6, p2}, Lcom/android/dx/dex/code/RopTranslator;->translate(Lcom/android/dx/rop/code/RopMethod;ILcom/android/dx/rop/code/LocalVariableInfo;ILcom/android/dx/dex/DexOptions;)Lcom/android/dx/dex/code/DalvCode;

    move-result-object v1

    .line 427
    .local v1, "nonOptCode":Lcom/android/dx/dex/code/DalvCode;
    new-instance v2, Lcom/android/dx/dex/cf/CfTranslator$1;

    invoke-direct {v2}, Lcom/android/dx/dex/cf/CfTranslator$1;-><init>()V

    .line 436
    .local v2, "callback":Lcom/android/dx/dex/code/DalvCode$AssignIndicesCallback;
    invoke-virtual {v0, v2}, Lcom/android/dx/dex/code/DalvCode;->assignIndices(Lcom/android/dx/dex/code/DalvCode$AssignIndicesCallback;)V

    .line 437
    invoke-virtual {v1, v2}, Lcom/android/dx/dex/code/DalvCode;->assignIndices(Lcom/android/dx/dex/code/DalvCode$AssignIndicesCallback;)V

    .line 439
    iget-object v3, p0, Lcom/android/dx/command/dexer/DxContext;->codeStatistics:Lcom/android/dx/dex/cf/CodeStatistics;

    invoke-virtual {v3, v1, v0}, Lcom/android/dx/dex/cf/CodeStatistics;->updateDexStatistics(Lcom/android/dx/dex/code/DalvCode;Lcom/android/dx/dex/code/DalvCode;)V

    .line 440
    iget-object v3, p0, Lcom/android/dx/command/dexer/DxContext;->codeStatistics:Lcom/android/dx/dex/cf/CodeStatistics;

    invoke-virtual {v3, p7}, Lcom/android/dx/dex/cf/CodeStatistics;->updateOriginalByteCount(I)V

    .line 441
    return-void
.end method
