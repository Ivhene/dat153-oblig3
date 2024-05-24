.class public final Lorg/checkerframework/org/plumelib/bcelutil/StackVer;
.super Ljava/lang/Object;
.source "StackVer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/checkerframework/org/plumelib/bcelutil/StackVer$InstructionContextQueue;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = true


# instance fields
.field private messages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private stack_types:Lorg/checkerframework/org/plumelib/bcelutil/StackTypes;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 169
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 512
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/checkerframework/org/plumelib/bcelutil/StackVer;->messages:Ljava/util/ArrayList;

    .line 169
    return-void
.end method

.method private circulationPump(Lorg/checkerframework/org/apache/bcel/generic/MethodGen;Lorg/checkerframework/org/apache/bcel/verifier/structurals/ControlFlowGraph;Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstructionContext;Lorg/checkerframework/org/apache/bcel/verifier/structurals/Frame;Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;Lorg/checkerframework/org/apache/bcel/verifier/structurals/ExecutionVisitor;)V
    .locals 22
    .param p1, "m"    # Lorg/checkerframework/org/apache/bcel/generic/MethodGen;
    .param p2, "cfg"    # Lorg/checkerframework/org/apache/bcel/verifier/structurals/ControlFlowGraph;
    .param p3, "start"    # Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstructionContext;
    .param p4, "vanillaFrame"    # Lorg/checkerframework/org/apache/bcel/verifier/structurals/Frame;
    .param p5, "icv"    # Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;
    .param p6, "ev"    # Lorg/checkerframework/org/apache/bcel/verifier/structurals/ExecutionVisitor;

    .line 193
    move-object/from16 v6, p0

    move-object/from16 v7, p2

    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    move-object v8, v0

    .line 194
    .local v8, "random":Ljava/util/Random;
    new-instance v0, Lorg/checkerframework/org/plumelib/bcelutil/StackVer$InstructionContextQueue;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/checkerframework/org/plumelib/bcelutil/StackVer$InstructionContextQueue;-><init>(Lorg/checkerframework/org/plumelib/bcelutil/StackVer$1;)V

    move-object v9, v0

    .line 196
    .local v9, "icq":Lorg/checkerframework/org/plumelib/bcelutil/StackVer$InstructionContextQueue;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    move-object/from16 v4, p5

    move-object/from16 v5, p6

    invoke-virtual/range {v0 .. v5}, Lorg/checkerframework/org/plumelib/bcelutil/StackVer;->execute(Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstructionContext;Lorg/checkerframework/org/apache/bcel/verifier/structurals/Frame;Ljava/util/ArrayList;Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;Lorg/checkerframework/org/apache/bcel/verifier/structurals/ExecutionVisitor;)Z

    .line 199
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v10, p3

    invoke-virtual {v9, v10, v0}, Lorg/checkerframework/org/plumelib/bcelutil/StackVer$InstructionContextQueue;->add(Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstructionContext;Ljava/util/ArrayList;)V

    .line 202
    :goto_0
    invoke-virtual {v9}, Lorg/checkerframework/org/plumelib/bcelutil/StackVer$InstructionContextQueue;->isEmpty()Z

    move-result v0

    const-string v1, "\'."

    if-nez v0, :cond_e

    .line 211
    const/4 v11, 0x0

    invoke-virtual {v9, v11}, Lorg/checkerframework/org/plumelib/bcelutil/StackVer$InstructionContextQueue;->getIC(I)Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstructionContext;

    move-result-object v12

    .line 212
    .local v12, "u":Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstructionContext;
    invoke-virtual {v9, v11}, Lorg/checkerframework/org/plumelib/bcelutil/StackVer$InstructionContextQueue;->getEC(I)Ljava/util/ArrayList;

    move-result-object v13

    .line 213
    .local v13, "ec":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstructionContext;>;"
    invoke-virtual {v9, v11}, Lorg/checkerframework/org/plumelib/bcelutil/StackVer$InstructionContextQueue;->remove(I)V

    .line 217
    invoke-virtual {v13}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    move-object v14, v0

    check-cast v14, Ljava/util/ArrayList;

    .line 219
    .local v14, "oldchain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstructionContext;>;"
    invoke-virtual {v13}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    move-object v15, v0

    check-cast v15, Ljava/util/ArrayList;

    .line 220
    .local v15, "newchain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstructionContext;>;"
    invoke-virtual {v15, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 222
    invoke-interface {v12}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstructionContext;->getInstruction()Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;->getInstruction()Lorg/checkerframework/org/apache/bcel/generic/Instruction;

    move-result-object v0

    instance-of v0, v0, Lorg/checkerframework/org/apache/bcel/generic/RET;

    if-eqz v0, :cond_8

    .line 226
    invoke-interface {v12}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstructionContext;->getInstruction()Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;->getInstruction()Lorg/checkerframework/org/apache/bcel/generic/Instruction;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/org/apache/bcel/generic/RET;

    move-object/from16 v16, v0

    check-cast v16, Lorg/checkerframework/org/apache/bcel/generic/RET;

    .line 227
    .local v16, "ret":Lorg/checkerframework/org/apache/bcel/generic/RET;
    nop

    .line 228
    invoke-interface {v12, v14}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstructionContext;->getOutFrame(Ljava/util/ArrayList;)Lorg/checkerframework/org/apache/bcel/verifier/structurals/Frame;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/Frame;->getLocals()Lorg/checkerframework/org/apache/bcel/verifier/structurals/LocalVariables;

    move-result-object v0

    invoke-virtual/range {v16 .. v16}, Lorg/checkerframework/org/apache/bcel/generic/RET;->getIndex()I

    move-result v2

    invoke-virtual {v0, v2}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/LocalVariables;->get(I)Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v0

    move-object/from16 v17, v0

    check-cast v17, Lorg/checkerframework/org/apache/bcel/generic/ReturnaddressType;

    .line 229
    .local v17, "t":Lorg/checkerframework/org/apache/bcel/generic/ReturnaddressType;
    invoke-virtual/range {v17 .. v17}, Lorg/checkerframework/org/apache/bcel/generic/ReturnaddressType;->getTarget()Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;

    move-result-object v0

    invoke-virtual {v7, v0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/ControlFlowGraph;->contextOf(Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;)Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstructionContext;

    move-result-object v5

    .line 232
    .local v5, "theSuccessor":Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstructionContext;
    const/4 v0, 0x0

    .line 233
    .local v0, "lastJSR":Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstructionContext;
    const/4 v2, 0x0

    .line 234
    .local v2, "skip_jsr":I
    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    move/from16 v18, v2

    .end local v2    # "skip_jsr":I
    .local v3, "ss":I
    .local v18, "skip_jsr":I
    :goto_1
    if-ltz v3, :cond_4

    .line 235
    if-ltz v18, :cond_3

    .line 239
    invoke-virtual {v14, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstructionContext;

    invoke-interface {v2}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstructionContext;->getInstruction()Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;

    move-result-object v2

    invoke-virtual {v2}, Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;->getInstruction()Lorg/checkerframework/org/apache/bcel/generic/Instruction;

    move-result-object v2

    instance-of v2, v2, Lorg/checkerframework/org/apache/bcel/generic/JsrInstruction;

    if-eqz v2, :cond_1

    .line 240
    if-nez v18, :cond_0

    .line 241
    invoke-virtual {v14, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstructionContext;

    .line 242
    move-object/from16 v19, v0

    goto :goto_2

    .line 244
    :cond_0
    add-int/lit8 v18, v18, -0x1

    .line 246
    :cond_1
    invoke-virtual {v14, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstructionContext;

    invoke-interface {v2}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstructionContext;->getInstruction()Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;

    move-result-object v2

    invoke-virtual {v2}, Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;->getInstruction()Lorg/checkerframework/org/apache/bcel/generic/Instruction;

    move-result-object v2

    instance-of v2, v2, Lorg/checkerframework/org/apache/bcel/generic/RET;

    if-eqz v2, :cond_2

    .line 247
    add-int/lit8 v18, v18, 0x1

    .line 234
    :cond_2
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    .line 236
    :cond_3
    new-instance v1, Lorg/checkerframework/org/apache/bcel/verifier/exc/AssertionViolatedException;

    const-string v2, "More RET than JSR in execution chain?!"

    invoke-direct {v1, v2}, Lorg/checkerframework/org/apache/bcel/verifier/exc/AssertionViolatedException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 234
    :cond_4
    move-object/from16 v19, v0

    .line 250
    .end local v0    # "lastJSR":Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstructionContext;
    .end local v3    # "ss":I
    .local v19, "lastJSR":Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstructionContext;
    :goto_2
    if-eqz v19, :cond_7

    .line 254
    invoke-interface/range {v19 .. v19}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstructionContext;->getInstruction()Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;->getInstruction()Lorg/checkerframework/org/apache/bcel/generic/Instruction;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/org/apache/bcel/generic/JsrInstruction;

    move-object/from16 v20, v0

    check-cast v20, Lorg/checkerframework/org/apache/bcel/generic/JsrInstruction;

    .line 255
    .local v20, "jsr":Lorg/checkerframework/org/apache/bcel/generic/JsrInstruction;
    invoke-virtual/range {v20 .. v20}, Lorg/checkerframework/org/apache/bcel/generic/JsrInstruction;->physicalSuccessor()Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;

    move-result-object v0

    invoke-virtual {v7, v0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/ControlFlowGraph;->contextOf(Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;)Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstructionContext;

    move-result-object v0

    if-ne v5, v0, :cond_6

    .line 266
    invoke-interface {v12, v14}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstructionContext;->getOutFrame(Ljava/util/ArrayList;)Lorg/checkerframework/org/apache/bcel/verifier/structurals/Frame;

    move-result-object v2

    move-object/from16 v0, p0

    move-object v1, v5

    move-object v3, v15

    move-object/from16 v4, p5

    move-object v11, v5

    .end local v5    # "theSuccessor":Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstructionContext;
    .local v11, "theSuccessor":Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstructionContext;
    move-object/from16 v5, p6

    invoke-virtual/range {v0 .. v5}, Lorg/checkerframework/org/plumelib/bcelutil/StackVer;->execute(Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstructionContext;Lorg/checkerframework/org/apache/bcel/verifier/structurals/Frame;Ljava/util/ArrayList;Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;Lorg/checkerframework/org/apache/bcel/verifier/structurals/ExecutionVisitor;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 269
    nop

    .line 270
    invoke-virtual {v15}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 271
    .local v0, "newchainClone":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstructionContext;>;"
    invoke-virtual {v9, v11, v0}, Lorg/checkerframework/org/plumelib/bcelutil/StackVer$InstructionContextQueue;->add(Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstructionContext;Ljava/util/ArrayList;)V

    .line 273
    .end local v0    # "newchainClone":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstructionContext;>;"
    .end local v11    # "theSuccessor":Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstructionContext;
    .end local v16    # "ret":Lorg/checkerframework/org/apache/bcel/generic/RET;
    .end local v17    # "t":Lorg/checkerframework/org/apache/bcel/generic/ReturnaddressType;
    .end local v18    # "skip_jsr":I
    .end local v19    # "lastJSR":Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstructionContext;
    .end local v20    # "jsr":Lorg/checkerframework/org/apache/bcel/generic/JsrInstruction;
    :cond_5
    move-object/from16 v16, v8

    goto/16 :goto_4

    .line 256
    .restart local v5    # "theSuccessor":Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstructionContext;
    .restart local v16    # "ret":Lorg/checkerframework/org/apache/bcel/generic/RET;
    .restart local v17    # "t":Lorg/checkerframework/org/apache/bcel/generic/ReturnaddressType;
    .restart local v18    # "skip_jsr":I
    .restart local v19    # "lastJSR":Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstructionContext;
    .restart local v20    # "jsr":Lorg/checkerframework/org/apache/bcel/generic/JsrInstruction;
    :cond_6
    move-object v11, v5

    .end local v5    # "theSuccessor":Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstructionContext;
    .restart local v11    # "theSuccessor":Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstructionContext;
    new-instance v0, Lorg/checkerframework/org/apache/bcel/verifier/exc/AssertionViolatedException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RET \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 258
    invoke-interface {v12}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstructionContext;->getInstruction()Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' info inconsistent: jump back to \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' or \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 262
    invoke-virtual/range {v20 .. v20}, Lorg/checkerframework/org/apache/bcel/generic/JsrInstruction;->physicalSuccessor()Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;

    move-result-object v2

    invoke-virtual {v7, v2}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/ControlFlowGraph;->contextOf(Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;)Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstructionContext;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/checkerframework/org/apache/bcel/verifier/exc/AssertionViolatedException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 251
    .end local v11    # "theSuccessor":Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstructionContext;
    .end local v20    # "jsr":Lorg/checkerframework/org/apache/bcel/generic/JsrInstruction;
    .restart local v5    # "theSuccessor":Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstructionContext;
    :cond_7
    new-instance v0, Lorg/checkerframework/org/apache/bcel/verifier/exc/AssertionViolatedException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RET without a JSR before in ExecutionChain?! EC: \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/checkerframework/org/apache/bcel/verifier/exc/AssertionViolatedException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 276
    .end local v5    # "theSuccessor":Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstructionContext;
    .end local v16    # "ret":Lorg/checkerframework/org/apache/bcel/generic/RET;
    .end local v17    # "t":Lorg/checkerframework/org/apache/bcel/generic/ReturnaddressType;
    .end local v18    # "skip_jsr":I
    .end local v19    # "lastJSR":Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstructionContext;
    :cond_8
    invoke-interface {v12}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstructionContext;->getSuccessors()[Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstructionContext;

    move-result-object v11

    .line 277
    .local v11, "succs":[Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstructionContext;
    array-length v5, v11

    const/4 v4, 0x0

    :goto_3
    if-ge v4, v5, :cond_a

    aget-object v3, v11, v4

    .line 278
    .local v3, "v":Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstructionContext;
    invoke-interface {v12, v14}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstructionContext;->getOutFrame(Ljava/util/ArrayList;)Lorg/checkerframework/org/apache/bcel/verifier/structurals/Frame;

    move-result-object v2

    move-object/from16 v0, p0

    move-object v1, v3

    move-object/from16 v16, v8

    move-object v8, v3

    .end local v3    # "v":Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstructionContext;
    .local v8, "v":Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstructionContext;
    .local v16, "random":Ljava/util/Random;
    move-object v3, v15

    move/from16 v17, v4

    move-object/from16 v4, p5

    move/from16 v18, v5

    move-object/from16 v5, p6

    invoke-virtual/range {v0 .. v5}, Lorg/checkerframework/org/plumelib/bcelutil/StackVer;->execute(Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstructionContext;Lorg/checkerframework/org/apache/bcel/verifier/structurals/Frame;Ljava/util/ArrayList;Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;Lorg/checkerframework/org/apache/bcel/verifier/structurals/ExecutionVisitor;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 281
    nop

    .line 282
    invoke-virtual {v15}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 283
    .restart local v0    # "newchainClone":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstructionContext;>;"
    invoke-virtual {v9, v8, v0}, Lorg/checkerframework/org/plumelib/bcelutil/StackVer$InstructionContextQueue;->add(Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstructionContext;Ljava/util/ArrayList;)V

    .line 277
    .end local v0    # "newchainClone":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstructionContext;>;"
    .end local v8    # "v":Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstructionContext;
    :cond_9
    add-int/lit8 v4, v17, 0x1

    move-object/from16 v8, v16

    move/from16 v5, v18

    goto :goto_3

    .end local v16    # "random":Ljava/util/Random;
    .local v8, "random":Ljava/util/Random;
    :cond_a
    move-object/from16 v16, v8

    .line 290
    .end local v8    # "random":Ljava/util/Random;
    .end local v11    # "succs":[Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstructionContext;
    .restart local v16    # "random":Ljava/util/Random;
    :goto_4
    invoke-interface {v12}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstructionContext;->getExceptionHandlers()[Lorg/checkerframework/org/apache/bcel/verifier/structurals/ExceptionHandler;

    move-result-object v8

    .line 291
    .local v8, "exc_hds":[Lorg/checkerframework/org/apache/bcel/verifier/structurals/ExceptionHandler;
    array-length v11, v8

    const/4 v5, 0x0

    :goto_5
    if-ge v5, v11, :cond_d

    aget-object v17, v8, v5

    .line 292
    .local v17, "exc_hd":Lorg/checkerframework/org/apache/bcel/verifier/structurals/ExceptionHandler;
    invoke-virtual/range {v17 .. v17}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/ExceptionHandler;->getHandlerStart()Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;

    move-result-object v0

    invoke-virtual {v7, v0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/ControlFlowGraph;->contextOf(Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;)Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstructionContext;

    move-result-object v4

    .line 306
    .local v4, "v":Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstructionContext;
    new-instance v2, Lorg/checkerframework/org/apache/bcel/verifier/structurals/Frame;

    .line 309
    invoke-interface {v12, v14}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstructionContext;->getOutFrame(Ljava/util/ArrayList;)Lorg/checkerframework/org/apache/bcel/verifier/structurals/Frame;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/Frame;->getLocals()Lorg/checkerframework/org/apache/bcel/verifier/structurals/LocalVariables;

    move-result-object v0

    new-instance v1, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    .line 311
    invoke-interface {v12, v14}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstructionContext;->getOutFrame(Ljava/util/ArrayList;)Lorg/checkerframework/org/apache/bcel/verifier/structurals/Frame;

    move-result-object v3

    invoke-virtual {v3}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/Frame;->getStack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v3

    invoke-virtual {v3}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->maxStack()I

    move-result v3

    .line 312
    invoke-virtual/range {v17 .. v17}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/ExceptionHandler;->getExceptionType()Lorg/checkerframework/org/apache/bcel/generic/ObjectType;

    move-result-object v18

    if-nez v18, :cond_b

    sget-object v18, Lorg/checkerframework/org/apache/bcel/generic/Type;->THROWABLE:Lorg/checkerframework/org/apache/bcel/generic/ObjectType;

    move/from16 v19, v5

    move-object/from16 v5, v18

    goto :goto_6

    .line 314
    :cond_b
    invoke-virtual/range {v17 .. v17}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/ExceptionHandler;->getExceptionType()Lorg/checkerframework/org/apache/bcel/generic/ObjectType;

    move-result-object v18

    move/from16 v19, v5

    move-object/from16 v5, v18

    :goto_6
    invoke-direct {v1, v3, v5}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;-><init>(ILorg/checkerframework/org/apache/bcel/generic/ObjectType;)V

    invoke-direct {v2, v0, v1}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/Frame;-><init>(Lorg/checkerframework/org/apache/bcel/verifier/structurals/LocalVariables;Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;)V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 306
    move-object/from16 v0, p0

    move-object v1, v4

    move-object v5, v4

    .end local v4    # "v":Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstructionContext;
    .local v5, "v":Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstructionContext;
    move-object/from16 v4, p5

    move-object/from16 v18, v8

    move/from16 v21, v19

    move-object v8, v5

    .end local v5    # "v":Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstructionContext;
    .local v8, "v":Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstructionContext;
    .local v18, "exc_hds":[Lorg/checkerframework/org/apache/bcel/verifier/structurals/ExceptionHandler;
    move-object/from16 v5, p6

    invoke-virtual/range {v0 .. v5}, Lorg/checkerframework/org/plumelib/bcelutil/StackVer;->execute(Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstructionContext;Lorg/checkerframework/org/apache/bcel/verifier/structurals/Frame;Ljava/util/ArrayList;Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;Lorg/checkerframework/org/apache/bcel/verifier/structurals/ExecutionVisitor;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 318
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v9, v8, v0}, Lorg/checkerframework/org/plumelib/bcelutil/StackVer$InstructionContextQueue;->add(Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstructionContext;Ljava/util/ArrayList;)V

    .line 291
    .end local v8    # "v":Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstructionContext;
    .end local v17    # "exc_hd":Lorg/checkerframework/org/apache/bcel/verifier/structurals/ExceptionHandler;
    :cond_c
    add-int/lit8 v5, v21, 0x1

    move-object/from16 v8, v18

    goto :goto_5

    .end local v18    # "exc_hds":[Lorg/checkerframework/org/apache/bcel/verifier/structurals/ExceptionHandler;
    .local v8, "exc_hds":[Lorg/checkerframework/org/apache/bcel/verifier/structurals/ExceptionHandler;
    :cond_d
    move-object/from16 v18, v8

    .line 321
    .end local v8    # "exc_hds":[Lorg/checkerframework/org/apache/bcel/verifier/structurals/ExceptionHandler;
    .end local v12    # "u":Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstructionContext;
    .end local v13    # "ec":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstructionContext;>;"
    .end local v14    # "oldchain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstructionContext;>;"
    .end local v15    # "newchain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstructionContext;>;"
    move-object/from16 v8, v16

    goto/16 :goto_0

    .line 323
    .end local v16    # "random":Ljava/util/Random;
    .local v8, "random":Ljava/util/Random;
    :cond_e
    move-object/from16 v16, v8

    .end local v8    # "random":Ljava/util/Random;
    .restart local v16    # "random":Ljava/util/Random;
    invoke-interface/range {p3 .. p3}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstructionContext;->getInstruction()Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;

    move-result-object v0

    .line 325
    .local v0, "ih":Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;
    :cond_f
    invoke-virtual {v0}, Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;->getInstruction()Lorg/checkerframework/org/apache/bcel/generic/Instruction;

    move-result-object v2

    instance-of v2, v2, Lorg/checkerframework/org/apache/bcel/generic/ReturnInstruction;

    if-eqz v2, :cond_13

    invoke-virtual {v7, v0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/ControlFlowGraph;->isDead(Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;)Z

    move-result v2

    if-nez v2, :cond_13

    .line 326
    invoke-virtual {v7, v0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/ControlFlowGraph;->contextOf(Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;)Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstructionContext;

    move-result-object v2

    .line 329
    .local v2, "ic":Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstructionContext;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v2, v3}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstructionContext;->getOutFrame(Ljava/util/ArrayList;)Lorg/checkerframework/org/apache/bcel/verifier/structurals/Frame;

    move-result-object v3

    .line 330
    .local v3, "f":Lorg/checkerframework/org/apache/bcel/verifier/structurals/Frame;
    invoke-virtual {v3}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/Frame;->getLocals()Lorg/checkerframework/org/apache/bcel/verifier/structurals/LocalVariables;

    move-result-object v4

    .line 331
    .local v4, "lvs":Lorg/checkerframework/org/apache/bcel/verifier/structurals/LocalVariables;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_7
    invoke-virtual {v4}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/LocalVariables;->maxLocals()I

    move-result v8

    const-string v11, "Warning: ReturnInstruction \'"

    if-ge v5, v8, :cond_11

    .line 332
    invoke-virtual {v4, v5}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/LocalVariables;->get(I)Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v8

    instance-of v8, v8, Lorg/checkerframework/org/apache/bcel/verifier/structurals/UninitializedObjectType;

    if-eqz v8, :cond_10

    .line 333
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v11, "\' may leave method with an uninitialized object in the local variables array \'"

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Lorg/checkerframework/org/plumelib/bcelutil/StackVer;->addMessage(Ljava/lang/String;)V

    .line 331
    :cond_10
    add-int/lit8 v5, v5, 0x1

    goto :goto_7

    .line 341
    .end local v5    # "i":I
    :cond_11
    invoke-virtual {v3}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/Frame;->getStack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v5

    .line 342
    .local v5, "os":Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_8
    invoke-virtual {v5}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->size()I

    move-result v12

    if-ge v8, v12, :cond_13

    .line 343
    invoke-virtual {v5, v8}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->peek(I)Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v12

    instance-of v12, v12, Lorg/checkerframework/org/apache/bcel/verifier/structurals/UninitializedObjectType;

    if-eqz v12, :cond_12

    .line 344
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "\' may leave method with an uninitialized object on the operand stack \'"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v6, v12}, Lorg/checkerframework/org/plumelib/bcelutil/StackVer;->addMessage(Ljava/lang/String;)V

    .line 342
    :cond_12
    add-int/lit8 v8, v8, 0x1

    goto :goto_8

    .line 378
    .end local v2    # "ic":Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstructionContext;
    .end local v3    # "f":Lorg/checkerframework/org/apache/bcel/verifier/structurals/Frame;
    .end local v4    # "lvs":Lorg/checkerframework/org/apache/bcel/verifier/structurals/LocalVariables;
    .end local v5    # "os":Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;
    .end local v8    # "i":I
    :cond_13
    invoke-virtual {v0}, Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;->getNext()Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;

    move-result-object v2

    move-object v0, v2

    if-nez v2, :cond_f

    .line 379
    return-void
.end method


# virtual methods
.method public addMessage(Ljava/lang/String;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;

    .line 520
    iget-object v0, p0, Lorg/checkerframework/org/plumelib/bcelutil/StackVer;->messages:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 521
    return-void
.end method

.method public do_stack_ver(Lorg/checkerframework/org/apache/bcel/generic/MethodGen;)Lorg/checkerframework/org/apache/bcel/verifier/VerificationResult;
    .locals 14
    .param p1, "mg"    # Lorg/checkerframework/org/apache/bcel/generic/MethodGen;

    .line 426
    invoke-virtual {p1}, Lorg/checkerframework/org/apache/bcel/generic/MethodGen;->getConstantPool()Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;

    move-result-object v0

    .line 428
    .local v0, "constantPoolGen":Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;
    new-instance v1, Lorg/checkerframework/org/plumelib/bcelutil/NoConstraintsVisitor;

    invoke-direct {v1}, Lorg/checkerframework/org/plumelib/bcelutil/NoConstraintsVisitor;-><init>()V

    .line 429
    .local v1, "icv":Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;
    invoke-virtual {v1, v0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->setConstantPoolGen(Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;)V

    .line 431
    new-instance v2, Lorg/checkerframework/org/apache/bcel/verifier/structurals/ExecutionVisitor;

    invoke-direct {v2}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/ExecutionVisitor;-><init>()V

    move-object v9, v2

    .line 432
    .local v9, "ev":Lorg/checkerframework/org/apache/bcel/verifier/structurals/ExecutionVisitor;
    invoke-virtual {v9, v0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/ExecutionVisitor;->setConstantPoolGen(Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;)V

    .line 435
    const/4 v10, 0x2

    :try_start_0
    new-instance v2, Lorg/checkerframework/org/plumelib/bcelutil/StackTypes;

    invoke-direct {v2, p1}, Lorg/checkerframework/org/plumelib/bcelutil/StackTypes;-><init>(Lorg/checkerframework/org/apache/bcel/generic/MethodGen;)V

    iput-object v2, p0, Lorg/checkerframework/org/plumelib/bcelutil/StackVer;->stack_types:Lorg/checkerframework/org/plumelib/bcelutil/StackTypes;

    .line 437
    invoke-virtual {v1, p1}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->setMethodGen(Lorg/checkerframework/org/apache/bcel/generic/MethodGen;)V

    .line 440
    invoke-virtual {p1}, Lorg/checkerframework/org/apache/bcel/generic/MethodGen;->isAbstract()Z

    move-result v2

    if-nez v2, :cond_8

    invoke-virtual {p1}, Lorg/checkerframework/org/apache/bcel/generic/MethodGen;->isNative()Z

    move-result v2

    if-nez v2, :cond_8

    .line 443
    new-instance v2, Lorg/checkerframework/org/apache/bcel/verifier/structurals/ControlFlowGraph;

    const/4 v3, 0x0

    invoke-direct {v2, p1, v3}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/ControlFlowGraph;-><init>(Lorg/checkerframework/org/apache/bcel/generic/MethodGen;Z)V

    move-object v11, v2

    .line 446
    .local v11, "cfg":Lorg/checkerframework/org/apache/bcel/verifier/structurals/ControlFlowGraph;
    new-instance v6, Lorg/checkerframework/org/apache/bcel/verifier/structurals/Frame;

    invoke-virtual {p1}, Lorg/checkerframework/org/apache/bcel/generic/MethodGen;->getMaxLocals()I

    move-result v2

    invoke-virtual {p1}, Lorg/checkerframework/org/apache/bcel/generic/MethodGen;->getMaxStack()I

    move-result v4

    invoke-direct {v6, v2, v4}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/Frame;-><init>(II)V

    .line 447
    .local v6, "f":Lorg/checkerframework/org/apache/bcel/verifier/structurals/Frame;
    invoke-virtual {p1}, Lorg/checkerframework/org/apache/bcel/generic/MethodGen;->isStatic()Z

    move-result v2

    if-nez v2, :cond_1

    .line 448
    invoke-virtual {p1}, Lorg/checkerframework/org/apache/bcel/generic/MethodGen;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v4, "<init>"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 449
    new-instance v2, Lorg/checkerframework/org/apache/bcel/verifier/structurals/UninitializedObjectType;

    new-instance v4, Lorg/checkerframework/org/apache/bcel/generic/ObjectType;

    invoke-virtual {p1}, Lorg/checkerframework/org/apache/bcel/generic/MethodGen;->getClassName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/checkerframework/org/apache/bcel/generic/ObjectType;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v4}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/UninitializedObjectType;-><init>(Lorg/checkerframework/org/apache/bcel/generic/ObjectType;)V

    invoke-static {v2}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/Frame;->setThis(Lorg/checkerframework/org/apache/bcel/verifier/structurals/UninitializedObjectType;)V

    .line 450
    invoke-virtual {v6}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/Frame;->getLocals()Lorg/checkerframework/org/apache/bcel/verifier/structurals/LocalVariables;

    move-result-object v2

    invoke-static {}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/Frame;->getThis()Lorg/checkerframework/org/apache/bcel/verifier/structurals/UninitializedObjectType;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/LocalVariables;->set(ILorg/checkerframework/org/apache/bcel/generic/Type;)V

    goto :goto_0

    .line 453
    :cond_0
    const/4 v2, 0x0

    .line 454
    .local v2, "dummy":Lorg/checkerframework/org/apache/bcel/verifier/structurals/UninitializedObjectType;
    invoke-static {v2}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/Frame;->setThis(Lorg/checkerframework/org/apache/bcel/verifier/structurals/UninitializedObjectType;)V

    .line 455
    invoke-virtual {v6}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/Frame;->getLocals()Lorg/checkerframework/org/apache/bcel/verifier/structurals/LocalVariables;

    move-result-object v4

    new-instance v5, Lorg/checkerframework/org/apache/bcel/generic/ObjectType;

    invoke-virtual {p1}, Lorg/checkerframework/org/apache/bcel/generic/MethodGen;->getClassName()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v7}, Lorg/checkerframework/org/apache/bcel/generic/ObjectType;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3, v5}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/LocalVariables;->set(ILorg/checkerframework/org/apache/bcel/generic/Type;)V

    .line 458
    .end local v2    # "dummy":Lorg/checkerframework/org/apache/bcel/verifier/structurals/UninitializedObjectType;
    :cond_1
    :goto_0
    invoke-virtual {p1}, Lorg/checkerframework/org/apache/bcel/generic/MethodGen;->getArgumentTypes()[Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v2

    move-object v12, v2

    .line 459
    .local v12, "argtypes":[Lorg/checkerframework/org/apache/bcel/generic/Type;
    const/4 v2, 0x0

    .line 460
    .local v2, "twoslotoffset":I
    const/4 v4, 0x0

    move v13, v2

    .end local v2    # "twoslotoffset":I
    .local v4, "j":I
    .local v13, "twoslotoffset":I
    :goto_1
    array-length v2, v12

    if-ge v4, v2, :cond_7

    .line 461
    aget-object v2, v12, v4

    sget-object v5, Lorg/checkerframework/org/apache/bcel/generic/Type;->SHORT:Lorg/checkerframework/org/apache/bcel/generic/BasicType;

    if-eq v2, v5, :cond_2

    aget-object v2, v12, v4

    sget-object v5, Lorg/checkerframework/org/apache/bcel/generic/Type;->BYTE:Lorg/checkerframework/org/apache/bcel/generic/BasicType;

    if-eq v2, v5, :cond_2

    aget-object v2, v12, v4

    sget-object v5, Lorg/checkerframework/org/apache/bcel/generic/Type;->CHAR:Lorg/checkerframework/org/apache/bcel/generic/BasicType;

    if-eq v2, v5, :cond_2

    aget-object v2, v12, v4

    sget-object v5, Lorg/checkerframework/org/apache/bcel/generic/Type;->BOOLEAN:Lorg/checkerframework/org/apache/bcel/generic/BasicType;

    if-ne v2, v5, :cond_3

    .line 465
    :cond_2
    sget-object v2, Lorg/checkerframework/org/apache/bcel/generic/Type;->INT:Lorg/checkerframework/org/apache/bcel/generic/BasicType;

    aput-object v2, v12, v4

    .line 467
    :cond_3
    invoke-virtual {v6}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/Frame;->getLocals()Lorg/checkerframework/org/apache/bcel/verifier/structurals/LocalVariables;

    move-result-object v2

    add-int v5, v13, v4

    invoke-virtual {p1}, Lorg/checkerframework/org/apache/bcel/generic/MethodGen;->isStatic()Z

    move-result v7

    const/4 v8, 0x1

    if-eqz v7, :cond_4

    move v7, v3

    goto :goto_2

    :cond_4
    move v7, v8

    :goto_2
    add-int/2addr v5, v7

    aget-object v7, v12, v4

    invoke-virtual {v2, v5, v7}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/LocalVariables;->set(ILorg/checkerframework/org/apache/bcel/generic/Type;)V

    .line 468
    aget-object v2, v12, v4

    invoke-virtual {v2}, Lorg/checkerframework/org/apache/bcel/generic/Type;->getSize()I

    move-result v2

    if-ne v2, v10, :cond_6

    .line 469
    add-int/lit8 v13, v13, 0x1

    .line 470
    invoke-virtual {v6}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/Frame;->getLocals()Lorg/checkerframework/org/apache/bcel/verifier/structurals/LocalVariables;

    move-result-object v2

    add-int v5, v13, v4

    invoke-virtual {p1}, Lorg/checkerframework/org/apache/bcel/generic/MethodGen;->isStatic()Z

    move-result v7

    if-eqz v7, :cond_5

    move v8, v3

    :cond_5
    add-int/2addr v5, v8

    sget-object v7, Lorg/checkerframework/org/apache/bcel/generic/Type;->UNKNOWN:Lorg/checkerframework/org/apache/bcel/generic/Type;

    invoke-virtual {v2, v5, v7}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/LocalVariables;->set(ILorg/checkerframework/org/apache/bcel/generic/Type;)V

    .line 460
    :cond_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 473
    .end local v4    # "j":I
    :cond_7
    invoke-virtual {p1}, Lorg/checkerframework/org/apache/bcel/generic/MethodGen;->getInstructionList()Lorg/checkerframework/org/apache/bcel/generic/InstructionList;

    move-result-object v2

    invoke-virtual {v2}, Lorg/checkerframework/org/apache/bcel/generic/InstructionList;->getStart()Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;

    move-result-object v2

    invoke-virtual {v11, v2}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/ControlFlowGraph;->contextOf(Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;)Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstructionContext;

    move-result-object v5

    move-object v2, p0

    move-object v3, p1

    move-object v4, v11

    move-object v7, v1

    move-object v8, v9

    invoke-direct/range {v2 .. v8}, Lorg/checkerframework/org/plumelib/bcelutil/StackVer;->circulationPump(Lorg/checkerframework/org/apache/bcel/generic/MethodGen;Lorg/checkerframework/org/apache/bcel/verifier/structurals/ControlFlowGraph;Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstructionContext;Lorg/checkerframework/org/apache/bcel/verifier/structurals/Frame;Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;Lorg/checkerframework/org/apache/bcel/verifier/structurals/ExecutionVisitor;)V
    :try_end_0
    .catch Lorg/checkerframework/org/apache/bcel/verifier/exc/VerifierConstraintViolatedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 494
    .end local v6    # "f":Lorg/checkerframework/org/apache/bcel/verifier/structurals/Frame;
    .end local v11    # "cfg":Lorg/checkerframework/org/apache/bcel/verifier/structurals/ControlFlowGraph;
    .end local v12    # "argtypes":[Lorg/checkerframework/org/apache/bcel/generic/Type;
    .end local v13    # "twoslotoffset":I
    :cond_8
    nop

    .line 495
    sget-object v2, Lorg/checkerframework/org/apache/bcel/verifier/VerificationResult;->VR_OK:Lorg/checkerframework/org/apache/bcel/verifier/VerificationResult;

    return-object v2

    .line 478
    :catch_0
    move-exception v2

    .line 481
    .local v2, "re":Ljava/lang/RuntimeException;
    new-instance v3, Ljava/io/StringWriter;

    invoke-direct {v3}, Ljava/io/StringWriter;-><init>()V

    .line 482
    .local v3, "sw":Ljava/io/StringWriter;
    new-instance v4, Ljava/io/PrintWriter;

    invoke-direct {v4, v3}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 483
    .local v4, "pw":Ljava/io/PrintWriter;
    invoke-virtual {v2, v4}, Ljava/lang/RuntimeException;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 485
    new-instance v5, Lorg/checkerframework/org/apache/bcel/verifier/exc/AssertionViolatedException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Some RuntimeException occured while verify()ing class \'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 487
    invoke-virtual {p1}, Lorg/checkerframework/org/apache/bcel/generic/MethodGen;->getClassName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\', method \'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\'. Original RuntimeException\'s stack trace:\n---\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "---\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6, v2}, Lorg/checkerframework/org/apache/bcel/verifier/exc/AssertionViolatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5

    .line 475
    .end local v2    # "re":Ljava/lang/RuntimeException;
    .end local v3    # "sw":Ljava/io/StringWriter;
    .end local v4    # "pw":Ljava/io/PrintWriter;
    :catch_1
    move-exception v2

    .line 476
    .local v2, "ce":Lorg/checkerframework/org/apache/bcel/verifier/exc/VerifierConstraintViolatedException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Constraint violated in method \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\':\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Lorg/checkerframework/org/apache/bcel/verifier/exc/VerifierConstraintViolatedException;->extendMessage(Ljava/lang/String;Ljava/lang/String;)V

    .line 477
    new-instance v3, Lorg/checkerframework/org/apache/bcel/verifier/VerificationResult;

    invoke-virtual {v2}, Lorg/checkerframework/org/apache/bcel/verifier/exc/VerifierConstraintViolatedException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v10, v4}, Lorg/checkerframework/org/apache/bcel/verifier/VerificationResult;-><init>(ILjava/lang/String;)V

    return-object v3
.end method

.method execute(Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstructionContext;Lorg/checkerframework/org/apache/bcel/verifier/structurals/Frame;Ljava/util/ArrayList;Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;Lorg/checkerframework/org/apache/bcel/verifier/structurals/ExecutionVisitor;)Z
    .locals 2
    .param p1, "ic"    # Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstructionContext;
    .param p2, "inFrame"    # Lorg/checkerframework/org/apache/bcel/verifier/structurals/Frame;
    .param p4, "icv"    # Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;
    .param p5, "ev"    # Lorg/checkerframework/org/apache/bcel/verifier/structurals/ExecutionVisitor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstructionContext;",
            "Lorg/checkerframework/org/apache/bcel/verifier/structurals/Frame;",
            "Ljava/util/ArrayList<",
            "Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstructionContext;",
            ">;",
            "Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;",
            "Lorg/checkerframework/org/apache/bcel/verifier/structurals/ExecutionVisitor;",
            ")Z"
        }
    .end annotation

    .line 505
    .local p3, "executionPredecessors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstructionContext;>;"
    iget-object v0, p0, Lorg/checkerframework/org/plumelib/bcelutil/StackVer;->stack_types:Lorg/checkerframework/org/plumelib/bcelutil/StackTypes;

    invoke-interface {p1}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstructionContext;->getInstruction()Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;

    move-result-object v1

    invoke-virtual {v1}, Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;->getPosition()I

    move-result v1

    invoke-virtual {v0, v1, p2}, Lorg/checkerframework/org/plumelib/bcelutil/StackTypes;->set(ILorg/checkerframework/org/apache/bcel/verifier/structurals/Frame;)V

    .line 506
    invoke-interface {p1, p2, p3, p4, p5}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstructionContext;->execute(Lorg/checkerframework/org/apache/bcel/verifier/structurals/Frame;Ljava/util/ArrayList;Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;Lorg/checkerframework/org/apache/bcel/verifier/structurals/ExecutionVisitor;)Z

    move-result v0

    return v0
.end method

.method public get_stack_types()Lorg/checkerframework/org/plumelib/bcelutil/StackTypes;
    .locals 1

    .line 178
    iget-object v0, p0, Lorg/checkerframework/org/plumelib/bcelutil/StackVer;->stack_types:Lorg/checkerframework/org/plumelib/bcelutil/StackTypes;

    return-object v0
.end method

.method public invalidReturnTypeError(Lorg/checkerframework/org/apache/bcel/generic/Type;Lorg/checkerframework/org/apache/bcel/generic/MethodGen;)V
    .locals 3
    .param p1, "returnedType"    # Lorg/checkerframework/org/apache/bcel/generic/Type;
    .param p2, "m"    # Lorg/checkerframework/org/apache/bcel/generic/MethodGen;

    .line 391
    new-instance v0, Lorg/checkerframework/org/apache/bcel/verifier/exc/StructuralCodeConstraintException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Returned type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " does not match Method\'s return type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 395
    invoke-virtual {p2}, Lorg/checkerframework/org/apache/bcel/generic/MethodGen;->getReturnType()Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/checkerframework/org/apache/bcel/verifier/exc/StructuralCodeConstraintException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
