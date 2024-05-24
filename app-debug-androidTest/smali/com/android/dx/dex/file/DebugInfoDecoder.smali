.class public Lcom/android/dx/dex/file/DebugInfoDecoder;
.super Ljava/lang/Object;
.source "DebugInfoDecoder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/dx/dex/file/DebugInfoDecoder$LocalEntry;,
        Lcom/android/dx/dex/file/DebugInfoDecoder$PositionEntry;
    }
.end annotation


# instance fields
.field private address:I

.field private final codesize:I

.field private final desc:Lcom/android/dx/rop/type/Prototype;

.field private final encoded:[B

.field private final file:Lcom/android/dx/dex/file/DexFile;

.field private final isStatic:Z

.field private final lastEntryForReg:[Lcom/android/dx/dex/file/DebugInfoDecoder$LocalEntry;

.field private line:I

.field private final locals:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/dx/dex/file/DebugInfoDecoder$LocalEntry;",
            ">;"
        }
    .end annotation
.end field

.field private final positions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/dx/dex/file/DebugInfoDecoder$PositionEntry;",
            ">;"
        }
    .end annotation
.end field

.field private final regSize:I

.field private final thisStringIdx:I


# direct methods
.method constructor <init>([BIIZLcom/android/dx/rop/cst/CstMethodRef;Lcom/android/dx/dex/file/DexFile;)V
    .locals 4
    .param p1, "encoded"    # [B
    .param p2, "codesize"    # I
    .param p3, "regSize"    # I
    .param p4, "isStatic"    # Z
    .param p5, "ref"    # Lcom/android/dx/rop/cst/CstMethodRef;
    .param p6, "file"    # Lcom/android/dx/dex/file/DexFile;

    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/dx/dex/file/DebugInfoDecoder;->line:I

    .line 89
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/dx/dex/file/DebugInfoDecoder;->address:I

    .line 107
    if-eqz p1, :cond_0

    .line 111
    iput-object p1, p0, Lcom/android/dx/dex/file/DebugInfoDecoder;->encoded:[B

    .line 112
    iput-boolean p4, p0, Lcom/android/dx/dex/file/DebugInfoDecoder;->isStatic:Z

    .line 113
    invoke-virtual {p5}, Lcom/android/dx/rop/cst/CstMethodRef;->getPrototype()Lcom/android/dx/rop/type/Prototype;

    move-result-object v0

    iput-object v0, p0, Lcom/android/dx/dex/file/DebugInfoDecoder;->desc:Lcom/android/dx/rop/type/Prototype;

    .line 114
    iput-object p6, p0, Lcom/android/dx/dex/file/DebugInfoDecoder;->file:Lcom/android/dx/dex/file/DexFile;

    .line 115
    iput p3, p0, Lcom/android/dx/dex/file/DebugInfoDecoder;->regSize:I

    .line 117
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/dx/dex/file/DebugInfoDecoder;->positions:Ljava/util/ArrayList;

    .line 118
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/dx/dex/file/DebugInfoDecoder;->locals:Ljava/util/ArrayList;

    .line 119
    iput p2, p0, Lcom/android/dx/dex/file/DebugInfoDecoder;->codesize:I

    .line 120
    new-array v0, p3, [Lcom/android/dx/dex/file/DebugInfoDecoder$LocalEntry;

    iput-object v0, p0, Lcom/android/dx/dex/file/DebugInfoDecoder;->lastEntryForReg:[Lcom/android/dx/dex/file/DebugInfoDecoder$LocalEntry;

    .line 122
    const/4 v0, -0x1

    .line 125
    .local v0, "idx":I
    :try_start_0
    invoke-virtual {p6}, Lcom/android/dx/dex/file/DexFile;->getStringIds()Lcom/android/dx/dex/file/StringIdsSection;

    move-result-object v1

    new-instance v2, Lcom/android/dx/rop/cst/CstString;

    const-string v3, "this"

    invoke-direct {v2, v3}, Lcom/android/dx/rop/cst/CstString;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/android/dx/dex/file/StringIdsSection;->indexOf(Lcom/android/dx/rop/cst/CstString;)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 132
    goto :goto_0

    .line 126
    :catch_0
    move-exception v1

    .line 134
    :goto_0
    iput v0, p0, Lcom/android/dx/dex/file/DebugInfoDecoder;->thisStringIdx:I

    .line 135
    return-void

    .line 108
    .end local v0    # "idx":I
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "encoded == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private decode0()V
    .locals 23
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 251
    move-object/from16 v1, p0

    new-instance v0, Lcom/android/dex/util/ByteArrayByteInput;

    iget-object v2, v1, Lcom/android/dx/dex/file/DebugInfoDecoder;->encoded:[B

    invoke-direct {v0, v2}, Lcom/android/dex/util/ByteArrayByteInput;-><init>([B)V

    move-object v2, v0

    .line 253
    .local v2, "bs":Lcom/android/dex/util/ByteInput;
    invoke-static {v2}, Lcom/android/dex/Leb128;->readUnsignedLeb128(Lcom/android/dex/util/ByteInput;)I

    move-result v0

    iput v0, v1, Lcom/android/dx/dex/file/DebugInfoDecoder;->line:I

    .line 254
    invoke-static {v2}, Lcom/android/dex/Leb128;->readUnsignedLeb128(Lcom/android/dex/util/ByteInput;)I

    move-result v3

    .line 255
    .local v3, "szParams":I
    iget-object v0, v1, Lcom/android/dx/dex/file/DebugInfoDecoder;->desc:Lcom/android/dx/rop/type/Prototype;

    invoke-virtual {v0}, Lcom/android/dx/rop/type/Prototype;->getParameterTypes()Lcom/android/dx/rop/type/StdTypeList;

    move-result-object v4

    .line 256
    .local v4, "params":Lcom/android/dx/rop/type/StdTypeList;
    invoke-direct/range {p0 .. p0}, Lcom/android/dx/dex/file/DebugInfoDecoder;->getParamBase()I

    move-result v0

    .line 258
    .local v0, "curReg":I
    invoke-virtual {v4}, Lcom/android/dx/rop/type/StdTypeList;->size()I

    move-result v5

    if-ne v3, v5, :cond_6

    .line 263
    iget-boolean v5, v1, Lcom/android/dx/dex/file/DebugInfoDecoder;->isStatic:Z

    if-nez v5, :cond_0

    .line 265
    new-instance v12, Lcom/android/dx/dex/file/DebugInfoDecoder$LocalEntry;

    const/4 v6, 0x0

    const/4 v7, 0x1

    iget v9, v1, Lcom/android/dx/dex/file/DebugInfoDecoder;->thisStringIdx:I

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v5, v12

    move v8, v0

    invoke-direct/range {v5 .. v11}, Lcom/android/dx/dex/file/DebugInfoDecoder$LocalEntry;-><init>(IZIIII)V

    .line 267
    .local v5, "thisEntry":Lcom/android/dx/dex/file/DebugInfoDecoder$LocalEntry;
    iget-object v6, v1, Lcom/android/dx/dex/file/DebugInfoDecoder;->locals:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 268
    iget-object v6, v1, Lcom/android/dx/dex/file/DebugInfoDecoder;->lastEntryForReg:[Lcom/android/dx/dex/file/DebugInfoDecoder$LocalEntry;

    aput-object v5, v6, v0

    .line 269
    add-int/lit8 v0, v0, 0x1

    .line 272
    .end local v5    # "thisEntry":Lcom/android/dx/dex/file/DebugInfoDecoder$LocalEntry;
    :cond_0
    const/4 v5, 0x0

    move/from16 v22, v5

    move v5, v0

    move/from16 v0, v22

    .local v0, "i":I
    .local v5, "curReg":I
    :goto_0
    if-ge v0, v3, :cond_2

    .line 273
    invoke-virtual {v4, v0}, Lcom/android/dx/rop/type/StdTypeList;->getType(I)Lcom/android/dx/rop/type/Type;

    move-result-object v13

    .line 276
    .local v13, "paramType":Lcom/android/dx/rop/type/Type;
    invoke-direct {v1, v2}, Lcom/android/dx/dex/file/DebugInfoDecoder;->readStringIndex(Lcom/android/dex/util/ByteInput;)I

    move-result v14

    .line 278
    .local v14, "nameIdx":I
    const/4 v6, -0x1

    if-ne v14, v6, :cond_1

    .line 283
    new-instance v15, Lcom/android/dx/dex/file/DebugInfoDecoder$LocalEntry;

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v10, -0x1

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v6, v15

    move v9, v5

    invoke-direct/range {v6 .. v12}, Lcom/android/dx/dex/file/DebugInfoDecoder$LocalEntry;-><init>(IZIIII)V

    .local v6, "le":Lcom/android/dx/dex/file/DebugInfoDecoder$LocalEntry;
    goto :goto_1

    .line 286
    .end local v6    # "le":Lcom/android/dx/dex/file/DebugInfoDecoder$LocalEntry;
    :cond_1
    new-instance v15, Lcom/android/dx/dex/file/DebugInfoDecoder$LocalEntry;

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v6, v15

    move v9, v5

    move v10, v14

    invoke-direct/range {v6 .. v12}, Lcom/android/dx/dex/file/DebugInfoDecoder$LocalEntry;-><init>(IZIIII)V

    .line 289
    .restart local v6    # "le":Lcom/android/dx/dex/file/DebugInfoDecoder$LocalEntry;
    :goto_1
    iget-object v7, v1, Lcom/android/dx/dex/file/DebugInfoDecoder;->locals:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 290
    iget-object v7, v1, Lcom/android/dx/dex/file/DebugInfoDecoder;->lastEntryForReg:[Lcom/android/dx/dex/file/DebugInfoDecoder$LocalEntry;

    aput-object v6, v7, v5

    .line 291
    invoke-virtual {v13}, Lcom/android/dx/rop/type/Type;->getCategory()I

    move-result v7

    add-int/2addr v5, v7

    .line 272
    .end local v6    # "le":Lcom/android/dx/dex/file/DebugInfoDecoder$LocalEntry;
    .end local v13    # "paramType":Lcom/android/dx/rop/type/Type;
    .end local v14    # "nameIdx":I
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 295
    .end local v0    # "i":I
    :cond_2
    :goto_2
    invoke-interface {v2}, Lcom/android/dex/util/ByteInput;->readByte()B

    move-result v0

    and-int/lit16 v6, v0, 0xff

    .line 297
    .local v6, "opcode":I
    packed-switch v6, :pswitch_data_0

    .line 400
    const/16 v0, 0xa

    if-lt v6, v0, :cond_5

    .line 406
    add-int/lit8 v0, v6, -0xa

    .line 408
    .local v0, "adjopcode":I
    iget v7, v1, Lcom/android/dx/dex/file/DebugInfoDecoder;->address:I

    div-int/lit8 v8, v0, 0xf

    add-int/2addr v7, v8

    iput v7, v1, Lcom/android/dx/dex/file/DebugInfoDecoder;->address:I

    .line 409
    iget v7, v1, Lcom/android/dx/dex/file/DebugInfoDecoder;->line:I

    rem-int/lit8 v8, v0, 0xf

    add-int/lit8 v8, v8, -0x4

    add-int/2addr v7, v8

    iput v7, v1, Lcom/android/dx/dex/file/DebugInfoDecoder;->line:I

    .line 411
    iget-object v7, v1, Lcom/android/dx/dex/file/DebugInfoDecoder;->positions:Ljava/util/ArrayList;

    new-instance v8, Lcom/android/dx/dex/file/DebugInfoDecoder$PositionEntry;

    iget v9, v1, Lcom/android/dx/dex/file/DebugInfoDecoder;->address:I

    iget v10, v1, Lcom/android/dx/dex/file/DebugInfoDecoder;->line:I

    invoke-direct {v8, v9, v10}, Lcom/android/dx/dex/file/DebugInfoDecoder$PositionEntry;-><init>(II)V

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 397
    .end local v0    # "adjopcode":I
    :pswitch_0
    goto/16 :goto_3

    .line 393
    :pswitch_1
    goto/16 :goto_3

    .line 389
    :pswitch_2
    goto/16 :goto_3

    .line 324
    :pswitch_3
    invoke-static {v2}, Lcom/android/dex/Leb128;->readUnsignedLeb128(Lcom/android/dex/util/ByteInput;)I

    move-result v14

    .line 329
    .local v14, "reg":I
    :try_start_0
    iget-object v0, v1, Lcom/android/dx/dex/file/DebugInfoDecoder;->lastEntryForReg:[Lcom/android/dx/dex/file/DebugInfoDecoder$LocalEntry;

    aget-object v0, v0, v14

    .line 331
    .local v0, "prevle":Lcom/android/dx/dex/file/DebugInfoDecoder$LocalEntry;
    iget-boolean v7, v0, Lcom/android/dx/dex/file/DebugInfoDecoder$LocalEntry;->isStart:Z

    if-nez v7, :cond_3

    .line 337
    new-instance v15, Lcom/android/dx/dex/file/DebugInfoDecoder$LocalEntry;

    iget v8, v1, Lcom/android/dx/dex/file/DebugInfoDecoder;->address:I

    const/4 v9, 0x1

    iget v11, v0, Lcom/android/dx/dex/file/DebugInfoDecoder$LocalEntry;->nameIndex:I

    iget v12, v0, Lcom/android/dx/dex/file/DebugInfoDecoder$LocalEntry;->typeIndex:I

    const/4 v13, 0x0

    move-object v7, v15

    move v10, v14

    invoke-direct/range {v7 .. v13}, Lcom/android/dx/dex/file/DebugInfoDecoder$LocalEntry;-><init>(IZIIII)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v7, v15

    .line 342
    .local v7, "le":Lcom/android/dx/dex/file/DebugInfoDecoder$LocalEntry;
    nop

    .line 344
    iget-object v8, v1, Lcom/android/dx/dex/file/DebugInfoDecoder;->locals:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 345
    iget-object v8, v1, Lcom/android/dx/dex/file/DebugInfoDecoder;->lastEntryForReg:[Lcom/android/dx/dex/file/DebugInfoDecoder$LocalEntry;

    aput-object v7, v8, v14

    .line 347
    .end local v0    # "prevle":Lcom/android/dx/dex/file/DebugInfoDecoder$LocalEntry;
    .end local v7    # "le":Lcom/android/dx/dex/file/DebugInfoDecoder$LocalEntry;
    .end local v14    # "reg":I
    goto/16 :goto_3

    .line 332
    .restart local v0    # "prevle":Lcom/android/dx/dex/file/DebugInfoDecoder$LocalEntry;
    .restart local v14    # "reg":I
    :cond_3
    :try_start_1
    new-instance v7, Ljava/lang/RuntimeException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "nonsensical RESTART_LOCAL on live register v"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .end local v2    # "bs":Lcom/android/dex/util/ByteInput;
    .end local v3    # "szParams":I
    .end local v4    # "params":Lcom/android/dx/rop/type/StdTypeList;
    .end local v5    # "curReg":I
    .end local v6    # "opcode":I
    .end local v14    # "reg":I
    throw v7
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0

    .line 339
    .end local v0    # "prevle":Lcom/android/dx/dex/file/DebugInfoDecoder$LocalEntry;
    .restart local v2    # "bs":Lcom/android/dex/util/ByteInput;
    .restart local v3    # "szParams":I
    .restart local v4    # "params":Lcom/android/dx/rop/type/StdTypeList;
    .restart local v5    # "curReg":I
    .restart local v6    # "opcode":I
    .restart local v14    # "reg":I
    :catch_0
    move-exception v0

    .line 340
    .local v0, "ex":Ljava/lang/NullPointerException;
    new-instance v7, Ljava/lang/RuntimeException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Encountered RESTART_LOCAL on new v"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 350
    .end local v0    # "ex":Ljava/lang/NullPointerException;
    .end local v14    # "reg":I
    :pswitch_4
    invoke-static {v2}, Lcom/android/dex/Leb128;->readUnsignedLeb128(Lcom/android/dex/util/ByteInput;)I

    move-result v7

    .line 355
    .local v7, "reg":I
    :try_start_2
    iget-object v0, v1, Lcom/android/dx/dex/file/DebugInfoDecoder;->lastEntryForReg:[Lcom/android/dx/dex/file/DebugInfoDecoder$LocalEntry;

    aget-object v0, v0, v7

    .line 357
    .local v0, "prevle":Lcom/android/dx/dex/file/DebugInfoDecoder$LocalEntry;
    iget-boolean v8, v0, Lcom/android/dx/dex/file/DebugInfoDecoder$LocalEntry;->isStart:Z

    if-eqz v8, :cond_4

    .line 362
    new-instance v8, Lcom/android/dx/dex/file/DebugInfoDecoder$LocalEntry;

    iget v9, v1, Lcom/android/dx/dex/file/DebugInfoDecoder;->address:I

    const/16 v17, 0x0

    iget v10, v0, Lcom/android/dx/dex/file/DebugInfoDecoder$LocalEntry;->nameIndex:I

    iget v11, v0, Lcom/android/dx/dex/file/DebugInfoDecoder$LocalEntry;->typeIndex:I

    iget v12, v0, Lcom/android/dx/dex/file/DebugInfoDecoder$LocalEntry;->signatureIndex:I

    move-object v15, v8

    move/from16 v16, v9

    move/from16 v18, v7

    move/from16 v19, v10

    move/from16 v20, v11

    move/from16 v21, v12

    invoke-direct/range {v15 .. v21}, Lcom/android/dx/dex/file/DebugInfoDecoder$LocalEntry;-><init>(IZIIII)V
    :try_end_2
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_1

    .line 368
    .local v8, "le":Lcom/android/dx/dex/file/DebugInfoDecoder$LocalEntry;
    nop

    .line 370
    iget-object v9, v1, Lcom/android/dx/dex/file/DebugInfoDecoder;->locals:Ljava/util/ArrayList;

    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 371
    iget-object v9, v1, Lcom/android/dx/dex/file/DebugInfoDecoder;->lastEntryForReg:[Lcom/android/dx/dex/file/DebugInfoDecoder$LocalEntry;

    aput-object v8, v9, v7

    .line 373
    .end local v0    # "prevle":Lcom/android/dx/dex/file/DebugInfoDecoder$LocalEntry;
    .end local v7    # "reg":I
    .end local v8    # "le":Lcom/android/dx/dex/file/DebugInfoDecoder$LocalEntry;
    goto/16 :goto_3

    .line 358
    .restart local v0    # "prevle":Lcom/android/dx/dex/file/DebugInfoDecoder$LocalEntry;
    .restart local v7    # "reg":I
    :cond_4
    :try_start_3
    new-instance v8, Ljava/lang/RuntimeException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "nonsensical END_LOCAL on dead register v"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .end local v2    # "bs":Lcom/android/dex/util/ByteInput;
    .end local v3    # "szParams":I
    .end local v4    # "params":Lcom/android/dx/rop/type/StdTypeList;
    .end local v5    # "curReg":I
    .end local v6    # "opcode":I
    .end local v7    # "reg":I
    throw v8
    :try_end_3
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_1

    .line 365
    .end local v0    # "prevle":Lcom/android/dx/dex/file/DebugInfoDecoder$LocalEntry;
    .restart local v2    # "bs":Lcom/android/dex/util/ByteInput;
    .restart local v3    # "szParams":I
    .restart local v4    # "params":Lcom/android/dx/rop/type/StdTypeList;
    .restart local v5    # "curReg":I
    .restart local v6    # "opcode":I
    .restart local v7    # "reg":I
    :catch_1
    move-exception v0

    .line 366
    .local v0, "ex":Ljava/lang/NullPointerException;
    new-instance v8, Ljava/lang/RuntimeException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Encountered END_LOCAL on new v"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 311
    .end local v0    # "ex":Ljava/lang/NullPointerException;
    .end local v7    # "reg":I
    :pswitch_5
    invoke-static {v2}, Lcom/android/dex/Leb128;->readUnsignedLeb128(Lcom/android/dex/util/ByteInput;)I

    move-result v0

    .line 312
    .local v0, "reg":I
    invoke-direct {v1, v2}, Lcom/android/dx/dex/file/DebugInfoDecoder;->readStringIndex(Lcom/android/dex/util/ByteInput;)I

    move-result v7

    .line 313
    .local v7, "nameIdx":I
    invoke-direct {v1, v2}, Lcom/android/dx/dex/file/DebugInfoDecoder;->readStringIndex(Lcom/android/dex/util/ByteInput;)I

    move-result v8

    .line 314
    .local v8, "typeIdx":I
    invoke-direct {v1, v2}, Lcom/android/dx/dex/file/DebugInfoDecoder;->readStringIndex(Lcom/android/dex/util/ByteInput;)I

    move-result v9

    .line 315
    .local v9, "sigIdx":I
    new-instance v17, Lcom/android/dx/dex/file/DebugInfoDecoder$LocalEntry;

    iget v11, v1, Lcom/android/dx/dex/file/DebugInfoDecoder;->address:I

    const/4 v12, 0x1

    move-object/from16 v10, v17

    move v13, v0

    move v14, v7

    move v15, v8

    move/from16 v16, v9

    invoke-direct/range {v10 .. v16}, Lcom/android/dx/dex/file/DebugInfoDecoder$LocalEntry;-><init>(IZIIII)V

    .line 318
    .local v10, "le":Lcom/android/dx/dex/file/DebugInfoDecoder$LocalEntry;
    iget-object v11, v1, Lcom/android/dx/dex/file/DebugInfoDecoder;->locals:Ljava/util/ArrayList;

    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 319
    iget-object v11, v1, Lcom/android/dx/dex/file/DebugInfoDecoder;->lastEntryForReg:[Lcom/android/dx/dex/file/DebugInfoDecoder$LocalEntry;

    aput-object v10, v11, v0

    .line 321
    .end local v0    # "reg":I
    .end local v7    # "nameIdx":I
    .end local v8    # "typeIdx":I
    .end local v9    # "sigIdx":I
    .end local v10    # "le":Lcom/android/dx/dex/file/DebugInfoDecoder$LocalEntry;
    goto :goto_3

    .line 299
    :pswitch_6
    invoke-static {v2}, Lcom/android/dex/Leb128;->readUnsignedLeb128(Lcom/android/dex/util/ByteInput;)I

    move-result v0

    .line 300
    .restart local v0    # "reg":I
    invoke-direct {v1, v2}, Lcom/android/dx/dex/file/DebugInfoDecoder;->readStringIndex(Lcom/android/dex/util/ByteInput;)I

    move-result v7

    .line 301
    .restart local v7    # "nameIdx":I
    invoke-direct {v1, v2}, Lcom/android/dx/dex/file/DebugInfoDecoder;->readStringIndex(Lcom/android/dex/util/ByteInput;)I

    move-result v8

    .line 302
    .restart local v8    # "typeIdx":I
    new-instance v9, Lcom/android/dx/dex/file/DebugInfoDecoder$LocalEntry;

    iget v13, v1, Lcom/android/dx/dex/file/DebugInfoDecoder;->address:I

    const/4 v14, 0x1

    const/16 v18, 0x0

    move-object v12, v9

    move v15, v0

    move/from16 v16, v7

    move/from16 v17, v8

    invoke-direct/range {v12 .. v18}, Lcom/android/dx/dex/file/DebugInfoDecoder$LocalEntry;-><init>(IZIIII)V

    .line 305
    .local v9, "le":Lcom/android/dx/dex/file/DebugInfoDecoder$LocalEntry;
    iget-object v10, v1, Lcom/android/dx/dex/file/DebugInfoDecoder;->locals:Ljava/util/ArrayList;

    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 306
    iget-object v10, v1, Lcom/android/dx/dex/file/DebugInfoDecoder;->lastEntryForReg:[Lcom/android/dx/dex/file/DebugInfoDecoder$LocalEntry;

    aput-object v9, v10, v0

    .line 308
    .end local v0    # "reg":I
    .end local v7    # "nameIdx":I
    .end local v8    # "typeIdx":I
    .end local v9    # "le":Lcom/android/dx/dex/file/DebugInfoDecoder$LocalEntry;
    goto :goto_3

    .line 384
    :pswitch_7
    iget v0, v1, Lcom/android/dx/dex/file/DebugInfoDecoder;->line:I

    invoke-static {v2}, Lcom/android/dex/Leb128;->readSignedLeb128(Lcom/android/dex/util/ByteInput;)I

    move-result v7

    add-int/2addr v0, v7

    iput v0, v1, Lcom/android/dx/dex/file/DebugInfoDecoder;->line:I

    .line 385
    goto :goto_3

    .line 380
    :pswitch_8
    iget v0, v1, Lcom/android/dx/dex/file/DebugInfoDecoder;->address:I

    invoke-static {v2}, Lcom/android/dex/Leb128;->readUnsignedLeb128(Lcom/android/dex/util/ByteInput;)I

    move-result v7

    add-int/2addr v0, v7

    iput v0, v1, Lcom/android/dx/dex/file/DebugInfoDecoder;->address:I

    .line 381
    goto :goto_3

    .line 377
    :pswitch_9
    return-void

    .line 415
    .end local v6    # "opcode":I
    :goto_3
    goto/16 :goto_2

    .line 401
    .restart local v6    # "opcode":I
    :cond_5
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Invalid extended opcode encountered "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v0, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 259
    .end local v5    # "curReg":I
    .end local v6    # "opcode":I
    .local v0, "curReg":I
    :cond_6
    new-instance v5, Ljava/lang/RuntimeException;

    const-string v6, "Mismatch between parameters_size and prototype"

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getParamBase()I
    .locals 2

    .line 246
    iget v0, p0, Lcom/android/dx/dex/file/DebugInfoDecoder;->regSize:I

    iget-object v1, p0, Lcom/android/dx/dex/file/DebugInfoDecoder;->desc:Lcom/android/dx/rop/type/Prototype;

    .line 247
    invoke-virtual {v1}, Lcom/android/dx/rop/type/Prototype;->getParameterTypes()Lcom/android/dx/rop/type/StdTypeList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/dx/rop/type/StdTypeList;->getWordCount()I

    move-result v1

    sub-int/2addr v0, v1

    iget-boolean v1, p0, Lcom/android/dx/dex/file/DebugInfoDecoder;->isStatic:Z

    xor-int/lit8 v1, v1, 0x1

    sub-int/2addr v0, v1

    .line 246
    return v0
.end method

.method private readStringIndex(Lcom/android/dex/util/ByteInput;)I
    .locals 2
    .param p1, "bs"    # Lcom/android/dex/util/ByteInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 233
    invoke-static {p1}, Lcom/android/dex/Leb128;->readUnsignedLeb128(Lcom/android/dex/util/ByteInput;)I

    move-result v0

    .line 235
    .local v0, "offsetIndex":I
    add-int/lit8 v1, v0, -0x1

    return v1
.end method

.method public static validateEncode([BLcom/android/dx/dex/file/DexFile;Lcom/android/dx/rop/cst/CstMethodRef;Lcom/android/dx/dex/code/DalvCode;Z)V
    .locals 14
    .param p0, "info"    # [B
    .param p1, "file"    # Lcom/android/dx/dex/file/DexFile;
    .param p2, "ref"    # Lcom/android/dx/rop/cst/CstMethodRef;
    .param p3, "code"    # Lcom/android/dx/dex/code/DalvCode;
    .param p4, "isStatic"    # Z

    .line 431
    invoke-virtual/range {p3 .. p3}, Lcom/android/dx/dex/code/DalvCode;->getPositions()Lcom/android/dx/dex/code/PositionList;

    move-result-object v9

    .line 432
    .local v9, "pl":Lcom/android/dx/dex/code/PositionList;
    invoke-virtual/range {p3 .. p3}, Lcom/android/dx/dex/code/DalvCode;->getLocals()Lcom/android/dx/dex/code/LocalList;

    move-result-object v10

    .line 433
    .local v10, "ll":Lcom/android/dx/dex/code/LocalList;
    invoke-virtual/range {p3 .. p3}, Lcom/android/dx/dex/code/DalvCode;->getInsns()Lcom/android/dx/dex/code/DalvInsnList;

    move-result-object v11

    .line 434
    .local v11, "insns":Lcom/android/dx/dex/code/DalvInsnList;
    invoke-virtual {v11}, Lcom/android/dx/dex/code/DalvInsnList;->codeSize()I

    move-result v12

    .line 435
    .local v12, "codeSize":I
    invoke-virtual {v11}, Lcom/android/dx/dex/code/DalvInsnList;->getRegistersSize()I

    move-result v13

    .line 438
    .local v13, "countRegisters":I
    move-object v1, p0

    move v2, v12

    move v3, v13

    move/from16 v4, p4

    move-object/from16 v5, p2

    move-object v6, p1

    move-object v7, v9

    move-object v8, v10

    :try_start_0
    invoke-static/range {v1 .. v8}, Lcom/android/dx/dex/file/DebugInfoDecoder;->validateEncode0([BIIZLcom/android/dx/rop/cst/CstMethodRef;Lcom/android/dx/dex/file/DexFile;Lcom/android/dx/dex/code/PositionList;Lcom/android/dx/dex/code/LocalList;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 447
    nop

    .line 448
    return-void

    .line 440
    :catch_0
    move-exception v0

    move-object v1, v0

    move-object v0, v1

    .line 441
    .local v0, "ex":Ljava/lang/RuntimeException;
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v2, "instructions:"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 442
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const/4 v2, 0x1

    const-string v3, "  "

    invoke-virtual {v11, v1, v3, v2}, Lcom/android/dx/dex/code/DalvInsnList;->debugPrint(Ljava/io/OutputStream;Ljava/lang/String;Z)V

    .line 443
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v2, "local list:"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 444
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v10, v1, v3}, Lcom/android/dx/dex/code/LocalList;->debugPrint(Ljava/io/PrintStream;Ljava/lang/String;)V

    .line 445
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "while processing "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 446
    invoke-virtual/range {p2 .. p2}, Lcom/android/dx/rop/cst/CstMethodRef;->toHuman()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 445
    invoke-static {v0, v1}, Lcom/android/dex/util/ExceptionWithContext;->withContext(Ljava/lang/Throwable;Ljava/lang/String;)Lcom/android/dex/util/ExceptionWithContext;

    move-result-object v1

    throw v1
.end method

.method private static validateEncode0([BIIZLcom/android/dx/rop/cst/CstMethodRef;Lcom/android/dx/dex/file/DexFile;Lcom/android/dx/dex/code/PositionList;Lcom/android/dx/dex/code/LocalList;)V
    .locals 19
    .param p0, "info"    # [B
    .param p1, "codeSize"    # I
    .param p2, "countRegisters"    # I
    .param p3, "isStatic"    # Z
    .param p4, "ref"    # Lcom/android/dx/rop/cst/CstMethodRef;
    .param p5, "file"    # Lcom/android/dx/dex/file/DexFile;
    .param p6, "pl"    # Lcom/android/dx/dex/code/PositionList;
    .param p7, "ll"    # Lcom/android/dx/dex/code/LocalList;

    .line 453
    new-instance v7, Lcom/android/dx/dex/file/DebugInfoDecoder;

    move-object v0, v7

    move-object/from16 v1, p0

    move/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/dx/dex/file/DebugInfoDecoder;-><init>([BIIZLcom/android/dx/rop/cst/CstMethodRef;Lcom/android/dx/dex/file/DexFile;)V

    .line 457
    .local v0, "decoder":Lcom/android/dx/dex/file/DebugInfoDecoder;
    invoke-virtual {v0}, Lcom/android/dx/dex/file/DebugInfoDecoder;->decode()V

    .line 464
    invoke-virtual {v0}, Lcom/android/dx/dex/file/DebugInfoDecoder;->getPositionList()Ljava/util/List;

    move-result-object v1

    .line 466
    .local v1, "decodedEntries":Ljava/util/List;, "Ljava/util/List<Lcom/android/dx/dex/file/DebugInfoDecoder$PositionEntry;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual/range {p6 .. p6}, Lcom/android/dx/dex/code/PositionList;->size()I

    move-result v3

    if-ne v2, v3, :cond_13

    .line 472
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/dx/dex/file/DebugInfoDecoder$PositionEntry;

    .line 473
    .local v3, "entry":Lcom/android/dx/dex/file/DebugInfoDecoder$PositionEntry;
    const/4 v4, 0x0

    .line 474
    .local v4, "found":Z
    invoke-virtual/range {p6 .. p6}, Lcom/android/dx/dex/code/PositionList;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    .local v5, "i":I
    :goto_1
    if-ltz v5, :cond_1

    .line 475
    move-object/from16 v6, p6

    invoke-virtual {v6, v5}, Lcom/android/dx/dex/code/PositionList;->get(I)Lcom/android/dx/dex/code/PositionList$Entry;

    move-result-object v7

    .line 477
    .local v7, "ple":Lcom/android/dx/dex/code/PositionList$Entry;
    iget v8, v3, Lcom/android/dx/dex/file/DebugInfoDecoder$PositionEntry;->line:I

    invoke-virtual {v7}, Lcom/android/dx/dex/code/PositionList$Entry;->getPosition()Lcom/android/dx/rop/code/SourcePosition;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/dx/rop/code/SourcePosition;->getLine()I

    move-result v9

    if-ne v8, v9, :cond_0

    iget v8, v3, Lcom/android/dx/dex/file/DebugInfoDecoder$PositionEntry;->address:I

    .line 478
    invoke-virtual {v7}, Lcom/android/dx/dex/code/PositionList$Entry;->getAddress()I

    move-result v9

    if-ne v8, v9, :cond_0

    .line 479
    const/4 v4, 0x1

    .line 480
    goto :goto_2

    .line 474
    .end local v7    # "ple":Lcom/android/dx/dex/code/PositionList$Entry;
    :cond_0
    add-int/lit8 v5, v5, -0x1

    goto :goto_1

    :cond_1
    move-object/from16 v6, p6

    .line 484
    .end local v5    # "i":I
    :goto_2
    if-eqz v4, :cond_2

    .line 488
    .end local v3    # "entry":Lcom/android/dx/dex/file/DebugInfoDecoder$PositionEntry;
    .end local v4    # "found":Z
    goto :goto_0

    .line 485
    .restart local v3    # "entry":Lcom/android/dx/dex/file/DebugInfoDecoder$PositionEntry;
    .restart local v4    # "found":Z
    :cond_2
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Could not match position entry: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v7, v3, Lcom/android/dx/dex/file/DebugInfoDecoder$PositionEntry;->address:I

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, ", "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v7, v3, Lcom/android/dx/dex/file/DebugInfoDecoder$PositionEntry;->line:I

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 495
    .end local v3    # "entry":Lcom/android/dx/dex/file/DebugInfoDecoder$PositionEntry;
    .end local v4    # "found":Z
    :cond_3
    move-object/from16 v6, p6

    invoke-virtual {v0}, Lcom/android/dx/dex/file/DebugInfoDecoder;->getLocals()Ljava/util/List;

    move-result-object v2

    .line 496
    .local v2, "decodedLocals":Ljava/util/List;, "Ljava/util/List<Lcom/android/dx/dex/file/DebugInfoDecoder$LocalEntry;>;"
    iget v3, v0, Lcom/android/dx/dex/file/DebugInfoDecoder;->thisStringIdx:I

    .line 497
    .local v3, "thisStringIdx":I
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    .line 498
    .local v4, "decodedSz":I
    invoke-direct {v0}, Lcom/android/dx/dex/file/DebugInfoDecoder;->getParamBase()I

    move-result v5

    .line 505
    .local v5, "paramBase":I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_3
    if-ge v7, v4, :cond_8

    .line 506
    invoke-interface {v2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/dx/dex/file/DebugInfoDecoder$LocalEntry;

    .line 507
    .local v8, "entry":Lcom/android/dx/dex/file/DebugInfoDecoder$LocalEntry;
    iget v9, v8, Lcom/android/dx/dex/file/DebugInfoDecoder$LocalEntry;->nameIndex:I

    .line 509
    .local v9, "idx":I
    if-ltz v9, :cond_4

    if-ne v9, v3, :cond_7

    .line 510
    :cond_4
    add-int/lit8 v10, v7, 0x1

    .local v10, "j":I
    :goto_4
    if-ge v10, v4, :cond_7

    .line 511
    invoke-interface {v2, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/dx/dex/file/DebugInfoDecoder$LocalEntry;

    .line 512
    .local v11, "e2":Lcom/android/dx/dex/file/DebugInfoDecoder$LocalEntry;
    iget v12, v11, Lcom/android/dx/dex/file/DebugInfoDecoder$LocalEntry;->address:I

    if-eqz v12, :cond_5

    .line 513
    goto :goto_5

    .line 515
    :cond_5
    iget v12, v8, Lcom/android/dx/dex/file/DebugInfoDecoder$LocalEntry;->reg:I

    iget v13, v11, Lcom/android/dx/dex/file/DebugInfoDecoder$LocalEntry;->reg:I

    if-ne v12, v13, :cond_6

    iget-boolean v12, v11, Lcom/android/dx/dex/file/DebugInfoDecoder$LocalEntry;->isStart:Z

    if-eqz v12, :cond_6

    .line 516
    invoke-interface {v2, v7, v11}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 517
    invoke-interface {v2, v10}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 518
    add-int/lit8 v4, v4, -0x1

    .line 519
    goto :goto_5

    .line 510
    .end local v11    # "e2":Lcom/android/dx/dex/file/DebugInfoDecoder$LocalEntry;
    :cond_6
    add-int/lit8 v10, v10, 0x1

    goto :goto_4

    .line 505
    .end local v8    # "entry":Lcom/android/dx/dex/file/DebugInfoDecoder$LocalEntry;
    .end local v9    # "idx":I
    .end local v10    # "j":I
    :cond_7
    :goto_5
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 525
    .end local v7    # "i":I
    :cond_8
    invoke-virtual/range {p7 .. p7}, Lcom/android/dx/dex/code/LocalList;->size()I

    move-result v7

    .line 526
    .local v7, "origSz":I
    const/4 v8, 0x0

    .line 527
    .local v8, "decodeAt":I
    const/4 v9, 0x0

    .line 529
    .local v9, "problem":Z
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_6
    if-ge v10, v7, :cond_10

    .line 530
    move-object/from16 v11, p7

    invoke-virtual {v11, v10}, Lcom/android/dx/dex/code/LocalList;->get(I)Lcom/android/dx/dex/code/LocalList$Entry;

    move-result-object v12

    .line 532
    .local v12, "origEntry":Lcom/android/dx/dex/code/LocalList$Entry;
    invoke-virtual {v12}, Lcom/android/dx/dex/code/LocalList$Entry;->getDisposition()Lcom/android/dx/dex/code/LocalList$Disposition;

    move-result-object v13

    sget-object v14, Lcom/android/dx/dex/code/LocalList$Disposition;->END_REPLACED:Lcom/android/dx/dex/code/LocalList$Disposition;

    if-ne v13, v14, :cond_9

    .line 538
    move-object/from16 v16, v0

    move/from16 v17, v3

    move/from16 v18, v4

    goto/16 :goto_9

    .line 544
    :cond_9
    :goto_7
    invoke-interface {v2, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/dx/dex/file/DebugInfoDecoder$LocalEntry;

    .line 545
    .local v13, "decodedEntry":Lcom/android/dx/dex/file/DebugInfoDecoder$LocalEntry;
    iget v14, v13, Lcom/android/dx/dex/file/DebugInfoDecoder$LocalEntry;->nameIndex:I

    if-ltz v14, :cond_a

    .line 546
    goto :goto_8

    .line 553
    :cond_a
    add-int/lit8 v8, v8, 0x1

    .line 554
    if-lt v8, v4, :cond_f

    .line 556
    :goto_8
    iget v14, v13, Lcom/android/dx/dex/file/DebugInfoDecoder$LocalEntry;->address:I

    .line 558
    .local v14, "decodedAddress":I
    iget v15, v13, Lcom/android/dx/dex/file/DebugInfoDecoder$LocalEntry;->reg:I

    move-object/from16 v16, v0

    .end local v0    # "decoder":Lcom/android/dx/dex/file/DebugInfoDecoder;
    .local v16, "decoder":Lcom/android/dx/dex/file/DebugInfoDecoder;
    invoke-virtual {v12}, Lcom/android/dx/dex/code/LocalList$Entry;->getRegister()I

    move-result v0

    move/from16 v17, v3

    .end local v3    # "thisStringIdx":I
    .local v17, "thisStringIdx":I
    const-string v3, " / decoded "

    if-eq v15, v0, :cond_b

    .line 559
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v18, v4

    .end local v4    # "decodedSz":I
    .local v18, "decodedSz":I
    const-string v4, "local register mismatch at orig "

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 561
    const/4 v9, 0x1

    .line 562
    goto/16 :goto_a

    .line 565
    .end local v18    # "decodedSz":I
    .restart local v4    # "decodedSz":I
    :cond_b
    move/from16 v18, v4

    .end local v4    # "decodedSz":I
    .restart local v18    # "decodedSz":I
    iget-boolean v0, v13, Lcom/android/dx/dex/file/DebugInfoDecoder$LocalEntry;->isStart:Z

    invoke-virtual {v12}, Lcom/android/dx/dex/code/LocalList$Entry;->isStart()Z

    move-result v4

    if-eq v0, v4, :cond_c

    .line 566
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "local start/end mismatch at orig "

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 568
    const/4 v9, 0x1

    .line 569
    goto :goto_a

    .line 577
    :cond_c
    invoke-virtual {v12}, Lcom/android/dx/dex/code/LocalList$Entry;->getAddress()I

    move-result v0

    if-eq v14, v0, :cond_e

    if-nez v14, :cond_d

    iget v0, v13, Lcom/android/dx/dex/file/DebugInfoDecoder$LocalEntry;->reg:I

    if-ge v0, v5, :cond_e

    .line 580
    :cond_d
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "local address mismatch at orig "

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 582
    const/4 v9, 0x1

    .line 583
    goto :goto_a

    .line 586
    :cond_e
    add-int/lit8 v8, v8, 0x1

    .line 529
    .end local v12    # "origEntry":Lcom/android/dx/dex/code/LocalList$Entry;
    .end local v13    # "decodedEntry":Lcom/android/dx/dex/file/DebugInfoDecoder$LocalEntry;
    .end local v14    # "decodedAddress":I
    :goto_9
    add-int/lit8 v10, v10, 0x1

    move-object/from16 v0, v16

    move/from16 v3, v17

    move/from16 v4, v18

    goto/16 :goto_6

    .line 554
    .end local v16    # "decoder":Lcom/android/dx/dex/file/DebugInfoDecoder;
    .end local v17    # "thisStringIdx":I
    .end local v18    # "decodedSz":I
    .restart local v0    # "decoder":Lcom/android/dx/dex/file/DebugInfoDecoder;
    .restart local v3    # "thisStringIdx":I
    .restart local v4    # "decodedSz":I
    .restart local v12    # "origEntry":Lcom/android/dx/dex/code/LocalList$Entry;
    .restart local v13    # "decodedEntry":Lcom/android/dx/dex/file/DebugInfoDecoder$LocalEntry;
    :cond_f
    move-object/from16 v16, v0

    move/from16 v17, v3

    move/from16 v18, v4

    .end local v0    # "decoder":Lcom/android/dx/dex/file/DebugInfoDecoder;
    .end local v3    # "thisStringIdx":I
    .end local v4    # "decodedSz":I
    .restart local v16    # "decoder":Lcom/android/dx/dex/file/DebugInfoDecoder;
    .restart local v17    # "thisStringIdx":I
    .restart local v18    # "decodedSz":I
    goto/16 :goto_7

    .line 529
    .end local v12    # "origEntry":Lcom/android/dx/dex/code/LocalList$Entry;
    .end local v13    # "decodedEntry":Lcom/android/dx/dex/file/DebugInfoDecoder$LocalEntry;
    .end local v16    # "decoder":Lcom/android/dx/dex/file/DebugInfoDecoder;
    .end local v17    # "thisStringIdx":I
    .end local v18    # "decodedSz":I
    .restart local v0    # "decoder":Lcom/android/dx/dex/file/DebugInfoDecoder;
    .restart local v3    # "thisStringIdx":I
    .restart local v4    # "decodedSz":I
    :cond_10
    move-object/from16 v11, p7

    move-object/from16 v16, v0

    move/from16 v17, v3

    move/from16 v18, v4

    .line 589
    .end local v0    # "decoder":Lcom/android/dx/dex/file/DebugInfoDecoder;
    .end local v3    # "thisStringIdx":I
    .end local v4    # "decodedSz":I
    .end local v10    # "i":I
    .restart local v16    # "decoder":Lcom/android/dx/dex/file/DebugInfoDecoder;
    .restart local v17    # "thisStringIdx":I
    .restart local v18    # "decodedSz":I
    :goto_a
    if-eqz v9, :cond_12

    .line 590
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v3, "decoded locals:"

    invoke-virtual {v0, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 591
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_11

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/dx/dex/file/DebugInfoDecoder$LocalEntry;

    .line 592
    .local v3, "e":Lcom/android/dx/dex/file/DebugInfoDecoder$LocalEntry;
    sget-object v4, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "  "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v10}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 593
    .end local v3    # "e":Lcom/android/dx/dex/file/DebugInfoDecoder$LocalEntry;
    goto :goto_b

    .line 594
    :cond_11
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v3, "local table problem"

    invoke-direct {v0, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 596
    :cond_12
    return-void

    .line 467
    .end local v2    # "decodedLocals":Ljava/util/List;, "Ljava/util/List<Lcom/android/dx/dex/file/DebugInfoDecoder$LocalEntry;>;"
    .end local v5    # "paramBase":I
    .end local v7    # "origSz":I
    .end local v8    # "decodeAt":I
    .end local v9    # "problem":Z
    .end local v16    # "decoder":Lcom/android/dx/dex/file/DebugInfoDecoder;
    .end local v17    # "thisStringIdx":I
    .end local v18    # "decodedSz":I
    .restart local v0    # "decoder":Lcom/android/dx/dex/file/DebugInfoDecoder;
    :cond_13
    move-object/from16 v6, p6

    move-object/from16 v16, v0

    .end local v0    # "decoder":Lcom/android/dx/dex/file/DebugInfoDecoder;
    .restart local v16    # "decoder":Lcom/android/dx/dex/file/DebugInfoDecoder;
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Decoded positions table not same size was "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 469
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " expected "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {p6 .. p6}, Lcom/android/dx/dex/code/PositionList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public decode()V
    .locals 2

    .line 218
    :try_start_0
    invoke-direct {p0}, Lcom/android/dx/dex/file/DebugInfoDecoder;->decode0()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 222
    nop

    .line 223
    return-void

    .line 219
    :catch_0
    move-exception v0

    .line 220
    .local v0, "ex":Ljava/lang/Exception;
    const-string v1, "...while decoding debug info"

    invoke-static {v0, v1}, Lcom/android/dex/util/ExceptionWithContext;->withContext(Ljava/lang/Throwable;Ljava/lang/String;)Lcom/android/dex/util/ExceptionWithContext;

    move-result-object v1

    throw v1
.end method

.method public getLocals()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/dx/dex/file/DebugInfoDecoder$LocalEntry;",
            ">;"
        }
    .end annotation

    .line 210
    iget-object v0, p0, Lcom/android/dx/dex/file/DebugInfoDecoder;->locals:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getPositionList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/dx/dex/file/DebugInfoDecoder$PositionEntry;",
            ">;"
        }
    .end annotation

    .line 200
    iget-object v0, p0, Lcom/android/dx/dex/file/DebugInfoDecoder;->positions:Ljava/util/ArrayList;

    return-object v0
.end method
