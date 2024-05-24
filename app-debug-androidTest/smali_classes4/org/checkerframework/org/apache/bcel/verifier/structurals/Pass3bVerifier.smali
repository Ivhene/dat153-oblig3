.class public final Lorg/checkerframework/org/apache/bcel/verifier/structurals/Pass3bVerifier;
.super Lorg/checkerframework/org/apache/bcel/verifier/PassVerifier;
.source "Pass3bVerifier.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/checkerframework/org/apache/bcel/verifier/structurals/Pass3bVerifier$InstructionContextQueue;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = true


# instance fields
.field private final method_no:I

.field private final myOwner:Lorg/checkerframework/org/apache/bcel/verifier/Verifier;


# direct methods
.method public constructor <init>(Lorg/checkerframework/org/apache/bcel/verifier/Verifier;I)V
    .locals 0
    .param p1, "owner"    # Lorg/checkerframework/org/apache/bcel/verifier/Verifier;
    .param p2, "method_no"    # I

    .line 121
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/PassVerifier;-><init>()V

    .line 122
    iput-object p1, p0, Lorg/checkerframework/org/apache/bcel/verifier/structurals/Pass3bVerifier;->myOwner:Lorg/checkerframework/org/apache/bcel/verifier/Verifier;

    .line 123
    iput p2, p0, Lorg/checkerframework/org/apache/bcel/verifier/structurals/Pass3bVerifier;->method_no:I

    .line 124
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

    .line 135
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    move-object v7, v0

    .line 136
    .local v7, "random":Ljava/util/Random;
    new-instance v0, Lorg/checkerframework/org/apache/bcel/verifier/structurals/Pass3bVerifier$InstructionContextQueue;

    const/4 v8, 0x0

    invoke-direct {v0, v8}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/Pass3bVerifier$InstructionContextQueue;-><init>(Lorg/checkerframework/org/apache/bcel/verifier/structurals/Pass3bVerifier$1;)V

    move-object v8, v0

    .line 138
    .local v8, "icq":Lorg/checkerframework/org/apache/bcel/verifier/structurals/Pass3bVerifier$InstructionContextQueue;
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v9, p4

    invoke-interface {v4, v9, v0, v5, v6}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstructionContext;->execute(Lorg/checkerframework/org/apache/bcel/verifier/structurals/Frame;Ljava/util/ArrayList;Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;Lorg/checkerframework/org/apache/bcel/verifier/structurals/ExecutionVisitor;)Z

    .line 141
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v8, v4, v0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/Pass3bVerifier$InstructionContextQueue;->add(Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstructionContext;Ljava/util/ArrayList;)V

    .line 144
    :goto_0
    invoke-virtual {v8}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/Pass3bVerifier$InstructionContextQueue;->isEmpty()Z

    move-result v0

    const-string v10, "\'."

    if-nez v0, :cond_e

    .line 154
    const/4 v0, 0x0

    invoke-virtual {v8, v0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/Pass3bVerifier$InstructionContextQueue;->getIC(I)Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstructionContext;

    move-result-object v12

    .line 155
    .local v12, "u":Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstructionContext;
    invoke-virtual {v8, v0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/Pass3bVerifier$InstructionContextQueue;->getEC(I)Ljava/util/ArrayList;

    move-result-object v13

    .line 156
    .local v13, "ec":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstructionContext;>;"
    invoke-virtual {v8, v0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/Pass3bVerifier$InstructionContextQueue;->remove(I)V

    .line 161
    invoke-virtual {v13}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/util/ArrayList;

    check-cast v14, Ljava/util/ArrayList;

    .line 164
    .local v14, "oldchain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstructionContext;>;"
    invoke-virtual {v13}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/util/ArrayList;

    check-cast v15, Ljava/util/ArrayList;

    .line 165
    .local v15, "newchain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstructionContext;>;"
    invoke-virtual {v15, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 167
    invoke-interface {v12}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstructionContext;->getInstruction()Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;->getInstruction()Lorg/checkerframework/org/apache/bcel/generic/Instruction;

    move-result-object v0

    instance-of v0, v0, Lorg/checkerframework/org/apache/bcel/generic/RET;

    if-eqz v0, :cond_8

    .line 171
    invoke-interface {v12}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstructionContext;->getInstruction()Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;->getInstruction()Lorg/checkerframework/org/apache/bcel/generic/Instruction;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/org/apache/bcel/generic/RET;

    check-cast v0, Lorg/checkerframework/org/apache/bcel/generic/RET;

    .line 172
    .local v0, "ret":Lorg/checkerframework/org/apache/bcel/generic/RET;
    invoke-interface {v12, v14}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstructionContext;->getOutFrame(Ljava/util/ArrayList;)Lorg/checkerframework/org/apache/bcel/verifier/structurals/Frame;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/Frame;->getLocals()Lorg/checkerframework/org/apache/bcel/verifier/structurals/LocalVariables;

    move-result-object v11

    invoke-virtual {v0}, Lorg/checkerframework/org/apache/bcel/generic/RET;->getIndex()I

    move-result v4

    invoke-virtual {v11, v4}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/LocalVariables;->get(I)Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v4

    check-cast v4, Lorg/checkerframework/org/apache/bcel/generic/ReturnaddressType;

    .line 173
    .local v4, "t":Lorg/checkerframework/org/apache/bcel/generic/ReturnaddressType;
    invoke-virtual {v4}, Lorg/checkerframework/org/apache/bcel/generic/ReturnaddressType;->getTarget()Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;

    move-result-object v11

    invoke-virtual {v3, v11}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/ControlFlowGraph;->contextOf(Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;)Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstructionContext;

    move-result-object v11

    .line 176
    .local v11, "theSuccessor":Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstructionContext;
    const/16 v16, 0x0

    .line 177
    .local v16, "lastJSR":Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstructionContext;
    const/16 v19, 0x0

    .line 178
    .local v19, "skip_jsr":I
    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v20

    const/16 v18, 0x1

    add-int/lit8 v20, v20, -0x1

    move-object/from16 v18, v0

    move/from16 v0, v20

    .local v0, "ss":I
    .local v18, "ret":Lorg/checkerframework/org/apache/bcel/generic/RET;
    :goto_1
    if-ltz v0, :cond_4

    .line 179
    if-ltz v19, :cond_3

    .line 183
    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstructionContext;

    invoke-interface/range {v20 .. v20}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstructionContext;->getInstruction()Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;

    move-result-object v20

    move-object/from16 v21, v4

    .end local v4    # "t":Lorg/checkerframework/org/apache/bcel/generic/ReturnaddressType;
    .local v21, "t":Lorg/checkerframework/org/apache/bcel/generic/ReturnaddressType;
    invoke-virtual/range {v20 .. v20}, Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;->getInstruction()Lorg/checkerframework/org/apache/bcel/generic/Instruction;

    move-result-object v4

    instance-of v4, v4, Lorg/checkerframework/org/apache/bcel/generic/JsrInstruction;

    if-eqz v4, :cond_1

    .line 184
    if-nez v19, :cond_0

    .line 185
    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object/from16 v16, v4

    check-cast v16, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstructionContext;

    .line 186
    goto :goto_2

    .line 188
    :cond_0
    add-int/lit8 v19, v19, -0x1

    .line 190
    :cond_1
    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstructionContext;

    invoke-interface {v4}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstructionContext;->getInstruction()Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;

    move-result-object v4

    invoke-virtual {v4}, Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;->getInstruction()Lorg/checkerframework/org/apache/bcel/generic/Instruction;

    move-result-object v4

    instance-of v4, v4, Lorg/checkerframework/org/apache/bcel/generic/RET;

    if-eqz v4, :cond_2

    .line 191
    add-int/lit8 v19, v19, 0x1

    .line 178
    :cond_2
    add-int/lit8 v0, v0, -0x1

    move-object/from16 v4, v21

    goto :goto_1

    .line 180
    .end local v21    # "t":Lorg/checkerframework/org/apache/bcel/generic/ReturnaddressType;
    .restart local v4    # "t":Lorg/checkerframework/org/apache/bcel/generic/ReturnaddressType;
    :cond_3
    move-object/from16 v21, v4

    .end local v4    # "t":Lorg/checkerframework/org/apache/bcel/generic/ReturnaddressType;
    .restart local v21    # "t":Lorg/checkerframework/org/apache/bcel/generic/ReturnaddressType;
    new-instance v4, Lorg/checkerframework/org/apache/bcel/verifier/exc/AssertionViolatedException;

    const-string v10, "More RET than JSR in execution chain?!"

    invoke-direct {v4, v10}, Lorg/checkerframework/org/apache/bcel/verifier/exc/AssertionViolatedException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 178
    .end local v21    # "t":Lorg/checkerframework/org/apache/bcel/generic/ReturnaddressType;
    .restart local v4    # "t":Lorg/checkerframework/org/apache/bcel/generic/ReturnaddressType;
    :cond_4
    move-object/from16 v21, v4

    .line 194
    .end local v0    # "ss":I
    .end local v4    # "t":Lorg/checkerframework/org/apache/bcel/generic/ReturnaddressType;
    .restart local v21    # "t":Lorg/checkerframework/org/apache/bcel/generic/ReturnaddressType;
    :goto_2
    if-eqz v16, :cond_7

    .line 197
    invoke-interface/range {v16 .. v16}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstructionContext;->getInstruction()Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;->getInstruction()Lorg/checkerframework/org/apache/bcel/generic/Instruction;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/org/apache/bcel/generic/JsrInstruction;

    check-cast v0, Lorg/checkerframework/org/apache/bcel/generic/JsrInstruction;

    .line 198
    .local v0, "jsr":Lorg/checkerframework/org/apache/bcel/generic/JsrInstruction;
    invoke-virtual {v0}, Lorg/checkerframework/org/apache/bcel/generic/JsrInstruction;->physicalSuccessor()Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/ControlFlowGraph;->contextOf(Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;)Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstructionContext;

    move-result-object v4

    if-ne v11, v4, :cond_6

    .line 203
    invoke-interface {v12, v14}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstructionContext;->getOutFrame(Ljava/util/ArrayList;)Lorg/checkerframework/org/apache/bcel/verifier/structurals/Frame;

    move-result-object v4

    invoke-interface {v11, v4, v15, v5, v6}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstructionContext;->execute(Lorg/checkerframework/org/apache/bcel/verifier/structurals/Frame;Ljava/util/ArrayList;Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;Lorg/checkerframework/org/apache/bcel/verifier/structurals/ExecutionVisitor;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 206
    invoke-virtual {v15}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    .line 207
    .local v4, "newchainClone":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstructionContext;>;"
    invoke-virtual {v8, v11, v4}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/Pass3bVerifier$InstructionContextQueue;->add(Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstructionContext;Ljava/util/ArrayList;)V

    .line 209
    .end local v0    # "jsr":Lorg/checkerframework/org/apache/bcel/generic/JsrInstruction;
    .end local v4    # "newchainClone":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstructionContext;>;"
    .end local v11    # "theSuccessor":Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstructionContext;
    .end local v16    # "lastJSR":Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstructionContext;
    .end local v18    # "ret":Lorg/checkerframework/org/apache/bcel/generic/RET;
    .end local v19    # "skip_jsr":I
    .end local v21    # "t":Lorg/checkerframework/org/apache/bcel/generic/ReturnaddressType;
    :cond_5
    move-object/from16 v20, v7

    goto/16 :goto_4

    .line 199
    .restart local v0    # "jsr":Lorg/checkerframework/org/apache/bcel/generic/JsrInstruction;
    .restart local v11    # "theSuccessor":Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstructionContext;
    .restart local v16    # "lastJSR":Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstructionContext;
    .restart local v18    # "ret":Lorg/checkerframework/org/apache/bcel/generic/RET;
    .restart local v19    # "skip_jsr":I
    .restart local v21    # "t":Lorg/checkerframework/org/apache/bcel/generic/ReturnaddressType;
    :cond_6
    new-instance v4, Lorg/checkerframework/org/apache/bcel/verifier/exc/AssertionViolatedException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v20, v7

    .end local v7    # "random":Ljava/util/Random;
    .local v20, "random":Ljava/util/Random;
    const-string v7, "RET \'"

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface {v12}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstructionContext;->getInstruction()Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v10, "\' info inconsistent: jump back to \'"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v10, "\' or \'"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 200
    invoke-virtual {v0}, Lorg/checkerframework/org/apache/bcel/generic/JsrInstruction;->physicalSuccessor()Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;

    move-result-object v10

    invoke-virtual {v3, v10}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/ControlFlowGraph;->contextOf(Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;)Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstructionContext;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v10, "\'?"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v4, v7}, Lorg/checkerframework/org/apache/bcel/verifier/exc/AssertionViolatedException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 195
    .end local v0    # "jsr":Lorg/checkerframework/org/apache/bcel/generic/JsrInstruction;
    .end local v20    # "random":Ljava/util/Random;
    .restart local v7    # "random":Ljava/util/Random;
    :cond_7
    move-object/from16 v20, v7

    .end local v7    # "random":Ljava/util/Random;
    .restart local v20    # "random":Ljava/util/Random;
    new-instance v0, Lorg/checkerframework/org/apache/bcel/verifier/exc/AssertionViolatedException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "RET without a JSR before in ExecutionChain?! EC: \'"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Lorg/checkerframework/org/apache/bcel/verifier/exc/AssertionViolatedException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 213
    .end local v11    # "theSuccessor":Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstructionContext;
    .end local v16    # "lastJSR":Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstructionContext;
    .end local v18    # "ret":Lorg/checkerframework/org/apache/bcel/generic/RET;
    .end local v19    # "skip_jsr":I
    .end local v20    # "random":Ljava/util/Random;
    .end local v21    # "t":Lorg/checkerframework/org/apache/bcel/generic/ReturnaddressType;
    .restart local v7    # "random":Ljava/util/Random;
    :cond_8
    move-object/from16 v20, v7

    .end local v7    # "random":Ljava/util/Random;
    .restart local v20    # "random":Ljava/util/Random;
    invoke-interface {v12}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstructionContext;->getSuccessors()[Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstructionContext;

    move-result-object v0

    .line 214
    .local v0, "succs":[Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstructionContext;
    array-length v4, v0

    const/4 v7, 0x0

    :goto_3
    if-ge v7, v4, :cond_a

    aget-object v10, v0, v7

    .line 215
    .local v10, "v":Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstructionContext;
    invoke-interface {v12, v14}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstructionContext;->getOutFrame(Ljava/util/ArrayList;)Lorg/checkerframework/org/apache/bcel/verifier/structurals/Frame;

    move-result-object v11

    invoke-interface {v10, v11, v15, v5, v6}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstructionContext;->execute(Lorg/checkerframework/org/apache/bcel/verifier/structurals/Frame;Ljava/util/ArrayList;Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;Lorg/checkerframework/org/apache/bcel/verifier/structurals/ExecutionVisitor;)Z

    move-result v11

    if-eqz v11, :cond_9

    .line 218
    invoke-virtual {v15}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/ArrayList;

    .line 219
    .local v11, "newchainClone":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstructionContext;>;"
    invoke-virtual {v8, v10, v11}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/Pass3bVerifier$InstructionContextQueue;->add(Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstructionContext;Ljava/util/ArrayList;)V

    .line 214
    .end local v10    # "v":Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstructionContext;
    .end local v11    # "newchainClone":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstructionContext;>;"
    :cond_9
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 226
    .end local v0    # "succs":[Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstructionContext;
    :cond_a
    :goto_4
    invoke-interface {v12}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstructionContext;->getExceptionHandlers()[Lorg/checkerframework/org/apache/bcel/verifier/structurals/ExceptionHandler;

    move-result-object v0

    .line 227
    .local v0, "exc_hds":[Lorg/checkerframework/org/apache/bcel/verifier/structurals/ExceptionHandler;
    array-length v4, v0

    const/4 v7, 0x0

    :goto_5
    if-ge v7, v4, :cond_d

    aget-object v10, v0, v7

    .line 228
    .local v10, "exc_hd":Lorg/checkerframework/org/apache/bcel/verifier/structurals/ExceptionHandler;
    invoke-virtual {v10}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/ExceptionHandler;->getHandlerStart()Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;

    move-result-object v11

    invoke-virtual {v3, v11}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/ControlFlowGraph;->contextOf(Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;)Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstructionContext;

    move-result-object v11

    .line 241
    .local v11, "v":Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstructionContext;
    move-object/from16 v16, v0

    .end local v0    # "exc_hds":[Lorg/checkerframework/org/apache/bcel/verifier/structurals/ExceptionHandler;
    .local v16, "exc_hds":[Lorg/checkerframework/org/apache/bcel/verifier/structurals/ExceptionHandler;
    new-instance v0, Lorg/checkerframework/org/apache/bcel/verifier/structurals/Frame;

    invoke-interface {v12, v14}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstructionContext;->getOutFrame(Ljava/util/ArrayList;)Lorg/checkerframework/org/apache/bcel/verifier/structurals/Frame;

    move-result-object v17

    move/from16 v18, v4

    invoke-virtual/range {v17 .. v17}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/Frame;->getLocals()Lorg/checkerframework/org/apache/bcel/verifier/structurals/LocalVariables;

    move-result-object v4

    new-instance v9, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    .line 242
    invoke-interface {v12, v14}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstructionContext;->getOutFrame(Ljava/util/ArrayList;)Lorg/checkerframework/org/apache/bcel/verifier/structurals/Frame;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/Frame;->getStack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v17

    move-object/from16 v19, v12

    .end local v12    # "u":Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstructionContext;
    .local v19, "u":Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstructionContext;
    invoke-virtual/range {v17 .. v17}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->maxStack()I

    move-result v12

    .line 243
    invoke-virtual {v10}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/ExceptionHandler;->getExceptionType()Lorg/checkerframework/org/apache/bcel/generic/ObjectType;

    move-result-object v17

    if-nez v17, :cond_b

    sget-object v17, Lorg/checkerframework/org/apache/bcel/generic/Type;->THROWABLE:Lorg/checkerframework/org/apache/bcel/generic/ObjectType;

    goto :goto_6

    :cond_b
    invoke-virtual {v10}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/ExceptionHandler;->getExceptionType()Lorg/checkerframework/org/apache/bcel/generic/ObjectType;

    move-result-object v17

    :goto_6
    move-object/from16 v21, v10

    move-object/from16 v10, v17

    .end local v10    # "exc_hd":Lorg/checkerframework/org/apache/bcel/verifier/structurals/ExceptionHandler;
    .local v21, "exc_hd":Lorg/checkerframework/org/apache/bcel/verifier/structurals/ExceptionHandler;
    invoke-direct {v9, v12, v10}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;-><init>(ILorg/checkerframework/org/apache/bcel/generic/ObjectType;)V

    invoke-direct {v0, v4, v9}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/Frame;-><init>(Lorg/checkerframework/org/apache/bcel/verifier/structurals/LocalVariables;Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;)V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 241
    invoke-interface {v11, v0, v4, v5, v6}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstructionContext;->execute(Lorg/checkerframework/org/apache/bcel/verifier/structurals/Frame;Ljava/util/ArrayList;Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;Lorg/checkerframework/org/apache/bcel/verifier/structurals/ExecutionVisitor;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 245
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v8, v11, v0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/Pass3bVerifier$InstructionContextQueue;->add(Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstructionContext;Ljava/util/ArrayList;)V

    .line 227
    .end local v11    # "v":Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstructionContext;
    .end local v21    # "exc_hd":Lorg/checkerframework/org/apache/bcel/verifier/structurals/ExceptionHandler;
    :cond_c
    add-int/lit8 v7, v7, 0x1

    move-object/from16 v9, p4

    move-object/from16 v0, v16

    move/from16 v4, v18

    move-object/from16 v12, v19

    goto :goto_5

    .end local v16    # "exc_hds":[Lorg/checkerframework/org/apache/bcel/verifier/structurals/ExceptionHandler;
    .end local v19    # "u":Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstructionContext;
    .restart local v0    # "exc_hds":[Lorg/checkerframework/org/apache/bcel/verifier/structurals/ExceptionHandler;
    .restart local v12    # "u":Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstructionContext;
    :cond_d
    move-object/from16 v16, v0

    move-object/from16 v19, v12

    .line 249
    .end local v0    # "exc_hds":[Lorg/checkerframework/org/apache/bcel/verifier/structurals/ExceptionHandler;
    .end local v12    # "u":Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstructionContext;
    .end local v13    # "ec":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstructionContext;>;"
    .end local v14    # "oldchain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstructionContext;>;"
    .end local v15    # "newchain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstructionContext;>;"
    move-object/from16 v4, p3

    move-object/from16 v9, p4

    move-object/from16 v7, v20

    goto/16 :goto_0

    .line 251
    .end local v20    # "random":Ljava/util/Random;
    .restart local v7    # "random":Ljava/util/Random;
    :cond_e
    move-object/from16 v20, v7

    .end local v7    # "random":Ljava/util/Random;
    .restart local v20    # "random":Ljava/util/Random;
    invoke-interface/range {p3 .. p3}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstructionContext;->getInstruction()Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;

    move-result-object v0

    move-object v4, v0

    .line 253
    .local v4, "ih":Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;
    :cond_f
    invoke-virtual {v4}, Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;->getInstruction()Lorg/checkerframework/org/apache/bcel/generic/Instruction;

    move-result-object v0

    instance-of v0, v0, Lorg/checkerframework/org/apache/bcel/generic/ReturnInstruction;

    if-eqz v0, :cond_17

    invoke-virtual {v3, v4}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/ControlFlowGraph;->isDead(Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;)Z

    move-result v0

    if-nez v0, :cond_17

    .line 254
    invoke-virtual {v3, v4}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/ControlFlowGraph;->contextOf(Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;)Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstructionContext;

    move-result-object v7

    .line 257
    .local v7, "ic":Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstructionContext;
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v7, v0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstructionContext;->getOutFrame(Ljava/util/ArrayList;)Lorg/checkerframework/org/apache/bcel/verifier/structurals/Frame;

    move-result-object v9

    .line 258
    .local v9, "f":Lorg/checkerframework/org/apache/bcel/verifier/structurals/Frame;
    invoke-virtual {v9}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/Frame;->getLocals()Lorg/checkerframework/org/apache/bcel/verifier/structurals/LocalVariables;

    move-result-object v11

    .line 259
    .local v11, "lvs":Lorg/checkerframework/org/apache/bcel/verifier/structurals/LocalVariables;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_7
    invoke-virtual {v11}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/LocalVariables;->maxLocals()I

    move-result v12

    const-string v13, "Warning: ReturnInstruction \'"

    if-ge v0, v12, :cond_11

    .line 260
    invoke-virtual {v11, v0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/LocalVariables;->get(I)Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v12

    instance-of v12, v12, Lorg/checkerframework/org/apache/bcel/verifier/structurals/UninitializedObjectType;

    if-eqz v12, :cond_10

    .line 261
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "\' may leave method with an uninitialized object in the local variables array \'"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v1, v12}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/Pass3bVerifier;->addMessage(Ljava/lang/String;)V

    .line 259
    :cond_10
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 265
    .end local v0    # "i":I
    :cond_11
    invoke-virtual {v9}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/Frame;->getStack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v12

    .line 266
    .local v12, "os":Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_8
    invoke-virtual {v12}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->size()I

    move-result v14

    if-ge v0, v14, :cond_13

    .line 267
    invoke-virtual {v12, v0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->peek(I)Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v14

    instance-of v14, v14, Lorg/checkerframework/org/apache/bcel/verifier/structurals/UninitializedObjectType;

    if-eqz v14, :cond_12

    .line 268
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "\' may leave method with an uninitialized object on the operand stack \'"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v1, v14}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/Pass3bVerifier;->addMessage(Ljava/lang/String;)V

    .line 266
    :cond_12
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 273
    .end local v0    # "i":I
    :cond_13
    const/4 v0, 0x0

    .line 274
    .local v0, "returnedType":Lorg/checkerframework/org/apache/bcel/generic/Type;
    invoke-interface {v7}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstructionContext;->getInFrame()Lorg/checkerframework/org/apache/bcel/verifier/structurals/Frame;

    move-result-object v13

    invoke-virtual {v13}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/Frame;->getStack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v13

    .line 275
    .local v13, "inStack":Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;
    invoke-virtual {v13}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->size()I

    move-result v14

    const/4 v15, 0x1

    if-lt v14, v15, :cond_14

    .line 276
    invoke-virtual {v13}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->peek()Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v0

    move-object v14, v0

    goto :goto_9

    .line 278
    :cond_14
    sget-object v0, Lorg/checkerframework/org/apache/bcel/generic/Type;->VOID:Lorg/checkerframework/org/apache/bcel/generic/BasicType;

    move-object v14, v0

    .line 281
    .end local v0    # "returnedType":Lorg/checkerframework/org/apache/bcel/generic/Type;
    .local v14, "returnedType":Lorg/checkerframework/org/apache/bcel/generic/Type;
    :goto_9
    if-eqz v14, :cond_17

    .line 282
    instance-of v0, v14, Lorg/checkerframework/org/apache/bcel/generic/ReferenceType;

    if-eqz v0, :cond_16

    .line 284
    :try_start_0
    move-object v0, v14

    check-cast v0, Lorg/checkerframework/org/apache/bcel/generic/ReferenceType;

    invoke-virtual/range {p1 .. p1}, Lorg/checkerframework/org/apache/bcel/generic/MethodGen;->getReturnType()Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v15

    invoke-virtual {v0, v15}, Lorg/checkerframework/org/apache/bcel/generic/ReferenceType;->isCastableTo(Lorg/checkerframework/org/apache/bcel/generic/Type;)Z

    move-result v0

    if-nez v0, :cond_15

    .line 285
    invoke-virtual {v1, v14, v2}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/Pass3bVerifier;->invalidReturnTypeError(Lorg/checkerframework/org/apache/bcel/generic/Type;Lorg/checkerframework/org/apache/bcel/generic/MethodGen;)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 290
    :cond_15
    goto :goto_a

    .line 287
    :catch_0
    move-exception v0

    .line 289
    .local v0, "e":Ljava/lang/ClassNotFoundException;
    new-instance v10, Ljava/lang/RuntimeException;

    invoke-direct {v10, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v10

    .line 291
    .end local v0    # "e":Ljava/lang/ClassNotFoundException;
    :cond_16
    invoke-virtual/range {p1 .. p1}, Lorg/checkerframework/org/apache/bcel/generic/MethodGen;->getReturnType()Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/org/apache/bcel/generic/Type;->normalizeForStackOrLocal()Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v0

    invoke-virtual {v14, v0}, Lorg/checkerframework/org/apache/bcel/generic/Type;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_17

    .line 292
    invoke-virtual {v1, v14, v2}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/Pass3bVerifier;->invalidReturnTypeError(Lorg/checkerframework/org/apache/bcel/generic/Type;Lorg/checkerframework/org/apache/bcel/generic/MethodGen;)V

    .line 296
    .end local v7    # "ic":Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstructionContext;
    .end local v9    # "f":Lorg/checkerframework/org/apache/bcel/verifier/structurals/Frame;
    .end local v11    # "lvs":Lorg/checkerframework/org/apache/bcel/verifier/structurals/LocalVariables;
    .end local v12    # "os":Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;
    .end local v13    # "inStack":Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;
    .end local v14    # "returnedType":Lorg/checkerframework/org/apache/bcel/generic/Type;
    :cond_17
    :goto_a
    invoke-virtual {v4}, Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;->getNext()Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;

    move-result-object v0

    move-object v4, v0

    if-nez v0, :cond_f

    .line 298
    return-void
.end method


# virtual methods
.method public do_verify()Lorg/checkerframework/org/apache/bcel/verifier/VerificationResult;
    .locals 18

    .line 322
    move-object/from16 v8, p0

    iget-object v0, v8, Lorg/checkerframework/org/apache/bcel/verifier/structurals/Pass3bVerifier;->myOwner:Lorg/checkerframework/org/apache/bcel/verifier/Verifier;

    iget v1, v8, Lorg/checkerframework/org/apache/bcel/verifier/structurals/Pass3bVerifier;->method_no:I

    invoke-virtual {v0, v1}, Lorg/checkerframework/org/apache/bcel/verifier/Verifier;->doPass3a(I)Lorg/checkerframework/org/apache/bcel/verifier/VerificationResult;

    move-result-object v0

    sget-object v1, Lorg/checkerframework/org/apache/bcel/verifier/VerificationResult;->VR_OK:Lorg/checkerframework/org/apache/bcel/verifier/VerificationResult;

    invoke-virtual {v0, v1}, Lorg/checkerframework/org/apache/bcel/verifier/VerificationResult;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 323
    sget-object v0, Lorg/checkerframework/org/apache/bcel/verifier/VerificationResult;->VR_NOTYET:Lorg/checkerframework/org/apache/bcel/verifier/VerificationResult;

    return-object v0

    .line 330
    :cond_0
    :try_start_0
    iget-object v0, v8, Lorg/checkerframework/org/apache/bcel/verifier/structurals/Pass3bVerifier;->myOwner:Lorg/checkerframework/org/apache/bcel/verifier/Verifier;

    invoke-virtual {v0}, Lorg/checkerframework/org/apache/bcel/verifier/Verifier;->getClassName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/checkerframework/org/apache/bcel/Repository;->lookupClass(Ljava/lang/String;)Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_2

    move-object v9, v0

    .line 334
    .local v9, "jc":Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;
    nop

    .line 336
    new-instance v0, Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;

    invoke-virtual {v9}, Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;->getConstantPool()Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;-><init>(Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;)V

    move-object v10, v0

    .line 338
    .local v10, "constantPoolGen":Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;
    new-instance v0, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;

    invoke-direct {v0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;-><init>()V

    move-object v11, v0

    .line 339
    .local v11, "icv":Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;
    invoke-virtual {v11, v10}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->setConstantPoolGen(Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;)V

    .line 341
    new-instance v0, Lorg/checkerframework/org/apache/bcel/verifier/structurals/ExecutionVisitor;

    invoke-direct {v0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/ExecutionVisitor;-><init>()V

    move-object v12, v0

    .line 342
    .local v12, "ev":Lorg/checkerframework/org/apache/bcel/verifier/structurals/ExecutionVisitor;
    invoke-virtual {v12, v10}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/ExecutionVisitor;->setConstantPoolGen(Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;)V

    .line 344
    invoke-virtual {v9}, Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;->getMethods()[Lorg/checkerframework/org/apache/bcel/classfile/Method;

    move-result-object v13

    .line 348
    .local v13, "methods":[Lorg/checkerframework/org/apache/bcel/classfile/Method;
    const/4 v14, 0x2

    :try_start_1
    new-instance v0, Lorg/checkerframework/org/apache/bcel/generic/MethodGen;

    iget v1, v8, Lorg/checkerframework/org/apache/bcel/verifier/structurals/Pass3bVerifier;->method_no:I

    aget-object v1, v13, v1

    iget-object v2, v8, Lorg/checkerframework/org/apache/bcel/verifier/structurals/Pass3bVerifier;->myOwner:Lorg/checkerframework/org/apache/bcel/verifier/Verifier;

    invoke-virtual {v2}, Lorg/checkerframework/org/apache/bcel/verifier/Verifier;->getClassName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2, v10}, Lorg/checkerframework/org/apache/bcel/generic/MethodGen;-><init>(Lorg/checkerframework/org/apache/bcel/classfile/Method;Ljava/lang/String;Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;)V

    .line 350
    .local v0, "mg":Lorg/checkerframework/org/apache/bcel/generic/MethodGen;
    invoke-virtual {v11, v0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->setMethodGen(Lorg/checkerframework/org/apache/bcel/generic/MethodGen;)V

    .line 353
    invoke-virtual {v0}, Lorg/checkerframework/org/apache/bcel/generic/MethodGen;->isAbstract()Z

    move-result v1

    if-nez v1, :cond_9

    invoke-virtual {v0}, Lorg/checkerframework/org/apache/bcel/generic/MethodGen;->isNative()Z

    move-result v1

    if-nez v1, :cond_9

    .line 355
    new-instance v1, Lorg/checkerframework/org/apache/bcel/verifier/structurals/ControlFlowGraph;

    invoke-direct {v1, v0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/ControlFlowGraph;-><init>(Lorg/checkerframework/org/apache/bcel/generic/MethodGen;)V

    move-object v15, v1

    .line 358
    .local v15, "cfg":Lorg/checkerframework/org/apache/bcel/verifier/structurals/ControlFlowGraph;
    new-instance v5, Lorg/checkerframework/org/apache/bcel/verifier/structurals/Frame;

    invoke-virtual {v0}, Lorg/checkerframework/org/apache/bcel/generic/MethodGen;->getMaxLocals()I

    move-result v1

    invoke-virtual {v0}, Lorg/checkerframework/org/apache/bcel/generic/MethodGen;->getMaxStack()I

    move-result v2

    invoke-direct {v5, v1, v2}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/Frame;-><init>(II)V

    .line 359
    .local v5, "f":Lorg/checkerframework/org/apache/bcel/verifier/structurals/Frame;
    invoke-virtual {v0}, Lorg/checkerframework/org/apache/bcel/generic/MethodGen;->isStatic()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_2

    .line 360
    invoke-virtual {v0}, Lorg/checkerframework/org/apache/bcel/generic/MethodGen;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v3, "<init>"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 361
    new-instance v1, Lorg/checkerframework/org/apache/bcel/verifier/structurals/UninitializedObjectType;

    invoke-virtual {v9}, Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;->getClassName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/checkerframework/org/apache/bcel/generic/ObjectType;->getInstance(Ljava/lang/String;)Lorg/checkerframework/org/apache/bcel/generic/ObjectType;

    move-result-object v3

    invoke-direct {v1, v3}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/UninitializedObjectType;-><init>(Lorg/checkerframework/org/apache/bcel/generic/ObjectType;)V

    invoke-static {v1}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/Frame;->setThis(Lorg/checkerframework/org/apache/bcel/verifier/structurals/UninitializedObjectType;)V

    .line 362
    invoke-virtual {v5}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/Frame;->getLocals()Lorg/checkerframework/org/apache/bcel/verifier/structurals/LocalVariables;

    move-result-object v1

    invoke-static {}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/Frame;->getThis()Lorg/checkerframework/org/apache/bcel/verifier/structurals/UninitializedObjectType;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/LocalVariables;->set(ILorg/checkerframework/org/apache/bcel/generic/Type;)V

    goto :goto_0

    .line 365
    :cond_1
    const/4 v1, 0x0

    invoke-static {v1}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/Frame;->setThis(Lorg/checkerframework/org/apache/bcel/verifier/structurals/UninitializedObjectType;)V

    .line 366
    invoke-virtual {v5}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/Frame;->getLocals()Lorg/checkerframework/org/apache/bcel/verifier/structurals/LocalVariables;

    move-result-object v1

    invoke-virtual {v9}, Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;->getClassName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/checkerframework/org/apache/bcel/generic/ObjectType;->getInstance(Ljava/lang/String;)Lorg/checkerframework/org/apache/bcel/generic/ObjectType;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/LocalVariables;->set(ILorg/checkerframework/org/apache/bcel/generic/Type;)V

    .line 369
    :cond_2
    :goto_0
    invoke-virtual {v0}, Lorg/checkerframework/org/apache/bcel/generic/MethodGen;->getArgumentTypes()[Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v1

    move-object v7, v1

    .line 370
    .local v7, "argtypes":[Lorg/checkerframework/org/apache/bcel/generic/Type;
    const/4 v1, 0x0

    .line 371
    .local v1, "twoslotoffset":I
    const/4 v3, 0x0

    move/from16 v16, v1

    .end local v1    # "twoslotoffset":I
    .local v3, "j":I
    .local v16, "twoslotoffset":I
    :goto_1
    array-length v1, v7

    if-ge v3, v1, :cond_8

    .line 372
    aget-object v1, v7, v3

    sget-object v4, Lorg/checkerframework/org/apache/bcel/generic/Type;->SHORT:Lorg/checkerframework/org/apache/bcel/generic/BasicType;

    if-eq v1, v4, :cond_3

    aget-object v1, v7, v3

    sget-object v4, Lorg/checkerframework/org/apache/bcel/generic/Type;->BYTE:Lorg/checkerframework/org/apache/bcel/generic/BasicType;

    if-eq v1, v4, :cond_3

    aget-object v1, v7, v3

    sget-object v4, Lorg/checkerframework/org/apache/bcel/generic/Type;->CHAR:Lorg/checkerframework/org/apache/bcel/generic/BasicType;

    if-eq v1, v4, :cond_3

    aget-object v1, v7, v3

    sget-object v4, Lorg/checkerframework/org/apache/bcel/generic/Type;->BOOLEAN:Lorg/checkerframework/org/apache/bcel/generic/BasicType;

    if-ne v1, v4, :cond_4

    .line 374
    :cond_3
    sget-object v1, Lorg/checkerframework/org/apache/bcel/generic/Type;->INT:Lorg/checkerframework/org/apache/bcel/generic/BasicType;

    aput-object v1, v7, v3

    .line 376
    :cond_4
    invoke-virtual {v5}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/Frame;->getLocals()Lorg/checkerframework/org/apache/bcel/verifier/structurals/LocalVariables;

    move-result-object v1

    add-int v4, v16, v3

    invoke-virtual {v0}, Lorg/checkerframework/org/apache/bcel/generic/MethodGen;->isStatic()Z

    move-result v6

    const/16 v17, 0x1

    if-eqz v6, :cond_5

    move v6, v2

    goto :goto_2

    :cond_5
    move/from16 v6, v17

    :goto_2
    add-int/2addr v4, v6

    aget-object v6, v7, v3

    invoke-virtual {v1, v4, v6}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/LocalVariables;->set(ILorg/checkerframework/org/apache/bcel/generic/Type;)V

    .line 377
    aget-object v1, v7, v3

    invoke-virtual {v1}, Lorg/checkerframework/org/apache/bcel/generic/Type;->getSize()I

    move-result v1

    if-ne v1, v14, :cond_7

    .line 378
    add-int/lit8 v16, v16, 0x1

    .line 379
    invoke-virtual {v5}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/Frame;->getLocals()Lorg/checkerframework/org/apache/bcel/verifier/structurals/LocalVariables;

    move-result-object v1

    add-int v4, v16, v3

    invoke-virtual {v0}, Lorg/checkerframework/org/apache/bcel/generic/MethodGen;->isStatic()Z

    move-result v6

    if-eqz v6, :cond_6

    move/from16 v17, v2

    :cond_6
    add-int v4, v4, v17

    sget-object v6, Lorg/checkerframework/org/apache/bcel/generic/Type;->UNKNOWN:Lorg/checkerframework/org/apache/bcel/generic/Type;

    invoke-virtual {v1, v4, v6}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/LocalVariables;->set(ILorg/checkerframework/org/apache/bcel/generic/Type;)V

    .line 371
    :cond_7
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 382
    .end local v3    # "j":I
    :cond_8
    invoke-virtual {v0}, Lorg/checkerframework/org/apache/bcel/generic/MethodGen;->getInstructionList()Lorg/checkerframework/org/apache/bcel/generic/InstructionList;

    move-result-object v1

    invoke-virtual {v1}, Lorg/checkerframework/org/apache/bcel/generic/InstructionList;->getStart()Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;

    move-result-object v1

    invoke-virtual {v15, v1}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/ControlFlowGraph;->contextOf(Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;)Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstructionContext;

    move-result-object v4

    move-object/from16 v1, p0

    move-object v2, v0

    move-object v3, v15

    move-object v6, v11

    move-object/from16 v17, v7

    .end local v7    # "argtypes":[Lorg/checkerframework/org/apache/bcel/generic/Type;
    .local v17, "argtypes":[Lorg/checkerframework/org/apache/bcel/generic/Type;
    move-object v7, v12

    invoke-direct/range {v1 .. v7}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/Pass3bVerifier;->circulationPump(Lorg/checkerframework/org/apache/bcel/generic/MethodGen;Lorg/checkerframework/org/apache/bcel/verifier/structurals/ControlFlowGraph;Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstructionContext;Lorg/checkerframework/org/apache/bcel/verifier/structurals/Frame;Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;Lorg/checkerframework/org/apache/bcel/verifier/structurals/ExecutionVisitor;)V
    :try_end_1
    .catch Lorg/checkerframework/org/apache/bcel/verifier/exc/VerifierConstraintViolatedException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    .line 398
    .end local v0    # "mg":Lorg/checkerframework/org/apache/bcel/generic/MethodGen;
    .end local v5    # "f":Lorg/checkerframework/org/apache/bcel/verifier/structurals/Frame;
    .end local v15    # "cfg":Lorg/checkerframework/org/apache/bcel/verifier/structurals/ControlFlowGraph;
    .end local v16    # "twoslotoffset":I
    .end local v17    # "argtypes":[Lorg/checkerframework/org/apache/bcel/generic/Type;
    :cond_9
    nop

    .line 399
    sget-object v0, Lorg/checkerframework/org/apache/bcel/verifier/VerificationResult;->VR_OK:Lorg/checkerframework/org/apache/bcel/verifier/VerificationResult;

    return-object v0

    .line 389
    :catch_0
    move-exception v0

    .line 392
    .local v0, "re":Ljava/lang/RuntimeException;
    new-instance v1, Ljava/io/StringWriter;

    invoke-direct {v1}, Ljava/io/StringWriter;-><init>()V

    .line 393
    .local v1, "sw":Ljava/io/StringWriter;
    new-instance v2, Ljava/io/PrintWriter;

    invoke-direct {v2, v1}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 394
    .local v2, "pw":Ljava/io/PrintWriter;
    invoke-virtual {v0, v2}, Ljava/lang/RuntimeException;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 396
    new-instance v3, Lorg/checkerframework/org/apache/bcel/verifier/exc/AssertionViolatedException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Some RuntimeException occured while verify()ing class \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v9}, Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;->getClassName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\', method \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v8, Lorg/checkerframework/org/apache/bcel/verifier/structurals/Pass3bVerifier;->method_no:I

    aget-object v5, v13, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\'. Original RuntimeException\'s stack trace:\n---\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "---\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v0}, Lorg/checkerframework/org/apache/bcel/verifier/exc/AssertionViolatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 385
    .end local v0    # "re":Ljava/lang/RuntimeException;
    .end local v1    # "sw":Ljava/io/StringWriter;
    .end local v2    # "pw":Ljava/io/PrintWriter;
    :catch_1
    move-exception v0

    .line 386
    .local v0, "ce":Lorg/checkerframework/org/apache/bcel/verifier/exc/VerifierConstraintViolatedException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Constraint violated in method \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v8, Lorg/checkerframework/org/apache/bcel/verifier/structurals/Pass3bVerifier;->method_no:I

    aget-object v2, v13, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\':\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lorg/checkerframework/org/apache/bcel/verifier/exc/VerifierConstraintViolatedException;->extendMessage(Ljava/lang/String;Ljava/lang/String;)V

    .line 387
    new-instance v1, Lorg/checkerframework/org/apache/bcel/verifier/VerificationResult;

    invoke-virtual {v0}, Lorg/checkerframework/org/apache/bcel/verifier/exc/VerifierConstraintViolatedException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v14, v2}, Lorg/checkerframework/org/apache/bcel/verifier/VerificationResult;-><init>(ILjava/lang/String;)V

    return-object v1

    .line 331
    .end local v0    # "ce":Lorg/checkerframework/org/apache/bcel/verifier/exc/VerifierConstraintViolatedException;
    .end local v9    # "jc":Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;
    .end local v10    # "constantPoolGen":Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;
    .end local v11    # "icv":Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;
    .end local v12    # "ev":Lorg/checkerframework/org/apache/bcel/verifier/structurals/ExecutionVisitor;
    .end local v13    # "methods":[Lorg/checkerframework/org/apache/bcel/classfile/Method;
    :catch_2
    move-exception v0

    .line 333
    .local v0, "e":Ljava/lang/ClassNotFoundException;
    new-instance v1, Lorg/checkerframework/org/apache/bcel/verifier/exc/AssertionViolatedException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Missing class: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/checkerframework/org/apache/bcel/verifier/exc/AssertionViolatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getMethodNo()I
    .locals 1

    .line 404
    iget v0, p0, Lorg/checkerframework/org/apache/bcel/verifier/structurals/Pass3bVerifier;->method_no:I

    return v0
.end method

.method public invalidReturnTypeError(Lorg/checkerframework/org/apache/bcel/generic/Type;Lorg/checkerframework/org/apache/bcel/generic/MethodGen;)V
    .locals 3
    .param p1, "returnedType"    # Lorg/checkerframework/org/apache/bcel/generic/Type;
    .param p2, "m"    # Lorg/checkerframework/org/apache/bcel/generic/MethodGen;

    .line 306
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

    .line 307
    invoke-virtual {p2}, Lorg/checkerframework/org/apache/bcel/generic/MethodGen;->getReturnType()Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/checkerframework/org/apache/bcel/verifier/exc/StructuralCodeConstraintException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
