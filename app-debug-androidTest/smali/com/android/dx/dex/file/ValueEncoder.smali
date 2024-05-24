.class public final Lcom/android/dx/dex/file/ValueEncoder;
.super Ljava/lang/Object;
.source "ValueEncoder.java"


# static fields
.field private static final VALUE_ANNOTATION:I = 0x1d

.field private static final VALUE_ARRAY:I = 0x1c

.field private static final VALUE_BOOLEAN:I = 0x1f

.field private static final VALUE_BYTE:I = 0x0

.field private static final VALUE_CHAR:I = 0x3

.field private static final VALUE_DOUBLE:I = 0x11

.field private static final VALUE_ENUM:I = 0x1b

.field private static final VALUE_FIELD:I = 0x19

.field private static final VALUE_FLOAT:I = 0x10

.field private static final VALUE_INT:I = 0x4

.field private static final VALUE_LONG:I = 0x6

.field private static final VALUE_METHOD:I = 0x1a

.field private static final VALUE_METHOD_HANDLE:I = 0x16

.field private static final VALUE_METHOD_TYPE:I = 0x15

.field private static final VALUE_NULL:I = 0x1e

.field private static final VALUE_SHORT:I = 0x2

.field private static final VALUE_STRING:I = 0x17

.field private static final VALUE_TYPE:I = 0x18


# instance fields
.field private final file:Lcom/android/dx/dex/file/DexFile;

.field private final out:Lcom/android/dx/util/AnnotatedOutput;


# direct methods
.method public constructor <init>(Lcom/android/dx/dex/file/DexFile;Lcom/android/dx/util/AnnotatedOutput;)V
    .locals 2
    .param p1, "file"    # Lcom/android/dx/dex/file/DexFile;
    .param p2, "out"    # Lcom/android/dx/util/AnnotatedOutput;

    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 118
    if-eqz p1, :cond_1

    .line 122
    if-eqz p2, :cond_0

    .line 126
    iput-object p1, p0, Lcom/android/dx/dex/file/ValueEncoder;->file:Lcom/android/dx/dex/file/DexFile;

    .line 127
    iput-object p2, p0, Lcom/android/dx/dex/file/ValueEncoder;->out:Lcom/android/dx/util/AnnotatedOutput;

    .line 128
    return-void

    .line 123
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "out == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 119
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "file == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static addContents(Lcom/android/dx/dex/file/DexFile;Lcom/android/dx/rop/annotation/Annotation;)V
    .locals 5
    .param p0, "file"    # Lcom/android/dx/dex/file/DexFile;
    .param p1, "annotation"    # Lcom/android/dx/rop/annotation/Annotation;

    .line 413
    invoke-virtual {p0}, Lcom/android/dx/dex/file/DexFile;->getTypeIds()Lcom/android/dx/dex/file/TypeIdsSection;

    move-result-object v0

    .line 414
    .local v0, "typeIds":Lcom/android/dx/dex/file/TypeIdsSection;
    invoke-virtual {p0}, Lcom/android/dx/dex/file/DexFile;->getStringIds()Lcom/android/dx/dex/file/StringIdsSection;

    move-result-object v1

    .line 416
    .local v1, "stringIds":Lcom/android/dx/dex/file/StringIdsSection;
    invoke-virtual {p1}, Lcom/android/dx/rop/annotation/Annotation;->getType()Lcom/android/dx/rop/cst/CstType;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/dx/dex/file/TypeIdsSection;->intern(Lcom/android/dx/rop/cst/CstType;)Lcom/android/dx/dex/file/TypeIdItem;

    .line 418
    invoke-virtual {p1}, Lcom/android/dx/rop/annotation/Annotation;->getNameValuePairs()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/dx/rop/annotation/NameValuePair;

    .line 419
    .local v3, "pair":Lcom/android/dx/rop/annotation/NameValuePair;
    invoke-virtual {v3}, Lcom/android/dx/rop/annotation/NameValuePair;->getName()Lcom/android/dx/rop/cst/CstString;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/android/dx/dex/file/StringIdsSection;->intern(Lcom/android/dx/rop/cst/CstString;)Lcom/android/dx/dex/file/StringIdItem;

    .line 420
    invoke-virtual {v3}, Lcom/android/dx/rop/annotation/NameValuePair;->getValue()Lcom/android/dx/rop/cst/Constant;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/android/dx/dex/file/ValueEncoder;->addContents(Lcom/android/dx/dex/file/DexFile;Lcom/android/dx/rop/cst/Constant;)V

    .line 421
    .end local v3    # "pair":Lcom/android/dx/rop/annotation/NameValuePair;
    goto :goto_0

    .line 422
    :cond_0
    return-void
.end method

.method public static addContents(Lcom/android/dx/dex/file/DexFile;Lcom/android/dx/rop/cst/Constant;)V
    .locals 4
    .param p0, "file"    # Lcom/android/dx/dex/file/DexFile;
    .param p1, "cst"    # Lcom/android/dx/rop/cst/Constant;

    .line 435
    instance-of v0, p1, Lcom/android/dx/rop/cst/CstAnnotation;

    if-eqz v0, :cond_0

    .line 436
    move-object v0, p1

    check-cast v0, Lcom/android/dx/rop/cst/CstAnnotation;

    invoke-virtual {v0}, Lcom/android/dx/rop/cst/CstAnnotation;->getAnnotation()Lcom/android/dx/rop/annotation/Annotation;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/dx/dex/file/ValueEncoder;->addContents(Lcom/android/dx/dex/file/DexFile;Lcom/android/dx/rop/annotation/Annotation;)V

    goto :goto_1

    .line 437
    :cond_0
    instance-of v0, p1, Lcom/android/dx/rop/cst/CstArray;

    if-eqz v0, :cond_2

    .line 438
    move-object v0, p1

    check-cast v0, Lcom/android/dx/rop/cst/CstArray;

    invoke-virtual {v0}, Lcom/android/dx/rop/cst/CstArray;->getList()Lcom/android/dx/rop/cst/CstArray$List;

    move-result-object v0

    .line 439
    .local v0, "list":Lcom/android/dx/rop/cst/CstArray$List;
    invoke-virtual {v0}, Lcom/android/dx/rop/cst/CstArray$List;->size()I

    move-result v1

    .line 440
    .local v1, "size":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 441
    invoke-virtual {v0, v2}, Lcom/android/dx/rop/cst/CstArray$List;->get(I)Lcom/android/dx/rop/cst/Constant;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/android/dx/dex/file/ValueEncoder;->addContents(Lcom/android/dx/dex/file/DexFile;Lcom/android/dx/rop/cst/Constant;)V

    .line 440
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 443
    .end local v0    # "list":Lcom/android/dx/rop/cst/CstArray$List;
    .end local v1    # "size":I
    .end local v2    # "i":I
    :cond_1
    goto :goto_1

    .line 444
    :cond_2
    invoke-virtual {p0, p1}, Lcom/android/dx/dex/file/DexFile;->internIfAppropriate(Lcom/android/dx/rop/cst/Constant;)V

    .line 446
    :goto_1
    return-void
.end method

.method public static constantToHuman(Lcom/android/dx/rop/cst/Constant;)Ljava/lang/String;
    .locals 3
    .param p0, "cst"    # Lcom/android/dx/rop/cst/Constant;

    .line 389
    invoke-static {p0}, Lcom/android/dx/dex/file/ValueEncoder;->constantToValueType(Lcom/android/dx/rop/cst/Constant;)I

    move-result v0

    .line 391
    .local v0, "type":I
    const/16 v1, 0x1e

    if-ne v0, v1, :cond_0

    .line 392
    const-string v1, "null"

    return-object v1

    .line 395
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 397
    .local v1, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Lcom/android/dx/rop/cst/Constant;->typeName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 398
    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 399
    invoke-virtual {p0}, Lcom/android/dx/rop/cst/Constant;->toHuman()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 401
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private static constantToValueType(Lcom/android/dx/rop/cst/Constant;)I
    .locals 2
    .param p0, "cst"    # Lcom/android/dx/rop/cst/Constant;

    .line 238
    instance-of v0, p0, Lcom/android/dx/rop/cst/CstByte;

    if-eqz v0, :cond_0

    .line 239
    const/4 v0, 0x0

    return v0

    .line 240
    :cond_0
    instance-of v0, p0, Lcom/android/dx/rop/cst/CstShort;

    if-eqz v0, :cond_1

    .line 241
    const/4 v0, 0x2

    return v0

    .line 242
    :cond_1
    instance-of v0, p0, Lcom/android/dx/rop/cst/CstChar;

    if-eqz v0, :cond_2

    .line 243
    const/4 v0, 0x3

    return v0

    .line 244
    :cond_2
    instance-of v0, p0, Lcom/android/dx/rop/cst/CstInteger;

    if-eqz v0, :cond_3

    .line 245
    const/4 v0, 0x4

    return v0

    .line 246
    :cond_3
    instance-of v0, p0, Lcom/android/dx/rop/cst/CstLong;

    if-eqz v0, :cond_4

    .line 247
    const/4 v0, 0x6

    return v0

    .line 248
    :cond_4
    instance-of v0, p0, Lcom/android/dx/rop/cst/CstFloat;

    if-eqz v0, :cond_5

    .line 249
    const/16 v0, 0x10

    return v0

    .line 250
    :cond_5
    instance-of v0, p0, Lcom/android/dx/rop/cst/CstDouble;

    if-eqz v0, :cond_6

    .line 251
    const/16 v0, 0x11

    return v0

    .line 252
    :cond_6
    instance-of v0, p0, Lcom/android/dx/rop/cst/CstProtoRef;

    if-eqz v0, :cond_7

    .line 253
    const/16 v0, 0x15

    return v0

    .line 254
    :cond_7
    instance-of v0, p0, Lcom/android/dx/rop/cst/CstMethodHandle;

    if-eqz v0, :cond_8

    .line 255
    const/16 v0, 0x16

    return v0

    .line 256
    :cond_8
    instance-of v0, p0, Lcom/android/dx/rop/cst/CstString;

    if-eqz v0, :cond_9

    .line 257
    const/16 v0, 0x17

    return v0

    .line 258
    :cond_9
    instance-of v0, p0, Lcom/android/dx/rop/cst/CstType;

    if-eqz v0, :cond_a

    .line 259
    const/16 v0, 0x18

    return v0

    .line 260
    :cond_a
    instance-of v0, p0, Lcom/android/dx/rop/cst/CstFieldRef;

    if-eqz v0, :cond_b

    .line 261
    const/16 v0, 0x19

    return v0

    .line 262
    :cond_b
    instance-of v0, p0, Lcom/android/dx/rop/cst/CstMethodRef;

    if-eqz v0, :cond_c

    .line 263
    const/16 v0, 0x1a

    return v0

    .line 264
    :cond_c
    instance-of v0, p0, Lcom/android/dx/rop/cst/CstEnumRef;

    if-eqz v0, :cond_d

    .line 265
    const/16 v0, 0x1b

    return v0

    .line 266
    :cond_d
    instance-of v0, p0, Lcom/android/dx/rop/cst/CstArray;

    if-eqz v0, :cond_e

    .line 267
    const/16 v0, 0x1c

    return v0

    .line 268
    :cond_e
    instance-of v0, p0, Lcom/android/dx/rop/cst/CstAnnotation;

    if-eqz v0, :cond_f

    .line 269
    const/16 v0, 0x1d

    return v0

    .line 270
    :cond_f
    instance-of v0, p0, Lcom/android/dx/rop/cst/CstKnownNull;

    if-eqz v0, :cond_10

    .line 271
    const/16 v0, 0x1e

    return v0

    .line 272
    :cond_10
    instance-of v0, p0, Lcom/android/dx/rop/cst/CstBoolean;

    if-eqz v0, :cond_11

    .line 273
    const/16 v0, 0x1f

    return v0

    .line 275
    :cond_11
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Shouldn\'t happen"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public writeAnnotation(Lcom/android/dx/rop/annotation/Annotation;Z)V
    .locals 18
    .param p1, "annotation"    # Lcom/android/dx/rop/annotation/Annotation;
    .param p2, "topLevel"    # Z

    .line 331
    move-object/from16 v0, p0

    if-eqz p2, :cond_0

    iget-object v2, v0, Lcom/android/dx/dex/file/ValueEncoder;->out:Lcom/android/dx/util/AnnotatedOutput;

    invoke-interface {v2}, Lcom/android/dx/util/AnnotatedOutput;->annotates()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 332
    .local v2, "annotates":Z
    :goto_0
    iget-object v3, v0, Lcom/android/dx/dex/file/ValueEncoder;->file:Lcom/android/dx/dex/file/DexFile;

    invoke-virtual {v3}, Lcom/android/dx/dex/file/DexFile;->getStringIds()Lcom/android/dx/dex/file/StringIdsSection;

    move-result-object v3

    .line 333
    .local v3, "stringIds":Lcom/android/dx/dex/file/StringIdsSection;
    iget-object v4, v0, Lcom/android/dx/dex/file/ValueEncoder;->file:Lcom/android/dx/dex/file/DexFile;

    invoke-virtual {v4}, Lcom/android/dx/dex/file/DexFile;->getTypeIds()Lcom/android/dx/dex/file/TypeIdsSection;

    move-result-object v4

    .line 335
    .local v4, "typeIds":Lcom/android/dx/dex/file/TypeIdsSection;
    invoke-virtual/range {p1 .. p1}, Lcom/android/dx/rop/annotation/Annotation;->getType()Lcom/android/dx/rop/cst/CstType;

    move-result-object v5

    .line 336
    .local v5, "type":Lcom/android/dx/rop/cst/CstType;
    invoke-virtual {v4, v5}, Lcom/android/dx/dex/file/TypeIdsSection;->indexOf(Lcom/android/dx/rop/cst/CstType;)I

    move-result v6

    .line 338
    .local v6, "typeIdx":I
    const-string v7, " // "

    if-eqz v2, :cond_1

    .line 339
    iget-object v8, v0, Lcom/android/dx/dex/file/ValueEncoder;->out:Lcom/android/dx/util/AnnotatedOutput;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "  type_idx: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {v6}, Lcom/android/dx/util/Hex;->u4(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 340
    invoke-virtual {v5}, Lcom/android/dx/rop/cst/CstType;->toHuman()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 339
    invoke-interface {v8, v9}, Lcom/android/dx/util/AnnotatedOutput;->annotate(Ljava/lang/String;)V

    .line 343
    :cond_1
    iget-object v8, v0, Lcom/android/dx/dex/file/ValueEncoder;->out:Lcom/android/dx/util/AnnotatedOutput;

    invoke-virtual/range {p1 .. p1}, Lcom/android/dx/rop/annotation/Annotation;->getType()Lcom/android/dx/rop/cst/CstType;

    move-result-object v9

    invoke-virtual {v4, v9}, Lcom/android/dx/dex/file/TypeIdsSection;->indexOf(Lcom/android/dx/rop/cst/CstType;)I

    move-result v9

    invoke-interface {v8, v9}, Lcom/android/dx/util/AnnotatedOutput;->writeUleb128(I)I

    .line 345
    invoke-virtual/range {p1 .. p1}, Lcom/android/dx/rop/annotation/Annotation;->getNameValuePairs()Ljava/util/Collection;

    move-result-object v8

    .line 346
    .local v8, "pairs":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/dx/rop/annotation/NameValuePair;>;"
    invoke-interface {v8}, Ljava/util/Collection;->size()I

    move-result v9

    .line 348
    .local v9, "size":I
    if-eqz v2, :cond_2

    .line 349
    iget-object v10, v0, Lcom/android/dx/dex/file/ValueEncoder;->out:Lcom/android/dx/util/AnnotatedOutput;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "  size: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-static {v9}, Lcom/android/dx/util/Hex;->u4(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v10, v11}, Lcom/android/dx/util/AnnotatedOutput;->annotate(Ljava/lang/String;)V

    .line 352
    :cond_2
    iget-object v10, v0, Lcom/android/dx/dex/file/ValueEncoder;->out:Lcom/android/dx/util/AnnotatedOutput;

    invoke-interface {v10, v9}, Lcom/android/dx/util/AnnotatedOutput;->writeUleb128(I)I

    .line 354
    const/4 v10, 0x0

    .line 355
    .local v10, "at":I
    invoke-interface {v8}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_1
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_5

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/dx/rop/annotation/NameValuePair;

    .line 356
    .local v12, "pair":Lcom/android/dx/rop/annotation/NameValuePair;
    invoke-virtual {v12}, Lcom/android/dx/rop/annotation/NameValuePair;->getName()Lcom/android/dx/rop/cst/CstString;

    move-result-object v13

    .line 357
    .local v13, "name":Lcom/android/dx/rop/cst/CstString;
    invoke-virtual {v3, v13}, Lcom/android/dx/dex/file/StringIdsSection;->indexOf(Lcom/android/dx/rop/cst/CstString;)I

    move-result v14

    .line 358
    .local v14, "nameIdx":I
    invoke-virtual {v12}, Lcom/android/dx/rop/annotation/NameValuePair;->getValue()Lcom/android/dx/rop/cst/Constant;

    move-result-object v15

    .line 360
    .local v15, "value":Lcom/android/dx/rop/cst/Constant;
    if-eqz v2, :cond_3

    .line 361
    iget-object v1, v0, Lcom/android/dx/dex/file/ValueEncoder;->out:Lcom/android/dx/util/AnnotatedOutput;

    move-object/from16 v16, v3

    .end local v3    # "stringIds":Lcom/android/dx/dex/file/StringIdsSection;
    .local v16, "stringIds":Lcom/android/dx/dex/file/StringIdsSection;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v17, v4

    .end local v4    # "typeIds":Lcom/android/dx/dex/file/TypeIdsSection;
    .local v17, "typeIds":Lcom/android/dx/dex/file/TypeIdsSection;
    const-string v4, "  elements["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v1, v4, v3}, Lcom/android/dx/util/AnnotatedOutput;->annotate(ILjava/lang/String;)V

    .line 362
    add-int/lit8 v10, v10, 0x1

    .line 363
    iget-object v1, v0, Lcom/android/dx/dex/file/ValueEncoder;->out:Lcom/android/dx/util/AnnotatedOutput;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "    name_idx: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v14}, Lcom/android/dx/util/Hex;->u4(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 364
    invoke-virtual {v13}, Lcom/android/dx/rop/cst/CstString;->toHuman()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 363
    invoke-interface {v1, v3}, Lcom/android/dx/util/AnnotatedOutput;->annotate(Ljava/lang/String;)V

    goto :goto_2

    .line 360
    .end local v16    # "stringIds":Lcom/android/dx/dex/file/StringIdsSection;
    .end local v17    # "typeIds":Lcom/android/dx/dex/file/TypeIdsSection;
    .restart local v3    # "stringIds":Lcom/android/dx/dex/file/StringIdsSection;
    .restart local v4    # "typeIds":Lcom/android/dx/dex/file/TypeIdsSection;
    :cond_3
    move-object/from16 v16, v3

    move-object/from16 v17, v4

    .line 367
    .end local v3    # "stringIds":Lcom/android/dx/dex/file/StringIdsSection;
    .end local v4    # "typeIds":Lcom/android/dx/dex/file/TypeIdsSection;
    .restart local v16    # "stringIds":Lcom/android/dx/dex/file/StringIdsSection;
    .restart local v17    # "typeIds":Lcom/android/dx/dex/file/TypeIdsSection;
    :goto_2
    iget-object v1, v0, Lcom/android/dx/dex/file/ValueEncoder;->out:Lcom/android/dx/util/AnnotatedOutput;

    invoke-interface {v1, v14}, Lcom/android/dx/util/AnnotatedOutput;->writeUleb128(I)I

    .line 369
    if-eqz v2, :cond_4

    .line 370
    iget-object v1, v0, Lcom/android/dx/dex/file/ValueEncoder;->out:Lcom/android/dx/util/AnnotatedOutput;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "    value: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v15}, Lcom/android/dx/dex/file/ValueEncoder;->constantToHuman(Lcom/android/dx/rop/cst/Constant;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Lcom/android/dx/util/AnnotatedOutput;->annotate(Ljava/lang/String;)V

    .line 373
    :cond_4
    invoke-virtual {v0, v15}, Lcom/android/dx/dex/file/ValueEncoder;->writeConstant(Lcom/android/dx/rop/cst/Constant;)V

    .line 374
    .end local v12    # "pair":Lcom/android/dx/rop/annotation/NameValuePair;
    .end local v13    # "name":Lcom/android/dx/rop/cst/CstString;
    .end local v14    # "nameIdx":I
    .end local v15    # "value":Lcom/android/dx/rop/cst/Constant;
    move-object/from16 v3, v16

    move-object/from16 v4, v17

    goto/16 :goto_1

    .line 376
    .end local v16    # "stringIds":Lcom/android/dx/dex/file/StringIdsSection;
    .end local v17    # "typeIds":Lcom/android/dx/dex/file/TypeIdsSection;
    .restart local v3    # "stringIds":Lcom/android/dx/dex/file/StringIdsSection;
    .restart local v4    # "typeIds":Lcom/android/dx/dex/file/TypeIdsSection;
    :cond_5
    move-object/from16 v16, v3

    move-object/from16 v17, v4

    .end local v3    # "stringIds":Lcom/android/dx/dex/file/StringIdsSection;
    .end local v4    # "typeIds":Lcom/android/dx/dex/file/TypeIdsSection;
    .restart local v16    # "stringIds":Lcom/android/dx/dex/file/StringIdsSection;
    .restart local v17    # "typeIds":Lcom/android/dx/dex/file/TypeIdsSection;
    if-eqz v2, :cond_6

    .line 377
    iget-object v1, v0, Lcom/android/dx/dex/file/ValueEncoder;->out:Lcom/android/dx/util/AnnotatedOutput;

    invoke-interface {v1}, Lcom/android/dx/util/AnnotatedOutput;->endAnnotation()V

    .line 379
    :cond_6
    return-void
.end method

.method public writeArray(Lcom/android/dx/rop/cst/CstArray;Z)V
    .locals 8
    .param p1, "array"    # Lcom/android/dx/rop/cst/CstArray;
    .param p2, "topLevel"    # Z

    .line 293
    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/android/dx/dex/file/ValueEncoder;->out:Lcom/android/dx/util/AnnotatedOutput;

    invoke-interface {v0}, Lcom/android/dx/util/AnnotatedOutput;->annotates()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 294
    .local v0, "annotates":Z
    :goto_0
    invoke-virtual {p1}, Lcom/android/dx/rop/cst/CstArray;->getList()Lcom/android/dx/rop/cst/CstArray$List;

    move-result-object v1

    .line 295
    .local v1, "list":Lcom/android/dx/rop/cst/CstArray$List;
    invoke-virtual {v1}, Lcom/android/dx/rop/cst/CstArray$List;->size()I

    move-result v2

    .line 297
    .local v2, "size":I
    if-eqz v0, :cond_1

    .line 298
    iget-object v3, p0, Lcom/android/dx/dex/file/ValueEncoder;->out:Lcom/android/dx/util/AnnotatedOutput;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  size: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v2}, Lcom/android/dx/util/Hex;->u4(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/android/dx/util/AnnotatedOutput;->annotate(Ljava/lang/String;)V

    .line 301
    :cond_1
    iget-object v3, p0, Lcom/android/dx/dex/file/ValueEncoder;->out:Lcom/android/dx/util/AnnotatedOutput;

    invoke-interface {v3, v2}, Lcom/android/dx/util/AnnotatedOutput;->writeUleb128(I)I

    .line 303
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v3, v2, :cond_3

    .line 304
    invoke-virtual {v1, v3}, Lcom/android/dx/rop/cst/CstArray$List;->get(I)Lcom/android/dx/rop/cst/Constant;

    move-result-object v4

    .line 305
    .local v4, "cst":Lcom/android/dx/rop/cst/Constant;
    if-eqz v0, :cond_2

    .line 306
    iget-object v5, p0, Lcom/android/dx/dex/file/ValueEncoder;->out:Lcom/android/dx/util/AnnotatedOutput;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "  ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "] "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 307
    invoke-static {v4}, Lcom/android/dx/dex/file/ValueEncoder;->constantToHuman(Lcom/android/dx/rop/cst/Constant;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 306
    invoke-interface {v5, v6}, Lcom/android/dx/util/AnnotatedOutput;->annotate(Ljava/lang/String;)V

    .line 309
    :cond_2
    invoke-virtual {p0, v4}, Lcom/android/dx/dex/file/ValueEncoder;->writeConstant(Lcom/android/dx/rop/cst/Constant;)V

    .line 303
    .end local v4    # "cst":Lcom/android/dx/rop/cst/Constant;
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 312
    .end local v3    # "i":I
    :cond_3
    if-eqz v0, :cond_4

    .line 313
    iget-object v3, p0, Lcom/android/dx/dex/file/ValueEncoder;->out:Lcom/android/dx/util/AnnotatedOutput;

    invoke-interface {v3}, Lcom/android/dx/util/AnnotatedOutput;->endAnnotation()V

    .line 315
    :cond_4
    return-void
.end method

.method public writeConstant(Lcom/android/dx/rop/cst/Constant;)V
    .locals 6
    .param p1, "cst"    # Lcom/android/dx/rop/cst/Constant;

    .line 136
    invoke-static {p1}, Lcom/android/dx/dex/file/ValueEncoder;->constantToValueType(Lcom/android/dx/rop/cst/Constant;)I

    move-result v0

    .line 139
    .local v0, "type":I
    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    .line 221
    :pswitch_0
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Shouldn\'t happen"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 216
    :pswitch_1
    move-object v1, p1

    check-cast v1, Lcom/android/dx/rop/cst/CstBoolean;

    invoke-virtual {v1}, Lcom/android/dx/rop/cst/CstBoolean;->getIntBits()I

    move-result v1

    .line 217
    .local v1, "value":I
    iget-object v2, p0, Lcom/android/dx/dex/file/ValueEncoder;->out:Lcom/android/dx/util/AnnotatedOutput;

    shl-int/lit8 v3, v1, 0x5

    or-int/2addr v3, v0

    invoke-interface {v2, v3}, Lcom/android/dx/util/AnnotatedOutput;->writeByte(I)V

    .line 218
    goto/16 :goto_0

    .line 212
    .end local v1    # "value":I
    :pswitch_2
    iget-object v1, p0, Lcom/android/dx/dex/file/ValueEncoder;->out:Lcom/android/dx/util/AnnotatedOutput;

    invoke-interface {v1, v0}, Lcom/android/dx/util/AnnotatedOutput;->writeByte(I)V

    .line 213
    goto/16 :goto_0

    .line 206
    :pswitch_3
    iget-object v2, p0, Lcom/android/dx/dex/file/ValueEncoder;->out:Lcom/android/dx/util/AnnotatedOutput;

    invoke-interface {v2, v0}, Lcom/android/dx/util/AnnotatedOutput;->writeByte(I)V

    .line 207
    move-object v2, p1

    check-cast v2, Lcom/android/dx/rop/cst/CstAnnotation;

    invoke-virtual {v2}, Lcom/android/dx/rop/cst/CstAnnotation;->getAnnotation()Lcom/android/dx/rop/annotation/Annotation;

    move-result-object v2

    invoke-virtual {p0, v2, v1}, Lcom/android/dx/dex/file/ValueEncoder;->writeAnnotation(Lcom/android/dx/rop/annotation/Annotation;Z)V

    .line 209
    goto/16 :goto_0

    .line 201
    :pswitch_4
    iget-object v2, p0, Lcom/android/dx/dex/file/ValueEncoder;->out:Lcom/android/dx/util/AnnotatedOutput;

    invoke-interface {v2, v0}, Lcom/android/dx/util/AnnotatedOutput;->writeByte(I)V

    .line 202
    move-object v2, p1

    check-cast v2, Lcom/android/dx/rop/cst/CstArray;

    invoke-virtual {p0, v2, v1}, Lcom/android/dx/dex/file/ValueEncoder;->writeArray(Lcom/android/dx/rop/cst/CstArray;Z)V

    .line 203
    goto/16 :goto_0

    .line 195
    :pswitch_5
    move-object v1, p1

    check-cast v1, Lcom/android/dx/rop/cst/CstEnumRef;

    invoke-virtual {v1}, Lcom/android/dx/rop/cst/CstEnumRef;->getFieldRef()Lcom/android/dx/rop/cst/CstFieldRef;

    move-result-object v1

    .line 196
    .local v1, "fieldRef":Lcom/android/dx/rop/cst/CstFieldRef;
    iget-object v2, p0, Lcom/android/dx/dex/file/ValueEncoder;->file:Lcom/android/dx/dex/file/DexFile;

    invoke-virtual {v2}, Lcom/android/dx/dex/file/DexFile;->getFieldIds()Lcom/android/dx/dex/file/FieldIdsSection;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/dx/dex/file/FieldIdsSection;->indexOf(Lcom/android/dx/rop/cst/CstFieldRef;)I

    move-result v2

    .line 197
    .local v2, "index":I
    iget-object v3, p0, Lcom/android/dx/dex/file/ValueEncoder;->out:Lcom/android/dx/util/AnnotatedOutput;

    int-to-long v4, v2

    invoke-static {v3, v0, v4, v5}, Lcom/android/dex/EncodedValueCodec;->writeUnsignedIntegralValue(Lcom/android/dex/util/ByteOutput;IJ)V

    .line 198
    goto/16 :goto_0

    .line 190
    .end local v1    # "fieldRef":Lcom/android/dx/rop/cst/CstFieldRef;
    .end local v2    # "index":I
    :pswitch_6
    iget-object v1, p0, Lcom/android/dx/dex/file/ValueEncoder;->file:Lcom/android/dx/dex/file/DexFile;

    invoke-virtual {v1}, Lcom/android/dx/dex/file/DexFile;->getMethodIds()Lcom/android/dx/dex/file/MethodIdsSection;

    move-result-object v1

    move-object v2, p1

    check-cast v2, Lcom/android/dx/rop/cst/CstMethodRef;

    invoke-virtual {v1, v2}, Lcom/android/dx/dex/file/MethodIdsSection;->indexOf(Lcom/android/dx/rop/cst/CstBaseMethodRef;)I

    move-result v1

    .line 191
    .local v1, "index":I
    iget-object v2, p0, Lcom/android/dx/dex/file/ValueEncoder;->out:Lcom/android/dx/util/AnnotatedOutput;

    int-to-long v3, v1

    invoke-static {v2, v0, v3, v4}, Lcom/android/dex/EncodedValueCodec;->writeUnsignedIntegralValue(Lcom/android/dex/util/ByteOutput;IJ)V

    .line 192
    goto/16 :goto_0

    .line 185
    .end local v1    # "index":I
    :pswitch_7
    iget-object v1, p0, Lcom/android/dx/dex/file/ValueEncoder;->file:Lcom/android/dx/dex/file/DexFile;

    invoke-virtual {v1}, Lcom/android/dx/dex/file/DexFile;->getFieldIds()Lcom/android/dx/dex/file/FieldIdsSection;

    move-result-object v1

    move-object v2, p1

    check-cast v2, Lcom/android/dx/rop/cst/CstFieldRef;

    invoke-virtual {v1, v2}, Lcom/android/dx/dex/file/FieldIdsSection;->indexOf(Lcom/android/dx/rop/cst/CstFieldRef;)I

    move-result v1

    .line 186
    .restart local v1    # "index":I
    iget-object v2, p0, Lcom/android/dx/dex/file/ValueEncoder;->out:Lcom/android/dx/util/AnnotatedOutput;

    int-to-long v3, v1

    invoke-static {v2, v0, v3, v4}, Lcom/android/dex/EncodedValueCodec;->writeUnsignedIntegralValue(Lcom/android/dex/util/ByteOutput;IJ)V

    .line 187
    goto/16 :goto_0

    .line 180
    .end local v1    # "index":I
    :pswitch_8
    iget-object v1, p0, Lcom/android/dx/dex/file/ValueEncoder;->file:Lcom/android/dx/dex/file/DexFile;

    invoke-virtual {v1}, Lcom/android/dx/dex/file/DexFile;->getTypeIds()Lcom/android/dx/dex/file/TypeIdsSection;

    move-result-object v1

    move-object v2, p1

    check-cast v2, Lcom/android/dx/rop/cst/CstType;

    invoke-virtual {v1, v2}, Lcom/android/dx/dex/file/TypeIdsSection;->indexOf(Lcom/android/dx/rop/cst/CstType;)I

    move-result v1

    .line 181
    .restart local v1    # "index":I
    iget-object v2, p0, Lcom/android/dx/dex/file/ValueEncoder;->out:Lcom/android/dx/util/AnnotatedOutput;

    int-to-long v3, v1

    invoke-static {v2, v0, v3, v4}, Lcom/android/dex/EncodedValueCodec;->writeUnsignedIntegralValue(Lcom/android/dex/util/ByteOutput;IJ)V

    .line 182
    goto/16 :goto_0

    .line 175
    .end local v1    # "index":I
    :pswitch_9
    iget-object v1, p0, Lcom/android/dx/dex/file/ValueEncoder;->file:Lcom/android/dx/dex/file/DexFile;

    invoke-virtual {v1}, Lcom/android/dx/dex/file/DexFile;->getStringIds()Lcom/android/dx/dex/file/StringIdsSection;

    move-result-object v1

    move-object v2, p1

    check-cast v2, Lcom/android/dx/rop/cst/CstString;

    invoke-virtual {v1, v2}, Lcom/android/dx/dex/file/StringIdsSection;->indexOf(Lcom/android/dx/rop/cst/CstString;)I

    move-result v1

    .line 176
    .restart local v1    # "index":I
    iget-object v2, p0, Lcom/android/dx/dex/file/ValueEncoder;->out:Lcom/android/dx/util/AnnotatedOutput;

    int-to-long v3, v1

    invoke-static {v2, v0, v3, v4}, Lcom/android/dex/EncodedValueCodec;->writeUnsignedIntegralValue(Lcom/android/dex/util/ByteOutput;IJ)V

    .line 177
    goto :goto_0

    .line 170
    .end local v1    # "index":I
    :pswitch_a
    iget-object v1, p0, Lcom/android/dx/dex/file/ValueEncoder;->file:Lcom/android/dx/dex/file/DexFile;

    invoke-virtual {v1}, Lcom/android/dx/dex/file/DexFile;->getMethodHandles()Lcom/android/dx/dex/file/MethodHandlesSection;

    move-result-object v1

    move-object v2, p1

    check-cast v2, Lcom/android/dx/rop/cst/CstMethodHandle;

    invoke-virtual {v1, v2}, Lcom/android/dx/dex/file/MethodHandlesSection;->indexOf(Lcom/android/dx/rop/cst/CstMethodHandle;)I

    move-result v1

    .line 171
    .restart local v1    # "index":I
    iget-object v2, p0, Lcom/android/dx/dex/file/ValueEncoder;->out:Lcom/android/dx/util/AnnotatedOutput;

    int-to-long v3, v1

    invoke-static {v2, v0, v3, v4}, Lcom/android/dex/EncodedValueCodec;->writeUnsignedIntegralValue(Lcom/android/dex/util/ByteOutput;IJ)V

    .line 172
    goto :goto_0

    .line 165
    .end local v1    # "index":I
    :pswitch_b
    iget-object v1, p0, Lcom/android/dx/dex/file/ValueEncoder;->file:Lcom/android/dx/dex/file/DexFile;

    invoke-virtual {v1}, Lcom/android/dx/dex/file/DexFile;->getProtoIds()Lcom/android/dx/dex/file/ProtoIdsSection;

    move-result-object v1

    move-object v2, p1

    check-cast v2, Lcom/android/dx/rop/cst/CstProtoRef;

    invoke-virtual {v2}, Lcom/android/dx/rop/cst/CstProtoRef;->getPrototype()Lcom/android/dx/rop/type/Prototype;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/dx/dex/file/ProtoIdsSection;->indexOf(Lcom/android/dx/rop/type/Prototype;)I

    move-result v1

    .line 166
    .restart local v1    # "index":I
    iget-object v2, p0, Lcom/android/dx/dex/file/ValueEncoder;->out:Lcom/android/dx/util/AnnotatedOutput;

    int-to-long v3, v1

    invoke-static {v2, v0, v3, v4}, Lcom/android/dex/EncodedValueCodec;->writeUnsignedIntegralValue(Lcom/android/dex/util/ByteOutput;IJ)V

    .line 167
    goto :goto_0

    .line 160
    .end local v1    # "index":I
    :pswitch_c
    move-object v1, p1

    check-cast v1, Lcom/android/dx/rop/cst/CstDouble;

    invoke-virtual {v1}, Lcom/android/dx/rop/cst/CstDouble;->getLongBits()J

    move-result-wide v1

    .line 161
    .local v1, "value":J
    iget-object v3, p0, Lcom/android/dx/dex/file/ValueEncoder;->out:Lcom/android/dx/util/AnnotatedOutput;

    invoke-static {v3, v0, v1, v2}, Lcom/android/dex/EncodedValueCodec;->writeRightZeroExtendedValue(Lcom/android/dex/util/ByteOutput;IJ)V

    .line 162
    goto :goto_0

    .line 155
    .end local v1    # "value":J
    :pswitch_d
    move-object v1, p1

    check-cast v1, Lcom/android/dx/rop/cst/CstFloat;

    invoke-virtual {v1}, Lcom/android/dx/rop/cst/CstFloat;->getLongBits()J

    move-result-wide v1

    const/16 v3, 0x20

    shl-long/2addr v1, v3

    .line 156
    .restart local v1    # "value":J
    iget-object v3, p0, Lcom/android/dx/dex/file/ValueEncoder;->out:Lcom/android/dx/util/AnnotatedOutput;

    invoke-static {v3, v0, v1, v2}, Lcom/android/dex/EncodedValueCodec;->writeRightZeroExtendedValue(Lcom/android/dex/util/ByteOutput;IJ)V

    .line 157
    goto :goto_0

    .line 149
    .end local v1    # "value":J
    :pswitch_e
    move-object v1, p1

    check-cast v1, Lcom/android/dx/rop/cst/CstLiteralBits;

    invoke-virtual {v1}, Lcom/android/dx/rop/cst/CstLiteralBits;->getLongBits()J

    move-result-wide v1

    .line 150
    .restart local v1    # "value":J
    iget-object v3, p0, Lcom/android/dx/dex/file/ValueEncoder;->out:Lcom/android/dx/util/AnnotatedOutput;

    invoke-static {v3, v0, v1, v2}, Lcom/android/dex/EncodedValueCodec;->writeUnsignedIntegralValue(Lcom/android/dex/util/ByteOutput;IJ)V

    .line 151
    goto :goto_0

    .line 144
    .end local v1    # "value":J
    :pswitch_f
    move-object v1, p1

    check-cast v1, Lcom/android/dx/rop/cst/CstLiteralBits;

    invoke-virtual {v1}, Lcom/android/dx/rop/cst/CstLiteralBits;->getLongBits()J

    move-result-wide v1

    .line 145
    .restart local v1    # "value":J
    iget-object v3, p0, Lcom/android/dx/dex/file/ValueEncoder;->out:Lcom/android/dx/util/AnnotatedOutput;

    invoke-static {v3, v0, v1, v2}, Lcom/android/dex/EncodedValueCodec;->writeSignedIntegralValue(Lcom/android/dex/util/ByteOutput;IJ)V

    .line 146
    nop

    .line 224
    .end local v1    # "value":J
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_f
        :pswitch_0
        :pswitch_f
        :pswitch_e
        :pswitch_f
        :pswitch_0
        :pswitch_f
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_d
        :pswitch_c
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
