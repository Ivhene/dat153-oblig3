.class public Lcom/android/dx/command/dump/DotDumper;
.super Ljava/lang/Object;
.source "DotDumper.java"

# interfaces
.implements Lcom/android/dx/cf/iface/ParseObserver;


# instance fields
.field private final args:Lcom/android/dx/command/dump/Args;

.field private final bytes:[B

.field private classFile:Lcom/android/dx/cf/direct/DirectClassFile;

.field private final dexOptions:Lcom/android/dx/dex/DexOptions;

.field private final filePath:Ljava/lang/String;

.field private final optimize:Z

.field private final strictParse:Z


# direct methods
.method constructor <init>([BLjava/lang/String;Lcom/android/dx/command/dump/Args;)V
    .locals 1
    .param p1, "bytes"    # [B
    .param p2, "filePath"    # Ljava/lang/String;
    .param p3, "args"    # Lcom/android/dx/command/dump/Args;

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-object p1, p0, Lcom/android/dx/command/dump/DotDumper;->bytes:[B

    .line 58
    iput-object p2, p0, Lcom/android/dx/command/dump/DotDumper;->filePath:Ljava/lang/String;

    .line 59
    iget-boolean v0, p3, Lcom/android/dx/command/dump/Args;->strictParse:Z

    iput-boolean v0, p0, Lcom/android/dx/command/dump/DotDumper;->strictParse:Z

    .line 60
    iget-boolean v0, p3, Lcom/android/dx/command/dump/Args;->optimize:Z

    iput-boolean v0, p0, Lcom/android/dx/command/dump/DotDumper;->optimize:Z

    .line 61
    iput-object p3, p0, Lcom/android/dx/command/dump/DotDumper;->args:Lcom/android/dx/command/dump/Args;

    .line 62
    new-instance v0, Lcom/android/dx/dex/DexOptions;

    invoke-direct {v0}, Lcom/android/dx/dex/DexOptions;-><init>()V

    iput-object v0, p0, Lcom/android/dx/command/dump/DotDumper;->dexOptions:Lcom/android/dx/dex/DexOptions;

    .line 63
    return-void
.end method

.method static dump([BLjava/lang/String;Lcom/android/dx/command/dump/Args;)V
    .locals 1
    .param p0, "bytes"    # [B
    .param p1, "filePath"    # Ljava/lang/String;
    .param p2, "args"    # Lcom/android/dx/command/dump/Args;

    .line 53
    new-instance v0, Lcom/android/dx/command/dump/DotDumper;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/dx/command/dump/DotDumper;-><init>([BLjava/lang/String;Lcom/android/dx/command/dump/Args;)V

    invoke-direct {v0}, Lcom/android/dx/command/dump/DotDumper;->run()V

    .line 54
    return-void
.end method

.method private run()V
    .locals 4

    .line 66
    new-instance v0, Lcom/android/dx/util/ByteArray;

    iget-object v1, p0, Lcom/android/dx/command/dump/DotDumper;->bytes:[B

    invoke-direct {v0, v1}, Lcom/android/dx/util/ByteArray;-><init>([B)V

    .line 72
    .local v0, "ba":Lcom/android/dx/util/ByteArray;
    new-instance v1, Lcom/android/dx/cf/direct/DirectClassFile;

    iget-object v2, p0, Lcom/android/dx/command/dump/DotDumper;->filePath:Ljava/lang/String;

    iget-boolean v3, p0, Lcom/android/dx/command/dump/DotDumper;->strictParse:Z

    invoke-direct {v1, v0, v2, v3}, Lcom/android/dx/cf/direct/DirectClassFile;-><init>(Lcom/android/dx/util/ByteArray;Ljava/lang/String;Z)V

    iput-object v1, p0, Lcom/android/dx/command/dump/DotDumper;->classFile:Lcom/android/dx/cf/direct/DirectClassFile;

    .line 73
    sget-object v2, Lcom/android/dx/cf/direct/StdAttributeFactory;->THE_ONE:Lcom/android/dx/cf/direct/StdAttributeFactory;

    invoke-virtual {v1, v2}, Lcom/android/dx/cf/direct/DirectClassFile;->setAttributeFactory(Lcom/android/dx/cf/direct/AttributeFactory;)V

    .line 74
    iget-object v1, p0, Lcom/android/dx/command/dump/DotDumper;->classFile:Lcom/android/dx/cf/direct/DirectClassFile;

    invoke-virtual {v1}, Lcom/android/dx/cf/direct/DirectClassFile;->getMagic()I

    .line 77
    new-instance v1, Lcom/android/dx/cf/direct/DirectClassFile;

    iget-object v2, p0, Lcom/android/dx/command/dump/DotDumper;->filePath:Ljava/lang/String;

    iget-boolean v3, p0, Lcom/android/dx/command/dump/DotDumper;->strictParse:Z

    invoke-direct {v1, v0, v2, v3}, Lcom/android/dx/cf/direct/DirectClassFile;-><init>(Lcom/android/dx/util/ByteArray;Ljava/lang/String;Z)V

    .line 79
    .local v1, "liveCf":Lcom/android/dx/cf/direct/DirectClassFile;
    sget-object v2, Lcom/android/dx/cf/direct/StdAttributeFactory;->THE_ONE:Lcom/android/dx/cf/direct/StdAttributeFactory;

    invoke-virtual {v1, v2}, Lcom/android/dx/cf/direct/DirectClassFile;->setAttributeFactory(Lcom/android/dx/cf/direct/AttributeFactory;)V

    .line 80
    invoke-virtual {v1, p0}, Lcom/android/dx/cf/direct/DirectClassFile;->setObserver(Lcom/android/dx/cf/iface/ParseObserver;)V

    .line 81
    invoke-virtual {v1}, Lcom/android/dx/cf/direct/DirectClassFile;->getMagic()I

    .line 82
    return-void
.end method


# virtual methods
.method public changeIndent(I)V
    .locals 0
    .param p1, "indentDelta"    # I

    .line 95
    return-void
.end method

.method public endParsingMember(Lcom/android/dx/util/ByteArray;ILjava/lang/String;Ljava/lang/String;Lcom/android/dx/cf/iface/Member;)V
    .locals 17
    .param p1, "bytes"    # Lcom/android/dx/util/ByteArray;
    .param p2, "offset"    # I
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "descriptor"    # Ljava/lang/String;
    .param p5, "member"    # Lcom/android/dx/cf/iface/Member;

    .line 112
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, p5

    instance-of v3, v2, Lcom/android/dx/cf/iface/Method;

    if-nez v3, :cond_0

    .line 113
    return-void

    .line 116
    :cond_0
    invoke-virtual {v0, v1}, Lcom/android/dx/command/dump/DotDumper;->shouldDumpMethod(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 117
    return-void

    .line 120
    :cond_1
    new-instance v3, Lcom/android/dx/cf/code/ConcreteMethod;

    move-object v4, v2

    check-cast v4, Lcom/android/dx/cf/iface/Method;

    iget-object v5, v0, Lcom/android/dx/command/dump/DotDumper;->classFile:Lcom/android/dx/cf/direct/DirectClassFile;

    const/4 v6, 0x1

    invoke-direct {v3, v4, v5, v6, v6}, Lcom/android/dx/cf/code/ConcreteMethod;-><init>(Lcom/android/dx/cf/iface/Method;Lcom/android/dx/cf/iface/ClassFile;ZZ)V

    .line 123
    .local v3, "meth":Lcom/android/dx/cf/code/ConcreteMethod;
    sget-object v4, Lcom/android/dx/rop/code/DexTranslationAdvice;->THE_ONE:Lcom/android/dx/rop/code/DexTranslationAdvice;

    .line 124
    .local v4, "advice":Lcom/android/dx/rop/code/TranslationAdvice;
    iget-object v5, v0, Lcom/android/dx/command/dump/DotDumper;->classFile:Lcom/android/dx/cf/direct/DirectClassFile;

    .line 125
    invoke-virtual {v5}, Lcom/android/dx/cf/direct/DirectClassFile;->getMethods()Lcom/android/dx/cf/iface/MethodList;

    move-result-object v5

    iget-object v7, v0, Lcom/android/dx/command/dump/DotDumper;->dexOptions:Lcom/android/dx/dex/DexOptions;

    invoke-static {v3, v4, v5, v7}, Lcom/android/dx/cf/code/Ropper;->convert(Lcom/android/dx/cf/code/ConcreteMethod;Lcom/android/dx/rop/code/TranslationAdvice;Lcom/android/dx/cf/iface/MethodList;Lcom/android/dx/dex/DexOptions;)Lcom/android/dx/rop/code/RopMethod;

    move-result-object v5

    .line 127
    .local v5, "rmeth":Lcom/android/dx/rop/code/RopMethod;
    iget-boolean v7, v0, Lcom/android/dx/command/dump/DotDumper;->optimize:Z

    if-eqz v7, :cond_2

    .line 128
    invoke-virtual {v3}, Lcom/android/dx/cf/code/ConcreteMethod;->getAccessFlags()I

    move-result v7

    invoke-static {v7}, Lcom/android/dx/rop/code/AccessFlags;->isStatic(I)Z

    move-result v7

    .line 129
    .local v7, "isStatic":Z
    nop

    .line 130
    invoke-static {v3, v7}, Lcom/android/dx/command/dump/BaseDumper;->computeParamWidth(Lcom/android/dx/cf/code/ConcreteMethod;Z)I

    move-result v8

    .line 129
    invoke-static {v5, v8, v7, v6, v4}, Lcom/android/dx/ssa/Optimizer;->optimize(Lcom/android/dx/rop/code/RopMethod;IZZLcom/android/dx/rop/code/TranslationAdvice;)Lcom/android/dx/rop/code/RopMethod;

    move-result-object v5

    .line 134
    .end local v7    # "isStatic":Z
    :cond_2
    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "digraph "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "{"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 136
    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "\tfirst -> n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 137
    invoke-virtual {v5}, Lcom/android/dx/rop/code/RopMethod;->getFirstLabel()I

    move-result v9

    invoke-static {v9}, Lcom/android/dx/util/Hex;->u2(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ";"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 136
    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 139
    invoke-virtual {v5}, Lcom/android/dx/rop/code/RopMethod;->getBlocks()Lcom/android/dx/rop/code/BasicBlockList;

    move-result-object v7

    .line 141
    .local v7, "blocks":Lcom/android/dx/rop/code/BasicBlockList;
    invoke-virtual {v7}, Lcom/android/dx/rop/code/BasicBlockList;->size()I

    move-result v8

    .line 142
    .local v8, "sz":I
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_0
    if-ge v10, v8, :cond_7

    .line 143
    invoke-virtual {v7, v10}, Lcom/android/dx/rop/code/BasicBlockList;->get(I)Lcom/android/dx/rop/code/BasicBlock;

    move-result-object v11

    .line 144
    .local v11, "bb":Lcom/android/dx/rop/code/BasicBlock;
    invoke-virtual {v11}, Lcom/android/dx/rop/code/BasicBlock;->getLabel()I

    move-result v12

    .line 145
    .local v12, "label":I
    invoke-virtual {v11}, Lcom/android/dx/rop/code/BasicBlock;->getSuccessors()Lcom/android/dx/util/IntList;

    move-result-object v13

    .line 147
    .local v13, "successors":Lcom/android/dx/util/IntList;
    invoke-virtual {v13}, Lcom/android/dx/util/IntList;->size()I

    move-result v14

    const-string v15, "\tn"

    if-nez v14, :cond_3

    .line 148
    sget-object v14, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v12}, Lcom/android/dx/util/Hex;->u2(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v15, " -> returns;"

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v14, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    move-object/from16 v16, v3

    goto/16 :goto_3

    .line 149
    :cond_3
    invoke-virtual {v13}, Lcom/android/dx/util/IntList;->size()I

    move-result v6

    const-string v14, " -> n"

    const/4 v0, 0x1

    if-ne v6, v0, :cond_4

    .line 150
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v12}, Lcom/android/dx/util/Hex;->u2(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 151
    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Lcom/android/dx/util/IntList;->get(I)I

    move-result v14

    invoke-static {v14}, Lcom/android/dx/util/Hex;->u2(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 150
    invoke-virtual {v6, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    move-object/from16 v16, v3

    goto/16 :goto_3

    .line 153
    :cond_4
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v12}, Lcom/android/dx/util/Hex;->u2(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v6, " -> {"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 154
    const/4 v0, 0x0

    .local v0, "j":I
    :goto_1
    invoke-virtual {v13}, Lcom/android/dx/util/IntList;->size()I

    move-result v1

    if-ge v0, v1, :cond_6

    .line 155
    invoke-virtual {v13, v0}, Lcom/android/dx/util/IntList;->get(I)I

    move-result v1

    .line 157
    .local v1, "successor":I
    invoke-virtual {v11}, Lcom/android/dx/rop/code/BasicBlock;->getPrimarySuccessor()I

    move-result v6

    if-eq v1, v6, :cond_5

    .line 158
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v16, v3

    .end local v3    # "meth":Lcom/android/dx/cf/code/ConcreteMethod;
    .local v16, "meth":Lcom/android/dx/cf/code/ConcreteMethod;
    const-string v3, " n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v1}, Lcom/android/dx/util/Hex;->u2(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    goto :goto_2

    .line 157
    .end local v16    # "meth":Lcom/android/dx/cf/code/ConcreteMethod;
    .restart local v3    # "meth":Lcom/android/dx/cf/code/ConcreteMethod;
    :cond_5
    move-object/from16 v16, v3

    .line 154
    .end local v1    # "successor":I
    .end local v3    # "meth":Lcom/android/dx/cf/code/ConcreteMethod;
    .restart local v16    # "meth":Lcom/android/dx/cf/code/ConcreteMethod;
    :goto_2
    add-int/lit8 v0, v0, 0x1

    move-object/from16 v2, p5

    move-object/from16 v3, v16

    goto :goto_1

    .end local v16    # "meth":Lcom/android/dx/cf/code/ConcreteMethod;
    .restart local v3    # "meth":Lcom/android/dx/cf/code/ConcreteMethod;
    :cond_6
    move-object/from16 v16, v3

    .line 162
    .end local v0    # "j":I
    .end local v3    # "meth":Lcom/android/dx/cf/code/ConcreteMethod;
    .restart local v16    # "meth":Lcom/android/dx/cf/code/ConcreteMethod;
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "};"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 164
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v12}, Lcom/android/dx/util/Hex;->u2(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 165
    invoke-virtual {v11}, Lcom/android/dx/rop/code/BasicBlock;->getPrimarySuccessor()I

    move-result v2

    invoke-static {v2}, Lcom/android/dx/util/Hex;->u2(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " [label=\"primary\"];"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 164
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 142
    .end local v11    # "bb":Lcom/android/dx/rop/code/BasicBlock;
    .end local v12    # "label":I
    .end local v13    # "successors":Lcom/android/dx/util/IntList;
    :goto_3
    add-int/lit8 v10, v10, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, p5

    move-object/from16 v3, v16

    const/4 v6, 0x1

    goto/16 :goto_0

    .line 172
    .end local v10    # "i":I
    .end local v16    # "meth":Lcom/android/dx/cf/code/ConcreteMethod;
    .restart local v3    # "meth":Lcom/android/dx/cf/code/ConcreteMethod;
    :cond_7
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 173
    return-void
.end method

.method public parsed(Lcom/android/dx/util/ByteArray;IILjava/lang/String;)V
    .locals 0
    .param p1, "bytes"    # Lcom/android/dx/util/ByteArray;
    .param p2, "offset"    # I
    .param p3, "len"    # I
    .param p4, "human"    # Ljava/lang/String;

    .line 100
    return-void
.end method

.method protected shouldDumpMethod(Ljava/lang/String;)Z
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .line 89
    iget-object v0, p0, Lcom/android/dx/command/dump/DotDumper;->args:Lcom/android/dx/command/dump/Args;

    iget-object v0, v0, Lcom/android/dx/command/dump/Args;->method:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/dx/command/dump/DotDumper;->args:Lcom/android/dx/command/dump/Args;

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
    .locals 0
    .param p1, "bytes"    # Lcom/android/dx/util/ByteArray;
    .param p2, "offset"    # I
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "descriptor"    # Ljava/lang/String;

    .line 107
    return-void
.end method
