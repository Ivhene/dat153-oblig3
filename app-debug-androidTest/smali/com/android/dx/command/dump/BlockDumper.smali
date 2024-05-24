.class public Lcom/android/dx/command/dump/BlockDumper;
.super Lcom/android/dx/command/dump/BaseDumper;
.source "BlockDumper.java"


# instance fields
.field protected classFile:Lcom/android/dx/cf/direct/DirectClassFile;

.field private first:Z

.field private final optimize:Z

.field private final rop:Z

.field protected suppressDump:Z


# direct methods
.method constructor <init>([BLjava/io/PrintStream;Ljava/lang/String;ZLcom/android/dx/command/dump/Args;)V
    .locals 1
    .param p1, "bytes"    # [B
    .param p2, "out"    # Ljava/io/PrintStream;
    .param p3, "filePath"    # Ljava/lang/String;
    .param p4, "rop"    # Z
    .param p5, "args"    # Lcom/android/dx/command/dump/Args;

    .line 93
    invoke-direct {p0, p1, p2, p3, p5}, Lcom/android/dx/command/dump/BaseDumper;-><init>([BLjava/io/PrintStream;Ljava/lang/String;Lcom/android/dx/command/dump/Args;)V

    .line 95
    iput-boolean p4, p0, Lcom/android/dx/command/dump/BlockDumper;->rop:Z

    .line 96
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/dx/command/dump/BlockDumper;->classFile:Lcom/android/dx/cf/direct/DirectClassFile;

    .line 97
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/dx/command/dump/BlockDumper;->suppressDump:Z

    .line 98
    iput-boolean v0, p0, Lcom/android/dx/command/dump/BlockDumper;->first:Z

    .line 99
    iget-boolean v0, p5, Lcom/android/dx/command/dump/Args;->optimize:Z

    iput-boolean v0, p0, Lcom/android/dx/command/dump/BlockDumper;->optimize:Z

    .line 100
    return-void
.end method

.method public static dump([BLjava/io/PrintStream;Ljava/lang/String;ZLcom/android/dx/command/dump/Args;)V
    .locals 7
    .param p0, "bytes"    # [B
    .param p1, "out"    # Ljava/io/PrintStream;
    .param p2, "filePath"    # Ljava/lang/String;
    .param p3, "rop"    # Z
    .param p4, "args"    # Lcom/android/dx/command/dump/Args;

    .line 82
    new-instance v6, Lcom/android/dx/command/dump/BlockDumper;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/dx/command/dump/BlockDumper;-><init>([BLjava/io/PrintStream;Ljava/lang/String;ZLcom/android/dx/command/dump/Args;)V

    .line 84
    .local v0, "bd":Lcom/android/dx/command/dump/BlockDumper;
    invoke-virtual {v0}, Lcom/android/dx/command/dump/BlockDumper;->dump()V

    .line 85
    return-void
.end method

.method private regularDump(Lcom/android/dx/cf/code/ConcreteMethod;)V
    .locals 20
    .param p1, "meth"    # Lcom/android/dx/cf/code/ConcreteMethod;

    .line 207
    move-object/from16 v0, p0

    invoke-virtual/range {p1 .. p1}, Lcom/android/dx/cf/code/ConcreteMethod;->getCode()Lcom/android/dx/cf/code/BytecodeArray;

    move-result-object v1

    .line 208
    .local v1, "code":Lcom/android/dx/cf/code/BytecodeArray;
    invoke-virtual {v1}, Lcom/android/dx/cf/code/BytecodeArray;->getBytes()Lcom/android/dx/util/ByteArray;

    move-result-object v2

    .line 209
    .local v2, "bytes":Lcom/android/dx/util/ByteArray;
    invoke-static/range {p1 .. p1}, Lcom/android/dx/cf/code/BasicBlocker;->identifyBlocks(Lcom/android/dx/cf/code/ConcreteMethod;)Lcom/android/dx/cf/code/ByteBlockList;

    move-result-object v3

    .line 210
    .local v3, "list":Lcom/android/dx/cf/code/ByteBlockList;
    invoke-virtual {v3}, Lcom/android/dx/cf/code/ByteBlockList;->size()I

    move-result v4

    .line 211
    .local v4, "sz":I
    new-instance v5, Lcom/android/dx/cf/direct/CodeObserver;

    invoke-direct {v5, v2, v0}, Lcom/android/dx/cf/direct/CodeObserver;-><init>(Lcom/android/dx/util/ByteArray;Lcom/android/dx/cf/iface/ParseObserver;)V

    .line 213
    .local v5, "codeObserver":Lcom/android/dx/cf/direct/CodeObserver;
    const/4 v6, 0x0

    iput-boolean v6, v0, Lcom/android/dx/command/dump/BlockDumper;->suppressDump:Z

    .line 215
    const/4 v7, 0x0

    .line 216
    .local v7, "byteAt":I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    const-string v9, "dead code "

    const-string v10, ".."

    if-ge v8, v4, :cond_6

    .line 217
    invoke-virtual {v3, v8}, Lcom/android/dx/cf/code/ByteBlockList;->get(I)Lcom/android/dx/cf/code/ByteBlock;

    move-result-object v12

    .line 218
    .local v12, "bb":Lcom/android/dx/cf/code/ByteBlock;
    invoke-virtual {v12}, Lcom/android/dx/cf/code/ByteBlock;->getStart()I

    move-result v13

    .line 219
    .local v13, "start":I
    invoke-virtual {v12}, Lcom/android/dx/cf/code/ByteBlock;->getEnd()I

    move-result v14

    .line 221
    .local v14, "end":I
    if-ge v7, v13, :cond_0

    .line 222
    sub-int v15, v13, v7

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 223
    invoke-static {v7}, Lcom/android/dx/util/Hex;->u2(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {v13}, Lcom/android/dx/util/Hex;->u2(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 222
    invoke-virtual {v0, v2, v7, v15, v9}, Lcom/android/dx/command/dump/BlockDumper;->parsed(Lcom/android/dx/util/ByteArray;IILjava/lang/String;)V

    .line 226
    :cond_0
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "block "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 227
    invoke-virtual {v12}, Lcom/android/dx/cf/code/ByteBlock;->getLabel()I

    move-result v11

    invoke-static {v11}, Lcom/android/dx/util/Hex;->u2(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, ": "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 228
    invoke-static {v13}, Lcom/android/dx/util/Hex;->u2(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {v14}, Lcom/android/dx/util/Hex;->u2(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 226
    invoke-virtual {v0, v2, v13, v6, v9}, Lcom/android/dx/command/dump/BlockDumper;->parsed(Lcom/android/dx/util/ByteArray;IILjava/lang/String;)V

    .line 229
    const/4 v9, 0x1

    invoke-virtual {v0, v9}, Lcom/android/dx/command/dump/BlockDumper;->changeIndent(I)V

    .line 232
    move v9, v13

    .local v9, "j":I
    :goto_1
    if-ge v9, v14, :cond_1

    .line 233
    invoke-virtual {v1, v9, v5}, Lcom/android/dx/cf/code/BytecodeArray;->parseInstruction(ILcom/android/dx/cf/code/BytecodeArray$Visitor;)I

    move-result v10

    .line 234
    .local v10, "len":I
    invoke-virtual {v5, v9}, Lcom/android/dx/cf/direct/CodeObserver;->setPreviousOffset(I)V

    .line 232
    add-int/2addr v9, v10

    goto :goto_1

    .line 237
    .end local v9    # "j":I
    .end local v10    # "len":I
    :cond_1
    invoke-virtual {v12}, Lcom/android/dx/cf/code/ByteBlock;->getSuccessors()Lcom/android/dx/util/IntList;

    move-result-object v9

    .line 238
    .local v9, "successors":Lcom/android/dx/util/IntList;
    invoke-virtual {v9}, Lcom/android/dx/util/IntList;->size()I

    move-result v10

    .line 239
    .local v10, "ssz":I
    if-nez v10, :cond_2

    .line 240
    const-string v11, "returns"

    invoke-virtual {v0, v2, v14, v6, v11}, Lcom/android/dx/command/dump/BlockDumper;->parsed(Lcom/android/dx/util/ByteArray;IILjava/lang/String;)V

    move-object/from16 v17, v1

    goto :goto_3

    .line 242
    :cond_2
    const/4 v11, 0x0

    .local v11, "j":I
    :goto_2
    if-ge v11, v10, :cond_3

    .line 243
    invoke-virtual {v9, v11}, Lcom/android/dx/util/IntList;->get(I)I

    move-result v15

    .line 244
    .local v15, "succ":I
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v17, v1

    .end local v1    # "code":Lcom/android/dx/cf/code/BytecodeArray;
    .local v17, "code":Lcom/android/dx/cf/code/BytecodeArray;
    const-string v1, "next "

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v15}, Lcom/android/dx/util/Hex;->u2(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v6, 0x0

    invoke-virtual {v0, v2, v14, v6, v1}, Lcom/android/dx/command/dump/BlockDumper;->parsed(Lcom/android/dx/util/ByteArray;IILjava/lang/String;)V

    .line 242
    .end local v15    # "succ":I
    add-int/lit8 v11, v11, 0x1

    move-object/from16 v1, v17

    const/4 v6, 0x0

    goto :goto_2

    .end local v17    # "code":Lcom/android/dx/cf/code/BytecodeArray;
    .restart local v1    # "code":Lcom/android/dx/cf/code/BytecodeArray;
    :cond_3
    move-object/from16 v17, v1

    .line 248
    .end local v1    # "code":Lcom/android/dx/cf/code/BytecodeArray;
    .end local v11    # "j":I
    .restart local v17    # "code":Lcom/android/dx/cf/code/BytecodeArray;
    :goto_3
    invoke-virtual {v12}, Lcom/android/dx/cf/code/ByteBlock;->getCatches()Lcom/android/dx/cf/code/ByteCatchList;

    move-result-object v1

    .line 249
    .local v1, "catches":Lcom/android/dx/cf/code/ByteCatchList;
    invoke-virtual {v1}, Lcom/android/dx/cf/code/ByteCatchList;->size()I

    move-result v6

    .line 250
    .local v6, "csz":I
    const/4 v11, 0x0

    .restart local v11    # "j":I
    :goto_4
    if-ge v11, v6, :cond_5

    .line 251
    invoke-virtual {v1, v11}, Lcom/android/dx/cf/code/ByteCatchList;->get(I)Lcom/android/dx/cf/code/ByteCatchList$Item;

    move-result-object v15

    .line 252
    .local v15, "one":Lcom/android/dx/cf/code/ByteCatchList$Item;
    move-object/from16 v16, v1

    .end local v1    # "catches":Lcom/android/dx/cf/code/ByteCatchList;
    .local v16, "catches":Lcom/android/dx/cf/code/ByteCatchList;
    invoke-virtual {v15}, Lcom/android/dx/cf/code/ByteCatchList$Item;->getExceptionClass()Lcom/android/dx/rop/cst/CstType;

    move-result-object v1

    .line 253
    .local v1, "exceptionClass":Lcom/android/dx/rop/cst/CstType;
    move-object/from16 v18, v3

    .end local v3    # "list":Lcom/android/dx/cf/code/ByteBlockList;
    .local v18, "list":Lcom/android/dx/cf/code/ByteBlockList;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v19, v4

    .end local v4    # "sz":I
    .local v19, "sz":I
    const-string v4, "catch "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/android/dx/rop/cst/CstType;->OBJECT:Lcom/android/dx/rop/cst/CstType;

    if-ne v1, v4, :cond_4

    const-string v4, "<any>"

    goto :goto_5

    .line 256
    :cond_4
    invoke-virtual {v1}, Lcom/android/dx/rop/cst/CstType;->toHuman()Ljava/lang/String;

    move-result-object v4

    :goto_5
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " -> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 257
    invoke-virtual {v15}, Lcom/android/dx/cf/code/ByteCatchList$Item;->getHandlerPc()I

    move-result v4

    invoke-static {v4}, Lcom/android/dx/util/Hex;->u2(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 253
    const/4 v4, 0x0

    invoke-virtual {v0, v2, v14, v4, v3}, Lcom/android/dx/command/dump/BlockDumper;->parsed(Lcom/android/dx/util/ByteArray;IILjava/lang/String;)V

    .line 250
    .end local v1    # "exceptionClass":Lcom/android/dx/rop/cst/CstType;
    .end local v15    # "one":Lcom/android/dx/cf/code/ByteCatchList$Item;
    add-int/lit8 v11, v11, 0x1

    move-object/from16 v1, v16

    move-object/from16 v3, v18

    move/from16 v4, v19

    goto :goto_4

    .end local v16    # "catches":Lcom/android/dx/cf/code/ByteCatchList;
    .end local v18    # "list":Lcom/android/dx/cf/code/ByteBlockList;
    .end local v19    # "sz":I
    .local v1, "catches":Lcom/android/dx/cf/code/ByteCatchList;
    .restart local v3    # "list":Lcom/android/dx/cf/code/ByteBlockList;
    .restart local v4    # "sz":I
    :cond_5
    move-object/from16 v16, v1

    move-object/from16 v18, v3

    move/from16 v19, v4

    const/4 v4, 0x0

    .line 260
    .end local v1    # "catches":Lcom/android/dx/cf/code/ByteCatchList;
    .end local v3    # "list":Lcom/android/dx/cf/code/ByteBlockList;
    .end local v4    # "sz":I
    .end local v11    # "j":I
    .restart local v16    # "catches":Lcom/android/dx/cf/code/ByteCatchList;
    .restart local v18    # "list":Lcom/android/dx/cf/code/ByteBlockList;
    .restart local v19    # "sz":I
    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/android/dx/command/dump/BlockDumper;->changeIndent(I)V

    .line 261
    move v7, v14

    .line 216
    .end local v6    # "csz":I
    .end local v9    # "successors":Lcom/android/dx/util/IntList;
    .end local v10    # "ssz":I
    .end local v12    # "bb":Lcom/android/dx/cf/code/ByteBlock;
    .end local v13    # "start":I
    .end local v14    # "end":I
    .end local v16    # "catches":Lcom/android/dx/cf/code/ByteCatchList;
    add-int/lit8 v8, v8, 0x1

    move v6, v4

    move-object/from16 v1, v17

    move/from16 v4, v19

    goto/16 :goto_0

    .end local v17    # "code":Lcom/android/dx/cf/code/BytecodeArray;
    .end local v18    # "list":Lcom/android/dx/cf/code/ByteBlockList;
    .end local v19    # "sz":I
    .local v1, "code":Lcom/android/dx/cf/code/BytecodeArray;
    .restart local v3    # "list":Lcom/android/dx/cf/code/ByteBlockList;
    .restart local v4    # "sz":I
    :cond_6
    move-object/from16 v17, v1

    move-object/from16 v18, v3

    move/from16 v19, v4

    .line 264
    .end local v1    # "code":Lcom/android/dx/cf/code/BytecodeArray;
    .end local v3    # "list":Lcom/android/dx/cf/code/ByteBlockList;
    .end local v4    # "sz":I
    .end local v8    # "i":I
    .restart local v17    # "code":Lcom/android/dx/cf/code/BytecodeArray;
    .restart local v18    # "list":Lcom/android/dx/cf/code/ByteBlockList;
    .restart local v19    # "sz":I
    invoke-virtual {v2}, Lcom/android/dx/util/ByteArray;->size()I

    move-result v1

    .line 265
    .local v1, "end":I
    if-ge v7, v1, :cond_7

    .line 266
    sub-int v3, v1, v7

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 267
    invoke-static {v7}, Lcom/android/dx/util/Hex;->u2(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v1}, Lcom/android/dx/util/Hex;->u2(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 266
    invoke-virtual {v0, v2, v7, v3, v4}, Lcom/android/dx/command/dump/BlockDumper;->parsed(Lcom/android/dx/util/ByteArray;IILjava/lang/String;)V

    .line 270
    :cond_7
    const/4 v3, 0x1

    iput-boolean v3, v0, Lcom/android/dx/command/dump/BlockDumper;->suppressDump:Z

    .line 271
    return-void
.end method

.method private ropDump(Lcom/android/dx/cf/code/ConcreteMethod;)V
    .locals 23
    .param p1, "meth"    # Lcom/android/dx/cf/code/ConcreteMethod;

    .line 279
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    sget-object v2, Lcom/android/dx/rop/code/DexTranslationAdvice;->THE_ONE:Lcom/android/dx/rop/code/DexTranslationAdvice;

    .line 280
    .local v2, "advice":Lcom/android/dx/rop/code/TranslationAdvice;
    invoke-virtual/range {p1 .. p1}, Lcom/android/dx/cf/code/ConcreteMethod;->getCode()Lcom/android/dx/cf/code/BytecodeArray;

    move-result-object v3

    .line 281
    .local v3, "code":Lcom/android/dx/cf/code/BytecodeArray;
    invoke-virtual {v3}, Lcom/android/dx/cf/code/BytecodeArray;->getBytes()Lcom/android/dx/util/ByteArray;

    move-result-object v4

    .line 282
    .local v4, "bytes":Lcom/android/dx/util/ByteArray;
    iget-object v5, v0, Lcom/android/dx/command/dump/BlockDumper;->classFile:Lcom/android/dx/cf/direct/DirectClassFile;

    invoke-virtual {v5}, Lcom/android/dx/cf/direct/DirectClassFile;->getMethods()Lcom/android/dx/cf/iface/MethodList;

    move-result-object v5

    iget-object v6, v0, Lcom/android/dx/command/dump/BlockDumper;->dexOptions:Lcom/android/dx/dex/DexOptions;

    invoke-static {v1, v2, v5, v6}, Lcom/android/dx/cf/code/Ropper;->convert(Lcom/android/dx/cf/code/ConcreteMethod;Lcom/android/dx/rop/code/TranslationAdvice;Lcom/android/dx/cf/iface/MethodList;Lcom/android/dx/dex/DexOptions;)Lcom/android/dx/rop/code/RopMethod;

    move-result-object v5

    .line 283
    .local v5, "rmeth":Lcom/android/dx/rop/code/RopMethod;
    new-instance v6, Ljava/lang/StringBuilder;

    const/16 v7, 0x7d0

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 285
    .local v6, "sb":Ljava/lang/StringBuilder;
    iget-boolean v7, v0, Lcom/android/dx/command/dump/BlockDumper;->optimize:Z

    const/4 v8, 0x1

    if-eqz v7, :cond_0

    .line 286
    invoke-virtual/range {p1 .. p1}, Lcom/android/dx/cf/code/ConcreteMethod;->getAccessFlags()I

    move-result v7

    invoke-static {v7}, Lcom/android/dx/rop/code/AccessFlags;->isStatic(I)Z

    move-result v7

    .line 287
    .local v7, "isStatic":Z
    invoke-static {v1, v7}, Lcom/android/dx/command/dump/BlockDumper;->computeParamWidth(Lcom/android/dx/cf/code/ConcreteMethod;Z)I

    move-result v9

    .line 288
    .local v9, "paramWidth":I
    nop

    .line 289
    invoke-static {v5, v9, v7, v8, v2}, Lcom/android/dx/ssa/Optimizer;->optimize(Lcom/android/dx/rop/code/RopMethod;IZZLcom/android/dx/rop/code/TranslationAdvice;)Lcom/android/dx/rop/code/RopMethod;

    move-result-object v5

    .line 292
    .end local v7    # "isStatic":Z
    .end local v9    # "paramWidth":I
    :cond_0
    invoke-virtual {v5}, Lcom/android/dx/rop/code/RopMethod;->getBlocks()Lcom/android/dx/rop/code/BasicBlockList;

    move-result-object v7

    .line 293
    .local v7, "blocks":Lcom/android/dx/rop/code/BasicBlockList;
    invoke-virtual {v7}, Lcom/android/dx/rop/code/BasicBlockList;->getLabelsInOrder()[I

    move-result-object v9

    .line 295
    .local v9, "order":[I
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "first "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v5}, Lcom/android/dx/rop/code/RopMethod;->getFirstLabel()I

    move-result v11

    invoke-static {v11}, Lcom/android/dx/util/Hex;->u2(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\n"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 297
    array-length v10, v9

    const/4 v13, 0x0

    :goto_0
    if-ge v13, v10, :cond_6

    aget v14, v9, v13

    .line 298
    .local v14, "label":I
    invoke-virtual {v7, v14}, Lcom/android/dx/rop/code/BasicBlockList;->indexOfLabel(I)I

    move-result v15

    invoke-virtual {v7, v15}, Lcom/android/dx/rop/code/BasicBlockList;->get(I)Lcom/android/dx/rop/code/BasicBlock;

    move-result-object v15

    .line 299
    .local v15, "bb":Lcom/android/dx/rop/code/BasicBlock;
    const-string v12, "block "

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 300
    invoke-static {v14}, Lcom/android/dx/util/Hex;->u2(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 301
    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 303
    invoke-virtual {v5, v14}, Lcom/android/dx/rop/code/RopMethod;->labelToPredecessors(I)Lcom/android/dx/util/IntList;

    move-result-object v12

    .line 304
    .local v12, "preds":Lcom/android/dx/util/IntList;
    invoke-virtual {v12}, Lcom/android/dx/util/IntList;->size()I

    move-result v8

    .line 305
    .local v8, "psz":I
    const/16 v16, 0x0

    move/from16 v1, v16

    .local v1, "i":I
    :goto_1
    if-ge v1, v8, :cond_1

    .line 306
    move-object/from16 v16, v2

    .end local v2    # "advice":Lcom/android/dx/rop/code/TranslationAdvice;
    .local v16, "advice":Lcom/android/dx/rop/code/TranslationAdvice;
    const-string v2, "  pred "

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 307
    invoke-virtual {v12, v1}, Lcom/android/dx/util/IntList;->get(I)I

    move-result v2

    invoke-static {v2}, Lcom/android/dx/util/Hex;->u2(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 308
    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 305
    add-int/lit8 v1, v1, 0x1

    move-object/from16 v2, v16

    goto :goto_1

    .end local v16    # "advice":Lcom/android/dx/rop/code/TranslationAdvice;
    .restart local v2    # "advice":Lcom/android/dx/rop/code/TranslationAdvice;
    :cond_1
    move-object/from16 v16, v2

    .line 311
    .end local v1    # "i":I
    .end local v2    # "advice":Lcom/android/dx/rop/code/TranslationAdvice;
    .restart local v16    # "advice":Lcom/android/dx/rop/code/TranslationAdvice;
    invoke-virtual {v15}, Lcom/android/dx/rop/code/BasicBlock;->getInsns()Lcom/android/dx/rop/code/InsnList;

    move-result-object v1

    .line 312
    .local v1, "il":Lcom/android/dx/rop/code/InsnList;
    invoke-virtual {v1}, Lcom/android/dx/rop/code/InsnList;->size()I

    move-result v2

    .line 313
    .local v2, "ilsz":I
    const/16 v17, 0x0

    move-object/from16 v18, v3

    move/from16 v3, v17

    .local v3, "i":I
    .local v18, "code":Lcom/android/dx/cf/code/BytecodeArray;
    :goto_2
    if-ge v3, v2, :cond_2

    .line 314
    invoke-virtual {v1, v3}, Lcom/android/dx/rop/code/InsnList;->get(I)Lcom/android/dx/rop/code/Insn;

    move-result-object v17

    .line 315
    .local v17, "one":Lcom/android/dx/rop/code/Insn;
    move/from16 v19, v2

    .end local v2    # "ilsz":I
    .local v19, "ilsz":I
    const-string v2, "  "

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 316
    invoke-virtual {v1, v3}, Lcom/android/dx/rop/code/InsnList;->get(I)Lcom/android/dx/rop/code/Insn;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/dx/rop/code/Insn;->toHuman()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 317
    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 313
    .end local v17    # "one":Lcom/android/dx/rop/code/Insn;
    add-int/lit8 v3, v3, 0x1

    move/from16 v2, v19

    goto :goto_2

    .end local v19    # "ilsz":I
    .restart local v2    # "ilsz":I
    :cond_2
    move/from16 v19, v2

    .line 320
    .end local v2    # "ilsz":I
    .end local v3    # "i":I
    .restart local v19    # "ilsz":I
    invoke-virtual {v15}, Lcom/android/dx/rop/code/BasicBlock;->getSuccessors()Lcom/android/dx/util/IntList;

    move-result-object v2

    .line 321
    .local v2, "successors":Lcom/android/dx/util/IntList;
    invoke-virtual {v2}, Lcom/android/dx/util/IntList;->size()I

    move-result v3

    .line 322
    .local v3, "ssz":I
    if-nez v3, :cond_3

    .line 323
    move-object/from16 v17, v1

    .end local v1    # "il":Lcom/android/dx/rop/code/InsnList;
    .local v17, "il":Lcom/android/dx/rop/code/InsnList;
    const-string v1, "  returns\n"

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v21, v5

    move-object/from16 v20, v7

    goto :goto_4

    .line 325
    .end local v17    # "il":Lcom/android/dx/rop/code/InsnList;
    .restart local v1    # "il":Lcom/android/dx/rop/code/InsnList;
    :cond_3
    move-object/from16 v17, v1

    .end local v1    # "il":Lcom/android/dx/rop/code/InsnList;
    .restart local v17    # "il":Lcom/android/dx/rop/code/InsnList;
    invoke-virtual {v15}, Lcom/android/dx/rop/code/BasicBlock;->getPrimarySuccessor()I

    move-result v1

    .line 326
    .local v1, "primary":I
    const/16 v20, 0x0

    move-object/from16 v21, v5

    move/from16 v5, v20

    .local v5, "i":I
    .local v21, "rmeth":Lcom/android/dx/rop/code/RopMethod;
    :goto_3
    if-ge v5, v3, :cond_5

    .line 327
    move-object/from16 v20, v7

    .end local v7    # "blocks":Lcom/android/dx/rop/code/BasicBlockList;
    .local v20, "blocks":Lcom/android/dx/rop/code/BasicBlockList;
    invoke-virtual {v2, v5}, Lcom/android/dx/util/IntList;->get(I)I

    move-result v7

    .line 328
    .local v7, "succ":I
    move-object/from16 v22, v2

    .end local v2    # "successors":Lcom/android/dx/util/IntList;
    .local v22, "successors":Lcom/android/dx/util/IntList;
    const-string v2, "  next "

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 329
    invoke-static {v7}, Lcom/android/dx/util/Hex;->u2(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 331
    const/4 v2, 0x1

    if-eq v3, v2, :cond_4

    if-ne v7, v1, :cond_4

    .line 332
    const-string v2, " *"

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 335
    :cond_4
    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 326
    .end local v7    # "succ":I
    add-int/lit8 v5, v5, 0x1

    move-object/from16 v7, v20

    move-object/from16 v2, v22

    goto :goto_3

    .end local v20    # "blocks":Lcom/android/dx/rop/code/BasicBlockList;
    .end local v22    # "successors":Lcom/android/dx/util/IntList;
    .restart local v2    # "successors":Lcom/android/dx/util/IntList;
    .local v7, "blocks":Lcom/android/dx/rop/code/BasicBlockList;
    :cond_5
    move-object/from16 v22, v2

    move-object/from16 v20, v7

    .line 297
    .end local v1    # "primary":I
    .end local v2    # "successors":Lcom/android/dx/util/IntList;
    .end local v3    # "ssz":I
    .end local v5    # "i":I
    .end local v7    # "blocks":Lcom/android/dx/rop/code/BasicBlockList;
    .end local v8    # "psz":I
    .end local v12    # "preds":Lcom/android/dx/util/IntList;
    .end local v14    # "label":I
    .end local v15    # "bb":Lcom/android/dx/rop/code/BasicBlock;
    .end local v17    # "il":Lcom/android/dx/rop/code/InsnList;
    .end local v19    # "ilsz":I
    .restart local v20    # "blocks":Lcom/android/dx/rop/code/BasicBlockList;
    :goto_4
    add-int/lit8 v13, v13, 0x1

    move-object/from16 v1, p1

    move-object/from16 v2, v16

    move-object/from16 v3, v18

    move-object/from16 v7, v20

    move-object/from16 v5, v21

    const/4 v8, 0x1

    goto/16 :goto_0

    .line 340
    .end local v16    # "advice":Lcom/android/dx/rop/code/TranslationAdvice;
    .end local v18    # "code":Lcom/android/dx/cf/code/BytecodeArray;
    .end local v20    # "blocks":Lcom/android/dx/rop/code/BasicBlockList;
    .end local v21    # "rmeth":Lcom/android/dx/rop/code/RopMethod;
    .local v2, "advice":Lcom/android/dx/rop/code/TranslationAdvice;
    .local v3, "code":Lcom/android/dx/cf/code/BytecodeArray;
    .local v5, "rmeth":Lcom/android/dx/rop/code/RopMethod;
    .restart local v7    # "blocks":Lcom/android/dx/rop/code/BasicBlockList;
    :cond_6
    move-object/from16 v16, v2

    move-object/from16 v18, v3

    .end local v2    # "advice":Lcom/android/dx/rop/code/TranslationAdvice;
    .end local v3    # "code":Lcom/android/dx/cf/code/BytecodeArray;
    .restart local v16    # "advice":Lcom/android/dx/rop/code/TranslationAdvice;
    .restart local v18    # "code":Lcom/android/dx/cf/code/BytecodeArray;
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/dx/command/dump/BlockDumper;->suppressDump:Z

    .line 341
    invoke-virtual {v4}, Lcom/android/dx/util/ByteArray;->size()I

    move-result v2

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v4, v1, v2, v3}, Lcom/android/dx/command/dump/BlockDumper;->parsed(Lcom/android/dx/util/ByteArray;IILjava/lang/String;)V

    .line 342
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/dx/command/dump/BlockDumper;->suppressDump:Z

    .line 343
    return-void
.end method


# virtual methods
.method public changeIndent(I)V
    .locals 1
    .param p1, "indentDelta"    # I

    .line 128
    iget-boolean v0, p0, Lcom/android/dx/command/dump/BlockDumper;->suppressDump:Z

    if-nez v0, :cond_0

    .line 129
    invoke-super {p0, p1}, Lcom/android/dx/command/dump/BaseDumper;->changeIndent(I)V

    .line 131
    :cond_0
    return-void
.end method

.method public dump()V
    .locals 5

    .line 106
    invoke-virtual {p0}, Lcom/android/dx/command/dump/BlockDumper;->getBytes()[B

    move-result-object v0

    .line 107
    .local v0, "bytes":[B
    new-instance v1, Lcom/android/dx/util/ByteArray;

    invoke-direct {v1, v0}, Lcom/android/dx/util/ByteArray;-><init>([B)V

    .line 113
    .local v1, "ba":Lcom/android/dx/util/ByteArray;
    new-instance v2, Lcom/android/dx/cf/direct/DirectClassFile;

    invoke-virtual {p0}, Lcom/android/dx/command/dump/BlockDumper;->getFilePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/dx/command/dump/BlockDumper;->getStrictParse()Z

    move-result v4

    invoke-direct {v2, v1, v3, v4}, Lcom/android/dx/cf/direct/DirectClassFile;-><init>(Lcom/android/dx/util/ByteArray;Ljava/lang/String;Z)V

    iput-object v2, p0, Lcom/android/dx/command/dump/BlockDumper;->classFile:Lcom/android/dx/cf/direct/DirectClassFile;

    .line 114
    sget-object v3, Lcom/android/dx/cf/direct/StdAttributeFactory;->THE_ONE:Lcom/android/dx/cf/direct/StdAttributeFactory;

    invoke-virtual {v2, v3}, Lcom/android/dx/cf/direct/DirectClassFile;->setAttributeFactory(Lcom/android/dx/cf/direct/AttributeFactory;)V

    .line 115
    iget-object v2, p0, Lcom/android/dx/command/dump/BlockDumper;->classFile:Lcom/android/dx/cf/direct/DirectClassFile;

    invoke-virtual {v2}, Lcom/android/dx/cf/direct/DirectClassFile;->getMagic()I

    .line 118
    new-instance v2, Lcom/android/dx/cf/direct/DirectClassFile;

    .line 119
    invoke-virtual {p0}, Lcom/android/dx/command/dump/BlockDumper;->getFilePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/dx/command/dump/BlockDumper;->getStrictParse()Z

    move-result v4

    invoke-direct {v2, v1, v3, v4}, Lcom/android/dx/cf/direct/DirectClassFile;-><init>(Lcom/android/dx/util/ByteArray;Ljava/lang/String;Z)V

    .line 120
    .local v2, "liveCf":Lcom/android/dx/cf/direct/DirectClassFile;
    sget-object v3, Lcom/android/dx/cf/direct/StdAttributeFactory;->THE_ONE:Lcom/android/dx/cf/direct/StdAttributeFactory;

    invoke-virtual {v2, v3}, Lcom/android/dx/cf/direct/DirectClassFile;->setAttributeFactory(Lcom/android/dx/cf/direct/AttributeFactory;)V

    .line 121
    invoke-virtual {v2, p0}, Lcom/android/dx/cf/direct/DirectClassFile;->setObserver(Lcom/android/dx/cf/iface/ParseObserver;)V

    .line 122
    invoke-virtual {v2}, Lcom/android/dx/cf/direct/DirectClassFile;->getMagic()I

    .line 123
    return-void
.end method

.method public endParsingMember(Lcom/android/dx/util/ByteArray;ILjava/lang/String;Ljava/lang/String;Lcom/android/dx/cf/iface/Member;)V
    .locals 4
    .param p1, "bytes"    # Lcom/android/dx/util/ByteArray;
    .param p2, "offset"    # I
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "descriptor"    # Ljava/lang/String;
    .param p5, "member"    # Lcom/android/dx/cf/iface/Member;

    .line 178
    instance-of v0, p5, Lcom/android/dx/cf/iface/Method;

    if-nez v0, :cond_0

    .line 179
    return-void

    .line 182
    :cond_0
    invoke-virtual {p0, p3}, Lcom/android/dx/command/dump/BlockDumper;->shouldDumpMethod(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 183
    return-void

    .line 186
    :cond_1
    invoke-interface {p5}, Lcom/android/dx/cf/iface/Member;->getAccessFlags()I

    move-result v0

    and-int/lit16 v0, v0, 0x500

    if-eqz v0, :cond_2

    .line 188
    return-void

    .line 191
    :cond_2
    new-instance v0, Lcom/android/dx/cf/code/ConcreteMethod;

    move-object v1, p5

    check-cast v1, Lcom/android/dx/cf/iface/Method;

    iget-object v2, p0, Lcom/android/dx/command/dump/BlockDumper;->classFile:Lcom/android/dx/cf/direct/DirectClassFile;

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3, v3}, Lcom/android/dx/cf/code/ConcreteMethod;-><init>(Lcom/android/dx/cf/iface/Method;Lcom/android/dx/cf/iface/ClassFile;ZZ)V

    .line 194
    .local v0, "meth":Lcom/android/dx/cf/code/ConcreteMethod;
    iget-boolean v1, p0, Lcom/android/dx/command/dump/BlockDumper;->rop:Z

    if-eqz v1, :cond_3

    .line 195
    invoke-direct {p0, v0}, Lcom/android/dx/command/dump/BlockDumper;->ropDump(Lcom/android/dx/cf/code/ConcreteMethod;)V

    goto :goto_0

    .line 197
    :cond_3
    invoke-direct {p0, v0}, Lcom/android/dx/command/dump/BlockDumper;->regularDump(Lcom/android/dx/cf/code/ConcreteMethod;)V

    .line 199
    :goto_0
    return-void
.end method

.method public parsed(Lcom/android/dx/util/ByteArray;IILjava/lang/String;)V
    .locals 1
    .param p1, "bytes"    # Lcom/android/dx/util/ByteArray;
    .param p2, "offset"    # I
    .param p3, "len"    # I
    .param p4, "human"    # Ljava/lang/String;

    .line 136
    iget-boolean v0, p0, Lcom/android/dx/command/dump/BlockDumper;->suppressDump:Z

    if-nez v0, :cond_0

    .line 137
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/dx/command/dump/BaseDumper;->parsed(Lcom/android/dx/util/ByteArray;IILjava/lang/String;)V

    .line 139
    :cond_0
    return-void
.end method

.method protected shouldDumpMethod(Ljava/lang/String;)Z
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .line 146
    iget-object v0, p0, Lcom/android/dx/command/dump/BlockDumper;->args:Lcom/android/dx/command/dump/Args;

    iget-object v0, v0, Lcom/android/dx/command/dump/Args;->method:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/dx/command/dump/BlockDumper;->args:Lcom/android/dx/command/dump/Args;

    iget-object v0, v0, Lcom/android/dx/command/dump/Args;->method:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public startParsingMember(Lcom/android/dx/util/ByteArray;ILjava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "bytes"    # Lcom/android/dx/util/ByteArray;
    .param p2, "offset"    # I
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "descriptor"    # Ljava/lang/String;

    .line 153
    const/16 v0, 0x28

    invoke-virtual {p4, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-gez v0, :cond_0

    .line 155
    return-void

    .line 158
    :cond_0
    invoke-virtual {p0, p3}, Lcom/android/dx/command/dump/BlockDumper;->shouldDumpMethod(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 159
    return-void

    .line 162
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/dx/command/dump/BlockDumper;->suppressDump:Z

    .line 164
    iget-boolean v1, p0, Lcom/android/dx/command/dump/BlockDumper;->first:Z

    if-eqz v1, :cond_2

    .line 165
    iput-boolean v0, p0, Lcom/android/dx/command/dump/BlockDumper;->first:Z

    goto :goto_0

    .line 167
    :cond_2
    const-string v1, "\n"

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/android/dx/command/dump/BlockDumper;->parsed(Lcom/android/dx/util/ByteArray;IILjava/lang/String;)V

    .line 170
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "method "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/android/dx/command/dump/BlockDumper;->parsed(Lcom/android/dx/util/ByteArray;IILjava/lang/String;)V

    .line 171
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/dx/command/dump/BlockDumper;->suppressDump:Z

    .line 172
    return-void
.end method
