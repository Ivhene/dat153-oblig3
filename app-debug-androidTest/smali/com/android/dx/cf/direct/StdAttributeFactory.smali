.class public Lcom/android/dx/cf/direct/StdAttributeFactory;
.super Lcom/android/dx/cf/direct/AttributeFactory;
.source "StdAttributeFactory.java"


# static fields
.field public static final THE_ONE:Lcom/android/dx/cf/direct/StdAttributeFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 72
    new-instance v0, Lcom/android/dx/cf/direct/StdAttributeFactory;

    invoke-direct {v0}, Lcom/android/dx/cf/direct/StdAttributeFactory;-><init>()V

    sput-object v0, Lcom/android/dx/cf/direct/StdAttributeFactory;->THE_ONE:Lcom/android/dx/cf/direct/StdAttributeFactory;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 78
    invoke-direct {p0}, Lcom/android/dx/cf/direct/AttributeFactory;-><init>()V

    .line 80
    return-void
.end method

.method private annotationDefault(Lcom/android/dx/cf/direct/DirectClassFile;IILcom/android/dx/cf/iface/ParseObserver;)Lcom/android/dx/cf/iface/Attribute;
    .locals 3
    .param p1, "cf"    # Lcom/android/dx/cf/direct/DirectClassFile;
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .param p4, "observer"    # Lcom/android/dx/cf/iface/ParseObserver;

    .line 207
    const/4 v0, 0x2

    if-ge p3, v0, :cond_0

    .line 208
    invoke-static {}, Lcom/android/dx/cf/direct/StdAttributeFactory;->throwSeverelyTruncated()Lcom/android/dx/cf/iface/Attribute;

    .line 211
    :cond_0
    new-instance v0, Lcom/android/dx/cf/direct/AnnotationParser;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/android/dx/cf/direct/AnnotationParser;-><init>(Lcom/android/dx/cf/direct/DirectClassFile;IILcom/android/dx/cf/iface/ParseObserver;)V

    .line 213
    .local v0, "ap":Lcom/android/dx/cf/direct/AnnotationParser;
    invoke-virtual {v0}, Lcom/android/dx/cf/direct/AnnotationParser;->parseValueAttribute()Lcom/android/dx/rop/cst/Constant;

    move-result-object v1

    .line 215
    .local v1, "cst":Lcom/android/dx/rop/cst/Constant;
    new-instance v2, Lcom/android/dx/cf/attrib/AttAnnotationDefault;

    invoke-direct {v2, v1, p3}, Lcom/android/dx/cf/attrib/AttAnnotationDefault;-><init>(Lcom/android/dx/rop/cst/Constant;I)V

    return-object v2
.end method

.method private bootstrapMethods(Lcom/android/dx/cf/direct/DirectClassFile;IILcom/android/dx/cf/iface/ParseObserver;)Lcom/android/dx/cf/iface/Attribute;
    .locals 11
    .param p1, "cf"    # Lcom/android/dx/cf/direct/DirectClassFile;
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .param p4, "observer"    # Lcom/android/dx/cf/iface/ParseObserver;

    .line 223
    const/4 v0, 0x2

    if-ge p3, v0, :cond_0

    .line 224
    invoke-static {}, Lcom/android/dx/cf/direct/StdAttributeFactory;->throwSeverelyTruncated()Lcom/android/dx/cf/iface/Attribute;

    move-result-object v0

    return-object v0

    .line 227
    :cond_0
    invoke-virtual {p1}, Lcom/android/dx/cf/direct/DirectClassFile;->getBytes()Lcom/android/dx/util/ByteArray;

    move-result-object v9

    .line 228
    .local v9, "bytes":Lcom/android/dx/util/ByteArray;
    invoke-virtual {v9, p2}, Lcom/android/dx/util/ByteArray;->getUnsignedShort(I)I

    move-result v10

    .line 229
    .local v10, "numMethods":I
    if-eqz p4, :cond_1

    .line 230
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "num_boostrap_methods: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 231
    invoke-static {v10}, Lcom/android/dx/util/Hex;->u2(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 230
    invoke-interface {p4, v9, p2, v0, v1}, Lcom/android/dx/cf/iface/ParseObserver;->parsed(Lcom/android/dx/util/ByteArray;IILjava/lang/String;)V

    .line 234
    :cond_1
    add-int/2addr p2, v0

    .line 235
    add-int/lit8 p3, p3, -0x2

    .line 237
    invoke-virtual {p1}, Lcom/android/dx/cf/direct/DirectClassFile;->getConstantPool()Lcom/android/dx/rop/cst/ConstantPool;

    move-result-object v3

    .line 238
    invoke-virtual {p1}, Lcom/android/dx/cf/direct/DirectClassFile;->getThisClass()Lcom/android/dx/rop/cst/CstType;

    move-result-object v4

    .line 237
    move-object v1, p0

    move-object v2, v9

    move v5, v10

    move v6, p2

    move v7, p3

    move-object v8, p4

    invoke-direct/range {v1 .. v8}, Lcom/android/dx/cf/direct/StdAttributeFactory;->parseBootstrapMethods(Lcom/android/dx/util/ByteArray;Lcom/android/dx/rop/cst/ConstantPool;Lcom/android/dx/rop/cst/CstType;IIILcom/android/dx/cf/iface/ParseObserver;)Lcom/android/dx/cf/code/BootstrapMethodsList;

    move-result-object v0

    .line 240
    .local v0, "methods":Lcom/android/dx/cf/code/BootstrapMethodsList;
    new-instance v1, Lcom/android/dx/cf/attrib/AttBootstrapMethods;

    invoke-direct {v1, v0}, Lcom/android/dx/cf/attrib/AttBootstrapMethods;-><init>(Lcom/android/dx/cf/code/BootstrapMethodsList;)V

    return-object v1
.end method

.method private code(Lcom/android/dx/cf/direct/DirectClassFile;IILcom/android/dx/cf/iface/ParseObserver;)Lcom/android/dx/cf/iface/Attribute;
    .locals 24
    .param p1, "cf"    # Lcom/android/dx/cf/direct/DirectClassFile;
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .param p4, "observer"    # Lcom/android/dx/cf/iface/ParseObserver;

    .line 248
    move/from16 v0, p2

    move/from16 v1, p3

    move-object/from16 v2, p4

    const/16 v3, 0xc

    if-ge v1, v3, :cond_0

    .line 249
    invoke-static {}, Lcom/android/dx/cf/direct/StdAttributeFactory;->throwSeverelyTruncated()Lcom/android/dx/cf/iface/Attribute;

    move-result-object v3

    return-object v3

    .line 252
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/android/dx/cf/direct/DirectClassFile;->getBytes()Lcom/android/dx/util/ByteArray;

    move-result-object v3

    .line 253
    .local v3, "bytes":Lcom/android/dx/util/ByteArray;
    invoke-virtual/range {p1 .. p1}, Lcom/android/dx/cf/direct/DirectClassFile;->getConstantPool()Lcom/android/dx/rop/cst/ConstantPool;

    move-result-object v4

    .line 254
    .local v4, "pool":Lcom/android/dx/rop/cst/ConstantPool;
    invoke-virtual {v3, v0}, Lcom/android/dx/util/ByteArray;->getUnsignedShort(I)I

    move-result v11

    .line 255
    .local v11, "maxStack":I
    add-int/lit8 v5, v0, 0x2

    invoke-virtual {v3, v5}, Lcom/android/dx/util/ByteArray;->getUnsignedShort(I)I

    move-result v12

    .line 256
    .local v12, "maxLocals":I
    add-int/lit8 v5, v0, 0x4

    invoke-virtual {v3, v5}, Lcom/android/dx/util/ByteArray;->getInt(I)I

    move-result v13

    .line 257
    .local v13, "codeLength":I
    move/from16 v14, p2

    .line 259
    .local v14, "origOffset":I
    const/4 v5, 0x2

    if-eqz v2, :cond_1

    .line 260
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "max_stack: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 261
    invoke-static {v11}, Lcom/android/dx/util/Hex;->u2(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 260
    invoke-interface {v2, v3, v0, v5, v6}, Lcom/android/dx/cf/iface/ParseObserver;->parsed(Lcom/android/dx/util/ByteArray;IILjava/lang/String;)V

    .line 262
    add-int/lit8 v6, v0, 0x2

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "max_locals: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 263
    invoke-static {v12}, Lcom/android/dx/util/Hex;->u2(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 262
    invoke-interface {v2, v3, v6, v5, v7}, Lcom/android/dx/cf/iface/ParseObserver;->parsed(Lcom/android/dx/util/ByteArray;IILjava/lang/String;)V

    .line 264
    add-int/lit8 v6, v0, 0x4

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "code_length: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 265
    invoke-static {v13}, Lcom/android/dx/util/Hex;->u4(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 264
    const/4 v8, 0x4

    invoke-interface {v2, v3, v6, v8, v7}, Lcom/android/dx/cf/iface/ParseObserver;->parsed(Lcom/android/dx/util/ByteArray;IILjava/lang/String;)V

    .line 268
    :cond_1
    const/16 v6, 0x8

    add-int/2addr v0, v6

    .line 269
    .end local p2    # "offset":I
    .local v0, "offset":I
    add-int/lit8 v1, v1, -0x8

    .line 271
    .end local p3    # "length":I
    .local v1, "length":I
    add-int/lit8 v7, v13, 0x4

    if-ge v1, v7, :cond_2

    .line 272
    invoke-static {}, Lcom/android/dx/cf/direct/StdAttributeFactory;->throwTruncated()Lcom/android/dx/cf/iface/Attribute;

    move-result-object v5

    return-object v5

    .line 275
    :cond_2
    move v15, v0

    .line 276
    .local v15, "codeOffset":I
    add-int/2addr v0, v13

    .line 277
    sub-int/2addr v1, v13

    .line 278
    new-instance v7, Lcom/android/dx/cf/code/BytecodeArray;

    add-int v8, v15, v13

    .line 279
    invoke-virtual {v3, v15, v8}, Lcom/android/dx/util/ByteArray;->slice(II)Lcom/android/dx/util/ByteArray;

    move-result-object v8

    invoke-direct {v7, v8, v4}, Lcom/android/dx/cf/code/BytecodeArray;-><init>(Lcom/android/dx/util/ByteArray;Lcom/android/dx/rop/cst/ConstantPool;)V

    move-object v10, v7

    .line 281
    .local v10, "code":Lcom/android/dx/cf/code/BytecodeArray;
    if-eqz v2, :cond_3

    .line 282
    new-instance v7, Lcom/android/dx/cf/direct/CodeObserver;

    invoke-virtual {v10}, Lcom/android/dx/cf/code/BytecodeArray;->getBytes()Lcom/android/dx/util/ByteArray;

    move-result-object v8

    invoke-direct {v7, v8, v2}, Lcom/android/dx/cf/direct/CodeObserver;-><init>(Lcom/android/dx/util/ByteArray;Lcom/android/dx/cf/iface/ParseObserver;)V

    invoke-virtual {v10, v7}, Lcom/android/dx/cf/code/BytecodeArray;->forEach(Lcom/android/dx/cf/code/BytecodeArray$Visitor;)V

    .line 286
    :cond_3
    invoke-virtual {v3, v0}, Lcom/android/dx/util/ByteArray;->getUnsignedShort(I)I

    move-result v9

    .line 287
    .local v9, "exceptionTableLength":I
    if-nez v9, :cond_4

    sget-object v7, Lcom/android/dx/cf/code/ByteCatchList;->EMPTY:Lcom/android/dx/cf/code/ByteCatchList;

    goto :goto_0

    :cond_4
    new-instance v7, Lcom/android/dx/cf/code/ByteCatchList;

    invoke-direct {v7, v9}, Lcom/android/dx/cf/code/ByteCatchList;-><init>(I)V

    :goto_0
    move-object/from16 v16, v7

    .line 291
    .local v16, "catches":Lcom/android/dx/cf/code/ByteCatchList;
    if-eqz v2, :cond_5

    .line 292
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "exception_table_length: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 294
    invoke-static {v9}, Lcom/android/dx/util/Hex;->u2(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 292
    invoke-interface {v2, v3, v0, v5, v7}, Lcom/android/dx/cf/iface/ParseObserver;->parsed(Lcom/android/dx/util/ByteArray;IILjava/lang/String;)V

    .line 297
    :cond_5
    add-int/2addr v0, v5

    .line 298
    add-int/lit8 v1, v1, -0x2

    .line 300
    mul-int/lit8 v7, v9, 0x8

    add-int/2addr v7, v5

    if-ge v1, v7, :cond_6

    .line 301
    invoke-static {}, Lcom/android/dx/cf/direct/StdAttributeFactory;->throwTruncated()Lcom/android/dx/cf/iface/Attribute;

    move-result-object v5

    return-object v5

    .line 304
    :cond_6
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    if-ge v5, v9, :cond_b

    .line 305
    if-eqz v2, :cond_7

    .line 306
    const/4 v7, 0x1

    invoke-interface {v2, v7}, Lcom/android/dx/cf/iface/ParseObserver;->changeIndent(I)V

    .line 309
    :cond_7
    invoke-virtual {v3, v0}, Lcom/android/dx/util/ByteArray;->getUnsignedShort(I)I

    move-result v7

    .line 310
    .local v7, "startPc":I
    add-int/lit8 v8, v0, 0x2

    invoke-virtual {v3, v8}, Lcom/android/dx/util/ByteArray;->getUnsignedShort(I)I

    move-result v8

    .line 311
    .local v8, "endPc":I
    add-int/lit8 v6, v0, 0x4

    invoke-virtual {v3, v6}, Lcom/android/dx/util/ByteArray;->getUnsignedShort(I)I

    move-result v6

    .line 312
    .local v6, "handlerPc":I
    move/from16 p2, v9

    .end local v9    # "exceptionTableLength":I
    .local p2, "exceptionTableLength":I
    add-int/lit8 v9, v0, 0x6

    invoke-virtual {v3, v9}, Lcom/android/dx/util/ByteArray;->getUnsignedShort(I)I

    move-result v9

    .line 313
    .local v9, "catchTypeIdx":I
    invoke-interface {v4, v9}, Lcom/android/dx/rop/cst/ConstantPool;->get0Ok(I)Lcom/android/dx/rop/cst/Constant;

    move-result-object v17

    move-object/from16 v23, v17

    check-cast v23, Lcom/android/dx/rop/cst/CstType;

    .line 314
    .local v23, "catchType":Lcom/android/dx/rop/cst/CstType;
    move/from16 v17, v5

    move/from16 v18, v7

    move/from16 v19, v8

    move/from16 v20, v6

    move-object/from16 v21, v23

    invoke-virtual/range {v16 .. v21}, Lcom/android/dx/cf/code/ByteCatchList;->set(IIIILcom/android/dx/rop/cst/CstType;)V

    .line 315
    if-eqz v2, :cond_9

    .line 316
    move-object/from16 v17, v4

    .end local v4    # "pool":Lcom/android/dx/rop/cst/ConstantPool;
    .local v17, "pool":Lcom/android/dx/rop/cst/ConstantPool;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 317
    move/from16 p3, v9

    .end local v9    # "catchTypeIdx":I
    .local p3, "catchTypeIdx":I
    invoke-static {v7}, Lcom/android/dx/util/Hex;->u2(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v9, ".."

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v8}, Lcom/android/dx/util/Hex;->u2(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v9, " -> "

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 318
    invoke-static {v6}, Lcom/android/dx/util/Hex;->u2(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v9, " "

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-nez v23, :cond_8

    const-string v9, "<any>"

    goto :goto_2

    .line 320
    :cond_8
    invoke-virtual/range {v23 .. v23}, Lcom/android/dx/rop/cst/CstType;->toHuman()Ljava/lang/String;

    move-result-object v9

    :goto_2
    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 316
    const/16 v9, 0x8

    invoke-interface {v2, v3, v0, v9, v4}, Lcom/android/dx/cf/iface/ParseObserver;->parsed(Lcom/android/dx/util/ByteArray;IILjava/lang/String;)V

    goto :goto_3

    .line 315
    .end local v17    # "pool":Lcom/android/dx/rop/cst/ConstantPool;
    .end local p3    # "catchTypeIdx":I
    .restart local v4    # "pool":Lcom/android/dx/rop/cst/ConstantPool;
    .restart local v9    # "catchTypeIdx":I
    :cond_9
    move-object/from16 v17, v4

    move/from16 p3, v9

    const/16 v9, 0x8

    .line 322
    .end local v4    # "pool":Lcom/android/dx/rop/cst/ConstantPool;
    .end local v9    # "catchTypeIdx":I
    .restart local v17    # "pool":Lcom/android/dx/rop/cst/ConstantPool;
    .restart local p3    # "catchTypeIdx":I
    :goto_3
    add-int/lit8 v0, v0, 0x8

    .line 323
    add-int/lit8 v1, v1, -0x8

    .line 325
    if-eqz v2, :cond_a

    .line 326
    const/4 v4, -0x1

    invoke-interface {v2, v4}, Lcom/android/dx/cf/iface/ParseObserver;->changeIndent(I)V

    .line 304
    .end local v6    # "handlerPc":I
    .end local v7    # "startPc":I
    .end local v8    # "endPc":I
    .end local v23    # "catchType":Lcom/android/dx/rop/cst/CstType;
    .end local p3    # "catchTypeIdx":I
    :cond_a
    add-int/lit8 v5, v5, 0x1

    move v6, v9

    move-object/from16 v4, v17

    move/from16 v9, p2

    goto/16 :goto_1

    .end local v17    # "pool":Lcom/android/dx/rop/cst/ConstantPool;
    .end local p2    # "exceptionTableLength":I
    .restart local v4    # "pool":Lcom/android/dx/rop/cst/ConstantPool;
    .local v9, "exceptionTableLength":I
    :cond_b
    move-object/from16 v17, v4

    move/from16 p2, v9

    .line 330
    .end local v4    # "pool":Lcom/android/dx/rop/cst/ConstantPool;
    .end local v5    # "i":I
    .end local v9    # "exceptionTableLength":I
    .restart local v17    # "pool":Lcom/android/dx/rop/cst/ConstantPool;
    .restart local p2    # "exceptionTableLength":I
    invoke-virtual/range {v16 .. v16}, Lcom/android/dx/cf/code/ByteCatchList;->setImmutable()V

    .line 332
    new-instance v4, Lcom/android/dx/cf/direct/AttributeListParser;

    const/4 v5, 0x3

    move-object/from16 v9, p0

    move-object/from16 v8, p1

    invoke-direct {v4, v8, v5, v0, v9}, Lcom/android/dx/cf/direct/AttributeListParser;-><init>(Lcom/android/dx/cf/direct/DirectClassFile;IILcom/android/dx/cf/direct/AttributeFactory;)V

    .line 334
    .local v4, "parser":Lcom/android/dx/cf/direct/AttributeListParser;
    invoke-virtual {v4, v2}, Lcom/android/dx/cf/direct/AttributeListParser;->setObserver(Lcom/android/dx/cf/iface/ParseObserver;)V

    .line 336
    invoke-virtual {v4}, Lcom/android/dx/cf/direct/AttributeListParser;->getList()Lcom/android/dx/cf/iface/StdAttributeList;

    move-result-object v18

    .line 337
    .local v18, "attributes":Lcom/android/dx/cf/iface/StdAttributeList;
    invoke-virtual/range {v18 .. v18}, Lcom/android/dx/cf/iface/StdAttributeList;->setImmutable()V

    .line 339
    invoke-virtual {v4}, Lcom/android/dx/cf/direct/AttributeListParser;->getEndOffset()I

    move-result v5

    sub-int v7, v5, v0

    .line 340
    .local v7, "attributeByteCount":I
    if-eq v7, v1, :cond_c

    .line 341
    sub-int v5, v0, v14

    add-int/2addr v5, v7

    invoke-static {v5}, Lcom/android/dx/cf/direct/StdAttributeFactory;->throwBadLength(I)Lcom/android/dx/cf/iface/Attribute;

    move-result-object v5

    return-object v5

    .line 344
    :cond_c
    new-instance v19, Lcom/android/dx/cf/attrib/AttCode;

    move-object/from16 v5, v19

    move v6, v11

    move/from16 v20, v7

    .end local v7    # "attributeByteCount":I
    .local v20, "attributeByteCount":I
    move v7, v12

    move-object v8, v10

    move/from16 v21, p2

    .end local p2    # "exceptionTableLength":I
    .local v21, "exceptionTableLength":I
    move-object/from16 v9, v16

    move-object/from16 v22, v10

    .end local v10    # "code":Lcom/android/dx/cf/code/BytecodeArray;
    .local v22, "code":Lcom/android/dx/cf/code/BytecodeArray;
    move-object/from16 v10, v18

    invoke-direct/range {v5 .. v10}, Lcom/android/dx/cf/attrib/AttCode;-><init>(IILcom/android/dx/cf/code/BytecodeArray;Lcom/android/dx/cf/code/ByteCatchList;Lcom/android/dx/cf/iface/AttributeList;)V

    return-object v19
.end method

.method private constantValue(Lcom/android/dx/cf/direct/DirectClassFile;IILcom/android/dx/cf/iface/ParseObserver;)Lcom/android/dx/cf/iface/Attribute;
    .locals 8
    .param p1, "cf"    # Lcom/android/dx/cf/direct/DirectClassFile;
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .param p4, "observer"    # Lcom/android/dx/cf/iface/ParseObserver;

    .line 352
    const/4 v0, 0x2

    if-eq p3, v0, :cond_0

    .line 353
    invoke-static {v0}, Lcom/android/dx/cf/direct/StdAttributeFactory;->throwBadLength(I)Lcom/android/dx/cf/iface/Attribute;

    move-result-object v0

    return-object v0

    .line 356
    :cond_0
    invoke-virtual {p1}, Lcom/android/dx/cf/direct/DirectClassFile;->getBytes()Lcom/android/dx/util/ByteArray;

    move-result-object v1

    .line 357
    .local v1, "bytes":Lcom/android/dx/util/ByteArray;
    invoke-virtual {p1}, Lcom/android/dx/cf/direct/DirectClassFile;->getConstantPool()Lcom/android/dx/rop/cst/ConstantPool;

    move-result-object v2

    .line 358
    .local v2, "pool":Lcom/android/dx/rop/cst/ConstantPool;
    invoke-virtual {v1, p2}, Lcom/android/dx/util/ByteArray;->getUnsignedShort(I)I

    move-result v3

    .line 359
    .local v3, "idx":I
    invoke-interface {v2, v3}, Lcom/android/dx/rop/cst/ConstantPool;->get(I)Lcom/android/dx/rop/cst/Constant;

    move-result-object v4

    check-cast v4, Lcom/android/dx/rop/cst/TypedConstant;

    .line 360
    .local v4, "cst":Lcom/android/dx/rop/cst/TypedConstant;
    new-instance v5, Lcom/android/dx/cf/attrib/AttConstantValue;

    invoke-direct {v5, v4}, Lcom/android/dx/cf/attrib/AttConstantValue;-><init>(Lcom/android/dx/rop/cst/TypedConstant;)V

    .line 362
    .local v5, "result":Lcom/android/dx/cf/iface/Attribute;
    if-eqz p4, :cond_1

    .line 363
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "value: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {p4, v1, p2, v0, v6}, Lcom/android/dx/cf/iface/ParseObserver;->parsed(Lcom/android/dx/util/ByteArray;IILjava/lang/String;)V

    .line 366
    :cond_1
    return-object v5
.end method

.method private deprecated(Lcom/android/dx/cf/direct/DirectClassFile;IILcom/android/dx/cf/iface/ParseObserver;)Lcom/android/dx/cf/iface/Attribute;
    .locals 1
    .param p1, "cf"    # Lcom/android/dx/cf/direct/DirectClassFile;
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .param p4, "observer"    # Lcom/android/dx/cf/iface/ParseObserver;

    .line 374
    if-eqz p3, :cond_0

    .line 375
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/dx/cf/direct/StdAttributeFactory;->throwBadLength(I)Lcom/android/dx/cf/iface/Attribute;

    move-result-object v0

    return-object v0

    .line 378
    :cond_0
    new-instance v0, Lcom/android/dx/cf/attrib/AttDeprecated;

    invoke-direct {v0}, Lcom/android/dx/cf/attrib/AttDeprecated;-><init>()V

    return-object v0
.end method

.method private enclosingMethod(Lcom/android/dx/cf/direct/DirectClassFile;IILcom/android/dx/cf/iface/ParseObserver;)Lcom/android/dx/cf/iface/Attribute;
    .locals 10
    .param p1, "cf"    # Lcom/android/dx/cf/direct/DirectClassFile;
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .param p4, "observer"    # Lcom/android/dx/cf/iface/ParseObserver;

    .line 386
    const/4 v0, 0x4

    if-eq p3, v0, :cond_0

    .line 387
    invoke-static {v0}, Lcom/android/dx/cf/direct/StdAttributeFactory;->throwBadLength(I)Lcom/android/dx/cf/iface/Attribute;

    .line 390
    :cond_0
    invoke-virtual {p1}, Lcom/android/dx/cf/direct/DirectClassFile;->getBytes()Lcom/android/dx/util/ByteArray;

    move-result-object v0

    .line 391
    .local v0, "bytes":Lcom/android/dx/util/ByteArray;
    invoke-virtual {p1}, Lcom/android/dx/cf/direct/DirectClassFile;->getConstantPool()Lcom/android/dx/rop/cst/ConstantPool;

    move-result-object v1

    .line 393
    .local v1, "pool":Lcom/android/dx/rop/cst/ConstantPool;
    invoke-virtual {v0, p2}, Lcom/android/dx/util/ByteArray;->getUnsignedShort(I)I

    move-result v2

    .line 394
    .local v2, "idx":I
    invoke-interface {v1, v2}, Lcom/android/dx/rop/cst/ConstantPool;->get(I)Lcom/android/dx/rop/cst/Constant;

    move-result-object v3

    check-cast v3, Lcom/android/dx/rop/cst/CstType;

    .line 396
    .local v3, "type":Lcom/android/dx/rop/cst/CstType;
    add-int/lit8 v4, p2, 0x2

    invoke-virtual {v0, v4}, Lcom/android/dx/util/ByteArray;->getUnsignedShort(I)I

    move-result v2

    .line 397
    invoke-interface {v1, v2}, Lcom/android/dx/rop/cst/ConstantPool;->get0Ok(I)Lcom/android/dx/rop/cst/Constant;

    move-result-object v4

    check-cast v4, Lcom/android/dx/rop/cst/CstNat;

    .line 399
    .local v4, "method":Lcom/android/dx/rop/cst/CstNat;
    new-instance v5, Lcom/android/dx/cf/attrib/AttEnclosingMethod;

    invoke-direct {v5, v3, v4}, Lcom/android/dx/cf/attrib/AttEnclosingMethod;-><init>(Lcom/android/dx/rop/cst/CstType;Lcom/android/dx/rop/cst/CstNat;)V

    .line 401
    .local v5, "result":Lcom/android/dx/cf/iface/Attribute;
    if-eqz p4, :cond_1

    .line 402
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "class: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x2

    invoke-interface {p4, v0, p2, v7, v6}, Lcom/android/dx/cf/iface/ParseObserver;->parsed(Lcom/android/dx/util/ByteArray;IILjava/lang/String;)V

    .line 403
    add-int/lit8 v6, p2, 0x2

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "method: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 404
    invoke-static {v4}, Lcom/android/dx/cf/direct/DirectClassFile;->stringOrNone(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 403
    invoke-interface {p4, v0, v6, v7, v8}, Lcom/android/dx/cf/iface/ParseObserver;->parsed(Lcom/android/dx/util/ByteArray;IILjava/lang/String;)V

    .line 407
    :cond_1
    return-object v5
.end method

.method private exceptions(Lcom/android/dx/cf/direct/DirectClassFile;IILcom/android/dx/cf/iface/ParseObserver;)Lcom/android/dx/cf/iface/Attribute;
    .locals 5
    .param p1, "cf"    # Lcom/android/dx/cf/direct/DirectClassFile;
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .param p4, "observer"    # Lcom/android/dx/cf/iface/ParseObserver;

    .line 415
    const/4 v0, 0x2

    if-ge p3, v0, :cond_0

    .line 416
    invoke-static {}, Lcom/android/dx/cf/direct/StdAttributeFactory;->throwSeverelyTruncated()Lcom/android/dx/cf/iface/Attribute;

    move-result-object v0

    return-object v0

    .line 419
    :cond_0
    invoke-virtual {p1}, Lcom/android/dx/cf/direct/DirectClassFile;->getBytes()Lcom/android/dx/util/ByteArray;

    move-result-object v1

    .line 420
    .local v1, "bytes":Lcom/android/dx/util/ByteArray;
    invoke-virtual {v1, p2}, Lcom/android/dx/util/ByteArray;->getUnsignedShort(I)I

    move-result v2

    .line 422
    .local v2, "count":I
    if-eqz p4, :cond_1

    .line 423
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "number_of_exceptions: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 424
    invoke-static {v2}, Lcom/android/dx/util/Hex;->u2(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 423
    invoke-interface {p4, v1, p2, v0, v3}, Lcom/android/dx/cf/iface/ParseObserver;->parsed(Lcom/android/dx/util/ByteArray;IILjava/lang/String;)V

    .line 427
    :cond_1
    add-int/2addr p2, v0

    .line 428
    add-int/lit8 p3, p3, -0x2

    .line 430
    mul-int/lit8 v3, v2, 0x2

    if-eq p3, v3, :cond_2

    .line 431
    mul-int/lit8 v3, v2, 0x2

    add-int/2addr v3, v0

    invoke-static {v3}, Lcom/android/dx/cf/direct/StdAttributeFactory;->throwBadLength(I)Lcom/android/dx/cf/iface/Attribute;

    .line 434
    :cond_2
    invoke-virtual {p1, p2, v2}, Lcom/android/dx/cf/direct/DirectClassFile;->makeTypeList(II)Lcom/android/dx/rop/type/TypeList;

    move-result-object v0

    .line 435
    .local v0, "list":Lcom/android/dx/rop/type/TypeList;
    new-instance v3, Lcom/android/dx/cf/attrib/AttExceptions;

    invoke-direct {v3, v0}, Lcom/android/dx/cf/attrib/AttExceptions;-><init>(Lcom/android/dx/rop/type/TypeList;)V

    return-object v3
.end method

.method private innerClasses(Lcom/android/dx/cf/direct/DirectClassFile;IILcom/android/dx/cf/iface/ParseObserver;)Lcom/android/dx/cf/iface/Attribute;
    .locals 22
    .param p1, "cf"    # Lcom/android/dx/cf/direct/DirectClassFile;
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .param p4, "observer"    # Lcom/android/dx/cf/iface/ParseObserver;

    .line 443
    move/from16 v0, p2

    move/from16 v1, p3

    move-object/from16 v2, p4

    const/4 v3, 0x2

    if-ge v1, v3, :cond_0

    .line 444
    invoke-static {}, Lcom/android/dx/cf/direct/StdAttributeFactory;->throwSeverelyTruncated()Lcom/android/dx/cf/iface/Attribute;

    move-result-object v3

    return-object v3

    .line 447
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/android/dx/cf/direct/DirectClassFile;->getBytes()Lcom/android/dx/util/ByteArray;

    move-result-object v4

    .line 448
    .local v4, "bytes":Lcom/android/dx/util/ByteArray;
    invoke-virtual/range {p1 .. p1}, Lcom/android/dx/cf/direct/DirectClassFile;->getConstantPool()Lcom/android/dx/rop/cst/ConstantPool;

    move-result-object v5

    .line 449
    .local v5, "pool":Lcom/android/dx/rop/cst/ConstantPool;
    invoke-virtual {v4, v0}, Lcom/android/dx/util/ByteArray;->getUnsignedShort(I)I

    move-result v6

    .line 451
    .local v6, "count":I
    if-eqz v2, :cond_1

    .line 452
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "number_of_classes: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 453
    invoke-static {v6}, Lcom/android/dx/util/Hex;->u2(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 452
    invoke-interface {v2, v4, v0, v3, v7}, Lcom/android/dx/cf/iface/ParseObserver;->parsed(Lcom/android/dx/util/ByteArray;IILjava/lang/String;)V

    .line 456
    :cond_1
    add-int/2addr v0, v3

    .line 457
    .end local p2    # "offset":I
    .local v0, "offset":I
    add-int/lit8 v1, v1, -0x2

    .line 459
    .end local p3    # "length":I
    .local v1, "length":I
    mul-int/lit8 v7, v6, 0x8

    if-eq v1, v7, :cond_2

    .line 460
    mul-int/lit8 v7, v6, 0x8

    add-int/2addr v7, v3

    invoke-static {v7}, Lcom/android/dx/cf/direct/StdAttributeFactory;->throwBadLength(I)Lcom/android/dx/cf/iface/Attribute;

    .line 463
    :cond_2
    new-instance v7, Lcom/android/dx/cf/attrib/InnerClassList;

    invoke-direct {v7, v6}, Lcom/android/dx/cf/attrib/InnerClassList;-><init>(I)V

    .line 465
    .local v7, "list":Lcom/android/dx/cf/attrib/InnerClassList;
    const/4 v8, 0x0

    move v14, v8

    .local v14, "i":I
    :goto_0
    if-ge v14, v6, :cond_4

    .line 466
    invoke-virtual {v4, v0}, Lcom/android/dx/util/ByteArray;->getUnsignedShort(I)I

    move-result v15

    .line 467
    .local v15, "innerClassIdx":I
    add-int/lit8 v8, v0, 0x2

    invoke-virtual {v4, v8}, Lcom/android/dx/util/ByteArray;->getUnsignedShort(I)I

    move-result v13

    .line 468
    .local v13, "outerClassIdx":I
    add-int/lit8 v8, v0, 0x4

    invoke-virtual {v4, v8}, Lcom/android/dx/util/ByteArray;->getUnsignedShort(I)I

    move-result v12

    .line 469
    .local v12, "nameIdx":I
    add-int/lit8 v8, v0, 0x6

    invoke-virtual {v4, v8}, Lcom/android/dx/util/ByteArray;->getUnsignedShort(I)I

    move-result v16

    .line 470
    .local v16, "accessFlags":I
    invoke-interface {v5, v15}, Lcom/android/dx/rop/cst/ConstantPool;->get(I)Lcom/android/dx/rop/cst/Constant;

    move-result-object v8

    move-object/from16 v17, v8

    check-cast v17, Lcom/android/dx/rop/cst/CstType;

    .line 471
    .local v17, "innerClass":Lcom/android/dx/rop/cst/CstType;
    invoke-interface {v5, v13}, Lcom/android/dx/rop/cst/ConstantPool;->get0Ok(I)Lcom/android/dx/rop/cst/Constant;

    move-result-object v8

    move-object/from16 v18, v8

    check-cast v18, Lcom/android/dx/rop/cst/CstType;

    .line 472
    .local v18, "outerClass":Lcom/android/dx/rop/cst/CstType;
    invoke-interface {v5, v12}, Lcom/android/dx/rop/cst/ConstantPool;->get0Ok(I)Lcom/android/dx/rop/cst/Constant;

    move-result-object v8

    move-object/from16 v19, v8

    check-cast v19, Lcom/android/dx/rop/cst/CstString;

    .line 473
    .local v19, "name":Lcom/android/dx/rop/cst/CstString;
    move-object v8, v7

    move v9, v14

    move-object/from16 v10, v17

    move-object/from16 v11, v18

    move/from16 v20, v12

    .end local v12    # "nameIdx":I
    .local v20, "nameIdx":I
    move-object/from16 v12, v19

    move/from16 v21, v13

    .end local v13    # "outerClassIdx":I
    .local v21, "outerClassIdx":I
    move/from16 v13, v16

    invoke-virtual/range {v8 .. v13}, Lcom/android/dx/cf/attrib/InnerClassList;->set(ILcom/android/dx/rop/cst/CstType;Lcom/android/dx/rop/cst/CstType;Lcom/android/dx/rop/cst/CstString;I)V

    .line 474
    if-eqz v2, :cond_3

    .line 475
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "inner_class: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 477
    invoke-static/range {v17 .. v17}, Lcom/android/dx/cf/direct/DirectClassFile;->stringOrNone(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 475
    invoke-interface {v2, v4, v0, v3, v8}, Lcom/android/dx/cf/iface/ParseObserver;->parsed(Lcom/android/dx/util/ByteArray;IILjava/lang/String;)V

    .line 478
    add-int/lit8 v8, v0, 0x2

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "  outer_class: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 480
    invoke-static/range {v18 .. v18}, Lcom/android/dx/cf/direct/DirectClassFile;->stringOrNone(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 478
    invoke-interface {v2, v4, v8, v3, v9}, Lcom/android/dx/cf/iface/ParseObserver;->parsed(Lcom/android/dx/util/ByteArray;IILjava/lang/String;)V

    .line 481
    add-int/lit8 v8, v0, 0x4

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "  name: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 483
    invoke-static/range {v19 .. v19}, Lcom/android/dx/cf/direct/DirectClassFile;->stringOrNone(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 481
    invoke-interface {v2, v4, v8, v3, v9}, Lcom/android/dx/cf/iface/ParseObserver;->parsed(Lcom/android/dx/util/ByteArray;IILjava/lang/String;)V

    .line 484
    add-int/lit8 v8, v0, 0x6

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "  access_flags: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 486
    invoke-static/range {v16 .. v16}, Lcom/android/dx/rop/code/AccessFlags;->innerClassString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 484
    invoke-interface {v2, v4, v8, v3, v9}, Lcom/android/dx/cf/iface/ParseObserver;->parsed(Lcom/android/dx/util/ByteArray;IILjava/lang/String;)V

    .line 488
    :cond_3
    nop

    .end local v15    # "innerClassIdx":I
    .end local v16    # "accessFlags":I
    .end local v17    # "innerClass":Lcom/android/dx/rop/cst/CstType;
    .end local v18    # "outerClass":Lcom/android/dx/rop/cst/CstType;
    .end local v19    # "name":Lcom/android/dx/rop/cst/CstString;
    .end local v20    # "nameIdx":I
    .end local v21    # "outerClassIdx":I
    add-int/lit8 v0, v0, 0x8

    .line 465
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_0

    .line 491
    .end local v14    # "i":I
    :cond_4
    invoke-virtual {v7}, Lcom/android/dx/cf/attrib/InnerClassList;->setImmutable()V

    .line 492
    new-instance v3, Lcom/android/dx/cf/attrib/AttInnerClasses;

    invoke-direct {v3, v7}, Lcom/android/dx/cf/attrib/AttInnerClasses;-><init>(Lcom/android/dx/cf/attrib/InnerClassList;)V

    return-object v3
.end method

.method private lineNumberTable(Lcom/android/dx/cf/direct/DirectClassFile;IILcom/android/dx/cf/iface/ParseObserver;)Lcom/android/dx/cf/iface/Attribute;
    .locals 8
    .param p1, "cf"    # Lcom/android/dx/cf/direct/DirectClassFile;
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .param p4, "observer"    # Lcom/android/dx/cf/iface/ParseObserver;

    .line 500
    const/4 v0, 0x2

    if-ge p3, v0, :cond_0

    .line 501
    invoke-static {}, Lcom/android/dx/cf/direct/StdAttributeFactory;->throwSeverelyTruncated()Lcom/android/dx/cf/iface/Attribute;

    move-result-object v0

    return-object v0

    .line 504
    :cond_0
    invoke-virtual {p1}, Lcom/android/dx/cf/direct/DirectClassFile;->getBytes()Lcom/android/dx/util/ByteArray;

    move-result-object v1

    .line 505
    .local v1, "bytes":Lcom/android/dx/util/ByteArray;
    invoke-virtual {v1, p2}, Lcom/android/dx/util/ByteArray;->getUnsignedShort(I)I

    move-result v2

    .line 507
    .local v2, "count":I
    if-eqz p4, :cond_1

    .line 508
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "line_number_table_length: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 509
    invoke-static {v2}, Lcom/android/dx/util/Hex;->u2(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 508
    invoke-interface {p4, v1, p2, v0, v3}, Lcom/android/dx/cf/iface/ParseObserver;->parsed(Lcom/android/dx/util/ByteArray;IILjava/lang/String;)V

    .line 512
    :cond_1
    add-int/2addr p2, v0

    .line 513
    add-int/lit8 p3, p3, -0x2

    .line 515
    mul-int/lit8 v3, v2, 0x4

    if-eq p3, v3, :cond_2

    .line 516
    mul-int/lit8 v3, v2, 0x4

    add-int/2addr v3, v0

    invoke-static {v3}, Lcom/android/dx/cf/direct/StdAttributeFactory;->throwBadLength(I)Lcom/android/dx/cf/iface/Attribute;

    .line 519
    :cond_2
    new-instance v0, Lcom/android/dx/cf/code/LineNumberList;

    invoke-direct {v0, v2}, Lcom/android/dx/cf/code/LineNumberList;-><init>(I)V

    .line 521
    .local v0, "list":Lcom/android/dx/cf/code/LineNumberList;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_4

    .line 522
    invoke-virtual {v1, p2}, Lcom/android/dx/util/ByteArray;->getUnsignedShort(I)I

    move-result v4

    .line 523
    .local v4, "startPc":I
    add-int/lit8 v5, p2, 0x2

    invoke-virtual {v1, v5}, Lcom/android/dx/util/ByteArray;->getUnsignedShort(I)I

    move-result v5

    .line 524
    .local v5, "lineNumber":I
    invoke-virtual {v0, v3, v4, v5}, Lcom/android/dx/cf/code/LineNumberList;->set(III)V

    .line 525
    if-eqz p4, :cond_3

    .line 526
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 527
    invoke-static {v4}, Lcom/android/dx/util/Hex;->u2(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 526
    const/4 v7, 0x4

    invoke-interface {p4, v1, p2, v7, v6}, Lcom/android/dx/cf/iface/ParseObserver;->parsed(Lcom/android/dx/util/ByteArray;IILjava/lang/String;)V

    .line 529
    :cond_3
    nop

    .end local v4    # "startPc":I
    .end local v5    # "lineNumber":I
    add-int/lit8 p2, p2, 0x4

    .line 521
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 532
    .end local v3    # "i":I
    :cond_4
    invoke-virtual {v0}, Lcom/android/dx/cf/code/LineNumberList;->setImmutable()V

    .line 533
    new-instance v3, Lcom/android/dx/cf/attrib/AttLineNumberTable;

    invoke-direct {v3, v0}, Lcom/android/dx/cf/attrib/AttLineNumberTable;-><init>(Lcom/android/dx/cf/code/LineNumberList;)V

    return-object v3
.end method

.method private localVariableTable(Lcom/android/dx/cf/direct/DirectClassFile;IILcom/android/dx/cf/iface/ParseObserver;)Lcom/android/dx/cf/iface/Attribute;
    .locals 9
    .param p1, "cf"    # Lcom/android/dx/cf/direct/DirectClassFile;
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .param p4, "observer"    # Lcom/android/dx/cf/iface/ParseObserver;

    .line 541
    const/4 v0, 0x2

    if-ge p3, v0, :cond_0

    .line 542
    invoke-static {}, Lcom/android/dx/cf/direct/StdAttributeFactory;->throwSeverelyTruncated()Lcom/android/dx/cf/iface/Attribute;

    move-result-object v0

    return-object v0

    .line 545
    :cond_0
    invoke-virtual {p1}, Lcom/android/dx/cf/direct/DirectClassFile;->getBytes()Lcom/android/dx/util/ByteArray;

    move-result-object v1

    .line 546
    .local v1, "bytes":Lcom/android/dx/util/ByteArray;
    invoke-virtual {v1, p2}, Lcom/android/dx/util/ByteArray;->getUnsignedShort(I)I

    move-result v8

    .line 548
    .local v8, "count":I
    if-eqz p4, :cond_1

    .line 549
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "local_variable_table_length: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 550
    invoke-static {v8}, Lcom/android/dx/util/Hex;->u2(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 549
    invoke-interface {p4, v1, p2, v0, v2}, Lcom/android/dx/cf/iface/ParseObserver;->parsed(Lcom/android/dx/util/ByteArray;IILjava/lang/String;)V

    .line 553
    :cond_1
    add-int/lit8 v0, p2, 0x2

    add-int v2, p2, p3

    .line 554
    invoke-virtual {v1, v0, v2}, Lcom/android/dx/util/ByteArray;->slice(II)Lcom/android/dx/util/ByteArray;

    move-result-object v3

    invoke-virtual {p1}, Lcom/android/dx/cf/direct/DirectClassFile;->getConstantPool()Lcom/android/dx/rop/cst/ConstantPool;

    move-result-object v4

    const/4 v7, 0x0

    .line 553
    move-object v2, p0

    move-object v5, p4

    move v6, v8

    invoke-direct/range {v2 .. v7}, Lcom/android/dx/cf/direct/StdAttributeFactory;->parseLocalVariables(Lcom/android/dx/util/ByteArray;Lcom/android/dx/rop/cst/ConstantPool;Lcom/android/dx/cf/iface/ParseObserver;IZ)Lcom/android/dx/cf/code/LocalVariableList;

    move-result-object v0

    .line 556
    .local v0, "list":Lcom/android/dx/cf/code/LocalVariableList;
    new-instance v2, Lcom/android/dx/cf/attrib/AttLocalVariableTable;

    invoke-direct {v2, v0}, Lcom/android/dx/cf/attrib/AttLocalVariableTable;-><init>(Lcom/android/dx/cf/code/LocalVariableList;)V

    return-object v2
.end method

.method private localVariableTypeTable(Lcom/android/dx/cf/direct/DirectClassFile;IILcom/android/dx/cf/iface/ParseObserver;)Lcom/android/dx/cf/iface/Attribute;
    .locals 9
    .param p1, "cf"    # Lcom/android/dx/cf/direct/DirectClassFile;
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .param p4, "observer"    # Lcom/android/dx/cf/iface/ParseObserver;

    .line 564
    const/4 v0, 0x2

    if-ge p3, v0, :cond_0

    .line 565
    invoke-static {}, Lcom/android/dx/cf/direct/StdAttributeFactory;->throwSeverelyTruncated()Lcom/android/dx/cf/iface/Attribute;

    move-result-object v0

    return-object v0

    .line 568
    :cond_0
    invoke-virtual {p1}, Lcom/android/dx/cf/direct/DirectClassFile;->getBytes()Lcom/android/dx/util/ByteArray;

    move-result-object v1

    .line 569
    .local v1, "bytes":Lcom/android/dx/util/ByteArray;
    invoke-virtual {v1, p2}, Lcom/android/dx/util/ByteArray;->getUnsignedShort(I)I

    move-result v8

    .line 571
    .local v8, "count":I
    if-eqz p4, :cond_1

    .line 572
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "local_variable_type_table_length: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 573
    invoke-static {v8}, Lcom/android/dx/util/Hex;->u2(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 572
    invoke-interface {p4, v1, p2, v0, v2}, Lcom/android/dx/cf/iface/ParseObserver;->parsed(Lcom/android/dx/util/ByteArray;IILjava/lang/String;)V

    .line 576
    :cond_1
    add-int/lit8 v0, p2, 0x2

    add-int v2, p2, p3

    .line 577
    invoke-virtual {v1, v0, v2}, Lcom/android/dx/util/ByteArray;->slice(II)Lcom/android/dx/util/ByteArray;

    move-result-object v3

    invoke-virtual {p1}, Lcom/android/dx/cf/direct/DirectClassFile;->getConstantPool()Lcom/android/dx/rop/cst/ConstantPool;

    move-result-object v4

    const/4 v7, 0x1

    .line 576
    move-object v2, p0

    move-object v5, p4

    move v6, v8

    invoke-direct/range {v2 .. v7}, Lcom/android/dx/cf/direct/StdAttributeFactory;->parseLocalVariables(Lcom/android/dx/util/ByteArray;Lcom/android/dx/rop/cst/ConstantPool;Lcom/android/dx/cf/iface/ParseObserver;IZ)Lcom/android/dx/cf/code/LocalVariableList;

    move-result-object v0

    .line 579
    .local v0, "list":Lcom/android/dx/cf/code/LocalVariableList;
    new-instance v2, Lcom/android/dx/cf/attrib/AttLocalVariableTypeTable;

    invoke-direct {v2, v0}, Lcom/android/dx/cf/attrib/AttLocalVariableTypeTable;-><init>(Lcom/android/dx/cf/code/LocalVariableList;)V

    return-object v2
.end method

.method private parseBootstrapMethods(Lcom/android/dx/util/ByteArray;Lcom/android/dx/rop/cst/ConstantPool;Lcom/android/dx/rop/cst/CstType;IIILcom/android/dx/cf/iface/ParseObserver;)Lcom/android/dx/cf/code/BootstrapMethodsList;
    .locals 16
    .param p1, "bytes"    # Lcom/android/dx/util/ByteArray;
    .param p2, "constantPool"    # Lcom/android/dx/rop/cst/ConstantPool;
    .param p3, "declaringClass"    # Lcom/android/dx/rop/cst/CstType;
    .param p4, "numMethods"    # I
    .param p5, "offset"    # I
    .param p6, "length"    # I
    .param p7, "observer"    # Lcom/android/dx/cf/iface/ParseObserver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/dx/cf/iface/ParseException;
        }
    .end annotation

    .line 819
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move/from16 v2, p4

    move-object/from16 v3, p7

    new-instance v4, Lcom/android/dx/cf/code/BootstrapMethodsList;

    invoke-direct {v4, v2}, Lcom/android/dx/cf/code/BootstrapMethodsList;-><init>(I)V

    .line 820
    .local v4, "methods":Lcom/android/dx/cf/code/BootstrapMethodsList;
    const/4 v5, 0x0

    move/from16 v6, p6

    move v7, v5

    move/from16 v5, p5

    .end local p5    # "offset":I
    .end local p6    # "length":I
    .local v5, "offset":I
    .local v6, "length":I
    .local v7, "methodIndex":I
    :goto_0
    if-ge v7, v2, :cond_5

    .line 821
    const/4 v8, 0x4

    if-ge v6, v8, :cond_0

    .line 822
    invoke-static {}, Lcom/android/dx/cf/direct/StdAttributeFactory;->throwTruncated()Lcom/android/dx/cf/iface/Attribute;

    .line 825
    :cond_0
    invoke-virtual {v0, v5}, Lcom/android/dx/util/ByteArray;->getUnsignedShort(I)I

    move-result v8

    .line 826
    .local v8, "methodRef":I
    add-int/lit8 v9, v5, 0x2

    invoke-virtual {v0, v9}, Lcom/android/dx/util/ByteArray;->getUnsignedShort(I)I

    move-result v9

    .line 828
    .local v9, "numArguments":I
    const/4 v10, 0x2

    if-eqz v3, :cond_1

    .line 829
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "bootstrap_method_ref: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-static {v8}, Lcom/android/dx/util/Hex;->u2(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v3, v0, v5, v10, v11}, Lcom/android/dx/cf/iface/ParseObserver;->parsed(Lcom/android/dx/util/ByteArray;IILjava/lang/String;)V

    .line 830
    add-int/lit8 v11, v5, 0x2

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "num_bootstrap_arguments: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 831
    invoke-static {v9}, Lcom/android/dx/util/Hex;->u2(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 830
    invoke-interface {v3, v0, v11, v10, v12}, Lcom/android/dx/cf/iface/ParseObserver;->parsed(Lcom/android/dx/util/ByteArray;IILjava/lang/String;)V

    .line 834
    :cond_1
    add-int/lit8 v5, v5, 0x4

    .line 835
    add-int/lit8 v6, v6, -0x4

    .line 836
    mul-int/lit8 v11, v9, 0x2

    if-ge v6, v11, :cond_2

    .line 837
    invoke-static {}, Lcom/android/dx/cf/direct/StdAttributeFactory;->throwTruncated()Lcom/android/dx/cf/iface/Attribute;

    .line 840
    :cond_2
    new-instance v11, Lcom/android/dx/cf/code/BootstrapMethodArgumentsList;

    invoke-direct {v11, v9}, Lcom/android/dx/cf/code/BootstrapMethodArgumentsList;-><init>(I)V

    .line 841
    .local v11, "arguments":Lcom/android/dx/cf/code/BootstrapMethodArgumentsList;
    const/4 v12, 0x0

    .local v12, "argIndex":I
    :goto_1
    if-ge v12, v9, :cond_4

    .line 842
    invoke-virtual {v0, v5}, Lcom/android/dx/util/ByteArray;->getUnsignedShort(I)I

    move-result v13

    .line 843
    .local v13, "argumentRef":I
    if-eqz v3, :cond_3

    .line 844
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "bootstrap_arguments["

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "]"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    .line 845
    invoke-static {v13}, Lcom/android/dx/util/Hex;->u2(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 844
    invoke-interface {v3, v0, v5, v10, v14}, Lcom/android/dx/cf/iface/ParseObserver;->parsed(Lcom/android/dx/util/ByteArray;IILjava/lang/String;)V

    .line 847
    :cond_3
    invoke-interface {v1, v13}, Lcom/android/dx/rop/cst/ConstantPool;->get(I)Lcom/android/dx/rop/cst/Constant;

    move-result-object v14

    invoke-virtual {v11, v12, v14}, Lcom/android/dx/cf/code/BootstrapMethodArgumentsList;->set(ILcom/android/dx/rop/cst/Constant;)V

    .line 841
    .end local v13    # "argumentRef":I
    add-int/lit8 v12, v12, 0x1

    add-int/lit8 v5, v5, 0x2

    add-int/lit8 v6, v6, -0x2

    goto :goto_1

    .line 849
    .end local v12    # "argIndex":I
    :cond_4
    invoke-virtual {v11}, Lcom/android/dx/cf/code/BootstrapMethodArgumentsList;->setImmutable()V

    .line 850
    invoke-interface {v1, v8}, Lcom/android/dx/rop/cst/ConstantPool;->get(I)Lcom/android/dx/rop/cst/Constant;

    move-result-object v10

    .line 851
    .local v10, "cstMethodRef":Lcom/android/dx/rop/cst/Constant;
    move-object v12, v10

    check-cast v12, Lcom/android/dx/rop/cst/CstMethodHandle;

    move-object/from16 v13, p3

    invoke-virtual {v4, v7, v13, v12, v11}, Lcom/android/dx/cf/code/BootstrapMethodsList;->set(ILcom/android/dx/rop/cst/CstType;Lcom/android/dx/rop/cst/CstMethodHandle;Lcom/android/dx/cf/code/BootstrapMethodArgumentsList;)V

    .line 820
    .end local v8    # "methodRef":I
    .end local v9    # "numArguments":I
    .end local v10    # "cstMethodRef":Lcom/android/dx/rop/cst/Constant;
    .end local v11    # "arguments":Lcom/android/dx/cf/code/BootstrapMethodArgumentsList;
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_0

    :cond_5
    move-object/from16 v13, p3

    .line 853
    .end local v7    # "methodIndex":I
    invoke-virtual {v4}, Lcom/android/dx/cf/code/BootstrapMethodsList;->setImmutable()V

    .line 855
    if-eqz v6, :cond_6

    .line 856
    invoke-static {v6}, Lcom/android/dx/cf/direct/StdAttributeFactory;->throwBadLength(I)Lcom/android/dx/cf/iface/Attribute;

    .line 859
    :cond_6
    return-object v4
.end method

.method private parseLocalVariables(Lcom/android/dx/util/ByteArray;Lcom/android/dx/rop/cst/ConstantPool;Lcom/android/dx/cf/iface/ParseObserver;IZ)Lcom/android/dx/cf/code/LocalVariableList;
    .locals 22
    .param p1, "bytes"    # Lcom/android/dx/util/ByteArray;
    .param p2, "pool"    # Lcom/android/dx/rop/cst/ConstantPool;
    .param p3, "observer"    # Lcom/android/dx/cf/iface/ParseObserver;
    .param p4, "count"    # I
    .param p5, "typeTable"    # Z

    .line 596
    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move/from16 v3, p4

    const-string v0, " "

    invoke-virtual/range {p1 .. p1}, Lcom/android/dx/util/ByteArray;->size()I

    move-result v4

    mul-int/lit8 v5, v3, 0xa

    if-eq v4, v5, :cond_0

    .line 598
    mul-int/lit8 v4, v3, 0xa

    add-int/lit8 v4, v4, 0x2

    invoke-static {v4}, Lcom/android/dx/cf/direct/StdAttributeFactory;->throwBadLength(I)Lcom/android/dx/cf/iface/Attribute;

    .line 601
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/android/dx/util/ByteArray;->makeDataInputStream()Lcom/android/dx/util/ByteArray$MyDataInputStream;

    move-result-object v4

    .line 602
    .local v4, "in":Lcom/android/dx/util/ByteArray$MyDataInputStream;
    new-instance v5, Lcom/android/dx/cf/code/LocalVariableList;

    invoke-direct {v5, v3}, Lcom/android/dx/cf/code/LocalVariableList;-><init>(I)V

    .line 605
    .local v5, "list":Lcom/android/dx/cf/code/LocalVariableList;
    const/4 v6, 0x0

    move v14, v6

    .local v14, "i":I
    :goto_0
    if-ge v14, v3, :cond_3

    .line 606
    :try_start_0
    invoke-virtual {v4}, Lcom/android/dx/util/ByteArray$MyDataInputStream;->readUnsignedShort()I

    move-result v6

    move v15, v6

    .line 607
    .local v15, "startPc":I
    invoke-virtual {v4}, Lcom/android/dx/util/ByteArray$MyDataInputStream;->readUnsignedShort()I

    move-result v6

    move/from16 v16, v6

    .line 608
    .local v16, "length":I
    invoke-virtual {v4}, Lcom/android/dx/util/ByteArray$MyDataInputStream;->readUnsignedShort()I

    move-result v6

    move v12, v6

    .line 609
    .local v12, "nameIdx":I
    invoke-virtual {v4}, Lcom/android/dx/util/ByteArray$MyDataInputStream;->readUnsignedShort()I

    move-result v6

    move v11, v6

    .line 610
    .local v11, "typeIdx":I
    invoke-virtual {v4}, Lcom/android/dx/util/ByteArray$MyDataInputStream;->readUnsignedShort()I

    move-result v13

    .line 611
    .local v13, "index":I
    invoke-interface {v1, v12}, Lcom/android/dx/rop/cst/ConstantPool;->get(I)Lcom/android/dx/rop/cst/Constant;

    move-result-object v6

    move-object v10, v6

    check-cast v10, Lcom/android/dx/rop/cst/CstString;

    .line 612
    .local v10, "name":Lcom/android/dx/rop/cst/CstString;
    invoke-interface {v1, v11}, Lcom/android/dx/rop/cst/ConstantPool;->get(I)Lcom/android/dx/rop/cst/Constant;

    move-result-object v6

    check-cast v6, Lcom/android/dx/rop/cst/CstString;

    move-object/from16 v17, v6

    .line 613
    .local v17, "type":Lcom/android/dx/rop/cst/CstString;
    const/4 v6, 0x0

    .line 614
    .local v6, "descriptor":Lcom/android/dx/rop/cst/CstString;
    const/4 v7, 0x0

    .line 616
    .local v7, "signature":Lcom/android/dx/rop/cst/CstString;
    if-eqz p5, :cond_1

    .line 617
    move-object/from16 v7, v17

    move-object/from16 v18, v6

    move-object/from16 v19, v7

    goto :goto_1

    .line 619
    :cond_1
    move-object/from16 v6, v17

    move-object/from16 v18, v6

    move-object/from16 v19, v7

    .line 622
    .end local v6    # "descriptor":Lcom/android/dx/rop/cst/CstString;
    .end local v7    # "signature":Lcom/android/dx/rop/cst/CstString;
    .local v18, "descriptor":Lcom/android/dx/rop/cst/CstString;
    .local v19, "signature":Lcom/android/dx/rop/cst/CstString;
    :goto_1
    move-object v6, v5

    move v7, v14

    move v8, v15

    move/from16 v9, v16

    move/from16 v20, v11

    .end local v11    # "typeIdx":I
    .local v20, "typeIdx":I
    move-object/from16 v11, v18

    move/from16 v21, v12

    .end local v12    # "nameIdx":I
    .local v21, "nameIdx":I
    move-object/from16 v12, v19

    invoke-virtual/range {v6 .. v13}, Lcom/android/dx/cf/code/LocalVariableList;->set(IIILcom/android/dx/rop/cst/CstString;Lcom/android/dx/rop/cst/CstString;Lcom/android/dx/rop/cst/CstString;I)V

    .line 625
    if-eqz v2, :cond_2

    .line 626
    mul-int/lit8 v6, v14, 0xa

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v15}, Lcom/android/dx/util/Hex;->u2(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ".."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    add-int v8, v15, v16

    .line 627
    invoke-static {v8}, Lcom/android/dx/util/Hex;->u2(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 628
    invoke-static {v13}, Lcom/android/dx/util/Hex;->u2(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v10}, Lcom/android/dx/rop/cst/CstString;->toHuman()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 629
    invoke-virtual/range {v17 .. v17}, Lcom/android/dx/rop/cst/CstString;->toHuman()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 626
    const/16 v8, 0xa

    move-object/from16 v9, p1

    :try_start_1
    invoke-interface {v2, v9, v6, v8, v7}, Lcom/android/dx/cf/iface/ParseObserver;->parsed(Lcom/android/dx/util/ByteArray;IILjava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 632
    .end local v10    # "name":Lcom/android/dx/rop/cst/CstString;
    .end local v13    # "index":I
    .end local v14    # "i":I
    .end local v15    # "startPc":I
    .end local v16    # "length":I
    .end local v17    # "type":Lcom/android/dx/rop/cst/CstString;
    .end local v18    # "descriptor":Lcom/android/dx/rop/cst/CstString;
    .end local v19    # "signature":Lcom/android/dx/rop/cst/CstString;
    .end local v20    # "typeIdx":I
    .end local v21    # "nameIdx":I
    :catch_0
    move-exception v0

    goto :goto_3

    .line 625
    .restart local v10    # "name":Lcom/android/dx/rop/cst/CstString;
    .restart local v13    # "index":I
    .restart local v14    # "i":I
    .restart local v15    # "startPc":I
    .restart local v16    # "length":I
    .restart local v17    # "type":Lcom/android/dx/rop/cst/CstString;
    .restart local v18    # "descriptor":Lcom/android/dx/rop/cst/CstString;
    .restart local v19    # "signature":Lcom/android/dx/rop/cst/CstString;
    .restart local v20    # "typeIdx":I
    .restart local v21    # "nameIdx":I
    :cond_2
    move-object/from16 v9, p1

    .line 605
    .end local v10    # "name":Lcom/android/dx/rop/cst/CstString;
    .end local v13    # "index":I
    .end local v15    # "startPc":I
    .end local v16    # "length":I
    .end local v17    # "type":Lcom/android/dx/rop/cst/CstString;
    .end local v18    # "descriptor":Lcom/android/dx/rop/cst/CstString;
    .end local v19    # "signature":Lcom/android/dx/rop/cst/CstString;
    .end local v20    # "typeIdx":I
    .end local v21    # "nameIdx":I
    :goto_2
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_0

    .line 632
    .end local v14    # "i":I
    :catch_1
    move-exception v0

    move-object/from16 v9, p1

    .line 633
    .local v0, "ex":Ljava/io/IOException;
    :goto_3
    new-instance v6, Ljava/lang/RuntimeException;

    const-string v7, "shouldn\'t happen"

    invoke-direct {v6, v7, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6

    .line 605
    .end local v0    # "ex":Ljava/io/IOException;
    .restart local v14    # "i":I
    :cond_3
    move-object/from16 v9, p1

    .line 634
    .end local v14    # "i":I
    nop

    .line 636
    invoke-virtual {v5}, Lcom/android/dx/cf/code/LocalVariableList;->setImmutable()V

    .line 637
    return-object v5
.end method

.method private runtimeInvisibleAnnotations(Lcom/android/dx/cf/direct/DirectClassFile;IILcom/android/dx/cf/iface/ParseObserver;)Lcom/android/dx/cf/iface/Attribute;
    .locals 3
    .param p1, "cf"    # Lcom/android/dx/cf/direct/DirectClassFile;
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .param p4, "observer"    # Lcom/android/dx/cf/iface/ParseObserver;

    .line 645
    const/4 v0, 0x2

    if-ge p3, v0, :cond_0

    .line 646
    invoke-static {}, Lcom/android/dx/cf/direct/StdAttributeFactory;->throwSeverelyTruncated()Lcom/android/dx/cf/iface/Attribute;

    .line 649
    :cond_0
    new-instance v0, Lcom/android/dx/cf/direct/AnnotationParser;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/android/dx/cf/direct/AnnotationParser;-><init>(Lcom/android/dx/cf/direct/DirectClassFile;IILcom/android/dx/cf/iface/ParseObserver;)V

    .line 651
    .local v0, "ap":Lcom/android/dx/cf/direct/AnnotationParser;
    sget-object v1, Lcom/android/dx/rop/annotation/AnnotationVisibility;->BUILD:Lcom/android/dx/rop/annotation/AnnotationVisibility;

    .line 652
    invoke-virtual {v0, v1}, Lcom/android/dx/cf/direct/AnnotationParser;->parseAnnotationAttribute(Lcom/android/dx/rop/annotation/AnnotationVisibility;)Lcom/android/dx/rop/annotation/Annotations;

    move-result-object v1

    .line 654
    .local v1, "annotations":Lcom/android/dx/rop/annotation/Annotations;
    new-instance v2, Lcom/android/dx/cf/attrib/AttRuntimeInvisibleAnnotations;

    invoke-direct {v2, v1, p3}, Lcom/android/dx/cf/attrib/AttRuntimeInvisibleAnnotations;-><init>(Lcom/android/dx/rop/annotation/Annotations;I)V

    return-object v2
.end method

.method private runtimeInvisibleParameterAnnotations(Lcom/android/dx/cf/direct/DirectClassFile;IILcom/android/dx/cf/iface/ParseObserver;)Lcom/android/dx/cf/iface/Attribute;
    .locals 3
    .param p1, "cf"    # Lcom/android/dx/cf/direct/DirectClassFile;
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .param p4, "observer"    # Lcom/android/dx/cf/iface/ParseObserver;

    .line 679
    const/4 v0, 0x2

    if-ge p3, v0, :cond_0

    .line 680
    invoke-static {}, Lcom/android/dx/cf/direct/StdAttributeFactory;->throwSeverelyTruncated()Lcom/android/dx/cf/iface/Attribute;

    .line 683
    :cond_0
    new-instance v0, Lcom/android/dx/cf/direct/AnnotationParser;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/android/dx/cf/direct/AnnotationParser;-><init>(Lcom/android/dx/cf/direct/DirectClassFile;IILcom/android/dx/cf/iface/ParseObserver;)V

    .line 685
    .local v0, "ap":Lcom/android/dx/cf/direct/AnnotationParser;
    sget-object v1, Lcom/android/dx/rop/annotation/AnnotationVisibility;->BUILD:Lcom/android/dx/rop/annotation/AnnotationVisibility;

    .line 686
    invoke-virtual {v0, v1}, Lcom/android/dx/cf/direct/AnnotationParser;->parseParameterAttribute(Lcom/android/dx/rop/annotation/AnnotationVisibility;)Lcom/android/dx/rop/annotation/AnnotationsList;

    move-result-object v1

    .line 688
    .local v1, "list":Lcom/android/dx/rop/annotation/AnnotationsList;
    new-instance v2, Lcom/android/dx/cf/attrib/AttRuntimeInvisibleParameterAnnotations;

    invoke-direct {v2, v1, p3}, Lcom/android/dx/cf/attrib/AttRuntimeInvisibleParameterAnnotations;-><init>(Lcom/android/dx/rop/annotation/AnnotationsList;I)V

    return-object v2
.end method

.method private runtimeVisibleAnnotations(Lcom/android/dx/cf/direct/DirectClassFile;IILcom/android/dx/cf/iface/ParseObserver;)Lcom/android/dx/cf/iface/Attribute;
    .locals 3
    .param p1, "cf"    # Lcom/android/dx/cf/direct/DirectClassFile;
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .param p4, "observer"    # Lcom/android/dx/cf/iface/ParseObserver;

    .line 662
    const/4 v0, 0x2

    if-ge p3, v0, :cond_0

    .line 663
    invoke-static {}, Lcom/android/dx/cf/direct/StdAttributeFactory;->throwSeverelyTruncated()Lcom/android/dx/cf/iface/Attribute;

    .line 666
    :cond_0
    new-instance v0, Lcom/android/dx/cf/direct/AnnotationParser;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/android/dx/cf/direct/AnnotationParser;-><init>(Lcom/android/dx/cf/direct/DirectClassFile;IILcom/android/dx/cf/iface/ParseObserver;)V

    .line 668
    .local v0, "ap":Lcom/android/dx/cf/direct/AnnotationParser;
    sget-object v1, Lcom/android/dx/rop/annotation/AnnotationVisibility;->RUNTIME:Lcom/android/dx/rop/annotation/AnnotationVisibility;

    .line 669
    invoke-virtual {v0, v1}, Lcom/android/dx/cf/direct/AnnotationParser;->parseAnnotationAttribute(Lcom/android/dx/rop/annotation/AnnotationVisibility;)Lcom/android/dx/rop/annotation/Annotations;

    move-result-object v1

    .line 671
    .local v1, "annotations":Lcom/android/dx/rop/annotation/Annotations;
    new-instance v2, Lcom/android/dx/cf/attrib/AttRuntimeVisibleAnnotations;

    invoke-direct {v2, v1, p3}, Lcom/android/dx/cf/attrib/AttRuntimeVisibleAnnotations;-><init>(Lcom/android/dx/rop/annotation/Annotations;I)V

    return-object v2
.end method

.method private runtimeVisibleParameterAnnotations(Lcom/android/dx/cf/direct/DirectClassFile;IILcom/android/dx/cf/iface/ParseObserver;)Lcom/android/dx/cf/iface/Attribute;
    .locals 3
    .param p1, "cf"    # Lcom/android/dx/cf/direct/DirectClassFile;
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .param p4, "observer"    # Lcom/android/dx/cf/iface/ParseObserver;

    .line 696
    const/4 v0, 0x2

    if-ge p3, v0, :cond_0

    .line 697
    invoke-static {}, Lcom/android/dx/cf/direct/StdAttributeFactory;->throwSeverelyTruncated()Lcom/android/dx/cf/iface/Attribute;

    .line 700
    :cond_0
    new-instance v0, Lcom/android/dx/cf/direct/AnnotationParser;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/android/dx/cf/direct/AnnotationParser;-><init>(Lcom/android/dx/cf/direct/DirectClassFile;IILcom/android/dx/cf/iface/ParseObserver;)V

    .line 702
    .local v0, "ap":Lcom/android/dx/cf/direct/AnnotationParser;
    sget-object v1, Lcom/android/dx/rop/annotation/AnnotationVisibility;->RUNTIME:Lcom/android/dx/rop/annotation/AnnotationVisibility;

    .line 703
    invoke-virtual {v0, v1}, Lcom/android/dx/cf/direct/AnnotationParser;->parseParameterAttribute(Lcom/android/dx/rop/annotation/AnnotationVisibility;)Lcom/android/dx/rop/annotation/AnnotationsList;

    move-result-object v1

    .line 705
    .local v1, "list":Lcom/android/dx/rop/annotation/AnnotationsList;
    new-instance v2, Lcom/android/dx/cf/attrib/AttRuntimeVisibleParameterAnnotations;

    invoke-direct {v2, v1, p3}, Lcom/android/dx/cf/attrib/AttRuntimeVisibleParameterAnnotations;-><init>(Lcom/android/dx/rop/annotation/AnnotationsList;I)V

    return-object v2
.end method

.method private signature(Lcom/android/dx/cf/direct/DirectClassFile;IILcom/android/dx/cf/iface/ParseObserver;)Lcom/android/dx/cf/iface/Attribute;
    .locals 8
    .param p1, "cf"    # Lcom/android/dx/cf/direct/DirectClassFile;
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .param p4, "observer"    # Lcom/android/dx/cf/iface/ParseObserver;

    .line 713
    const/4 v0, 0x2

    if-eq p3, v0, :cond_0

    .line 714
    invoke-static {v0}, Lcom/android/dx/cf/direct/StdAttributeFactory;->throwBadLength(I)Lcom/android/dx/cf/iface/Attribute;

    .line 717
    :cond_0
    invoke-virtual {p1}, Lcom/android/dx/cf/direct/DirectClassFile;->getBytes()Lcom/android/dx/util/ByteArray;

    move-result-object v1

    .line 718
    .local v1, "bytes":Lcom/android/dx/util/ByteArray;
    invoke-virtual {p1}, Lcom/android/dx/cf/direct/DirectClassFile;->getConstantPool()Lcom/android/dx/rop/cst/ConstantPool;

    move-result-object v2

    .line 719
    .local v2, "pool":Lcom/android/dx/rop/cst/ConstantPool;
    invoke-virtual {v1, p2}, Lcom/android/dx/util/ByteArray;->getUnsignedShort(I)I

    move-result v3

    .line 720
    .local v3, "idx":I
    invoke-interface {v2, v3}, Lcom/android/dx/rop/cst/ConstantPool;->get(I)Lcom/android/dx/rop/cst/Constant;

    move-result-object v4

    check-cast v4, Lcom/android/dx/rop/cst/CstString;

    .line 721
    .local v4, "cst":Lcom/android/dx/rop/cst/CstString;
    new-instance v5, Lcom/android/dx/cf/attrib/AttSignature;

    invoke-direct {v5, v4}, Lcom/android/dx/cf/attrib/AttSignature;-><init>(Lcom/android/dx/rop/cst/CstString;)V

    .line 723
    .local v5, "result":Lcom/android/dx/cf/iface/Attribute;
    if-eqz p4, :cond_1

    .line 724
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "signature: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {p4, v1, p2, v0, v6}, Lcom/android/dx/cf/iface/ParseObserver;->parsed(Lcom/android/dx/util/ByteArray;IILjava/lang/String;)V

    .line 727
    :cond_1
    return-object v5
.end method

.method private sourceDebugExtension(Lcom/android/dx/cf/direct/DirectClassFile;IILcom/android/dx/cf/iface/ParseObserver;)Lcom/android/dx/cf/iface/Attribute;
    .locals 6
    .param p1, "cf"    # Lcom/android/dx/cf/direct/DirectClassFile;
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .param p4, "observer"    # Lcom/android/dx/cf/iface/ParseObserver;

    .line 735
    invoke-virtual {p1}, Lcom/android/dx/cf/direct/DirectClassFile;->getBytes()Lcom/android/dx/util/ByteArray;

    move-result-object v0

    add-int v1, p2, p3

    invoke-virtual {v0, p2, v1}, Lcom/android/dx/util/ByteArray;->slice(II)Lcom/android/dx/util/ByteArray;

    move-result-object v0

    .line 736
    .local v0, "bytes":Lcom/android/dx/util/ByteArray;
    new-instance v1, Lcom/android/dx/rop/cst/CstString;

    invoke-direct {v1, v0}, Lcom/android/dx/rop/cst/CstString;-><init>(Lcom/android/dx/util/ByteArray;)V

    .line 737
    .local v1, "smapString":Lcom/android/dx/rop/cst/CstString;
    new-instance v2, Lcom/android/dx/cf/attrib/AttSourceDebugExtension;

    invoke-direct {v2, v1}, Lcom/android/dx/cf/attrib/AttSourceDebugExtension;-><init>(Lcom/android/dx/rop/cst/CstString;)V

    .line 739
    .local v2, "result":Lcom/android/dx/cf/iface/Attribute;
    if-eqz p4, :cond_0

    .line 740
    invoke-virtual {v1}, Lcom/android/dx/rop/cst/CstString;->getString()Ljava/lang/String;

    move-result-object v3

    .line 741
    .local v3, "decoded":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "sourceDebugExtension: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p4, v0, p2, p3, v4}, Lcom/android/dx/cf/iface/ParseObserver;->parsed(Lcom/android/dx/util/ByteArray;IILjava/lang/String;)V

    .line 744
    .end local v3    # "decoded":Ljava/lang/String;
    :cond_0
    return-object v2
.end method

.method private sourceFile(Lcom/android/dx/cf/direct/DirectClassFile;IILcom/android/dx/cf/iface/ParseObserver;)Lcom/android/dx/cf/iface/Attribute;
    .locals 8
    .param p1, "cf"    # Lcom/android/dx/cf/direct/DirectClassFile;
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .param p4, "observer"    # Lcom/android/dx/cf/iface/ParseObserver;

    .line 752
    const/4 v0, 0x2

    if-eq p3, v0, :cond_0

    .line 753
    invoke-static {v0}, Lcom/android/dx/cf/direct/StdAttributeFactory;->throwBadLength(I)Lcom/android/dx/cf/iface/Attribute;

    .line 756
    :cond_0
    invoke-virtual {p1}, Lcom/android/dx/cf/direct/DirectClassFile;->getBytes()Lcom/android/dx/util/ByteArray;

    move-result-object v1

    .line 757
    .local v1, "bytes":Lcom/android/dx/util/ByteArray;
    invoke-virtual {p1}, Lcom/android/dx/cf/direct/DirectClassFile;->getConstantPool()Lcom/android/dx/rop/cst/ConstantPool;

    move-result-object v2

    .line 758
    .local v2, "pool":Lcom/android/dx/rop/cst/ConstantPool;
    invoke-virtual {v1, p2}, Lcom/android/dx/util/ByteArray;->getUnsignedShort(I)I

    move-result v3

    .line 759
    .local v3, "idx":I
    invoke-interface {v2, v3}, Lcom/android/dx/rop/cst/ConstantPool;->get(I)Lcom/android/dx/rop/cst/Constant;

    move-result-object v4

    check-cast v4, Lcom/android/dx/rop/cst/CstString;

    .line 760
    .local v4, "cst":Lcom/android/dx/rop/cst/CstString;
    new-instance v5, Lcom/android/dx/cf/attrib/AttSourceFile;

    invoke-direct {v5, v4}, Lcom/android/dx/cf/attrib/AttSourceFile;-><init>(Lcom/android/dx/rop/cst/CstString;)V

    .line 762
    .local v5, "result":Lcom/android/dx/cf/iface/Attribute;
    if-eqz p4, :cond_1

    .line 763
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "source: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {p4, v1, p2, v0, v6}, Lcom/android/dx/cf/iface/ParseObserver;->parsed(Lcom/android/dx/util/ByteArray;IILjava/lang/String;)V

    .line 766
    :cond_1
    return-object v5
.end method

.method private synthetic(Lcom/android/dx/cf/direct/DirectClassFile;IILcom/android/dx/cf/iface/ParseObserver;)Lcom/android/dx/cf/iface/Attribute;
    .locals 1
    .param p1, "cf"    # Lcom/android/dx/cf/direct/DirectClassFile;
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .param p4, "observer"    # Lcom/android/dx/cf/iface/ParseObserver;

    .line 774
    if-eqz p3, :cond_0

    .line 775
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/dx/cf/direct/StdAttributeFactory;->throwBadLength(I)Lcom/android/dx/cf/iface/Attribute;

    move-result-object v0

    return-object v0

    .line 778
    :cond_0
    new-instance v0, Lcom/android/dx/cf/attrib/AttSynthetic;

    invoke-direct {v0}, Lcom/android/dx/cf/attrib/AttSynthetic;-><init>()V

    return-object v0
.end method

.method private static throwBadLength(I)Lcom/android/dx/cf/iface/Attribute;
    .locals 3
    .param p0, "expected"    # I

    .line 812
    new-instance v0, Lcom/android/dx/cf/iface/ParseException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bad attribute length; expected length "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 813
    invoke-static {p0}, Lcom/android/dx/util/Hex;->u4(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/dx/cf/iface/ParseException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static throwSeverelyTruncated()Lcom/android/dx/cf/iface/Attribute;
    .locals 2

    .line 789
    new-instance v0, Lcom/android/dx/cf/iface/ParseException;

    const-string v1, "severely truncated attribute"

    invoke-direct {v0, v1}, Lcom/android/dx/cf/iface/ParseException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static throwTruncated()Lcom/android/dx/cf/iface/Attribute;
    .locals 2

    .line 800
    new-instance v0, Lcom/android/dx/cf/iface/ParseException;

    const-string v1, "truncated attribute"

    invoke-direct {v0, v1}, Lcom/android/dx/cf/iface/ParseException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method protected parse0(Lcom/android/dx/cf/direct/DirectClassFile;ILjava/lang/String;IILcom/android/dx/cf/iface/ParseObserver;)Lcom/android/dx/cf/iface/Attribute;
    .locals 6
    .param p1, "cf"    # Lcom/android/dx/cf/direct/DirectClassFile;
    .param p2, "context"    # I
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "offset"    # I
    .param p5, "length"    # I
    .param p6, "observer"    # Lcom/android/dx/cf/iface/ParseObserver;

    .line 86
    const-string v0, "Synthetic"

    const-string v1, "Signature"

    const-string v2, "RuntimeVisibleAnnotations"

    const-string v3, "RuntimeInvisibleAnnotations"

    const-string v4, "Deprecated"

    packed-switch p2, :pswitch_data_0

    goto/16 :goto_0

    .line 185
    :pswitch_0
    const-string v0, "LineNumberTable"

    if-ne p3, v0, :cond_0

    .line 186
    invoke-direct {p0, p1, p4, p5, p6}, Lcom/android/dx/cf/direct/StdAttributeFactory;->lineNumberTable(Lcom/android/dx/cf/direct/DirectClassFile;IILcom/android/dx/cf/iface/ParseObserver;)Lcom/android/dx/cf/iface/Attribute;

    move-result-object v0

    return-object v0

    .line 188
    :cond_0
    const-string v0, "LocalVariableTable"

    if-ne p3, v0, :cond_1

    .line 189
    invoke-direct {p0, p1, p4, p5, p6}, Lcom/android/dx/cf/direct/StdAttributeFactory;->localVariableTable(Lcom/android/dx/cf/direct/DirectClassFile;IILcom/android/dx/cf/iface/ParseObserver;)Lcom/android/dx/cf/iface/Attribute;

    move-result-object v0

    return-object v0

    .line 191
    :cond_1
    const-string v0, "LocalVariableTypeTable"

    if-ne p3, v0, :cond_19

    .line 192
    invoke-direct {p0, p1, p4, p5, p6}, Lcom/android/dx/cf/direct/StdAttributeFactory;->localVariableTypeTable(Lcom/android/dx/cf/direct/DirectClassFile;IILcom/android/dx/cf/iface/ParseObserver;)Lcom/android/dx/cf/iface/Attribute;

    move-result-object v0

    return-object v0

    .line 146
    :pswitch_1
    const-string v5, "AnnotationDefault"

    if-ne p3, v5, :cond_2

    .line 147
    invoke-direct {p0, p1, p4, p5, p6}, Lcom/android/dx/cf/direct/StdAttributeFactory;->annotationDefault(Lcom/android/dx/cf/direct/DirectClassFile;IILcom/android/dx/cf/iface/ParseObserver;)Lcom/android/dx/cf/iface/Attribute;

    move-result-object v0

    return-object v0

    .line 149
    :cond_2
    const-string v5, "Code"

    if-ne p3, v5, :cond_3

    .line 150
    invoke-direct {p0, p1, p4, p5, p6}, Lcom/android/dx/cf/direct/StdAttributeFactory;->code(Lcom/android/dx/cf/direct/DirectClassFile;IILcom/android/dx/cf/iface/ParseObserver;)Lcom/android/dx/cf/iface/Attribute;

    move-result-object v0

    return-object v0

    .line 152
    :cond_3
    if-ne p3, v4, :cond_4

    .line 153
    invoke-direct {p0, p1, p4, p5, p6}, Lcom/android/dx/cf/direct/StdAttributeFactory;->deprecated(Lcom/android/dx/cf/direct/DirectClassFile;IILcom/android/dx/cf/iface/ParseObserver;)Lcom/android/dx/cf/iface/Attribute;

    move-result-object v0

    return-object v0

    .line 155
    :cond_4
    const-string v4, "Exceptions"

    if-ne p3, v4, :cond_5

    .line 156
    invoke-direct {p0, p1, p4, p5, p6}, Lcom/android/dx/cf/direct/StdAttributeFactory;->exceptions(Lcom/android/dx/cf/direct/DirectClassFile;IILcom/android/dx/cf/iface/ParseObserver;)Lcom/android/dx/cf/iface/Attribute;

    move-result-object v0

    return-object v0

    .line 158
    :cond_5
    if-ne p3, v3, :cond_6

    .line 159
    invoke-direct {p0, p1, p4, p5, p6}, Lcom/android/dx/cf/direct/StdAttributeFactory;->runtimeInvisibleAnnotations(Lcom/android/dx/cf/direct/DirectClassFile;IILcom/android/dx/cf/iface/ParseObserver;)Lcom/android/dx/cf/iface/Attribute;

    move-result-object v0

    return-object v0

    .line 162
    :cond_6
    if-ne p3, v2, :cond_7

    .line 163
    invoke-direct {p0, p1, p4, p5, p6}, Lcom/android/dx/cf/direct/StdAttributeFactory;->runtimeVisibleAnnotations(Lcom/android/dx/cf/direct/DirectClassFile;IILcom/android/dx/cf/iface/ParseObserver;)Lcom/android/dx/cf/iface/Attribute;

    move-result-object v0

    return-object v0

    .line 166
    :cond_7
    const-string v2, "RuntimeInvisibleParameterAnnotations"

    if-ne p3, v2, :cond_8

    .line 168
    invoke-direct {p0, p1, p4, p5, p6}, Lcom/android/dx/cf/direct/StdAttributeFactory;->runtimeInvisibleParameterAnnotations(Lcom/android/dx/cf/direct/DirectClassFile;IILcom/android/dx/cf/iface/ParseObserver;)Lcom/android/dx/cf/iface/Attribute;

    move-result-object v0

    return-object v0

    .line 171
    :cond_8
    const-string v2, "RuntimeVisibleParameterAnnotations"

    if-ne p3, v2, :cond_9

    .line 173
    invoke-direct {p0, p1, p4, p5, p6}, Lcom/android/dx/cf/direct/StdAttributeFactory;->runtimeVisibleParameterAnnotations(Lcom/android/dx/cf/direct/DirectClassFile;IILcom/android/dx/cf/iface/ParseObserver;)Lcom/android/dx/cf/iface/Attribute;

    move-result-object v0

    return-object v0

    .line 176
    :cond_9
    if-ne p3, v1, :cond_a

    .line 177
    invoke-direct {p0, p1, p4, p5, p6}, Lcom/android/dx/cf/direct/StdAttributeFactory;->signature(Lcom/android/dx/cf/direct/DirectClassFile;IILcom/android/dx/cf/iface/ParseObserver;)Lcom/android/dx/cf/iface/Attribute;

    move-result-object v0

    return-object v0

    .line 179
    :cond_a
    if-ne p3, v0, :cond_19

    .line 180
    invoke-direct {p0, p1, p4, p5, p6}, Lcom/android/dx/cf/direct/StdAttributeFactory;->synthetic(Lcom/android/dx/cf/direct/DirectClassFile;IILcom/android/dx/cf/iface/ParseObserver;)Lcom/android/dx/cf/iface/Attribute;

    move-result-object v0

    return-object v0

    .line 123
    :pswitch_2
    const-string v5, "ConstantValue"

    if-ne p3, v5, :cond_b

    .line 124
    invoke-direct {p0, p1, p4, p5, p6}, Lcom/android/dx/cf/direct/StdAttributeFactory;->constantValue(Lcom/android/dx/cf/direct/DirectClassFile;IILcom/android/dx/cf/iface/ParseObserver;)Lcom/android/dx/cf/iface/Attribute;

    move-result-object v0

    return-object v0

    .line 126
    :cond_b
    if-ne p3, v4, :cond_c

    .line 127
    invoke-direct {p0, p1, p4, p5, p6}, Lcom/android/dx/cf/direct/StdAttributeFactory;->deprecated(Lcom/android/dx/cf/direct/DirectClassFile;IILcom/android/dx/cf/iface/ParseObserver;)Lcom/android/dx/cf/iface/Attribute;

    move-result-object v0

    return-object v0

    .line 129
    :cond_c
    if-ne p3, v3, :cond_d

    .line 130
    invoke-direct {p0, p1, p4, p5, p6}, Lcom/android/dx/cf/direct/StdAttributeFactory;->runtimeInvisibleAnnotations(Lcom/android/dx/cf/direct/DirectClassFile;IILcom/android/dx/cf/iface/ParseObserver;)Lcom/android/dx/cf/iface/Attribute;

    move-result-object v0

    return-object v0

    .line 133
    :cond_d
    if-ne p3, v2, :cond_e

    .line 134
    invoke-direct {p0, p1, p4, p5, p6}, Lcom/android/dx/cf/direct/StdAttributeFactory;->runtimeVisibleAnnotations(Lcom/android/dx/cf/direct/DirectClassFile;IILcom/android/dx/cf/iface/ParseObserver;)Lcom/android/dx/cf/iface/Attribute;

    move-result-object v0

    return-object v0

    .line 137
    :cond_e
    if-ne p3, v1, :cond_f

    .line 138
    invoke-direct {p0, p1, p4, p5, p6}, Lcom/android/dx/cf/direct/StdAttributeFactory;->signature(Lcom/android/dx/cf/direct/DirectClassFile;IILcom/android/dx/cf/iface/ParseObserver;)Lcom/android/dx/cf/iface/Attribute;

    move-result-object v0

    return-object v0

    .line 140
    :cond_f
    if-ne p3, v0, :cond_19

    .line 141
    invoke-direct {p0, p1, p4, p5, p6}, Lcom/android/dx/cf/direct/StdAttributeFactory;->synthetic(Lcom/android/dx/cf/direct/DirectClassFile;IILcom/android/dx/cf/iface/ParseObserver;)Lcom/android/dx/cf/iface/Attribute;

    move-result-object v0

    return-object v0

    .line 88
    :pswitch_3
    const-string v5, "BootstrapMethods"

    if-ne p3, v5, :cond_10

    .line 89
    invoke-direct {p0, p1, p4, p5, p6}, Lcom/android/dx/cf/direct/StdAttributeFactory;->bootstrapMethods(Lcom/android/dx/cf/direct/DirectClassFile;IILcom/android/dx/cf/iface/ParseObserver;)Lcom/android/dx/cf/iface/Attribute;

    move-result-object v0

    return-object v0

    .line 91
    :cond_10
    if-ne p3, v4, :cond_11

    .line 92
    invoke-direct {p0, p1, p4, p5, p6}, Lcom/android/dx/cf/direct/StdAttributeFactory;->deprecated(Lcom/android/dx/cf/direct/DirectClassFile;IILcom/android/dx/cf/iface/ParseObserver;)Lcom/android/dx/cf/iface/Attribute;

    move-result-object v0

    return-object v0

    .line 94
    :cond_11
    const-string v4, "EnclosingMethod"

    if-ne p3, v4, :cond_12

    .line 95
    invoke-direct {p0, p1, p4, p5, p6}, Lcom/android/dx/cf/direct/StdAttributeFactory;->enclosingMethod(Lcom/android/dx/cf/direct/DirectClassFile;IILcom/android/dx/cf/iface/ParseObserver;)Lcom/android/dx/cf/iface/Attribute;

    move-result-object v0

    return-object v0

    .line 97
    :cond_12
    const-string v4, "InnerClasses"

    if-ne p3, v4, :cond_13

    .line 98
    invoke-direct {p0, p1, p4, p5, p6}, Lcom/android/dx/cf/direct/StdAttributeFactory;->innerClasses(Lcom/android/dx/cf/direct/DirectClassFile;IILcom/android/dx/cf/iface/ParseObserver;)Lcom/android/dx/cf/iface/Attribute;

    move-result-object v0

    return-object v0

    .line 100
    :cond_13
    if-ne p3, v3, :cond_14

    .line 101
    invoke-direct {p0, p1, p4, p5, p6}, Lcom/android/dx/cf/direct/StdAttributeFactory;->runtimeInvisibleAnnotations(Lcom/android/dx/cf/direct/DirectClassFile;IILcom/android/dx/cf/iface/ParseObserver;)Lcom/android/dx/cf/iface/Attribute;

    move-result-object v0

    return-object v0

    .line 104
    :cond_14
    if-ne p3, v2, :cond_15

    .line 105
    invoke-direct {p0, p1, p4, p5, p6}, Lcom/android/dx/cf/direct/StdAttributeFactory;->runtimeVisibleAnnotations(Lcom/android/dx/cf/direct/DirectClassFile;IILcom/android/dx/cf/iface/ParseObserver;)Lcom/android/dx/cf/iface/Attribute;

    move-result-object v0

    return-object v0

    .line 108
    :cond_15
    if-ne p3, v0, :cond_16

    .line 109
    invoke-direct {p0, p1, p4, p5, p6}, Lcom/android/dx/cf/direct/StdAttributeFactory;->synthetic(Lcom/android/dx/cf/direct/DirectClassFile;IILcom/android/dx/cf/iface/ParseObserver;)Lcom/android/dx/cf/iface/Attribute;

    move-result-object v0

    return-object v0

    .line 111
    :cond_16
    if-ne p3, v1, :cond_17

    .line 112
    invoke-direct {p0, p1, p4, p5, p6}, Lcom/android/dx/cf/direct/StdAttributeFactory;->signature(Lcom/android/dx/cf/direct/DirectClassFile;IILcom/android/dx/cf/iface/ParseObserver;)Lcom/android/dx/cf/iface/Attribute;

    move-result-object v0

    return-object v0

    .line 114
    :cond_17
    const-string v0, "SourceDebugExtension"

    if-ne p3, v0, :cond_18

    .line 115
    invoke-direct {p0, p1, p4, p5, p6}, Lcom/android/dx/cf/direct/StdAttributeFactory;->sourceDebugExtension(Lcom/android/dx/cf/direct/DirectClassFile;IILcom/android/dx/cf/iface/ParseObserver;)Lcom/android/dx/cf/iface/Attribute;

    move-result-object v0

    return-object v0

    .line 117
    :cond_18
    const-string v0, "SourceFile"

    if-ne p3, v0, :cond_19

    .line 118
    invoke-direct {p0, p1, p4, p5, p6}, Lcom/android/dx/cf/direct/StdAttributeFactory;->sourceFile(Lcom/android/dx/cf/direct/DirectClassFile;IILcom/android/dx/cf/iface/ParseObserver;)Lcom/android/dx/cf/iface/Attribute;

    move-result-object v0

    return-object v0

    .line 199
    :cond_19
    :goto_0
    invoke-super/range {p0 .. p6}, Lcom/android/dx/cf/direct/AttributeFactory;->parse0(Lcom/android/dx/cf/direct/DirectClassFile;ILjava/lang/String;IILcom/android/dx/cf/iface/ParseObserver;)Lcom/android/dx/cf/iface/Attribute;

    move-result-object v0

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
