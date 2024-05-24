.class public Lcom/android/dx/command/dump/SsaDumper;
.super Lcom/android/dx/command/dump/BlockDumper;
.source "SsaDumper.java"


# direct methods
.method private constructor <init>([BLjava/io/PrintStream;Ljava/lang/String;Lcom/android/dx/command/dump/Args;)V
    .locals 6
    .param p1, "bytes"    # [B
    .param p2, "out"    # Ljava/io/PrintStream;
    .param p3, "filePath"    # Ljava/lang/String;
    .param p4, "args"    # Lcom/android/dx/command/dump/Args;

    .line 70
    const/4 v4, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/dx/command/dump/BlockDumper;-><init>([BLjava/io/PrintStream;Ljava/lang/String;ZLcom/android/dx/command/dump/Args;)V

    .line 71
    return-void
.end method

.method public static dump([BLjava/io/PrintStream;Ljava/lang/String;Lcom/android/dx/command/dump/Args;)V
    .locals 1
    .param p0, "bytes"    # [B
    .param p1, "out"    # Ljava/io/PrintStream;
    .param p2, "filePath"    # Ljava/lang/String;
    .param p3, "args"    # Lcom/android/dx/command/dump/Args;

    .line 55
    new-instance v0, Lcom/android/dx/command/dump/SsaDumper;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/dx/command/dump/SsaDumper;-><init>([BLjava/io/PrintStream;Ljava/lang/String;Lcom/android/dx/command/dump/Args;)V

    .line 56
    .local v0, "sd":Lcom/android/dx/command/dump/SsaDumper;
    invoke-virtual {v0}, Lcom/android/dx/command/dump/SsaDumper;->dump()V

    .line 57
    return-void
.end method


# virtual methods
.method public endParsingMember(Lcom/android/dx/util/ByteArray;ILjava/lang/String;Ljava/lang/String;Lcom/android/dx/cf/iface/Member;)V
    .locals 21
    .param p1, "bytes"    # Lcom/android/dx/util/ByteArray;
    .param p2, "offset"    # I
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "descriptor"    # Ljava/lang/String;
    .param p5, "member"    # Lcom/android/dx/cf/iface/Member;

    .line 77
    move-object/from16 v0, p0

    move-object/from16 v1, p5

    instance-of v2, v1, Lcom/android/dx/cf/iface/Method;

    if-nez v2, :cond_0

    .line 78
    return-void

    .line 81
    :cond_0
    move-object/from16 v2, p3

    invoke-virtual {v0, v2}, Lcom/android/dx/command/dump/SsaDumper;->shouldDumpMethod(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 82
    return-void

    .line 85
    :cond_1
    invoke-interface/range {p5 .. p5}, Lcom/android/dx/cf/iface/Member;->getAccessFlags()I

    move-result v3

    and-int/lit16 v3, v3, 0x500

    if-eqz v3, :cond_2

    .line 87
    return-void

    .line 90
    :cond_2
    new-instance v3, Lcom/android/dx/cf/code/ConcreteMethod;

    move-object v4, v1

    check-cast v4, Lcom/android/dx/cf/iface/Method;

    iget-object v5, v0, Lcom/android/dx/command/dump/SsaDumper;->classFile:Lcom/android/dx/cf/direct/DirectClassFile;

    const/4 v6, 0x1

    invoke-direct {v3, v4, v5, v6, v6}, Lcom/android/dx/cf/code/ConcreteMethod;-><init>(Lcom/android/dx/cf/iface/Method;Lcom/android/dx/cf/iface/ClassFile;ZZ)V

    .line 92
    .local v3, "meth":Lcom/android/dx/cf/code/ConcreteMethod;
    sget-object v4, Lcom/android/dx/rop/code/DexTranslationAdvice;->THE_ONE:Lcom/android/dx/rop/code/DexTranslationAdvice;

    .line 93
    .local v4, "advice":Lcom/android/dx/rop/code/TranslationAdvice;
    iget-object v5, v0, Lcom/android/dx/command/dump/SsaDumper;->classFile:Lcom/android/dx/cf/direct/DirectClassFile;

    invoke-virtual {v5}, Lcom/android/dx/cf/direct/DirectClassFile;->getMethods()Lcom/android/dx/cf/iface/MethodList;

    move-result-object v5

    iget-object v7, v0, Lcom/android/dx/command/dump/SsaDumper;->dexOptions:Lcom/android/dx/dex/DexOptions;

    invoke-static {v3, v4, v5, v7}, Lcom/android/dx/cf/code/Ropper;->convert(Lcom/android/dx/cf/code/ConcreteMethod;Lcom/android/dx/rop/code/TranslationAdvice;Lcom/android/dx/cf/iface/MethodList;Lcom/android/dx/dex/DexOptions;)Lcom/android/dx/rop/code/RopMethod;

    move-result-object v5

    .line 94
    .local v5, "rmeth":Lcom/android/dx/rop/code/RopMethod;
    const/4 v13, 0x0

    .line 95
    .local v13, "ssaMeth":Lcom/android/dx/ssa/SsaMethod;
    invoke-virtual {v3}, Lcom/android/dx/cf/code/ConcreteMethod;->getAccessFlags()I

    move-result v7

    invoke-static {v7}, Lcom/android/dx/rop/code/AccessFlags;->isStatic(I)Z

    move-result v14

    .line 96
    .local v14, "isStatic":Z
    invoke-static {v3, v14}, Lcom/android/dx/command/dump/SsaDumper;->computeParamWidth(Lcom/android/dx/cf/code/ConcreteMethod;Z)I

    move-result v15

    .line 98
    .local v15, "paramWidth":I
    iget-object v7, v0, Lcom/android/dx/command/dump/SsaDumper;->args:Lcom/android/dx/command/dump/Args;

    iget-object v7, v7, Lcom/android/dx/command/dump/Args;->ssaStep:Ljava/lang/String;

    if-nez v7, :cond_3

    .line 99
    const/4 v10, 0x1

    const-class v7, Lcom/android/dx/ssa/Optimizer$OptionalStep;

    .line 101
    invoke-static {v7}, Ljava/util/EnumSet;->allOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v12

    .line 99
    move-object v7, v5

    move v8, v15

    move v9, v14

    move-object v11, v4

    invoke-static/range {v7 .. v12}, Lcom/android/dx/ssa/Optimizer;->debugNoRegisterAllocation(Lcom/android/dx/rop/code/RopMethod;IZZLcom/android/dx/rop/code/TranslationAdvice;Ljava/util/EnumSet;)Lcom/android/dx/ssa/SsaMethod;

    move-result-object v13

    goto :goto_0

    .line 102
    :cond_3
    iget-object v7, v0, Lcom/android/dx/command/dump/SsaDumper;->args:Lcom/android/dx/command/dump/Args;

    iget-object v7, v7, Lcom/android/dx/command/dump/Args;->ssaStep:Ljava/lang/String;

    const-string v8, "edge-split"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 103
    invoke-static {v5, v15, v14, v6, v4}, Lcom/android/dx/ssa/Optimizer;->debugEdgeSplit(Lcom/android/dx/rop/code/RopMethod;IZZLcom/android/dx/rop/code/TranslationAdvice;)Lcom/android/dx/ssa/SsaMethod;

    move-result-object v13

    goto :goto_0

    .line 105
    :cond_4
    iget-object v7, v0, Lcom/android/dx/command/dump/SsaDumper;->args:Lcom/android/dx/command/dump/Args;

    iget-object v7, v7, Lcom/android/dx/command/dump/Args;->ssaStep:Ljava/lang/String;

    const-string v8, "phi-placement"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 106
    invoke-static {v5, v15, v14, v6, v4}, Lcom/android/dx/ssa/Optimizer;->debugPhiPlacement(Lcom/android/dx/rop/code/RopMethod;IZZLcom/android/dx/rop/code/TranslationAdvice;)Lcom/android/dx/ssa/SsaMethod;

    move-result-object v13

    goto :goto_0

    .line 108
    :cond_5
    iget-object v7, v0, Lcom/android/dx/command/dump/SsaDumper;->args:Lcom/android/dx/command/dump/Args;

    iget-object v7, v7, Lcom/android/dx/command/dump/Args;->ssaStep:Ljava/lang/String;

    const-string v8, "renaming"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 109
    invoke-static {v5, v15, v14, v6, v4}, Lcom/android/dx/ssa/Optimizer;->debugRenaming(Lcom/android/dx/rop/code/RopMethod;IZZLcom/android/dx/rop/code/TranslationAdvice;)Lcom/android/dx/ssa/SsaMethod;

    move-result-object v13

    goto :goto_0

    .line 111
    :cond_6
    iget-object v7, v0, Lcom/android/dx/command/dump/SsaDumper;->args:Lcom/android/dx/command/dump/Args;

    iget-object v7, v7, Lcom/android/dx/command/dump/Args;->ssaStep:Ljava/lang/String;

    const-string v8, "dead-code"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 112
    invoke-static {v5, v15, v14, v6, v4}, Lcom/android/dx/ssa/Optimizer;->debugDeadCodeRemover(Lcom/android/dx/rop/code/RopMethod;IZZLcom/android/dx/rop/code/TranslationAdvice;)Lcom/android/dx/ssa/SsaMethod;

    move-result-object v13

    .line 116
    :cond_7
    :goto_0
    new-instance v7, Ljava/lang/StringBuilder;

    const/16 v8, 0x7d0

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 118
    .local v7, "sb":Ljava/lang/StringBuilder;
    const-string v8, "first "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    nop

    .line 120
    invoke-virtual {v13}, Lcom/android/dx/ssa/SsaMethod;->getEntryBlockIndex()I

    move-result v8

    invoke-virtual {v13, v8}, Lcom/android/dx/ssa/SsaMethod;->blockIndexToRopLabel(I)I

    move-result v8

    .line 119
    invoke-static {v8}, Lcom/android/dx/util/Hex;->u2(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    const/16 v8, 0xa

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 123
    invoke-virtual {v13}, Lcom/android/dx/ssa/SsaMethod;->getBlocks()Ljava/util/ArrayList;

    move-result-object v9

    .line 124
    .local v9, "blocks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/dx/ssa/SsaBasicBlock;>;"
    nop

    .line 125
    invoke-virtual {v9}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/ArrayList;

    .line 126
    .local v10, "sortedBlocks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/dx/ssa/SsaBasicBlock;>;"
    sget-object v11, Lcom/android/dx/ssa/SsaBasicBlock;->LABEL_COMPARATOR:Ljava/util/Comparator;

    invoke-static {v10, v11}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 128
    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_1
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_d

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/dx/ssa/SsaBasicBlock;

    .line 129
    .local v12, "block":Lcom/android/dx/ssa/SsaBasicBlock;
    const-string v6, "block "

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 130
    invoke-virtual {v12}, Lcom/android/dx/ssa/SsaBasicBlock;->getRopLabel()I

    move-result v17

    invoke-static/range {v17 .. v17}, Lcom/android/dx/util/Hex;->u2(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 132
    invoke-virtual {v12}, Lcom/android/dx/ssa/SsaBasicBlock;->getPredecessors()Ljava/util/BitSet;

    move-result-object v1

    .line 134
    .local v1, "preds":Ljava/util/BitSet;
    const/4 v6, 0x0

    invoke-virtual {v1, v6}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v6

    .local v6, "i":I
    :goto_2
    if-ltz v6, :cond_8

    .line 136
    const-string v8, "  pred "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 137
    invoke-virtual {v13, v6}, Lcom/android/dx/ssa/SsaMethod;->blockIndexToRopLabel(I)I

    move-result v8

    invoke-static {v8}, Lcom/android/dx/util/Hex;->u2(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    const/16 v8, 0xa

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 135
    add-int/lit8 v8, v6, 0x1

    invoke-virtual {v1, v8}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v6

    const/16 v8, 0xa

    goto :goto_2

    .line 141
    .end local v6    # "i":I
    :cond_8
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "  live in:"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v12}, Lcom/android/dx/ssa/SsaBasicBlock;->getLiveInRegs()Lcom/android/dx/util/IntSet;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    const-string v6, "\n"

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 144
    invoke-virtual {v12}, Lcom/android/dx/ssa/SsaBasicBlock;->getInsns()Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_3
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_9

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/android/dx/ssa/SsaInsn;

    .line 145
    .local v16, "insn":Lcom/android/dx/ssa/SsaInsn;
    move-object/from16 v18, v1

    .end local v1    # "preds":Ljava/util/BitSet;
    .local v18, "preds":Ljava/util/BitSet;
    const-string v1, "  "

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    invoke-virtual/range {v16 .. v16}, Lcom/android/dx/ssa/SsaInsn;->toHuman()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 147
    const/16 v1, 0xa

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 148
    .end local v16    # "insn":Lcom/android/dx/ssa/SsaInsn;
    move-object/from16 v1, v18

    goto :goto_3

    .line 150
    .end local v18    # "preds":Ljava/util/BitSet;
    .restart local v1    # "preds":Ljava/util/BitSet;
    :cond_9
    move-object/from16 v18, v1

    .end local v1    # "preds":Ljava/util/BitSet;
    .restart local v18    # "preds":Ljava/util/BitSet;
    invoke-virtual {v12}, Lcom/android/dx/ssa/SsaBasicBlock;->getSuccessors()Ljava/util/BitSet;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/BitSet;->cardinality()I

    move-result v1

    if-nez v1, :cond_a

    .line 151
    const-string v1, "  returns\n"

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v19, v3

    move-object/from16 v20, v4

    const/16 v4, 0xa

    goto :goto_5

    .line 153
    :cond_a
    invoke-virtual {v12}, Lcom/android/dx/ssa/SsaBasicBlock;->getPrimarySuccessorRopLabel()I

    move-result v1

    .line 155
    .local v1, "primary":I
    invoke-virtual {v12}, Lcom/android/dx/ssa/SsaBasicBlock;->getRopLabelSuccessorList()Lcom/android/dx/util/IntList;

    move-result-object v8

    .line 157
    .local v8, "succLabelList":Lcom/android/dx/util/IntList;
    invoke-virtual {v8}, Lcom/android/dx/util/IntList;->size()I

    move-result v2

    .line 159
    .local v2, "szSuccLabels":I
    const/16 v16, 0x0

    move-object/from16 v19, v3

    move/from16 v3, v16

    .local v3, "i":I
    .local v19, "meth":Lcom/android/dx/cf/code/ConcreteMethod;
    :goto_4
    if-ge v3, v2, :cond_c

    .line 160
    move-object/from16 v20, v4

    .end local v4    # "advice":Lcom/android/dx/rop/code/TranslationAdvice;
    .local v20, "advice":Lcom/android/dx/rop/code/TranslationAdvice;
    const-string v4, "  next "

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 161
    invoke-virtual {v8, v3}, Lcom/android/dx/util/IntList;->get(I)I

    move-result v4

    invoke-static {v4}, Lcom/android/dx/util/Hex;->u2(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 163
    const/4 v4, 0x1

    if-eq v2, v4, :cond_b

    invoke-virtual {v8, v3}, Lcom/android/dx/util/IntList;->get(I)I

    move-result v4

    if-ne v1, v4, :cond_b

    .line 164
    const-string v4, " *"

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 166
    :cond_b
    const/16 v4, 0xa

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 159
    add-int/lit8 v3, v3, 0x1

    move-object/from16 v4, v20

    goto :goto_4

    .end local v20    # "advice":Lcom/android/dx/rop/code/TranslationAdvice;
    .restart local v4    # "advice":Lcom/android/dx/rop/code/TranslationAdvice;
    :cond_c
    move-object/from16 v20, v4

    const/16 v4, 0xa

    .line 170
    .end local v1    # "primary":I
    .end local v2    # "szSuccLabels":I
    .end local v3    # "i":I
    .end local v4    # "advice":Lcom/android/dx/rop/code/TranslationAdvice;
    .end local v8    # "succLabelList":Lcom/android/dx/util/IntList;
    .restart local v20    # "advice":Lcom/android/dx/rop/code/TranslationAdvice;
    :goto_5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  live out:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v12}, Lcom/android/dx/ssa/SsaBasicBlock;->getLiveOutRegs()Lcom/android/dx/util/IntSet;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 171
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 172
    .end local v12    # "block":Lcom/android/dx/ssa/SsaBasicBlock;
    .end local v18    # "preds":Ljava/util/BitSet;
    move-object/from16 v2, p3

    move-object/from16 v1, p5

    move v8, v4

    move-object/from16 v3, v19

    move-object/from16 v4, v20

    const/4 v6, 0x1

    goto/16 :goto_1

    .line 174
    .end local v19    # "meth":Lcom/android/dx/cf/code/ConcreteMethod;
    .end local v20    # "advice":Lcom/android/dx/rop/code/TranslationAdvice;
    .local v3, "meth":Lcom/android/dx/cf/code/ConcreteMethod;
    .restart local v4    # "advice":Lcom/android/dx/rop/code/TranslationAdvice;
    :cond_d
    move-object/from16 v19, v3

    move-object/from16 v20, v4

    .end local v3    # "meth":Lcom/android/dx/cf/code/ConcreteMethod;
    .end local v4    # "advice":Lcom/android/dx/rop/code/TranslationAdvice;
    .restart local v19    # "meth":Lcom/android/dx/cf/code/ConcreteMethod;
    .restart local v20    # "advice":Lcom/android/dx/rop/code/TranslationAdvice;
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/dx/command/dump/SsaDumper;->suppressDump:Z

    .line 175
    invoke-virtual/range {p1 .. p1}, Lcom/android/dx/util/ByteArray;->size()I

    move-result v2

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v4, p1

    invoke-virtual {v0, v4, v1, v2, v3}, Lcom/android/dx/command/dump/SsaDumper;->parsed(Lcom/android/dx/util/ByteArray;IILjava/lang/String;)V

    .line 176
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/dx/command/dump/SsaDumper;->suppressDump:Z

    .line 177
    return-void
.end method
